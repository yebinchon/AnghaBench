; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_cls_api.c_tcf_exts_validate.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_cls_api.c_tcf_exts_validate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.tcf_proto = type { i32 }
%struct.nlattr = type { i32 }
%struct.tcf_exts = type { i64, i32, i64, %struct.tc_action**, i32 }
%struct.tc_action = type { i32 }
%struct.netlink_ext_ack = type { i32 }

@.str = private unnamed_addr constant [78 x i8] c"Classifier actions are not supported per compile options (CONFIG_NET_CLS_ACT)\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@TCA_ACT_BIND = common dso_local global i32 0, align 4
@TCA_OLD_COMPAT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tcf_exts_validate(%struct.net* %0, %struct.tcf_proto* %1, %struct.nlattr** %2, %struct.nlattr* %3, %struct.tcf_exts* %4, i32 %5, i32 %6, %struct.netlink_ext_ack* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.net*, align 8
  %11 = alloca %struct.tcf_proto*, align 8
  %12 = alloca %struct.nlattr**, align 8
  %13 = alloca %struct.nlattr*, align 8
  %14 = alloca %struct.tcf_exts*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.netlink_ext_ack*, align 8
  store %struct.net* %0, %struct.net** %10, align 8
  store %struct.tcf_proto* %1, %struct.tcf_proto** %11, align 8
  store %struct.nlattr** %2, %struct.nlattr*** %12, align 8
  store %struct.nlattr* %3, %struct.nlattr** %13, align 8
  store %struct.tcf_exts* %4, %struct.tcf_exts** %14, align 8
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store %struct.netlink_ext_ack* %7, %struct.netlink_ext_ack** %17, align 8
  %18 = load %struct.tcf_exts*, %struct.tcf_exts** %14, align 8
  %19 = getelementptr inbounds %struct.tcf_exts, %struct.tcf_exts* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %30

22:                                               ; preds = %8
  %23 = load %struct.nlattr**, %struct.nlattr*** %12, align 8
  %24 = load %struct.tcf_exts*, %struct.tcf_exts** %14, align 8
  %25 = getelementptr inbounds %struct.tcf_exts, %struct.tcf_exts* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %23, i64 %26
  %28 = load %struct.nlattr*, %struct.nlattr** %27, align 8
  %29 = icmp ne %struct.nlattr* %28, null
  br i1 %29, label %43, label %30

30:                                               ; preds = %22, %8
  %31 = load %struct.tcf_exts*, %struct.tcf_exts** %14, align 8
  %32 = getelementptr inbounds %struct.tcf_exts, %struct.tcf_exts* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %48

35:                                               ; preds = %30
  %36 = load %struct.nlattr**, %struct.nlattr*** %12, align 8
  %37 = load %struct.tcf_exts*, %struct.tcf_exts** %14, align 8
  %38 = getelementptr inbounds %struct.tcf_exts, %struct.tcf_exts* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %36, i64 %39
  %41 = load %struct.nlattr*, %struct.nlattr** %40, align 8
  %42 = icmp ne %struct.nlattr* %41, null
  br i1 %42, label %43, label %48

43:                                               ; preds = %35, %22
  %44 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %17, align 8
  %45 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %44, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str, i64 0, i64 0))
  %46 = load i32, i32* @EOPNOTSUPP, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %9, align 4
  br label %49

48:                                               ; preds = %35, %30
  store i32 0, i32* %9, align 4
  br label %49

49:                                               ; preds = %48, %43
  %50 = load i32, i32* %9, align 4
  ret i32 %50
}

declare dso_local i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
