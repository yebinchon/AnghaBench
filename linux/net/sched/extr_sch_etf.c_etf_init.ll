; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_etf.c_etf_init.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_etf.c_etf_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Qdisc = type { i64 }
%struct.nlattr = type { i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.etf_sched_data = type { i32, i32, i32, i32, i64, i64, i32, i64 }
%struct.net_device = type { i32 }
%struct.tc_etf_qopt = type { i32, i32 }

@TCA_ETF_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"Missing ETF qdisc options which are mandatory\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@etf_policy = common dso_local global i32 0, align 4
@TCA_ETF_PARMS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [33 x i8] c"Missing mandatory ETF parameters\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"delta %d clockid %d offload %s deadline %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"on\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"off\00", align 1
@ktime_get_real = common dso_local global i32 0, align 4
@ktime_get = common dso_local global i32 0, align 4
@ktime_get_boottime = common dso_local global i32 0, align 4
@ktime_get_clocktai = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [25 x i8] c"Clockid is not supported\00", align 1
@ENOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Qdisc*, %struct.nlattr*, %struct.netlink_ext_ack*)* @etf_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @etf_init(%struct.Qdisc* %0, %struct.nlattr* %1, %struct.netlink_ext_ack* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.Qdisc*, align 8
  %6 = alloca %struct.nlattr*, align 8
  %7 = alloca %struct.netlink_ext_ack*, align 8
  %8 = alloca %struct.etf_sched_data*, align 8
  %9 = alloca %struct.net_device*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.tc_etf_qopt*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.Qdisc* %0, %struct.Qdisc** %5, align 8
  store %struct.nlattr* %1, %struct.nlattr** %6, align 8
  store %struct.netlink_ext_ack* %2, %struct.netlink_ext_ack** %7, align 8
  %15 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %16 = call %struct.etf_sched_data* @qdisc_priv(%struct.Qdisc* %15)
  store %struct.etf_sched_data* %16, %struct.etf_sched_data** %8, align 8
  %17 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %18 = call %struct.net_device* @qdisc_dev(%struct.Qdisc* %17)
  store %struct.net_device* %18, %struct.net_device** %9, align 8
  %19 = load i32, i32* @TCA_ETF_MAX, align 4
  %20 = add nsw i32 %19, 1
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %10, align 8
  %23 = alloca %struct.nlattr*, i64 %21, align 16
  store i64 %21, i64* %11, align 8
  %24 = load %struct.nlattr*, %struct.nlattr** %6, align 8
  %25 = icmp ne %struct.nlattr* %24, null
  br i1 %25, label %31, label %26

26:                                               ; preds = %3
  %27 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %28 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %27, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %157

31:                                               ; preds = %3
  %32 = load i32, i32* @TCA_ETF_MAX, align 4
  %33 = load %struct.nlattr*, %struct.nlattr** %6, align 8
  %34 = load i32, i32* @etf_policy, align 4
  %35 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %36 = call i32 @nla_parse_nested_deprecated(%struct.nlattr** %23, i32 %32, %struct.nlattr* %33, i32 %34, %struct.netlink_ext_ack* %35)
  store i32 %36, i32* %13, align 4
  %37 = load i32, i32* %13, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %31
  %40 = load i32, i32* %13, align 4
  store i32 %40, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %157

41:                                               ; preds = %31
  %42 = load i64, i64* @TCA_ETF_PARMS, align 8
  %43 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %23, i64 %42
  %44 = load %struct.nlattr*, %struct.nlattr** %43, align 8
  %45 = icmp ne %struct.nlattr* %44, null
  br i1 %45, label %51, label %46

46:                                               ; preds = %41
  %47 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %48 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %47, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %157

51:                                               ; preds = %41
  %52 = load i64, i64* @TCA_ETF_PARMS, align 8
  %53 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %23, i64 %52
  %54 = load %struct.nlattr*, %struct.nlattr** %53, align 8
  %55 = call %struct.tc_etf_qopt* @nla_data(%struct.nlattr* %54)
  store %struct.tc_etf_qopt* %55, %struct.tc_etf_qopt** %12, align 8
  %56 = load %struct.tc_etf_qopt*, %struct.tc_etf_qopt** %12, align 8
  %57 = getelementptr inbounds %struct.tc_etf_qopt, %struct.tc_etf_qopt* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.tc_etf_qopt*, %struct.tc_etf_qopt** %12, align 8
  %60 = getelementptr inbounds %struct.tc_etf_qopt, %struct.tc_etf_qopt* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.tc_etf_qopt*, %struct.tc_etf_qopt** %12, align 8
  %63 = call i64 @OFFLOAD_IS_ON(%struct.tc_etf_qopt* %62)
  %64 = icmp ne i64 %63, 0
  %65 = zext i1 %64 to i64
  %66 = select i1 %64, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0)
  %67 = load %struct.tc_etf_qopt*, %struct.tc_etf_qopt** %12, align 8
  %68 = call i64 @DEADLINE_MODE_IS_ON(%struct.tc_etf_qopt* %67)
  %69 = icmp ne i64 %68, 0
  %70 = zext i1 %69 to i64
  %71 = select i1 %69, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0)
  %72 = call i32 @pr_debug(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i32 %58, i32 %61, i8* %66, i8* %71)
  %73 = load %struct.tc_etf_qopt*, %struct.tc_etf_qopt** %12, align 8
  %74 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %75 = call i32 @validate_input_params(%struct.tc_etf_qopt* %73, %struct.netlink_ext_ack* %74)
  store i32 %75, i32* %13, align 4
  %76 = load i32, i32* %13, align 4
  %77 = icmp slt i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %51
  %79 = load i32, i32* %13, align 4
  store i32 %79, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %157

80:                                               ; preds = %51
  %81 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %82 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load %struct.net_device*, %struct.net_device** %9, align 8
  %85 = call i64 @netdev_get_tx_queue(%struct.net_device* %84, i32 0)
  %86 = sub nsw i64 %83, %85
  %87 = load %struct.etf_sched_data*, %struct.etf_sched_data** %8, align 8
  %88 = getelementptr inbounds %struct.etf_sched_data, %struct.etf_sched_data* %87, i32 0, i32 7
  store i64 %86, i64* %88, align 8
  %89 = load %struct.tc_etf_qopt*, %struct.tc_etf_qopt** %12, align 8
  %90 = call i64 @OFFLOAD_IS_ON(%struct.tc_etf_qopt* %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %102

92:                                               ; preds = %80
  %93 = load %struct.net_device*, %struct.net_device** %9, align 8
  %94 = load %struct.etf_sched_data*, %struct.etf_sched_data** %8, align 8
  %95 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %96 = call i32 @etf_enable_offload(%struct.net_device* %93, %struct.etf_sched_data* %94, %struct.netlink_ext_ack* %95)
  store i32 %96, i32* %13, align 4
  %97 = load i32, i32* %13, align 4
  %98 = icmp slt i32 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %92
  %100 = load i32, i32* %13, align 4
  store i32 %100, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %157

101:                                              ; preds = %92
  br label %102

102:                                              ; preds = %101, %80
  %103 = load %struct.tc_etf_qopt*, %struct.tc_etf_qopt** %12, align 8
  %104 = getelementptr inbounds %struct.tc_etf_qopt, %struct.tc_etf_qopt* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.etf_sched_data*, %struct.etf_sched_data** %8, align 8
  %107 = getelementptr inbounds %struct.etf_sched_data, %struct.etf_sched_data* %106, i32 0, i32 6
  store i32 %105, i32* %107, align 8
  %108 = load %struct.tc_etf_qopt*, %struct.tc_etf_qopt** %12, align 8
  %109 = getelementptr inbounds %struct.tc_etf_qopt, %struct.tc_etf_qopt* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.etf_sched_data*, %struct.etf_sched_data** %8, align 8
  %112 = getelementptr inbounds %struct.etf_sched_data, %struct.etf_sched_data* %111, i32 0, i32 0
  store i32 %110, i32* %112, align 8
  %113 = load %struct.tc_etf_qopt*, %struct.tc_etf_qopt** %12, align 8
  %114 = call i64 @OFFLOAD_IS_ON(%struct.tc_etf_qopt* %113)
  %115 = load %struct.etf_sched_data*, %struct.etf_sched_data** %8, align 8
  %116 = getelementptr inbounds %struct.etf_sched_data, %struct.etf_sched_data* %115, i32 0, i32 5
  store i64 %114, i64* %116, align 8
  %117 = load %struct.tc_etf_qopt*, %struct.tc_etf_qopt** %12, align 8
  %118 = call i64 @DEADLINE_MODE_IS_ON(%struct.tc_etf_qopt* %117)
  %119 = load %struct.etf_sched_data*, %struct.etf_sched_data** %8, align 8
  %120 = getelementptr inbounds %struct.etf_sched_data, %struct.etf_sched_data* %119, i32 0, i32 4
  store i64 %118, i64* %120, align 8
  %121 = load %struct.tc_etf_qopt*, %struct.tc_etf_qopt** %12, align 8
  %122 = call i32 @SKIP_SOCK_CHECK_IS_SET(%struct.tc_etf_qopt* %121)
  %123 = load %struct.etf_sched_data*, %struct.etf_sched_data** %8, align 8
  %124 = getelementptr inbounds %struct.etf_sched_data, %struct.etf_sched_data* %123, i32 0, i32 3
  store i32 %122, i32* %124, align 4
  %125 = load %struct.etf_sched_data*, %struct.etf_sched_data** %8, align 8
  %126 = getelementptr inbounds %struct.etf_sched_data, %struct.etf_sched_data* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  switch i32 %127, label %144 [
    i32 129, label %128
    i32 130, label %132
    i32 131, label %136
    i32 128, label %140
  ]

128:                                              ; preds = %102
  %129 = load i32, i32* @ktime_get_real, align 4
  %130 = load %struct.etf_sched_data*, %struct.etf_sched_data** %8, align 8
  %131 = getelementptr inbounds %struct.etf_sched_data, %struct.etf_sched_data* %130, i32 0, i32 2
  store i32 %129, i32* %131, align 8
  br label %149

132:                                              ; preds = %102
  %133 = load i32, i32* @ktime_get, align 4
  %134 = load %struct.etf_sched_data*, %struct.etf_sched_data** %8, align 8
  %135 = getelementptr inbounds %struct.etf_sched_data, %struct.etf_sched_data* %134, i32 0, i32 2
  store i32 %133, i32* %135, align 8
  br label %149

136:                                              ; preds = %102
  %137 = load i32, i32* @ktime_get_boottime, align 4
  %138 = load %struct.etf_sched_data*, %struct.etf_sched_data** %8, align 8
  %139 = getelementptr inbounds %struct.etf_sched_data, %struct.etf_sched_data* %138, i32 0, i32 2
  store i32 %137, i32* %139, align 8
  br label %149

140:                                              ; preds = %102
  %141 = load i32, i32* @ktime_get_clocktai, align 4
  %142 = load %struct.etf_sched_data*, %struct.etf_sched_data** %8, align 8
  %143 = getelementptr inbounds %struct.etf_sched_data, %struct.etf_sched_data* %142, i32 0, i32 2
  store i32 %141, i32* %143, align 8
  br label %149

144:                                              ; preds = %102
  %145 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %146 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %145, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0))
  %147 = load i32, i32* @ENOTSUPP, align 4
  %148 = sub nsw i32 0, %147
  store i32 %148, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %157

149:                                              ; preds = %140, %136, %132, %128
  %150 = load %struct.etf_sched_data*, %struct.etf_sched_data** %8, align 8
  %151 = getelementptr inbounds %struct.etf_sched_data, %struct.etf_sched_data* %150, i32 0, i32 1
  %152 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %153 = load %struct.etf_sched_data*, %struct.etf_sched_data** %8, align 8
  %154 = getelementptr inbounds %struct.etf_sched_data, %struct.etf_sched_data* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = call i32 @qdisc_watchdog_init_clockid(i32* %151, %struct.Qdisc* %152, i32 %155)
  store i32 0, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %157

157:                                              ; preds = %149, %144, %99, %78, %46, %39, %26
  %158 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %158)
  %159 = load i32, i32* %4, align 4
  ret i32 %159
}

declare dso_local %struct.etf_sched_data* @qdisc_priv(%struct.Qdisc*) #1

declare dso_local %struct.net_device* @qdisc_dev(%struct.Qdisc*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack*, i8*) #1

declare dso_local i32 @nla_parse_nested_deprecated(%struct.nlattr**, i32, %struct.nlattr*, i32, %struct.netlink_ext_ack*) #1

declare dso_local %struct.tc_etf_qopt* @nla_data(%struct.nlattr*) #1

declare dso_local i32 @pr_debug(i8*, i32, i32, i8*, i8*) #1

declare dso_local i64 @OFFLOAD_IS_ON(%struct.tc_etf_qopt*) #1

declare dso_local i64 @DEADLINE_MODE_IS_ON(%struct.tc_etf_qopt*) #1

declare dso_local i32 @validate_input_params(%struct.tc_etf_qopt*, %struct.netlink_ext_ack*) #1

declare dso_local i64 @netdev_get_tx_queue(%struct.net_device*, i32) #1

declare dso_local i32 @etf_enable_offload(%struct.net_device*, %struct.etf_sched_data*, %struct.netlink_ext_ack*) #1

declare dso_local i32 @SKIP_SOCK_CHECK_IS_SET(%struct.tc_etf_qopt*) #1

declare dso_local i32 @qdisc_watchdog_init_clockid(i32*, %struct.Qdisc*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
