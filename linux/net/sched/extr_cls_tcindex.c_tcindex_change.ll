; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_cls_tcindex.c_tcindex_change.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_cls_tcindex.c_tcindex_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.sk_buff = type { i32 }
%struct.tcf_proto = type { i32 }
%struct.nlattr = type { i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.tcindex_data = type { i32 }
%struct.tcindex_filter_result = type { i32 }

@TCA_OPTIONS = common dso_local global i64 0, align 8
@TCA_TCINDEX_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [76 x i8] c"tcindex_change(tp %p,handle 0x%08x,tca %p,arg %p),opt %p,p %p,r %p,*arg %p\0A\00", align 1
@tcindex_policy = common dso_local global i32 0, align 4
@TCA_RATE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*, %struct.sk_buff*, %struct.tcf_proto*, i64, i32, %struct.nlattr**, i8**, i32, i32, %struct.netlink_ext_ack*)* @tcindex_change to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcindex_change(%struct.net* %0, %struct.sk_buff* %1, %struct.tcf_proto* %2, i64 %3, i32 %4, %struct.nlattr** %5, i8** %6, i32 %7, i32 %8, %struct.netlink_ext_ack* %9) #0 {
  %11 = alloca i32, align 4
  %12 = alloca %struct.net*, align 8
  %13 = alloca %struct.sk_buff*, align 8
  %14 = alloca %struct.tcf_proto*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.nlattr**, align 8
  %18 = alloca i8**, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.netlink_ext_ack*, align 8
  %22 = alloca %struct.nlattr*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i64, align 8
  %25 = alloca %struct.tcindex_data*, align 8
  %26 = alloca %struct.tcindex_filter_result*, align 8
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  store %struct.net* %0, %struct.net** %12, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %13, align 8
  store %struct.tcf_proto* %2, %struct.tcf_proto** %14, align 8
  store i64 %3, i64* %15, align 8
  store i32 %4, i32* %16, align 4
  store %struct.nlattr** %5, %struct.nlattr*** %17, align 8
  store i8** %6, i8*** %18, align 8
  store i32 %7, i32* %19, align 4
  store i32 %8, i32* %20, align 4
  store %struct.netlink_ext_ack* %9, %struct.netlink_ext_ack** %21, align 8
  %29 = load %struct.nlattr**, %struct.nlattr*** %17, align 8
  %30 = load i64, i64* @TCA_OPTIONS, align 8
  %31 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %29, i64 %30
  %32 = load %struct.nlattr*, %struct.nlattr** %31, align 8
  store %struct.nlattr* %32, %struct.nlattr** %22, align 8
  %33 = load i32, i32* @TCA_TCINDEX_MAX, align 4
  %34 = add nsw i32 %33, 1
  %35 = zext i32 %34 to i64
  %36 = call i8* @llvm.stacksave()
  store i8* %36, i8** %23, align 8
  %37 = alloca %struct.nlattr*, i64 %35, align 16
  store i64 %35, i64* %24, align 8
  %38 = load %struct.tcf_proto*, %struct.tcf_proto** %14, align 8
  %39 = getelementptr inbounds %struct.tcf_proto, %struct.tcf_proto* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call %struct.tcindex_data* @rtnl_dereference(i32 %40)
  store %struct.tcindex_data* %41, %struct.tcindex_data** %25, align 8
  %42 = load i8**, i8*** %18, align 8
  %43 = load i8*, i8** %42, align 8
  %44 = bitcast i8* %43 to %struct.tcindex_filter_result*
  store %struct.tcindex_filter_result* %44, %struct.tcindex_filter_result** %26, align 8
  %45 = load %struct.tcf_proto*, %struct.tcf_proto** %14, align 8
  %46 = load i32, i32* %16, align 4
  %47 = load %struct.nlattr**, %struct.nlattr*** %17, align 8
  %48 = load i8**, i8*** %18, align 8
  %49 = load %struct.nlattr*, %struct.nlattr** %22, align 8
  %50 = load %struct.tcindex_data*, %struct.tcindex_data** %25, align 8
  %51 = load %struct.tcindex_filter_result*, %struct.tcindex_filter_result** %26, align 8
  %52 = load i8**, i8*** %18, align 8
  %53 = icmp ne i8** %52, null
  br i1 %53, label %54, label %57

54:                                               ; preds = %10
  %55 = load i8**, i8*** %18, align 8
  %56 = load i8*, i8** %55, align 8
  br label %58

57:                                               ; preds = %10
  br label %58

58:                                               ; preds = %57, %54
  %59 = phi i8* [ %56, %54 ], [ null, %57 ]
  %60 = call i32 @pr_debug(i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str, i64 0, i64 0), %struct.tcf_proto* %45, i32 %46, %struct.nlattr** %47, i8** %48, %struct.nlattr* %49, %struct.tcindex_data* %50, %struct.tcindex_filter_result* %51, i8* %59)
  %61 = load %struct.nlattr*, %struct.nlattr** %22, align 8
  %62 = icmp ne %struct.nlattr* %61, null
  br i1 %62, label %64, label %63

63:                                               ; preds = %58
  store i32 0, i32* %11, align 4
  store i32 1, i32* %28, align 4
  br label %87

64:                                               ; preds = %58
  %65 = load i32, i32* @TCA_TCINDEX_MAX, align 4
  %66 = load %struct.nlattr*, %struct.nlattr** %22, align 8
  %67 = load i32, i32* @tcindex_policy, align 4
  %68 = call i32 @nla_parse_nested_deprecated(%struct.nlattr** %37, i32 %65, %struct.nlattr* %66, i32 %67, i32* null)
  store i32 %68, i32* %27, align 4
  %69 = load i32, i32* %27, align 4
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %64
  %72 = load i32, i32* %27, align 4
  store i32 %72, i32* %11, align 4
  store i32 1, i32* %28, align 4
  br label %87

73:                                               ; preds = %64
  %74 = load %struct.net*, %struct.net** %12, align 8
  %75 = load %struct.tcf_proto*, %struct.tcf_proto** %14, align 8
  %76 = load i64, i64* %15, align 8
  %77 = load i32, i32* %16, align 4
  %78 = load %struct.tcindex_data*, %struct.tcindex_data** %25, align 8
  %79 = load %struct.tcindex_filter_result*, %struct.tcindex_filter_result** %26, align 8
  %80 = load %struct.nlattr**, %struct.nlattr*** %17, align 8
  %81 = load i64, i64* @TCA_RATE, align 8
  %82 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %80, i64 %81
  %83 = load %struct.nlattr*, %struct.nlattr** %82, align 8
  %84 = load i32, i32* %19, align 4
  %85 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %21, align 8
  %86 = call i32 @tcindex_set_parms(%struct.net* %74, %struct.tcf_proto* %75, i64 %76, i32 %77, %struct.tcindex_data* %78, %struct.tcindex_filter_result* %79, %struct.nlattr** %37, %struct.nlattr* %83, i32 %84, %struct.netlink_ext_ack* %85)
  store i32 %86, i32* %11, align 4
  store i32 1, i32* %28, align 4
  br label %87

87:                                               ; preds = %73, %71, %63
  %88 = load i8*, i8** %23, align 8
  call void @llvm.stackrestore(i8* %88)
  %89 = load i32, i32* %11, align 4
  ret i32 %89
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.tcindex_data* @rtnl_dereference(i32) #2

declare dso_local i32 @pr_debug(i8*, %struct.tcf_proto*, i32, %struct.nlattr**, i8**, %struct.nlattr*, %struct.tcindex_data*, %struct.tcindex_filter_result*, i8*) #2

declare dso_local i32 @nla_parse_nested_deprecated(%struct.nlattr**, i32, %struct.nlattr*, i32, i32*) #2

declare dso_local i32 @tcindex_set_parms(%struct.net*, %struct.tcf_proto*, i64, i32, %struct.tcindex_data*, %struct.tcindex_filter_result*, %struct.nlattr**, %struct.nlattr*, i32, %struct.netlink_ext_ack*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
