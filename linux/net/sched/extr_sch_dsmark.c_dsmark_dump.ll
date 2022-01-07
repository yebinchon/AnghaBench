; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_dsmark.c_dsmark_dump.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_dsmark.c_dsmark_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Qdisc = type { i32 }
%struct.sk_buff = type { i32 }
%struct.dsmark_qdisc_data = type { i64, i64, i64 }
%struct.nlattr = type { i32 }

@TCA_OPTIONS = common dso_local global i32 0, align 4
@TCA_DSMARK_INDICES = common dso_local global i32 0, align 4
@NO_DEFAULT_INDEX = common dso_local global i64 0, align 8
@TCA_DSMARK_DEFAULT_INDEX = common dso_local global i32 0, align 4
@TCA_DSMARK_SET_TC_INDEX = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Qdisc*, %struct.sk_buff*)* @dsmark_dump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dsmark_dump(%struct.Qdisc* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.Qdisc*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.dsmark_qdisc_data*, align 8
  %7 = alloca %struct.nlattr*, align 8
  store %struct.Qdisc* %0, %struct.Qdisc** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %8 = load %struct.Qdisc*, %struct.Qdisc** %4, align 8
  %9 = call %struct.dsmark_qdisc_data* @qdisc_priv(%struct.Qdisc* %8)
  store %struct.dsmark_qdisc_data* %9, %struct.dsmark_qdisc_data** %6, align 8
  store %struct.nlattr* null, %struct.nlattr** %7, align 8
  %10 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %11 = load i32, i32* @TCA_OPTIONS, align 4
  %12 = call %struct.nlattr* @nla_nest_start_noflag(%struct.sk_buff* %10, i32 %11)
  store %struct.nlattr* %12, %struct.nlattr** %7, align 8
  %13 = load %struct.nlattr*, %struct.nlattr** %7, align 8
  %14 = icmp eq %struct.nlattr* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  br label %55

16:                                               ; preds = %2
  %17 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %18 = load i32, i32* @TCA_DSMARK_INDICES, align 4
  %19 = load %struct.dsmark_qdisc_data*, %struct.dsmark_qdisc_data** %6, align 8
  %20 = getelementptr inbounds %struct.dsmark_qdisc_data, %struct.dsmark_qdisc_data* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = call i64 @nla_put_u16(%struct.sk_buff* %17, i32 %18, i64 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %16
  br label %55

25:                                               ; preds = %16
  %26 = load %struct.dsmark_qdisc_data*, %struct.dsmark_qdisc_data** %6, align 8
  %27 = getelementptr inbounds %struct.dsmark_qdisc_data, %struct.dsmark_qdisc_data* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @NO_DEFAULT_INDEX, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %40

31:                                               ; preds = %25
  %32 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %33 = load i32, i32* @TCA_DSMARK_DEFAULT_INDEX, align 4
  %34 = load %struct.dsmark_qdisc_data*, %struct.dsmark_qdisc_data** %6, align 8
  %35 = getelementptr inbounds %struct.dsmark_qdisc_data, %struct.dsmark_qdisc_data* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = call i64 @nla_put_u16(%struct.sk_buff* %32, i32 %33, i64 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %31
  br label %55

40:                                               ; preds = %31, %25
  %41 = load %struct.dsmark_qdisc_data*, %struct.dsmark_qdisc_data** %6, align 8
  %42 = getelementptr inbounds %struct.dsmark_qdisc_data, %struct.dsmark_qdisc_data* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %40
  %46 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %47 = load i32, i32* @TCA_DSMARK_SET_TC_INDEX, align 4
  %48 = call i64 @nla_put_flag(%struct.sk_buff* %46, i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %45
  br label %55

51:                                               ; preds = %45, %40
  %52 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %53 = load %struct.nlattr*, %struct.nlattr** %7, align 8
  %54 = call i32 @nla_nest_end(%struct.sk_buff* %52, %struct.nlattr* %53)
  store i32 %54, i32* %3, align 4
  br label %61

55:                                               ; preds = %50, %39, %24, %15
  %56 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %57 = load %struct.nlattr*, %struct.nlattr** %7, align 8
  %58 = call i32 @nla_nest_cancel(%struct.sk_buff* %56, %struct.nlattr* %57)
  %59 = load i32, i32* @EMSGSIZE, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %3, align 4
  br label %61

61:                                               ; preds = %55, %51
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

declare dso_local %struct.dsmark_qdisc_data* @qdisc_priv(%struct.Qdisc*) #1

declare dso_local %struct.nlattr* @nla_nest_start_noflag(%struct.sk_buff*, i32) #1

declare dso_local i64 @nla_put_u16(%struct.sk_buff*, i32, i64) #1

declare dso_local i64 @nla_put_flag(%struct.sk_buff*, i32) #1

declare dso_local i32 @nla_nest_end(%struct.sk_buff*, %struct.nlattr*) #1

declare dso_local i32 @nla_nest_cancel(%struct.sk_buff*, %struct.nlattr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
