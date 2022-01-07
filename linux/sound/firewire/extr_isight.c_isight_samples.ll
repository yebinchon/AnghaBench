; ModuleID = '/home/carl/AnghaBench/linux/sound/firewire/extr_isight.c_isight_samples.c'
source_filename = "/home/carl/AnghaBench/linux/sound/firewire/extr_isight.c_isight_samples.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isight = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.isight*, i32*, i32)* @isight_samples to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @isight_samples(%struct.isight* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.isight*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_pcm_runtime*, align 8
  %8 = alloca i32, align 4
  store %struct.isight* %0, %struct.isight** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.isight*, %struct.isight** %4, align 8
  %10 = getelementptr inbounds %struct.isight, %struct.isight* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @READ_ONCE(i32 %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %3
  br label %83

15:                                               ; preds = %3
  %16 = load %struct.isight*, %struct.isight** %4, align 8
  %17 = getelementptr inbounds %struct.isight, %struct.isight* %16, i32 0, i32 1
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %19, align 8
  store %struct.snd_pcm_runtime* %20, %struct.snd_pcm_runtime** %7, align 8
  %21 = load %struct.isight*, %struct.isight** %4, align 8
  %22 = getelementptr inbounds %struct.isight, %struct.isight* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* %6, align 4
  %25 = add i32 %23, %24
  %26 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %7, align 8
  %27 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp ule i32 %25, %28
  br i1 %29, label %30, label %44

30:                                               ; preds = %15
  %31 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %7, align 8
  %32 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.isight*, %struct.isight** %4, align 8
  %35 = getelementptr inbounds %struct.isight, %struct.isight* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = mul i32 %36, 4
  %38 = zext i32 %37 to i64
  %39 = add nsw i64 %33, %38
  %40 = load i32*, i32** %5, align 8
  %41 = load i32, i32* %6, align 4
  %42 = mul i32 %41, 4
  %43 = call i32 @memcpy(i64 %39, i32* %40, i32 %42)
  br label %79

44:                                               ; preds = %15
  %45 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %7, align 8
  %46 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.isight*, %struct.isight** %4, align 8
  %49 = getelementptr inbounds %struct.isight, %struct.isight* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = sub i32 %47, %50
  store i32 %51, i32* %8, align 4
  %52 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %7, align 8
  %53 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.isight*, %struct.isight** %4, align 8
  %56 = getelementptr inbounds %struct.isight, %struct.isight* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = mul i32 %57, 4
  %59 = zext i32 %58 to i64
  %60 = add nsw i64 %54, %59
  %61 = load i32*, i32** %5, align 8
  %62 = load i32, i32* %8, align 4
  %63 = mul i32 %62, 4
  %64 = call i32 @memcpy(i64 %60, i32* %61, i32 %63)
  %65 = load i32, i32* %8, align 4
  %66 = mul i32 %65, 2
  %67 = load i32*, i32** %5, align 8
  %68 = zext i32 %66 to i64
  %69 = getelementptr inbounds i32, i32* %67, i64 %68
  store i32* %69, i32** %5, align 8
  %70 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %7, align 8
  %71 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = load i32*, i32** %5, align 8
  %74 = load i32, i32* %6, align 4
  %75 = load i32, i32* %8, align 4
  %76 = sub i32 %74, %75
  %77 = mul i32 %76, 4
  %78 = call i32 @memcpy(i64 %72, i32* %73, i32 %77)
  br label %79

79:                                               ; preds = %44, %30
  %80 = load %struct.isight*, %struct.isight** %4, align 8
  %81 = load i32, i32* %6, align 4
  %82 = call i32 @isight_update_pointers(%struct.isight* %80, i32 %81)
  br label %83

83:                                               ; preds = %79, %14
  ret void
}

declare dso_local i32 @READ_ONCE(i32) #1

declare dso_local i32 @memcpy(i64, i32*, i32) #1

declare dso_local i32 @isight_update_pointers(%struct.isight*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
