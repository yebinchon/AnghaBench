; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_netem.c_dump_loss_model.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_netem.c_dump_loss_model.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netem_sched_data = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32 }
%struct.sk_buff = type { i32 }
%struct.nlattr = type { i32 }
%struct.tc_netem_gimodel = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.tc_netem_gemodel = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@TCA_NETEM_LOSS = common dso_local global i32 0, align 4
@NETEM_LOSS_GI = common dso_local global i32 0, align 4
@NETEM_LOSS_GE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.netem_sched_data*, %struct.sk_buff*)* @dump_loss_model to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dump_loss_model(%struct.netem_sched_data* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.netem_sched_data*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.nlattr*, align 8
  %7 = alloca %struct.tc_netem_gimodel, align 4
  %8 = alloca %struct.tc_netem_gemodel, align 4
  store %struct.netem_sched_data* %0, %struct.netem_sched_data** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %9 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %10 = load i32, i32* @TCA_NETEM_LOSS, align 4
  %11 = call %struct.nlattr* @nla_nest_start_noflag(%struct.sk_buff* %9, i32 %10)
  store %struct.nlattr* %11, %struct.nlattr** %6, align 8
  %12 = load %struct.nlattr*, %struct.nlattr** %6, align 8
  %13 = icmp eq %struct.nlattr* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  br label %96

15:                                               ; preds = %2
  %16 = load %struct.netem_sched_data*, %struct.netem_sched_data** %4, align 8
  %17 = getelementptr inbounds %struct.netem_sched_data, %struct.netem_sched_data* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  switch i32 %18, label %92 [
    i32 128, label %19
    i32 130, label %23
    i32 129, label %59
  ]

19:                                               ; preds = %15
  %20 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %21 = load %struct.nlattr*, %struct.nlattr** %6, align 8
  %22 = call i32 @nla_nest_cancel(%struct.sk_buff* %20, %struct.nlattr* %21)
  store i32 0, i32* %3, align 4
  br label %100

23:                                               ; preds = %15
  %24 = getelementptr inbounds %struct.tc_netem_gimodel, %struct.tc_netem_gimodel* %7, i32 0, i32 0
  store i32 0, i32* %24, align 4
  %25 = getelementptr inbounds %struct.tc_netem_gimodel, %struct.tc_netem_gimodel* %7, i32 0, i32 1
  store i32 0, i32* %25, align 4
  %26 = getelementptr inbounds %struct.tc_netem_gimodel, %struct.tc_netem_gimodel* %7, i32 0, i32 2
  store i32 0, i32* %26, align 4
  %27 = getelementptr inbounds %struct.tc_netem_gimodel, %struct.tc_netem_gimodel* %7, i32 0, i32 3
  store i32 0, i32* %27, align 4
  %28 = getelementptr inbounds %struct.tc_netem_gimodel, %struct.tc_netem_gimodel* %7, i32 0, i32 4
  %29 = load %struct.netem_sched_data*, %struct.netem_sched_data** %4, align 8
  %30 = getelementptr inbounds %struct.netem_sched_data, %struct.netem_sched_data* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 4
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %28, align 4
  %33 = getelementptr inbounds %struct.tc_netem_gimodel, %struct.tc_netem_gimodel* %7, i32 0, i32 5
  %34 = load %struct.netem_sched_data*, %struct.netem_sched_data** %4, align 8
  %35 = getelementptr inbounds %struct.netem_sched_data, %struct.netem_sched_data* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %33, align 4
  %38 = getelementptr inbounds %struct.tc_netem_gimodel, %struct.tc_netem_gimodel* %7, i32 0, i32 6
  %39 = load %struct.netem_sched_data*, %struct.netem_sched_data** %4, align 8
  %40 = getelementptr inbounds %struct.netem_sched_data, %struct.netem_sched_data* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %38, align 4
  %43 = getelementptr inbounds %struct.tc_netem_gimodel, %struct.tc_netem_gimodel* %7, i32 0, i32 7
  %44 = load %struct.netem_sched_data*, %struct.netem_sched_data** %4, align 8
  %45 = getelementptr inbounds %struct.netem_sched_data, %struct.netem_sched_data* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %43, align 4
  %48 = getelementptr inbounds %struct.tc_netem_gimodel, %struct.tc_netem_gimodel* %7, i32 0, i32 8
  %49 = load %struct.netem_sched_data*, %struct.netem_sched_data** %4, align 8
  %50 = getelementptr inbounds %struct.netem_sched_data, %struct.netem_sched_data* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 4
  store i32 %52, i32* %48, align 4
  %53 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %54 = load i32, i32* @NETEM_LOSS_GI, align 4
  %55 = call i32 @nla_put(%struct.sk_buff* %53, i32 %54, i32 36, %struct.tc_netem_gimodel* %7)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %23
  br label %96

58:                                               ; preds = %23
  br label %92

59:                                               ; preds = %15
  %60 = getelementptr inbounds %struct.tc_netem_gemodel, %struct.tc_netem_gemodel* %8, i32 0, i32 0
  %61 = load %struct.netem_sched_data*, %struct.netem_sched_data** %4, align 8
  %62 = getelementptr inbounds %struct.netem_sched_data, %struct.netem_sched_data* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  store i32 %64, i32* %60, align 4
  %65 = getelementptr inbounds %struct.tc_netem_gemodel, %struct.tc_netem_gemodel* %8, i32 0, i32 1
  %66 = load %struct.netem_sched_data*, %struct.netem_sched_data** %4, align 8
  %67 = getelementptr inbounds %struct.netem_sched_data, %struct.netem_sched_data* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  store i32 %69, i32* %65, align 4
  %70 = getelementptr inbounds %struct.tc_netem_gemodel, %struct.tc_netem_gemodel* %8, i32 0, i32 2
  %71 = load %struct.netem_sched_data*, %struct.netem_sched_data** %4, align 8
  %72 = getelementptr inbounds %struct.netem_sched_data, %struct.netem_sched_data* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  store i32 %74, i32* %70, align 4
  %75 = getelementptr inbounds %struct.tc_netem_gemodel, %struct.tc_netem_gemodel* %8, i32 0, i32 3
  %76 = load %struct.netem_sched_data*, %struct.netem_sched_data** %4, align 8
  %77 = getelementptr inbounds %struct.netem_sched_data, %struct.netem_sched_data* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 4
  store i32 %79, i32* %75, align 4
  %80 = getelementptr inbounds %struct.tc_netem_gemodel, %struct.tc_netem_gemodel* %8, i32 0, i32 4
  store i32 0, i32* %80, align 4
  %81 = getelementptr inbounds %struct.tc_netem_gemodel, %struct.tc_netem_gemodel* %8, i32 0, i32 5
  store i32 0, i32* %81, align 4
  %82 = getelementptr inbounds %struct.tc_netem_gemodel, %struct.tc_netem_gemodel* %8, i32 0, i32 6
  store i32 0, i32* %82, align 4
  %83 = getelementptr inbounds %struct.tc_netem_gemodel, %struct.tc_netem_gemodel* %8, i32 0, i32 7
  store i32 0, i32* %83, align 4
  %84 = getelementptr inbounds %struct.tc_netem_gemodel, %struct.tc_netem_gemodel* %8, i32 0, i32 8
  store i32 0, i32* %84, align 4
  %85 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %86 = load i32, i32* @NETEM_LOSS_GE, align 4
  %87 = bitcast %struct.tc_netem_gemodel* %8 to %struct.tc_netem_gimodel*
  %88 = call i32 @nla_put(%struct.sk_buff* %85, i32 %86, i32 36, %struct.tc_netem_gimodel* %87)
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %59
  br label %96

91:                                               ; preds = %59
  br label %92

92:                                               ; preds = %15, %91, %58
  %93 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %94 = load %struct.nlattr*, %struct.nlattr** %6, align 8
  %95 = call i32 @nla_nest_end(%struct.sk_buff* %93, %struct.nlattr* %94)
  store i32 0, i32* %3, align 4
  br label %100

96:                                               ; preds = %90, %57, %14
  %97 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %98 = load %struct.nlattr*, %struct.nlattr** %6, align 8
  %99 = call i32 @nla_nest_cancel(%struct.sk_buff* %97, %struct.nlattr* %98)
  store i32 -1, i32* %3, align 4
  br label %100

100:                                              ; preds = %96, %92, %19
  %101 = load i32, i32* %3, align 4
  ret i32 %101
}

declare dso_local %struct.nlattr* @nla_nest_start_noflag(%struct.sk_buff*, i32) #1

declare dso_local i32 @nla_nest_cancel(%struct.sk_buff*, %struct.nlattr*) #1

declare dso_local i32 @nla_put(%struct.sk_buff*, i32, i32, %struct.tc_netem_gimodel*) #1

declare dso_local i32 @nla_nest_end(%struct.sk_buff*, %struct.nlattr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
