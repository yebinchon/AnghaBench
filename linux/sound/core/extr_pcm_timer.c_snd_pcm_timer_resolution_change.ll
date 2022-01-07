; ModuleID = '/home/carl/AnghaBench/linux/sound/core/extr_pcm_timer.c_snd_pcm_timer_resolution_change.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/extr_pcm_timer.c_snd_pcm_timer_resolution_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32, %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { i64, i64, i32 }

@.str = private unnamed_addr constant [66 x i8] c"pcm timer resolution out of range (rate = %u, period_size = %lu)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @snd_pcm_timer_resolution_change(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca %struct.snd_pcm_substream*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.snd_pcm_runtime*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %2, align 8
  %9 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %10 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %9, i32 0, i32 1
  %11 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %10, align 8
  store %struct.snd_pcm_runtime* %11, %struct.snd_pcm_runtime** %8, align 8
  store i64 1000000000, i64* %4, align 8
  %12 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %8, align 8
  %13 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %3, align 8
  %15 = load i64, i64* %3, align 8
  %16 = icmp ne i64 %15, 0
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  %19 = call i64 @snd_BUG_ON(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %1
  br label %92

22:                                               ; preds = %1
  %23 = load i64, i64* %4, align 8
  %24 = load i64, i64* %3, align 8
  %25 = call i64 @gcd(i64 %23, i64 %24)
  store i64 %25, i64* %6, align 8
  %26 = load i64, i64* %6, align 8
  %27 = load i64, i64* %4, align 8
  %28 = udiv i64 %27, %26
  store i64 %28, i64* %4, align 8
  %29 = load i64, i64* %6, align 8
  %30 = load i64, i64* %3, align 8
  %31 = udiv i64 %30, %29
  store i64 %31, i64* %3, align 8
  %32 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %8, align 8
  %33 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  store i64 %34, i64* %5, align 8
  %35 = load i64, i64* %5, align 8
  %36 = icmp ne i64 %35, 0
  %37 = xor i1 %36, true
  %38 = zext i1 %37 to i32
  %39 = call i64 @snd_BUG_ON(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %22
  br label %92

42:                                               ; preds = %22
  %43 = load i64, i64* %3, align 8
  %44 = load i64, i64* %5, align 8
  %45 = call i64 @gcd(i64 %43, i64 %44)
  store i64 %45, i64* %6, align 8
  %46 = load i64, i64* %6, align 8
  %47 = load i64, i64* %3, align 8
  %48 = udiv i64 %47, %46
  store i64 %48, i64* %3, align 8
  %49 = load i64, i64* %6, align 8
  %50 = load i64, i64* %5, align 8
  %51 = udiv i64 %50, %49
  store i64 %51, i64* %5, align 8
  store i64 1, i64* %7, align 8
  br label %52

52:                                               ; preds = %60, %42
  %53 = load i64, i64* %4, align 8
  %54 = load i64, i64* %5, align 8
  %55 = mul i64 %53, %54
  %56 = load i64, i64* %5, align 8
  %57 = udiv i64 %55, %56
  %58 = load i64, i64* %4, align 8
  %59 = icmp ne i64 %57, %58
  br i1 %59, label %60, label %65

60:                                               ; preds = %52
  %61 = load i64, i64* %4, align 8
  %62 = udiv i64 %61, 2
  store i64 %62, i64* %4, align 8
  %63 = load i64, i64* %7, align 8
  %64 = mul i64 %63, 2
  store i64 %64, i64* %7, align 8
  br label %52

65:                                               ; preds = %52
  %66 = load i64, i64* %3, align 8
  %67 = icmp eq i64 %66, 0
  br i1 %67, label %68, label %81

68:                                               ; preds = %65
  %69 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %70 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %8, align 8
  %73 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %8, align 8
  %76 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = call i32 @pcm_err(i32 %71, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str, i64 0, i64 0), i64 %74, i64 %77)
  %79 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %8, align 8
  %80 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %79, i32 0, i32 2
  store i32 -1, i32* %80, align 8
  br label %92

81:                                               ; preds = %65
  %82 = load i64, i64* %4, align 8
  %83 = load i64, i64* %5, align 8
  %84 = mul i64 %82, %83
  %85 = load i64, i64* %3, align 8
  %86 = udiv i64 %84, %85
  %87 = load i64, i64* %7, align 8
  %88 = mul i64 %86, %87
  %89 = trunc i64 %88 to i32
  %90 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %8, align 8
  %91 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %90, i32 0, i32 2
  store i32 %89, i32* %91, align 8
  br label %92

92:                                               ; preds = %81, %68, %41, %21
  ret void
}

declare dso_local i64 @snd_BUG_ON(i32) #1

declare dso_local i64 @gcd(i64, i64) #1

declare dso_local i32 @pcm_err(i32, i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
