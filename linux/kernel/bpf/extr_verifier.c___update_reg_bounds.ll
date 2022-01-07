; ModuleID = '/home/carl/AnghaBench/linux/kernel/bpf/extr_verifier.c___update_reg_bounds.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/bpf/extr_verifier.c___update_reg_bounds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_reg_state = type { %struct.TYPE_2__, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@s64 = common dso_local global i32 0, align 4
@S64_MIN = common dso_local global i32 0, align 4
@S64_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bpf_reg_state*)* @__update_reg_bounds to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__update_reg_bounds(%struct.bpf_reg_state* %0) #0 {
  %2 = alloca %struct.bpf_reg_state*, align 8
  store %struct.bpf_reg_state* %0, %struct.bpf_reg_state** %2, align 8
  %3 = load i32, i32* @s64, align 4
  %4 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %2, align 8
  %5 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %4, i32 0, i32 4
  %6 = load i32, i32* %5, align 4
  %7 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %2, align 8
  %8 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %2, align 8
  %12 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @S64_MIN, align 4
  %16 = and i32 %14, %15
  %17 = or i32 %10, %16
  %18 = call i32 @max_t(i32 %3, i32 %6, i32 %17)
  %19 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %2, align 8
  %20 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %19, i32 0, i32 4
  store i32 %18, i32* %20, align 4
  %21 = load i32, i32* @s64, align 4
  %22 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %2, align 8
  %23 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %2, align 8
  %26 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %2, align 8
  %30 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @S64_MAX, align 4
  %34 = and i32 %32, %33
  %35 = or i32 %28, %34
  %36 = call i32 @min_t(i32 %21, i32 %24, i32 %35)
  %37 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %2, align 8
  %38 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %37, i32 0, i32 3
  store i32 %36, i32* %38, align 4
  %39 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %2, align 8
  %40 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %2, align 8
  %43 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @max(i32 %41, i32 %45)
  %47 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %2, align 8
  %48 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %47, i32 0, i32 2
  store i32 %46, i32* %48, align 4
  %49 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %2, align 8
  %50 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %2, align 8
  %53 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %2, align 8
  %57 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = or i32 %55, %59
  %61 = call i32 @min(i32 %51, i32 %60)
  %62 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %2, align 8
  %63 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %62, i32 0, i32 1
  store i32 %61, i32* %63, align 4
  ret void
}

declare dso_local i32 @max_t(i32, i32, i32) #1

declare dso_local i32 @min_t(i32, i32, i32) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @min(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
