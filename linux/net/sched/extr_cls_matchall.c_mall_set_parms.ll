; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_cls_matchall.c_mall_set_parms.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_cls_matchall.c_mall_set_parms.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.tcf_proto = type { i32 }
%struct.cls_mall_head = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.nlattr = type { i32 }
%struct.netlink_ext_ack = type { i32 }

@TCA_MATCHALL_CLASSID = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*, %struct.tcf_proto*, %struct.cls_mall_head*, i64, %struct.nlattr**, %struct.nlattr*, i32, %struct.netlink_ext_ack*)* @mall_set_parms to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mall_set_parms(%struct.net* %0, %struct.tcf_proto* %1, %struct.cls_mall_head* %2, i64 %3, %struct.nlattr** %4, %struct.nlattr* %5, i32 %6, %struct.netlink_ext_ack* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.net*, align 8
  %11 = alloca %struct.tcf_proto*, align 8
  %12 = alloca %struct.cls_mall_head*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.nlattr**, align 8
  %15 = alloca %struct.nlattr*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.netlink_ext_ack*, align 8
  %18 = alloca i32, align 4
  store %struct.net* %0, %struct.net** %10, align 8
  store %struct.tcf_proto* %1, %struct.tcf_proto** %11, align 8
  store %struct.cls_mall_head* %2, %struct.cls_mall_head** %12, align 8
  store i64 %3, i64* %13, align 8
  store %struct.nlattr** %4, %struct.nlattr*** %14, align 8
  store %struct.nlattr* %5, %struct.nlattr** %15, align 8
  store i32 %6, i32* %16, align 4
  store %struct.netlink_ext_ack* %7, %struct.netlink_ext_ack** %17, align 8
  %19 = load %struct.net*, %struct.net** %10, align 8
  %20 = load %struct.tcf_proto*, %struct.tcf_proto** %11, align 8
  %21 = load %struct.nlattr**, %struct.nlattr*** %14, align 8
  %22 = load %struct.nlattr*, %struct.nlattr** %15, align 8
  %23 = load %struct.cls_mall_head*, %struct.cls_mall_head** %12, align 8
  %24 = getelementptr inbounds %struct.cls_mall_head, %struct.cls_mall_head* %23, i32 0, i32 1
  %25 = load i32, i32* %16, align 4
  %26 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %17, align 8
  %27 = call i32 @tcf_exts_validate(%struct.net* %19, %struct.tcf_proto* %20, %struct.nlattr** %21, %struct.nlattr* %22, i32* %24, i32 %25, i32 1, %struct.netlink_ext_ack* %26)
  store i32 %27, i32* %18, align 4
  %28 = load i32, i32* %18, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %8
  %31 = load i32, i32* %18, align 4
  store i32 %31, i32* %9, align 4
  br label %53

32:                                               ; preds = %8
  %33 = load %struct.nlattr**, %struct.nlattr*** %14, align 8
  %34 = load i64, i64* @TCA_MATCHALL_CLASSID, align 8
  %35 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %33, i64 %34
  %36 = load %struct.nlattr*, %struct.nlattr** %35, align 8
  %37 = icmp ne %struct.nlattr* %36, null
  br i1 %37, label %38, label %52

38:                                               ; preds = %32
  %39 = load %struct.nlattr**, %struct.nlattr*** %14, align 8
  %40 = load i64, i64* @TCA_MATCHALL_CLASSID, align 8
  %41 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %39, i64 %40
  %42 = load %struct.nlattr*, %struct.nlattr** %41, align 8
  %43 = call i32 @nla_get_u32(%struct.nlattr* %42)
  %44 = load %struct.cls_mall_head*, %struct.cls_mall_head** %12, align 8
  %45 = getelementptr inbounds %struct.cls_mall_head, %struct.cls_mall_head* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  store i32 %43, i32* %46, align 4
  %47 = load %struct.tcf_proto*, %struct.tcf_proto** %11, align 8
  %48 = load %struct.cls_mall_head*, %struct.cls_mall_head** %12, align 8
  %49 = getelementptr inbounds %struct.cls_mall_head, %struct.cls_mall_head* %48, i32 0, i32 0
  %50 = load i64, i64* %13, align 8
  %51 = call i32 @tcf_bind_filter(%struct.tcf_proto* %47, %struct.TYPE_2__* %49, i64 %50)
  br label %52

52:                                               ; preds = %38, %32
  store i32 0, i32* %9, align 4
  br label %53

53:                                               ; preds = %52, %30
  %54 = load i32, i32* %9, align 4
  ret i32 %54
}

declare dso_local i32 @tcf_exts_validate(%struct.net*, %struct.tcf_proto*, %struct.nlattr**, %struct.nlattr*, i32*, i32, i32, %struct.netlink_ext_ack*) #1

declare dso_local i32 @nla_get_u32(%struct.nlattr*) #1

declare dso_local i32 @tcf_bind_filter(%struct.tcf_proto*, %struct.TYPE_2__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
