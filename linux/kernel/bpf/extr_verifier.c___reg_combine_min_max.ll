; ModuleID = '/home/carl/AnghaBench/linux/kernel/bpf/extr_verifier.c___reg_combine_min_max.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/bpf/extr_verifier.c___reg_combine_min_max.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_reg_state = type { i32, i8*, i8*, i8*, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bpf_reg_state*, %struct.bpf_reg_state*)* @__reg_combine_min_max to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__reg_combine_min_max(%struct.bpf_reg_state* %0, %struct.bpf_reg_state* %1) #0 {
  %3 = alloca %struct.bpf_reg_state*, align 8
  %4 = alloca %struct.bpf_reg_state*, align 8
  store %struct.bpf_reg_state* %0, %struct.bpf_reg_state** %3, align 8
  store %struct.bpf_reg_state* %1, %struct.bpf_reg_state** %4, align 8
  %5 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %3, align 8
  %6 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %5, i32 0, i32 4
  %7 = load i8*, i8** %6, align 8
  %8 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %4, align 8
  %9 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %8, i32 0, i32 4
  %10 = load i8*, i8** %9, align 8
  %11 = call i8* @max(i8* %7, i8* %10)
  %12 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %4, align 8
  %13 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %12, i32 0, i32 4
  store i8* %11, i8** %13, align 8
  %14 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %3, align 8
  %15 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %14, i32 0, i32 4
  store i8* %11, i8** %15, align 8
  %16 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %3, align 8
  %17 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %16, i32 0, i32 3
  %18 = load i8*, i8** %17, align 8
  %19 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %4, align 8
  %20 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %19, i32 0, i32 3
  %21 = load i8*, i8** %20, align 8
  %22 = call i8* @min(i8* %18, i8* %21)
  %23 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %4, align 8
  %24 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %23, i32 0, i32 3
  store i8* %22, i8** %24, align 8
  %25 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %3, align 8
  %26 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %25, i32 0, i32 3
  store i8* %22, i8** %26, align 8
  %27 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %3, align 8
  %28 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %27, i32 0, i32 2
  %29 = load i8*, i8** %28, align 8
  %30 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %4, align 8
  %31 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %30, i32 0, i32 2
  %32 = load i8*, i8** %31, align 8
  %33 = call i8* @max(i8* %29, i8* %32)
  %34 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %4, align 8
  %35 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %34, i32 0, i32 2
  store i8* %33, i8** %35, align 8
  %36 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %3, align 8
  %37 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %36, i32 0, i32 2
  store i8* %33, i8** %37, align 8
  %38 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %3, align 8
  %39 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %38, i32 0, i32 1
  %40 = load i8*, i8** %39, align 8
  %41 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %4, align 8
  %42 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %41, i32 0, i32 1
  %43 = load i8*, i8** %42, align 8
  %44 = call i8* @min(i8* %40, i8* %43)
  %45 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %4, align 8
  %46 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %45, i32 0, i32 1
  store i8* %44, i8** %46, align 8
  %47 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %3, align 8
  %48 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %47, i32 0, i32 1
  store i8* %44, i8** %48, align 8
  %49 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %3, align 8
  %50 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %4, align 8
  %53 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @tnum_intersect(i32 %51, i32 %54)
  %56 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %4, align 8
  %57 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 8
  %58 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %3, align 8
  %59 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %58, i32 0, i32 0
  store i32 %55, i32* %59, align 8
  %60 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %3, align 8
  %61 = call i32 @__update_reg_bounds(%struct.bpf_reg_state* %60)
  %62 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %4, align 8
  %63 = call i32 @__update_reg_bounds(%struct.bpf_reg_state* %62)
  %64 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %3, align 8
  %65 = call i32 @__reg_deduce_bounds(%struct.bpf_reg_state* %64)
  %66 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %4, align 8
  %67 = call i32 @__reg_deduce_bounds(%struct.bpf_reg_state* %66)
  %68 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %3, align 8
  %69 = call i32 @__reg_bound_offset(%struct.bpf_reg_state* %68)
  %70 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %4, align 8
  %71 = call i32 @__reg_bound_offset(%struct.bpf_reg_state* %70)
  %72 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %3, align 8
  %73 = call i32 @__update_reg_bounds(%struct.bpf_reg_state* %72)
  %74 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %4, align 8
  %75 = call i32 @__update_reg_bounds(%struct.bpf_reg_state* %74)
  ret void
}

declare dso_local i8* @max(i8*, i8*) #1

declare dso_local i8* @min(i8*, i8*) #1

declare dso_local i32 @tnum_intersect(i32, i32) #1

declare dso_local i32 @__update_reg_bounds(%struct.bpf_reg_state*) #1

declare dso_local i32 @__reg_deduce_bounds(%struct.bpf_reg_state*) #1

declare dso_local i32 @__reg_bound_offset(%struct.bpf_reg_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
