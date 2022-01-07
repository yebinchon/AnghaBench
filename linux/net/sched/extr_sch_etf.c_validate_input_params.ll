; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_etf.c_validate_input_params.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_etf.c_validate_input_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tc_etf_qopt = type { i64, i64 }
%struct.netlink_ext_ack = type { i32 }

@.str = private unnamed_addr constant [35 x i8] c"Dynamic clockids are not supported\00", align 1
@ENOTSUPP = common dso_local global i32 0, align 4
@CLOCK_TAI = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [40 x i8] c"Invalid clockid. CLOCK_TAI must be used\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"Delta must be positive\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tc_etf_qopt*, %struct.netlink_ext_ack*)* @validate_input_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @validate_input_params(%struct.tc_etf_qopt* %0, %struct.netlink_ext_ack* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tc_etf_qopt*, align 8
  %5 = alloca %struct.netlink_ext_ack*, align 8
  store %struct.tc_etf_qopt* %0, %struct.tc_etf_qopt** %4, align 8
  store %struct.netlink_ext_ack* %1, %struct.netlink_ext_ack** %5, align 8
  %6 = load %struct.tc_etf_qopt*, %struct.tc_etf_qopt** %4, align 8
  %7 = getelementptr inbounds %struct.tc_etf_qopt, %struct.tc_etf_qopt* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp slt i64 %8, 0
  br i1 %9, label %10, label %15

10:                                               ; preds = %2
  %11 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %5, align 8
  %12 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %11, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %13 = load i32, i32* @ENOTSUPP, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %37

15:                                               ; preds = %2
  %16 = load %struct.tc_etf_qopt*, %struct.tc_etf_qopt** %4, align 8
  %17 = getelementptr inbounds %struct.tc_etf_qopt, %struct.tc_etf_qopt* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @CLOCK_TAI, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %26

21:                                               ; preds = %15
  %22 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %5, align 8
  %23 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %22, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %37

26:                                               ; preds = %15
  %27 = load %struct.tc_etf_qopt*, %struct.tc_etf_qopt** %4, align 8
  %28 = getelementptr inbounds %struct.tc_etf_qopt, %struct.tc_etf_qopt* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = icmp slt i64 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %26
  %32 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %5, align 8
  %33 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %32, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %3, align 4
  br label %37

36:                                               ; preds = %26
  store i32 0, i32* %3, align 4
  br label %37

37:                                               ; preds = %36, %31, %21, %10
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
