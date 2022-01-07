; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/extr_sis7019.c_sis_free_voice.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/extr_sis7019.c_sis_free_voice.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sis7019 = type { i32 }
%struct.voice = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@VOICE_IN_USE = common dso_local global i32 0, align 4
@VOICE_SSO_TIMING = common dso_local global i32 0, align 4
@VOICE_SYNC_TIMING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sis7019*, %struct.voice*)* @sis_free_voice to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sis_free_voice(%struct.sis7019* %0, %struct.voice* %1) #0 {
  %3 = alloca %struct.sis7019*, align 8
  %4 = alloca %struct.voice*, align 8
  %5 = alloca i64, align 8
  store %struct.sis7019* %0, %struct.sis7019** %3, align 8
  store %struct.voice* %1, %struct.voice** %4, align 8
  %6 = load %struct.sis7019*, %struct.sis7019** %3, align 8
  %7 = getelementptr inbounds %struct.sis7019, %struct.sis7019* %6, i32 0, i32 0
  %8 = load i64, i64* %5, align 8
  %9 = call i32 @spin_lock_irqsave(i32* %7, i64 %8)
  %10 = load %struct.voice*, %struct.voice** %4, align 8
  %11 = getelementptr inbounds %struct.voice, %struct.voice* %10, i32 0, i32 1
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = icmp ne %struct.TYPE_2__* %12, null
  br i1 %13, label %14, label %31

14:                                               ; preds = %2
  %15 = load %struct.sis7019*, %struct.sis7019** %3, align 8
  %16 = call i32 @__sis_unmap_silence(%struct.sis7019* %15)
  %17 = load i32, i32* @VOICE_IN_USE, align 4
  %18 = load i32, i32* @VOICE_SSO_TIMING, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @VOICE_SYNC_TIMING, align 4
  %21 = or i32 %19, %20
  %22 = xor i32 %21, -1
  %23 = load %struct.voice*, %struct.voice** %4, align 8
  %24 = getelementptr inbounds %struct.voice, %struct.voice* %23, i32 0, i32 1
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = and i32 %27, %22
  store i32 %28, i32* %26, align 4
  %29 = load %struct.voice*, %struct.voice** %4, align 8
  %30 = getelementptr inbounds %struct.voice, %struct.voice* %29, i32 0, i32 1
  store %struct.TYPE_2__* null, %struct.TYPE_2__** %30, align 8
  br label %31

31:                                               ; preds = %14, %2
  %32 = load i32, i32* @VOICE_IN_USE, align 4
  %33 = load i32, i32* @VOICE_SSO_TIMING, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @VOICE_SYNC_TIMING, align 4
  %36 = or i32 %34, %35
  %37 = xor i32 %36, -1
  %38 = load %struct.voice*, %struct.voice** %4, align 8
  %39 = getelementptr inbounds %struct.voice, %struct.voice* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = and i32 %40, %37
  store i32 %41, i32* %39, align 8
  %42 = load %struct.sis7019*, %struct.sis7019** %3, align 8
  %43 = getelementptr inbounds %struct.sis7019, %struct.sis7019* %42, i32 0, i32 0
  %44 = load i64, i64* %5, align 8
  %45 = call i32 @spin_unlock_irqrestore(i32* %43, i64 %44)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @__sis_unmap_silence(%struct.sis7019*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
