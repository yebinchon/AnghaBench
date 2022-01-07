; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_pie.c_pie_params_init.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_pie.c_pie_params_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pie_params = type { i32, i32, i32, i32, i32, i32, i32 }

@USEC_PER_MSEC = common dso_local global i32 0, align 4
@NSEC_PER_MSEC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pie_params*)* @pie_params_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pie_params_init(%struct.pie_params* %0) #0 {
  %2 = alloca %struct.pie_params*, align 8
  store %struct.pie_params* %0, %struct.pie_params** %2, align 8
  %3 = load %struct.pie_params*, %struct.pie_params** %2, align 8
  %4 = getelementptr inbounds %struct.pie_params, %struct.pie_params* %3, i32 0, i32 0
  store i32 2, i32* %4, align 4
  %5 = load %struct.pie_params*, %struct.pie_params** %2, align 8
  %6 = getelementptr inbounds %struct.pie_params, %struct.pie_params* %5, i32 0, i32 1
  store i32 20, i32* %6, align 4
  %7 = load i32, i32* @USEC_PER_MSEC, align 4
  %8 = mul nsw i32 15, %7
  %9 = call i32 @usecs_to_jiffies(i32 %8)
  %10 = load %struct.pie_params*, %struct.pie_params** %2, align 8
  %11 = getelementptr inbounds %struct.pie_params, %struct.pie_params* %10, i32 0, i32 6
  store i32 %9, i32* %11, align 4
  %12 = load %struct.pie_params*, %struct.pie_params** %2, align 8
  %13 = getelementptr inbounds %struct.pie_params, %struct.pie_params* %12, i32 0, i32 2
  store i32 1000, i32* %13, align 4
  %14 = load i32, i32* @NSEC_PER_MSEC, align 4
  %15 = mul nsw i32 15, %14
  %16 = call i32 @PSCHED_NS2TICKS(i32 %15)
  %17 = load %struct.pie_params*, %struct.pie_params** %2, align 8
  %18 = getelementptr inbounds %struct.pie_params, %struct.pie_params* %17, i32 0, i32 5
  store i32 %16, i32* %18, align 4
  %19 = load %struct.pie_params*, %struct.pie_params** %2, align 8
  %20 = getelementptr inbounds %struct.pie_params, %struct.pie_params* %19, i32 0, i32 3
  store i32 0, i32* %20, align 4
  %21 = load %struct.pie_params*, %struct.pie_params** %2, align 8
  %22 = getelementptr inbounds %struct.pie_params, %struct.pie_params* %21, i32 0, i32 4
  store i32 0, i32* %22, align 4
  ret void
}

declare dso_local i32 @usecs_to_jiffies(i32) #1

declare dso_local i32 @PSCHED_NS2TICKS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
