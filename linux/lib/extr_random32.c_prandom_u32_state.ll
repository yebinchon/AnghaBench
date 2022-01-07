; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_random32.c_prandom_u32_state.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_random32.c_prandom_u32_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rnd_state = type { i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @prandom_u32_state(%struct.rnd_state* %0) #0 {
  %2 = alloca %struct.rnd_state*, align 8
  store %struct.rnd_state* %0, %struct.rnd_state** %2, align 8
  %3 = load %struct.rnd_state*, %struct.rnd_state** %2, align 8
  %4 = getelementptr inbounds %struct.rnd_state, %struct.rnd_state* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = and i32 %5, -2
  %7 = shl i32 %6, 18
  %8 = load %struct.rnd_state*, %struct.rnd_state** %2, align 8
  %9 = getelementptr inbounds %struct.rnd_state, %struct.rnd_state* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = shl i32 %10, 6
  %12 = load %struct.rnd_state*, %struct.rnd_state** %2, align 8
  %13 = getelementptr inbounds %struct.rnd_state, %struct.rnd_state* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = xor i32 %11, %14
  %16 = ashr i32 %15, 13
  %17 = xor i32 %7, %16
  %18 = load %struct.rnd_state*, %struct.rnd_state** %2, align 8
  %19 = getelementptr inbounds %struct.rnd_state, %struct.rnd_state* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 4
  %20 = load %struct.rnd_state*, %struct.rnd_state** %2, align 8
  %21 = getelementptr inbounds %struct.rnd_state, %struct.rnd_state* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = and i32 %22, -8
  %24 = shl i32 %23, 2
  %25 = load %struct.rnd_state*, %struct.rnd_state** %2, align 8
  %26 = getelementptr inbounds %struct.rnd_state, %struct.rnd_state* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = shl i32 %27, 2
  %29 = load %struct.rnd_state*, %struct.rnd_state** %2, align 8
  %30 = getelementptr inbounds %struct.rnd_state, %struct.rnd_state* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = xor i32 %28, %31
  %33 = ashr i32 %32, 27
  %34 = xor i32 %24, %33
  %35 = load %struct.rnd_state*, %struct.rnd_state** %2, align 8
  %36 = getelementptr inbounds %struct.rnd_state, %struct.rnd_state* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 4
  %37 = load %struct.rnd_state*, %struct.rnd_state** %2, align 8
  %38 = getelementptr inbounds %struct.rnd_state, %struct.rnd_state* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = and i32 %39, -16
  %41 = shl i32 %40, 7
  %42 = load %struct.rnd_state*, %struct.rnd_state** %2, align 8
  %43 = getelementptr inbounds %struct.rnd_state, %struct.rnd_state* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = shl i32 %44, 13
  %46 = load %struct.rnd_state*, %struct.rnd_state** %2, align 8
  %47 = getelementptr inbounds %struct.rnd_state, %struct.rnd_state* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = xor i32 %45, %48
  %50 = ashr i32 %49, 21
  %51 = xor i32 %41, %50
  %52 = load %struct.rnd_state*, %struct.rnd_state** %2, align 8
  %53 = getelementptr inbounds %struct.rnd_state, %struct.rnd_state* %52, i32 0, i32 2
  store i32 %51, i32* %53, align 4
  %54 = load %struct.rnd_state*, %struct.rnd_state** %2, align 8
  %55 = getelementptr inbounds %struct.rnd_state, %struct.rnd_state* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 4
  %57 = and i32 %56, -128
  %58 = shl i32 %57, 13
  %59 = load %struct.rnd_state*, %struct.rnd_state** %2, align 8
  %60 = getelementptr inbounds %struct.rnd_state, %struct.rnd_state* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 4
  %62 = shl i32 %61, 3
  %63 = load %struct.rnd_state*, %struct.rnd_state** %2, align 8
  %64 = getelementptr inbounds %struct.rnd_state, %struct.rnd_state* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 4
  %66 = xor i32 %62, %65
  %67 = ashr i32 %66, 12
  %68 = xor i32 %58, %67
  %69 = load %struct.rnd_state*, %struct.rnd_state** %2, align 8
  %70 = getelementptr inbounds %struct.rnd_state, %struct.rnd_state* %69, i32 0, i32 3
  store i32 %68, i32* %70, align 4
  %71 = load %struct.rnd_state*, %struct.rnd_state** %2, align 8
  %72 = getelementptr inbounds %struct.rnd_state, %struct.rnd_state* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.rnd_state*, %struct.rnd_state** %2, align 8
  %75 = getelementptr inbounds %struct.rnd_state, %struct.rnd_state* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = xor i32 %73, %76
  %78 = load %struct.rnd_state*, %struct.rnd_state** %2, align 8
  %79 = getelementptr inbounds %struct.rnd_state, %struct.rnd_state* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 4
  %81 = xor i32 %77, %80
  %82 = load %struct.rnd_state*, %struct.rnd_state** %2, align 8
  %83 = getelementptr inbounds %struct.rnd_state, %struct.rnd_state* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 4
  %85 = xor i32 %81, %84
  ret i32 %85
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
