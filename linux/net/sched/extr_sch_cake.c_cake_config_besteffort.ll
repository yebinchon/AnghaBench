; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_cake.c_cake_config_besteffort.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_cake.c_cake_config_besteffort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Qdisc = type { i32 }
%struct.cake_sched_data = type { i32, i32, i32, i32, i32, i32, %struct.cake_tin_data* }
%struct.cake_tin_data = type { i32, i32 }

@besteffort = common dso_local global i32 0, align 4
@normal_order = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Qdisc*)* @cake_config_besteffort to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cake_config_besteffort(%struct.Qdisc* %0) #0 {
  %2 = alloca %struct.Qdisc*, align 8
  %3 = alloca %struct.cake_sched_data*, align 8
  %4 = alloca %struct.cake_tin_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.Qdisc* %0, %struct.Qdisc** %2, align 8
  %7 = load %struct.Qdisc*, %struct.Qdisc** %2, align 8
  %8 = call %struct.cake_sched_data* @qdisc_priv(%struct.Qdisc* %7)
  store %struct.cake_sched_data* %8, %struct.cake_sched_data** %3, align 8
  %9 = load %struct.cake_sched_data*, %struct.cake_sched_data** %3, align 8
  %10 = getelementptr inbounds %struct.cake_sched_data, %struct.cake_sched_data* %9, i32 0, i32 6
  %11 = load %struct.cake_tin_data*, %struct.cake_tin_data** %10, align 8
  %12 = getelementptr inbounds %struct.cake_tin_data, %struct.cake_tin_data* %11, i64 0
  store %struct.cake_tin_data* %12, %struct.cake_tin_data** %4, align 8
  %13 = load %struct.Qdisc*, %struct.Qdisc** %2, align 8
  %14 = call i32 @qdisc_dev(%struct.Qdisc* %13)
  %15 = call i32 @psched_mtu(i32 %14)
  store i32 %15, i32* %5, align 4
  %16 = load %struct.cake_sched_data*, %struct.cake_sched_data** %3, align 8
  %17 = getelementptr inbounds %struct.cake_sched_data, %struct.cake_sched_data* %16, i32 0, i32 5
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %6, align 4
  %19 = load %struct.cake_sched_data*, %struct.cake_sched_data** %3, align 8
  %20 = getelementptr inbounds %struct.cake_sched_data, %struct.cake_sched_data* %19, i32 0, i32 0
  store i32 1, i32* %20, align 8
  %21 = load i32, i32* @besteffort, align 4
  %22 = load %struct.cake_sched_data*, %struct.cake_sched_data** %3, align 8
  %23 = getelementptr inbounds %struct.cake_sched_data, %struct.cake_sched_data* %22, i32 0, i32 4
  store i32 %21, i32* %23, align 8
  %24 = load i32, i32* @normal_order, align 4
  %25 = load %struct.cake_sched_data*, %struct.cake_sched_data** %3, align 8
  %26 = getelementptr inbounds %struct.cake_sched_data, %struct.cake_sched_data* %25, i32 0, i32 3
  store i32 %24, i32* %26, align 4
  %27 = load %struct.cake_tin_data*, %struct.cake_tin_data** %4, align 8
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* %5, align 4
  %30 = load %struct.cake_sched_data*, %struct.cake_sched_data** %3, align 8
  %31 = getelementptr inbounds %struct.cake_sched_data, %struct.cake_sched_data* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @us_to_ns(i32 %32)
  %34 = load %struct.cake_sched_data*, %struct.cake_sched_data** %3, align 8
  %35 = getelementptr inbounds %struct.cake_sched_data, %struct.cake_sched_data* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @us_to_ns(i32 %36)
  %38 = call i32 @cake_set_rate(%struct.cake_tin_data* %27, i32 %28, i32 %29, i32 %33, i32 %37)
  %39 = load %struct.cake_tin_data*, %struct.cake_tin_data** %4, align 8
  %40 = getelementptr inbounds %struct.cake_tin_data, %struct.cake_tin_data* %39, i32 0, i32 0
  store i32 65535, i32* %40, align 4
  %41 = load %struct.cake_tin_data*, %struct.cake_tin_data** %4, align 8
  %42 = getelementptr inbounds %struct.cake_tin_data, %struct.cake_tin_data* %41, i32 0, i32 1
  store i32 65535, i32* %42, align 4
  ret i32 0
}

declare dso_local %struct.cake_sched_data* @qdisc_priv(%struct.Qdisc*) #1

declare dso_local i32 @psched_mtu(i32) #1

declare dso_local i32 @qdisc_dev(%struct.Qdisc*) #1

declare dso_local i32 @cake_set_rate(%struct.cake_tin_data*, i32, i32, i32, i32) #1

declare dso_local i32 @us_to_ns(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
