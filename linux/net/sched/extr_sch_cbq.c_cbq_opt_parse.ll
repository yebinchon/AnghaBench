; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_cbq.c_cbq_opt_parse.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_cbq.c_cbq_opt_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nlattr = type { i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.tc_cbq_wrropt = type { i64 }

@TCA_CBQ_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"CBQ options are required for this operation\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@cbq_policy = common dso_local global i32 0, align 4
@TCA_CBQ_WRROPT = common dso_local global i64 0, align 8
@TC_CBQ_MAXPRIO = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [39 x i8] c"priority is bigger than TC_CBQ_MAXPRIO\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nlattr**, %struct.nlattr*, %struct.netlink_ext_ack*)* @cbq_opt_parse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cbq_opt_parse(%struct.nlattr** %0, %struct.nlattr* %1, %struct.netlink_ext_ack* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nlattr**, align 8
  %6 = alloca %struct.nlattr*, align 8
  %7 = alloca %struct.netlink_ext_ack*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.tc_cbq_wrropt*, align 8
  store %struct.nlattr** %0, %struct.nlattr*** %5, align 8
  store %struct.nlattr* %1, %struct.nlattr** %6, align 8
  store %struct.netlink_ext_ack* %2, %struct.netlink_ext_ack** %7, align 8
  %10 = load i32, i32* @TCA_CBQ_MAX, align 4
  %11 = add nsw i32 %10, 1
  %12 = zext i32 %11 to i64
  %13 = load %struct.nlattr*, %struct.nlattr** %6, align 8
  %14 = icmp ne %struct.nlattr* %13, null
  br i1 %14, label %20, label %15

15:                                               ; preds = %3
  %16 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %17 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %16, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %4, align 4
  br label %56

20:                                               ; preds = %3
  %21 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %22 = load i32, i32* @TCA_CBQ_MAX, align 4
  %23 = load %struct.nlattr*, %struct.nlattr** %6, align 8
  %24 = load i32, i32* @cbq_policy, align 4
  %25 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %26 = call i32 @nla_parse_nested_deprecated(%struct.nlattr** %21, i32 %22, %struct.nlattr* %23, i32 %24, %struct.netlink_ext_ack* %25)
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %8, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %20
  %30 = load i32, i32* %8, align 4
  store i32 %30, i32* %4, align 4
  br label %56

31:                                               ; preds = %20
  %32 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %33 = load i64, i64* @TCA_CBQ_WRROPT, align 8
  %34 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %32, i64 %33
  %35 = load %struct.nlattr*, %struct.nlattr** %34, align 8
  %36 = icmp ne %struct.nlattr* %35, null
  br i1 %36, label %37, label %54

37:                                               ; preds = %31
  %38 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %39 = load i64, i64* @TCA_CBQ_WRROPT, align 8
  %40 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %38, i64 %39
  %41 = load %struct.nlattr*, %struct.nlattr** %40, align 8
  %42 = call %struct.tc_cbq_wrropt* @nla_data(%struct.nlattr* %41)
  store %struct.tc_cbq_wrropt* %42, %struct.tc_cbq_wrropt** %9, align 8
  %43 = load %struct.tc_cbq_wrropt*, %struct.tc_cbq_wrropt** %9, align 8
  %44 = getelementptr inbounds %struct.tc_cbq_wrropt, %struct.tc_cbq_wrropt* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @TC_CBQ_MAXPRIO, align 8
  %47 = icmp sgt i64 %45, %46
  br i1 %47, label %48, label %53

48:                                               ; preds = %37
  %49 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %50 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %49, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %8, align 4
  br label %53

53:                                               ; preds = %48, %37
  br label %54

54:                                               ; preds = %53, %31
  %55 = load i32, i32* %8, align 4
  store i32 %55, i32* %4, align 4
  br label %56

56:                                               ; preds = %54, %29, %15
  %57 = load i32, i32* %4, align 4
  ret i32 %57
}

declare dso_local i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack*, i8*) #1

declare dso_local i32 @nla_parse_nested_deprecated(%struct.nlattr**, i32, %struct.nlattr*, i32, %struct.netlink_ext_ack*) #1

declare dso_local %struct.tc_cbq_wrropt* @nla_data(%struct.nlattr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
