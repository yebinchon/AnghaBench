; ModuleID = '/home/carl/AnghaBench/linux/sound/firewire/extr_isight.c_isight_update_pointers.c'
source_filename = "/home/carl/AnghaBench/linux/sound/firewire/extr_isight.c_isight_update_pointers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isight = type { i32, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.isight*, i32)* @isight_update_pointers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @isight_update_pointers(%struct.isight* %0, i32 %1) #0 {
  %3 = alloca %struct.isight*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_pcm_runtime*, align 8
  %6 = alloca i32, align 4
  store %struct.isight* %0, %struct.isight** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.isight*, %struct.isight** %3, align 8
  %8 = getelementptr inbounds %struct.isight, %struct.isight* %7, i32 0, i32 2
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %10, align 8
  store %struct.snd_pcm_runtime* %11, %struct.snd_pcm_runtime** %5, align 8
  %12 = call i32 (...) @smp_wmb()
  %13 = load %struct.isight*, %struct.isight** %3, align 8
  %14 = getelementptr inbounds %struct.isight, %struct.isight* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* %6, align 4
  %18 = add i32 %17, %16
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %21 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp uge i32 %19, %22
  br i1 %23, label %24, label %30

24:                                               ; preds = %2
  %25 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %26 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* %6, align 4
  %29 = sub i32 %28, %27
  store i32 %29, i32* %6, align 4
  br label %30

30:                                               ; preds = %24, %2
  %31 = load %struct.isight*, %struct.isight** %3, align 8
  %32 = getelementptr inbounds %struct.isight, %struct.isight* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @WRITE_ONCE(i32 %33, i32 %34)
  %36 = load i32, i32* %4, align 4
  %37 = zext i32 %36 to i64
  %38 = load %struct.isight*, %struct.isight** %3, align 8
  %39 = getelementptr inbounds %struct.isight, %struct.isight* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = add nsw i64 %40, %37
  store i64 %41, i64* %39, align 8
  %42 = load %struct.isight*, %struct.isight** %3, align 8
  %43 = getelementptr inbounds %struct.isight, %struct.isight* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %46 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = icmp sge i64 %44, %47
  br i1 %48, label %49, label %61

49:                                               ; preds = %30
  %50 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %51 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.isight*, %struct.isight** %3, align 8
  %54 = getelementptr inbounds %struct.isight, %struct.isight* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = sub nsw i64 %55, %52
  store i64 %56, i64* %54, align 8
  %57 = load %struct.isight*, %struct.isight** %3, align 8
  %58 = getelementptr inbounds %struct.isight, %struct.isight* %57, i32 0, i32 2
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = call i32 @snd_pcm_period_elapsed(%struct.TYPE_2__* %59)
  br label %61

61:                                               ; preds = %49, %30
  ret void
}

declare dso_local i32 @smp_wmb(...) #1

declare dso_local i32 @WRITE_ONCE(i32, i32) #1

declare dso_local i32 @snd_pcm_period_elapsed(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
