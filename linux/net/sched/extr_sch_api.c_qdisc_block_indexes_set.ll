; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_api.c_qdisc_block_indexes_set.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_api.c_qdisc_block_indexes_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Qdisc = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.Qdisc*, i64)*, i32 (%struct.Qdisc*, i64)* }
%struct.nlattr = type { i32 }
%struct.netlink_ext_ack = type { i32 }

@TCA_INGRESS_BLOCK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [32 x i8] c"Ingress block index cannot be 0\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"Ingress block sharing is not supported\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@TCA_EGRESS_BLOCK = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [31 x i8] c"Egress block index cannot be 0\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"Egress block sharing is not supported\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Qdisc*, %struct.nlattr**, %struct.netlink_ext_ack*)* @qdisc_block_indexes_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qdisc_block_indexes_set(%struct.Qdisc* %0, %struct.nlattr** %1, %struct.netlink_ext_ack* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.Qdisc*, align 8
  %6 = alloca %struct.nlattr**, align 8
  %7 = alloca %struct.netlink_ext_ack*, align 8
  %8 = alloca i64, align 8
  store %struct.Qdisc* %0, %struct.Qdisc** %5, align 8
  store %struct.nlattr** %1, %struct.nlattr*** %6, align 8
  store %struct.netlink_ext_ack* %2, %struct.netlink_ext_ack** %7, align 8
  %9 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %10 = load i64, i64* @TCA_INGRESS_BLOCK, align 8
  %11 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %9, i64 %10
  %12 = load %struct.nlattr*, %struct.nlattr** %11, align 8
  %13 = icmp ne %struct.nlattr* %12, null
  br i1 %13, label %14, label %48

14:                                               ; preds = %3
  %15 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %16 = load i64, i64* @TCA_INGRESS_BLOCK, align 8
  %17 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %15, i64 %16
  %18 = load %struct.nlattr*, %struct.nlattr** %17, align 8
  %19 = call i64 @nla_get_u32(%struct.nlattr* %18)
  store i64 %19, i64* %8, align 8
  %20 = load i64, i64* %8, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %27, label %22

22:                                               ; preds = %14
  %23 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %24 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %23, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %89

27:                                               ; preds = %14
  %28 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %29 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %28, i32 0, i32 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  %32 = load i32 (%struct.Qdisc*, i64)*, i32 (%struct.Qdisc*, i64)** %31, align 8
  %33 = icmp ne i32 (%struct.Qdisc*, i64)* %32, null
  br i1 %33, label %39, label %34

34:                                               ; preds = %27
  %35 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %36 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %35, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  %37 = load i32, i32* @EOPNOTSUPP, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %4, align 4
  br label %89

39:                                               ; preds = %27
  %40 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %41 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %40, i32 0, i32 0
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 1
  %44 = load i32 (%struct.Qdisc*, i64)*, i32 (%struct.Qdisc*, i64)** %43, align 8
  %45 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %46 = load i64, i64* %8, align 8
  %47 = call i32 %44(%struct.Qdisc* %45, i64 %46)
  br label %48

48:                                               ; preds = %39, %3
  %49 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %50 = load i64, i64* @TCA_EGRESS_BLOCK, align 8
  %51 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %49, i64 %50
  %52 = load %struct.nlattr*, %struct.nlattr** %51, align 8
  %53 = icmp ne %struct.nlattr* %52, null
  br i1 %53, label %54, label %88

54:                                               ; preds = %48
  %55 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %56 = load i64, i64* @TCA_EGRESS_BLOCK, align 8
  %57 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %55, i64 %56
  %58 = load %struct.nlattr*, %struct.nlattr** %57, align 8
  %59 = call i64 @nla_get_u32(%struct.nlattr* %58)
  store i64 %59, i64* %8, align 8
  %60 = load i64, i64* %8, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %67, label %62

62:                                               ; preds = %54
  %63 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %64 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %63, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  %65 = load i32, i32* @EINVAL, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %4, align 4
  br label %89

67:                                               ; preds = %54
  %68 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %69 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %68, i32 0, i32 0
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  %72 = load i32 (%struct.Qdisc*, i64)*, i32 (%struct.Qdisc*, i64)** %71, align 8
  %73 = icmp ne i32 (%struct.Qdisc*, i64)* %72, null
  br i1 %73, label %79, label %74

74:                                               ; preds = %67
  %75 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %76 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %75, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0))
  %77 = load i32, i32* @EOPNOTSUPP, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %4, align 4
  br label %89

79:                                               ; preds = %67
  %80 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %81 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %80, i32 0, i32 0
  %82 = load %struct.TYPE_2__*, %struct.TYPE_2__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 0
  %84 = load i32 (%struct.Qdisc*, i64)*, i32 (%struct.Qdisc*, i64)** %83, align 8
  %85 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %86 = load i64, i64* %8, align 8
  %87 = call i32 %84(%struct.Qdisc* %85, i64 %86)
  br label %88

88:                                               ; preds = %79, %48
  store i32 0, i32* %4, align 4
  br label %89

89:                                               ; preds = %88, %74, %62, %34, %22
  %90 = load i32, i32* %4, align 4
  ret i32 %90
}

declare dso_local i64 @nla_get_u32(%struct.nlattr*) #1

declare dso_local i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
