; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_cake.c_cobalt_newton_step.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_cake.c_cobalt_newton_step.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cobalt_vars = type { i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cobalt_vars*)* @cobalt_newton_step to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cobalt_newton_step(%struct.cobalt_vars* %0) #0 {
  %2 = alloca %struct.cobalt_vars*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.cobalt_vars* %0, %struct.cobalt_vars** %2, align 8
  %6 = load %struct.cobalt_vars*, %struct.cobalt_vars** %2, align 8
  %7 = getelementptr inbounds %struct.cobalt_vars, %struct.cobalt_vars* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  store i32 %8, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* %3, align 4
  %11 = mul nsw i32 %9, %10
  %12 = ashr i32 %11, 32
  store i32 %12, i32* %4, align 4
  %13 = load %struct.cobalt_vars*, %struct.cobalt_vars** %2, align 8
  %14 = getelementptr inbounds %struct.cobalt_vars, %struct.cobalt_vars* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = trunc i64 %15 to i32
  %17 = load i32, i32* %4, align 4
  %18 = mul nsw i32 %16, %17
  %19 = sext i32 %18 to i64
  %20 = sub nsw i64 12884901888, %19
  %21 = trunc i64 %20 to i32
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %5, align 4
  %23 = ashr i32 %22, 2
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* %3, align 4
  %26 = mul nsw i32 %24, %25
  %27 = ashr i32 %26, 31
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %5, align 4
  %29 = load %struct.cobalt_vars*, %struct.cobalt_vars** %2, align 8
  %30 = getelementptr inbounds %struct.cobalt_vars, %struct.cobalt_vars* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
