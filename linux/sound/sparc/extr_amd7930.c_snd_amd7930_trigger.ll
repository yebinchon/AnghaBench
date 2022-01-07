; ModuleID = '/home/carl/AnghaBench/linux/sound/sparc/extr_amd7930.c_snd_amd7930_trigger.c'
source_filename = "/home/carl/AnghaBench/linux/sound/sparc/extr_amd7930.c_snd_amd7930_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_amd7930 = type { i32, i32, i64 }

@SNDRV_PCM_TRIGGER_START = common dso_local global i32 0, align 4
@AMR_MUX_MCR4 = common dso_local global i32 0, align 4
@AMD7930_CR = common dso_local global i64 0, align 8
@AM_MUX_MCR4_ENABLE_INTS = common dso_local global i32 0, align 4
@AMD7930_DR = common dso_local global i64 0, align 8
@SNDRV_PCM_TRIGGER_STOP = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_amd7930*, i32, i32)* @snd_amd7930_trigger to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_amd7930_trigger(%struct.snd_amd7930* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.snd_amd7930*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.snd_amd7930* %0, %struct.snd_amd7930** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %8, align 4
  %9 = load %struct.snd_amd7930*, %struct.snd_amd7930** %4, align 8
  %10 = getelementptr inbounds %struct.snd_amd7930, %struct.snd_amd7930* %9, i32 0, i32 1
  %11 = load i64, i64* %7, align 8
  %12 = call i32 @spin_lock_irqsave(i32* %10, i64 %11)
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* @SNDRV_PCM_TRIGGER_START, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %44

16:                                               ; preds = %3
  %17 = load %struct.snd_amd7930*, %struct.snd_amd7930** %4, align 8
  %18 = getelementptr inbounds %struct.snd_amd7930, %struct.snd_amd7930* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* %5, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %43, label %23

23:                                               ; preds = %16
  %24 = load i32, i32* %5, align 4
  %25 = load %struct.snd_amd7930*, %struct.snd_amd7930** %4, align 8
  %26 = getelementptr inbounds %struct.snd_amd7930, %struct.snd_amd7930* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = or i32 %27, %24
  store i32 %28, i32* %26, align 8
  %29 = load i32, i32* @AMR_MUX_MCR4, align 4
  %30 = load %struct.snd_amd7930*, %struct.snd_amd7930** %4, align 8
  %31 = getelementptr inbounds %struct.snd_amd7930, %struct.snd_amd7930* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @AMD7930_CR, align 8
  %34 = add nsw i64 %32, %33
  %35 = call i32 @sbus_writeb(i32 %29, i64 %34)
  %36 = load i32, i32* @AM_MUX_MCR4_ENABLE_INTS, align 4
  %37 = load %struct.snd_amd7930*, %struct.snd_amd7930** %4, align 8
  %38 = getelementptr inbounds %struct.snd_amd7930, %struct.snd_amd7930* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @AMD7930_DR, align 8
  %41 = add nsw i64 %39, %40
  %42 = call i32 @sbus_writeb(i32 %36, i64 %41)
  br label %43

43:                                               ; preds = %23, %16
  br label %80

44:                                               ; preds = %3
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* @SNDRV_PCM_TRIGGER_STOP, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %76

48:                                               ; preds = %44
  %49 = load %struct.snd_amd7930*, %struct.snd_amd7930** %4, align 8
  %50 = getelementptr inbounds %struct.snd_amd7930, %struct.snd_amd7930* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* %5, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %75

55:                                               ; preds = %48
  %56 = load i32, i32* %5, align 4
  %57 = xor i32 %56, -1
  %58 = load %struct.snd_amd7930*, %struct.snd_amd7930** %4, align 8
  %59 = getelementptr inbounds %struct.snd_amd7930, %struct.snd_amd7930* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = and i32 %60, %57
  store i32 %61, i32* %59, align 8
  %62 = load i32, i32* @AMR_MUX_MCR4, align 4
  %63 = load %struct.snd_amd7930*, %struct.snd_amd7930** %4, align 8
  %64 = getelementptr inbounds %struct.snd_amd7930, %struct.snd_amd7930* %63, i32 0, i32 2
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @AMD7930_CR, align 8
  %67 = add nsw i64 %65, %66
  %68 = call i32 @sbus_writeb(i32 %62, i64 %67)
  %69 = load %struct.snd_amd7930*, %struct.snd_amd7930** %4, align 8
  %70 = getelementptr inbounds %struct.snd_amd7930, %struct.snd_amd7930* %69, i32 0, i32 2
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @AMD7930_DR, align 8
  %73 = add nsw i64 %71, %72
  %74 = call i32 @sbus_writeb(i32 0, i64 %73)
  br label %75

75:                                               ; preds = %55, %48
  br label %79

76:                                               ; preds = %44
  %77 = load i32, i32* @EINVAL, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %8, align 4
  br label %79

79:                                               ; preds = %76, %75
  br label %80

80:                                               ; preds = %79, %43
  %81 = load %struct.snd_amd7930*, %struct.snd_amd7930** %4, align 8
  %82 = getelementptr inbounds %struct.snd_amd7930, %struct.snd_amd7930* %81, i32 0, i32 1
  %83 = load i64, i64* %7, align 8
  %84 = call i32 @spin_unlock_irqrestore(i32* %82, i64 %83)
  %85 = load i32, i32* %8, align 4
  ret i32 %85
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @sbus_writeb(i32, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
