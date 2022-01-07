; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/korg1212/extr_korg1212.c_snd_korg1212_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/korg1212/extr_korg1212.c_snd_korg1212_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.snd_korg1212 = type { i64, i64, i32, i64 }

@.str = private unnamed_addr constant [40 x i8] c"K1212_DEBUG: snd_korg1212_prepare [%s]\0A\00", align 1
@stateName = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [61 x i8] c"K1212_DEBUG: snd_korg1212_prepare - Stop is pending... [%s]\0A\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @snd_korg1212_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_korg1212_prepare(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca %struct.snd_korg1212*, align 8
  %5 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  %6 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %7 = call %struct.snd_korg1212* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %6)
  store %struct.snd_korg1212* %7, %struct.snd_korg1212** %4, align 8
  %8 = load i32*, i32** @stateName, align 8
  %9 = load %struct.snd_korg1212*, %struct.snd_korg1212** %4, align 8
  %10 = getelementptr inbounds %struct.snd_korg1212, %struct.snd_korg1212* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = getelementptr inbounds i32, i32* %8, i64 %11
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @K1212_DEBUG_PRINTK(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %13)
  %15 = load %struct.snd_korg1212*, %struct.snd_korg1212** %4, align 8
  %16 = getelementptr inbounds %struct.snd_korg1212, %struct.snd_korg1212* %15, i32 0, i32 2
  %17 = call i32 @spin_lock_irq(i32* %16)
  %18 = load %struct.snd_korg1212*, %struct.snd_korg1212** %4, align 8
  %19 = getelementptr inbounds %struct.snd_korg1212, %struct.snd_korg1212* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp sgt i64 %20, 0
  br i1 %21, label %22, label %35

22:                                               ; preds = %1
  %23 = load i32*, i32** @stateName, align 8
  %24 = load %struct.snd_korg1212*, %struct.snd_korg1212** %4, align 8
  %25 = getelementptr inbounds %struct.snd_korg1212, %struct.snd_korg1212* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = getelementptr inbounds i32, i32* %23, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @K1212_DEBUG_PRINTK(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i64 0, i64 0), i32 %28)
  %30 = load %struct.snd_korg1212*, %struct.snd_korg1212** %4, align 8
  %31 = getelementptr inbounds %struct.snd_korg1212, %struct.snd_korg1212* %30, i32 0, i32 2
  %32 = call i32 @spin_unlock_irq(i32* %31)
  %33 = load i32, i32* @EAGAIN, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %2, align 4
  br label %51

35:                                               ; preds = %1
  %36 = load %struct.snd_korg1212*, %struct.snd_korg1212** %4, align 8
  %37 = call i32 @snd_korg1212_SetupForPlay(%struct.snd_korg1212* %36)
  store i32 %37, i32* %5, align 4
  %38 = load %struct.snd_korg1212*, %struct.snd_korg1212** %4, align 8
  %39 = getelementptr inbounds %struct.snd_korg1212, %struct.snd_korg1212* %38, i32 0, i32 3
  store i64 0, i64* %39, align 8
  %40 = load %struct.snd_korg1212*, %struct.snd_korg1212** %4, align 8
  %41 = getelementptr inbounds %struct.snd_korg1212, %struct.snd_korg1212* %40, i32 0, i32 2
  %42 = call i32 @spin_unlock_irq(i32* %41)
  %43 = load i32, i32* %5, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %35
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  br label %49

48:                                               ; preds = %35
  br label %49

49:                                               ; preds = %48, %45
  %50 = phi i32 [ %47, %45 ], [ 0, %48 ]
  store i32 %50, i32* %2, align 4
  br label %51

51:                                               ; preds = %49, %22
  %52 = load i32, i32* %2, align 4
  ret i32 %52
}

declare dso_local %struct.snd_korg1212* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i32 @K1212_DEBUG_PRINTK(i8*, i32) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @snd_korg1212_SetupForPlay(%struct.snd_korg1212*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
