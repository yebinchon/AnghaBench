; ModuleID = '/home/carl/AnghaBench/linux/sound/firewire/extr_isight.c_isight_dropped_samples.c'
source_filename = "/home/carl/AnghaBench/linux/sound/firewire/extr_isight.c_isight_dropped_samples.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isight = type { i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.isight*, i32)* @isight_dropped_samples to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @isight_dropped_samples(%struct.isight* %0, i32 %1) #0 {
  %3 = alloca %struct.isight*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_pcm_runtime*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.isight* %0, %struct.isight** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.isight*, %struct.isight** %3, align 8
  %9 = getelementptr inbounds %struct.isight, %struct.isight* %8, i32 0, i32 3
  %10 = load i32, i32* %9, align 8
  %11 = call i32 @READ_ONCE(i32 %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  br label %88

14:                                               ; preds = %2
  %15 = load %struct.isight*, %struct.isight** %3, align 8
  %16 = getelementptr inbounds %struct.isight, %struct.isight* %15, i32 0, i32 2
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %18, align 8
  store %struct.snd_pcm_runtime* %19, %struct.snd_pcm_runtime** %5, align 8
  %20 = load i32, i32* %4, align 4
  %21 = load %struct.isight*, %struct.isight** %3, align 8
  %22 = getelementptr inbounds %struct.isight, %struct.isight* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = sub i32 %20, %23
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %27 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp slt i32 %25, %28
  br i1 %29, label %30, label %85

30:                                               ; preds = %14
  %31 = load %struct.isight*, %struct.isight** %3, align 8
  %32 = getelementptr inbounds %struct.isight, %struct.isight* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %6, align 4
  %35 = add nsw i32 %33, %34
  %36 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %37 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp sle i32 %35, %38
  br i1 %39, label %40, label %53

40:                                               ; preds = %30
  %41 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %42 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.isight*, %struct.isight** %3, align 8
  %45 = getelementptr inbounds %struct.isight, %struct.isight* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = mul nsw i32 %46, 4
  %48 = sext i32 %47 to i64
  %49 = add nsw i64 %43, %48
  %50 = load i32, i32* %6, align 4
  %51 = mul nsw i32 %50, 4
  %52 = call i32 @memset(i64 %49, i32 0, i32 %51)
  br label %81

53:                                               ; preds = %30
  %54 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %55 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.isight*, %struct.isight** %3, align 8
  %58 = getelementptr inbounds %struct.isight, %struct.isight* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = sub nsw i32 %56, %59
  store i32 %60, i32* %7, align 4
  %61 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %62 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.isight*, %struct.isight** %3, align 8
  %65 = getelementptr inbounds %struct.isight, %struct.isight* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = mul nsw i32 %66, 4
  %68 = sext i32 %67 to i64
  %69 = add nsw i64 %63, %68
  %70 = load i32, i32* %7, align 4
  %71 = mul i32 %70, 4
  %72 = call i32 @memset(i64 %69, i32 0, i32 %71)
  %73 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %74 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = load i32, i32* %6, align 4
  %77 = load i32, i32* %7, align 4
  %78 = sub i32 %76, %77
  %79 = mul i32 %78, 4
  %80 = call i32 @memset(i64 %75, i32 0, i32 %79)
  br label %81

81:                                               ; preds = %53, %40
  %82 = load %struct.isight*, %struct.isight** %3, align 8
  %83 = load i32, i32* %6, align 4
  %84 = call i32 @isight_update_pointers(%struct.isight* %82, i32 %83)
  br label %88

85:                                               ; preds = %14
  %86 = load %struct.isight*, %struct.isight** %3, align 8
  %87 = call i32 @isight_pcm_abort(%struct.isight* %86)
  br label %88

88:                                               ; preds = %13, %85, %81
  ret void
}

declare dso_local i32 @READ_ONCE(i32) #1

declare dso_local i32 @memset(i64, i32, i32) #1

declare dso_local i32 @isight_update_pointers(%struct.isight*, i32) #1

declare dso_local i32 @isight_pcm_abort(%struct.isight*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
