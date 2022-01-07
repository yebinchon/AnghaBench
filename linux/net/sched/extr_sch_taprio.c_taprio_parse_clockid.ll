; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_taprio.c_taprio_parse_clockid.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_taprio.c_taprio_parse_clockid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Qdisc = type { i32 }
%struct.nlattr = type { i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.taprio_sched = type { i32, i32, i32 }
%struct.net_device = type { %struct.ethtool_ops* }
%struct.ethtool_ops = type { i32 (%struct.net_device*, %struct.ethtool_ts_info*)* }
%struct.ethtool_ts_info = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@ETHTOOL_GET_TS_INFO = common dso_local global i32 0, align 4
@TCA_TAPRIO_ATTR_SCHED_CLOCKID = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [51 x i8] c"The 'clockid' cannot be specified for full offload\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"Device does not have a PTP clock\00", align 1
@ENOTSUPP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [62 x i8] c"Changing the 'clockid' of a running schedule is not supported\00", align 1
@TK_OFFS_REAL = common dso_local global i32 0, align 4
@TK_OFFS_MAX = common dso_local global i32 0, align 4
@TK_OFFS_BOOT = common dso_local global i32 0, align 4
@TK_OFFS_TAI = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [18 x i8] c"Invalid 'clockid'\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"Specifying a 'clockid' is mandatory\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Qdisc*, %struct.nlattr**, %struct.netlink_ext_ack*)* @taprio_parse_clockid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @taprio_parse_clockid(%struct.Qdisc* %0, %struct.nlattr** %1, %struct.netlink_ext_ack* %2) #0 {
  %4 = alloca %struct.Qdisc*, align 8
  %5 = alloca %struct.nlattr**, align 8
  %6 = alloca %struct.netlink_ext_ack*, align 8
  %7 = alloca %struct.taprio_sched*, align 8
  %8 = alloca %struct.net_device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.ethtool_ops*, align 8
  %11 = alloca %struct.ethtool_ts_info, align 4
  %12 = alloca i32, align 4
  store %struct.Qdisc* %0, %struct.Qdisc** %4, align 8
  store %struct.nlattr** %1, %struct.nlattr*** %5, align 8
  store %struct.netlink_ext_ack* %2, %struct.netlink_ext_ack** %6, align 8
  %13 = load %struct.Qdisc*, %struct.Qdisc** %4, align 8
  %14 = call %struct.taprio_sched* @qdisc_priv(%struct.Qdisc* %13)
  store %struct.taprio_sched* %14, %struct.taprio_sched** %7, align 8
  %15 = load %struct.Qdisc*, %struct.Qdisc** %4, align 8
  %16 = call %struct.net_device* @qdisc_dev(%struct.Qdisc* %15)
  store %struct.net_device* %16, %struct.net_device** %8, align 8
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %9, align 4
  %19 = load %struct.taprio_sched*, %struct.taprio_sched** %7, align 8
  %20 = getelementptr inbounds %struct.taprio_sched, %struct.taprio_sched* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = call i64 @FULL_OFFLOAD_IS_ENABLED(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %66

24:                                               ; preds = %3
  %25 = load %struct.net_device*, %struct.net_device** %8, align 8
  %26 = getelementptr inbounds %struct.net_device, %struct.net_device* %25, i32 0, i32 0
  %27 = load %struct.ethtool_ops*, %struct.ethtool_ops** %26, align 8
  store %struct.ethtool_ops* %27, %struct.ethtool_ops** %10, align 8
  %28 = getelementptr inbounds %struct.ethtool_ts_info, %struct.ethtool_ts_info* %11, i32 0, i32 0
  store i32 -1, i32* %28, align 4
  %29 = getelementptr inbounds %struct.ethtool_ts_info, %struct.ethtool_ts_info* %11, i32 0, i32 1
  %30 = load i32, i32* @ETHTOOL_GET_TS_INFO, align 4
  store i32 %30, i32* %29, align 4
  %31 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %32 = load i64, i64* @TCA_TAPRIO_ATTR_SCHED_CLOCKID, align 8
  %33 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %31, i64 %32
  %34 = load %struct.nlattr*, %struct.nlattr** %33, align 8
  %35 = icmp ne %struct.nlattr* %34, null
  br i1 %35, label %36, label %39

36:                                               ; preds = %24
  %37 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %6, align 8
  %38 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %37, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0))
  br label %128

39:                                               ; preds = %24
  %40 = load %struct.ethtool_ops*, %struct.ethtool_ops** %10, align 8
  %41 = icmp ne %struct.ethtool_ops* %40, null
  br i1 %41, label %42, label %53

42:                                               ; preds = %39
  %43 = load %struct.ethtool_ops*, %struct.ethtool_ops** %10, align 8
  %44 = getelementptr inbounds %struct.ethtool_ops, %struct.ethtool_ops* %43, i32 0, i32 0
  %45 = load i32 (%struct.net_device*, %struct.ethtool_ts_info*)*, i32 (%struct.net_device*, %struct.ethtool_ts_info*)** %44, align 8
  %46 = icmp ne i32 (%struct.net_device*, %struct.ethtool_ts_info*)* %45, null
  br i1 %46, label %47, label %53

47:                                               ; preds = %42
  %48 = load %struct.ethtool_ops*, %struct.ethtool_ops** %10, align 8
  %49 = getelementptr inbounds %struct.ethtool_ops, %struct.ethtool_ops* %48, i32 0, i32 0
  %50 = load i32 (%struct.net_device*, %struct.ethtool_ts_info*)*, i32 (%struct.net_device*, %struct.ethtool_ts_info*)** %49, align 8
  %51 = load %struct.net_device*, %struct.net_device** %8, align 8
  %52 = call i32 %50(%struct.net_device* %51, %struct.ethtool_ts_info* %11)
  store i32 %52, i32* %9, align 4
  br label %53

53:                                               ; preds = %47, %42, %39
  %54 = load i32, i32* %9, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %60, label %56

56:                                               ; preds = %53
  %57 = getelementptr inbounds %struct.ethtool_ts_info, %struct.ethtool_ts_info* %11, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %56, %53
  %61 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %6, align 8
  %62 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %61, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %63 = load i32, i32* @ENOTSUPP, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %9, align 4
  br label %128

65:                                               ; preds = %56
  br label %127

66:                                               ; preds = %3
  %67 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %68 = load i64, i64* @TCA_TAPRIO_ATTR_SCHED_CLOCKID, align 8
  %69 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %67, i64 %68
  %70 = load %struct.nlattr*, %struct.nlattr** %69, align 8
  %71 = icmp ne %struct.nlattr* %70, null
  br i1 %71, label %72, label %123

72:                                               ; preds = %66
  %73 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %74 = load i64, i64* @TCA_TAPRIO_ATTR_SCHED_CLOCKID, align 8
  %75 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %73, i64 %74
  %76 = load %struct.nlattr*, %struct.nlattr** %75, align 8
  %77 = call i32 @nla_get_s32(%struct.nlattr* %76)
  store i32 %77, i32* %12, align 4
  %78 = load i32, i32* %12, align 4
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %91, label %80

80:                                               ; preds = %72
  %81 = load %struct.taprio_sched*, %struct.taprio_sched** %7, align 8
  %82 = getelementptr inbounds %struct.taprio_sched, %struct.taprio_sched* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = icmp ne i32 %83, -1
  br i1 %84, label %85, label %96

85:                                               ; preds = %80
  %86 = load %struct.taprio_sched*, %struct.taprio_sched** %7, align 8
  %87 = getelementptr inbounds %struct.taprio_sched, %struct.taprio_sched* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* %12, align 4
  %90 = icmp ne i32 %88, %89
  br i1 %90, label %91, label %96

91:                                               ; preds = %85, %72
  %92 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %6, align 8
  %93 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %92, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.2, i64 0, i64 0))
  %94 = load i32, i32* @ENOTSUPP, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %9, align 4
  br label %128

96:                                               ; preds = %85, %80
  %97 = load i32, i32* %12, align 4
  switch i32 %97, label %114 [
    i32 129, label %98
    i32 130, label %102
    i32 131, label %106
    i32 128, label %110
  ]

98:                                               ; preds = %96
  %99 = load i32, i32* @TK_OFFS_REAL, align 4
  %100 = load %struct.taprio_sched*, %struct.taprio_sched** %7, align 8
  %101 = getelementptr inbounds %struct.taprio_sched, %struct.taprio_sched* %100, i32 0, i32 1
  store i32 %99, i32* %101, align 4
  br label %119

102:                                              ; preds = %96
  %103 = load i32, i32* @TK_OFFS_MAX, align 4
  %104 = load %struct.taprio_sched*, %struct.taprio_sched** %7, align 8
  %105 = getelementptr inbounds %struct.taprio_sched, %struct.taprio_sched* %104, i32 0, i32 1
  store i32 %103, i32* %105, align 4
  br label %119

106:                                              ; preds = %96
  %107 = load i32, i32* @TK_OFFS_BOOT, align 4
  %108 = load %struct.taprio_sched*, %struct.taprio_sched** %7, align 8
  %109 = getelementptr inbounds %struct.taprio_sched, %struct.taprio_sched* %108, i32 0, i32 1
  store i32 %107, i32* %109, align 4
  br label %119

110:                                              ; preds = %96
  %111 = load i32, i32* @TK_OFFS_TAI, align 4
  %112 = load %struct.taprio_sched*, %struct.taprio_sched** %7, align 8
  %113 = getelementptr inbounds %struct.taprio_sched, %struct.taprio_sched* %112, i32 0, i32 1
  store i32 %111, i32* %113, align 4
  br label %119

114:                                              ; preds = %96
  %115 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %6, align 8
  %116 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %115, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  %117 = load i32, i32* @EINVAL, align 4
  %118 = sub nsw i32 0, %117
  store i32 %118, i32* %9, align 4
  br label %128

119:                                              ; preds = %110, %106, %102, %98
  %120 = load i32, i32* %12, align 4
  %121 = load %struct.taprio_sched*, %struct.taprio_sched** %7, align 8
  %122 = getelementptr inbounds %struct.taprio_sched, %struct.taprio_sched* %121, i32 0, i32 0
  store i32 %120, i32* %122, align 4
  br label %126

123:                                              ; preds = %66
  %124 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %6, align 8
  %125 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %124, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0))
  br label %128

126:                                              ; preds = %119
  br label %127

127:                                              ; preds = %126, %65
  store i32 0, i32* %9, align 4
  br label %128

128:                                              ; preds = %127, %123, %114, %91, %60, %36
  %129 = load i32, i32* %9, align 4
  ret i32 %129
}

declare dso_local %struct.taprio_sched* @qdisc_priv(%struct.Qdisc*) #1

declare dso_local %struct.net_device* @qdisc_dev(%struct.Qdisc*) #1

declare dso_local i64 @FULL_OFFLOAD_IS_ENABLED(i32) #1

declare dso_local i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack*, i8*) #1

declare dso_local i32 @nla_get_s32(%struct.nlattr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
