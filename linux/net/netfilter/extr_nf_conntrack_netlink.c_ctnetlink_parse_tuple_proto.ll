; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_conntrack_netlink.c_ctnetlink_parse_tuple_proto.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_conntrack_netlink.c_ctnetlink_parse_tuple_proto.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nlattr = type { i32 }
%struct.nf_conntrack_tuple = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.nf_conntrack_l4proto = type { i32 (%struct.nlattr**, %struct.nf_conntrack_tuple*)*, i32 }

@CTA_PROTO_MAX = common dso_local global i32 0, align 4
@proto_nla_policy = common dso_local global i32 0, align 4
@CTA_PROTO_NUM = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nlattr*, %struct.nf_conntrack_tuple*)* @ctnetlink_parse_tuple_proto to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ctnetlink_parse_tuple_proto(%struct.nlattr* %0, %struct.nf_conntrack_tuple* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nlattr*, align 8
  %5 = alloca %struct.nf_conntrack_tuple*, align 8
  %6 = alloca %struct.nf_conntrack_l4proto*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.nlattr* %0, %struct.nlattr** %4, align 8
  store %struct.nf_conntrack_tuple* %1, %struct.nf_conntrack_tuple** %5, align 8
  %11 = load i32, i32* @CTA_PROTO_MAX, align 4
  %12 = add nsw i32 %11, 1
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %7, align 8
  %15 = alloca %struct.nlattr*, i64 %13, align 16
  store i64 %13, i64* %8, align 8
  store i32 0, i32* %9, align 4
  %16 = load i32, i32* @CTA_PROTO_MAX, align 4
  %17 = load %struct.nlattr*, %struct.nlattr** %4, align 8
  %18 = load i32, i32* @proto_nla_policy, align 4
  %19 = call i32 @nla_parse_nested_deprecated(%struct.nlattr** %15, i32 %16, %struct.nlattr* %17, i32 %18, i32* null)
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %9, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %2
  %23 = load i32, i32* %9, align 4
  store i32 %23, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %70

24:                                               ; preds = %2
  %25 = load i64, i64* @CTA_PROTO_NUM, align 8
  %26 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %15, i64 %25
  %27 = load %struct.nlattr*, %struct.nlattr** %26, align 8
  %28 = icmp ne %struct.nlattr* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %24
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %70

32:                                               ; preds = %24
  %33 = load i64, i64* @CTA_PROTO_NUM, align 8
  %34 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %15, i64 %33
  %35 = load %struct.nlattr*, %struct.nlattr** %34, align 8
  %36 = call i32 @nla_get_u8(%struct.nlattr* %35)
  %37 = load %struct.nf_conntrack_tuple*, %struct.nf_conntrack_tuple** %5, align 8
  %38 = getelementptr inbounds %struct.nf_conntrack_tuple, %struct.nf_conntrack_tuple* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  store i32 %36, i32* %39, align 4
  %40 = call i32 (...) @rcu_read_lock()
  %41 = load %struct.nf_conntrack_tuple*, %struct.nf_conntrack_tuple** %5, align 8
  %42 = getelementptr inbounds %struct.nf_conntrack_tuple, %struct.nf_conntrack_tuple* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call %struct.nf_conntrack_l4proto* @nf_ct_l4proto_find(i32 %44)
  store %struct.nf_conntrack_l4proto* %45, %struct.nf_conntrack_l4proto** %6, align 8
  %46 = load %struct.nf_conntrack_l4proto*, %struct.nf_conntrack_l4proto** %6, align 8
  %47 = getelementptr inbounds %struct.nf_conntrack_l4proto, %struct.nf_conntrack_l4proto* %46, i32 0, i32 0
  %48 = load i32 (%struct.nlattr**, %struct.nf_conntrack_tuple*)*, i32 (%struct.nlattr**, %struct.nf_conntrack_tuple*)** %47, align 8
  %49 = call i64 @likely(i32 (%struct.nlattr**, %struct.nf_conntrack_tuple*)* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %67

51:                                               ; preds = %32
  %52 = load %struct.nlattr*, %struct.nlattr** %4, align 8
  %53 = load i32, i32* @CTA_PROTO_MAX, align 4
  %54 = load %struct.nf_conntrack_l4proto*, %struct.nf_conntrack_l4proto** %6, align 8
  %55 = getelementptr inbounds %struct.nf_conntrack_l4proto, %struct.nf_conntrack_l4proto* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @nla_validate_nested_deprecated(%struct.nlattr* %52, i32 %53, i32 %56, i32* null)
  store i32 %57, i32* %9, align 4
  %58 = load i32, i32* %9, align 4
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %51
  %61 = load %struct.nf_conntrack_l4proto*, %struct.nf_conntrack_l4proto** %6, align 8
  %62 = getelementptr inbounds %struct.nf_conntrack_l4proto, %struct.nf_conntrack_l4proto* %61, i32 0, i32 0
  %63 = load i32 (%struct.nlattr**, %struct.nf_conntrack_tuple*)*, i32 (%struct.nlattr**, %struct.nf_conntrack_tuple*)** %62, align 8
  %64 = load %struct.nf_conntrack_tuple*, %struct.nf_conntrack_tuple** %5, align 8
  %65 = call i32 %63(%struct.nlattr** %15, %struct.nf_conntrack_tuple* %64)
  store i32 %65, i32* %9, align 4
  br label %66

66:                                               ; preds = %60, %51
  br label %67

67:                                               ; preds = %66, %32
  %68 = call i32 (...) @rcu_read_unlock()
  %69 = load i32, i32* %9, align 4
  store i32 %69, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %70

70:                                               ; preds = %67, %29, %22
  %71 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %71)
  %72 = load i32, i32* %3, align 4
  ret i32 %72
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @nla_parse_nested_deprecated(%struct.nlattr**, i32, %struct.nlattr*, i32, i32*) #2

declare dso_local i32 @nla_get_u8(%struct.nlattr*) #2

declare dso_local i32 @rcu_read_lock(...) #2

declare dso_local %struct.nf_conntrack_l4proto* @nf_ct_l4proto_find(i32) #2

declare dso_local i64 @likely(i32 (%struct.nlattr**, %struct.nf_conntrack_tuple*)*) #2

declare dso_local i32 @nla_validate_nested_deprecated(%struct.nlattr*, i32, i32, i32*) #2

declare dso_local i32 @rcu_read_unlock(...) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
