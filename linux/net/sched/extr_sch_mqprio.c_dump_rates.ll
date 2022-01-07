; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_mqprio.c_dump_rates.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_mqprio.c_dump_rates.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mqprio_sched = type { i32, i32*, i32* }
%struct.tc_mqprio_qopt = type { i32 }
%struct.sk_buff = type { i32 }
%struct.nlattr = type { i32 }

@TC_MQPRIO_F_MIN_RATE = common dso_local global i32 0, align 4
@TCA_MQPRIO_MIN_RATE64 = common dso_local global i32 0, align 4
@TC_MQPRIO_F_MAX_RATE = common dso_local global i32 0, align 4
@TCA_MQPRIO_MAX_RATE64 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mqprio_sched*, %struct.tc_mqprio_qopt*, %struct.sk_buff*)* @dump_rates to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dump_rates(%struct.mqprio_sched* %0, %struct.tc_mqprio_qopt* %1, %struct.sk_buff* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mqprio_sched*, align 8
  %6 = alloca %struct.tc_mqprio_qopt*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.nlattr*, align 8
  %9 = alloca i32, align 4
  store %struct.mqprio_sched* %0, %struct.mqprio_sched** %5, align 8
  store %struct.tc_mqprio_qopt* %1, %struct.tc_mqprio_qopt** %6, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %7, align 8
  %10 = load %struct.mqprio_sched*, %struct.mqprio_sched** %5, align 8
  %11 = getelementptr inbounds %struct.mqprio_sched, %struct.mqprio_sched* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @TC_MQPRIO_F_MIN_RATE, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %50

16:                                               ; preds = %3
  %17 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %18 = load i32, i32* @TCA_MQPRIO_MIN_RATE64, align 4
  %19 = call %struct.nlattr* @nla_nest_start_noflag(%struct.sk_buff* %17, i32 %18)
  store %struct.nlattr* %19, %struct.nlattr** %8, align 8
  %20 = load %struct.nlattr*, %struct.nlattr** %8, align 8
  %21 = icmp ne %struct.nlattr* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %16
  br label %92

23:                                               ; preds = %16
  store i32 0, i32* %9, align 4
  br label %24

24:                                               ; preds = %43, %23
  %25 = load i32, i32* %9, align 4
  %26 = load %struct.tc_mqprio_qopt*, %struct.tc_mqprio_qopt** %6, align 8
  %27 = getelementptr inbounds %struct.tc_mqprio_qopt, %struct.tc_mqprio_qopt* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp slt i32 %25, %28
  br i1 %29, label %30, label %46

30:                                               ; preds = %24
  %31 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %32 = load i32, i32* @TCA_MQPRIO_MIN_RATE64, align 4
  %33 = load %struct.mqprio_sched*, %struct.mqprio_sched** %5, align 8
  %34 = getelementptr inbounds %struct.mqprio_sched, %struct.mqprio_sched* %33, i32 0, i32 2
  %35 = load i32*, i32** %34, align 8
  %36 = load i32, i32* %9, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = call i64 @nla_put(%struct.sk_buff* %31, i32 %32, i32 4, i32* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %30
  br label %92

42:                                               ; preds = %30
  br label %43

43:                                               ; preds = %42
  %44 = load i32, i32* %9, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %9, align 4
  br label %24

46:                                               ; preds = %24
  %47 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %48 = load %struct.nlattr*, %struct.nlattr** %8, align 8
  %49 = call i32 @nla_nest_end(%struct.sk_buff* %47, %struct.nlattr* %48)
  br label %50

50:                                               ; preds = %46, %3
  %51 = load %struct.mqprio_sched*, %struct.mqprio_sched** %5, align 8
  %52 = getelementptr inbounds %struct.mqprio_sched, %struct.mqprio_sched* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @TC_MQPRIO_F_MAX_RATE, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %91

57:                                               ; preds = %50
  %58 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %59 = load i32, i32* @TCA_MQPRIO_MAX_RATE64, align 4
  %60 = call %struct.nlattr* @nla_nest_start_noflag(%struct.sk_buff* %58, i32 %59)
  store %struct.nlattr* %60, %struct.nlattr** %8, align 8
  %61 = load %struct.nlattr*, %struct.nlattr** %8, align 8
  %62 = icmp ne %struct.nlattr* %61, null
  br i1 %62, label %64, label %63

63:                                               ; preds = %57
  br label %92

64:                                               ; preds = %57
  store i32 0, i32* %9, align 4
  br label %65

65:                                               ; preds = %84, %64
  %66 = load i32, i32* %9, align 4
  %67 = load %struct.tc_mqprio_qopt*, %struct.tc_mqprio_qopt** %6, align 8
  %68 = getelementptr inbounds %struct.tc_mqprio_qopt, %struct.tc_mqprio_qopt* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = icmp slt i32 %66, %69
  br i1 %70, label %71, label %87

71:                                               ; preds = %65
  %72 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %73 = load i32, i32* @TCA_MQPRIO_MAX_RATE64, align 4
  %74 = load %struct.mqprio_sched*, %struct.mqprio_sched** %5, align 8
  %75 = getelementptr inbounds %struct.mqprio_sched, %struct.mqprio_sched* %74, i32 0, i32 1
  %76 = load i32*, i32** %75, align 8
  %77 = load i32, i32* %9, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %76, i64 %78
  %80 = call i64 @nla_put(%struct.sk_buff* %72, i32 %73, i32 4, i32* %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %71
  br label %92

83:                                               ; preds = %71
  br label %84

84:                                               ; preds = %83
  %85 = load i32, i32* %9, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %9, align 4
  br label %65

87:                                               ; preds = %65
  %88 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %89 = load %struct.nlattr*, %struct.nlattr** %8, align 8
  %90 = call i32 @nla_nest_end(%struct.sk_buff* %88, %struct.nlattr* %89)
  br label %91

91:                                               ; preds = %87, %50
  store i32 0, i32* %4, align 4
  br label %96

92:                                               ; preds = %82, %63, %41, %22
  %93 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %94 = load %struct.nlattr*, %struct.nlattr** %8, align 8
  %95 = call i32 @nla_nest_cancel(%struct.sk_buff* %93, %struct.nlattr* %94)
  store i32 -1, i32* %4, align 4
  br label %96

96:                                               ; preds = %92, %91
  %97 = load i32, i32* %4, align 4
  ret i32 %97
}

declare dso_local %struct.nlattr* @nla_nest_start_noflag(%struct.sk_buff*, i32) #1

declare dso_local i64 @nla_put(%struct.sk_buff*, i32, i32, i32*) #1

declare dso_local i32 @nla_nest_end(%struct.sk_buff*, %struct.nlattr*) #1

declare dso_local i32 @nla_nest_cancel(%struct.sk_buff*, %struct.nlattr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
