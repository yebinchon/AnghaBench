; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ice1712/extr_ews.c_ews88_setup_spdif.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ice1712/extr_ews.c_ews88_setup_spdif.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_ice1712 = type { %struct.TYPE_4__, i32, i32 }
%struct.TYPE_4__ = type { i8, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@SNDRV_CTL_EVENT_MASK_VALUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_ice1712*, i32)* @ews88_setup_spdif to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ews88_setup_spdif(%struct.snd_ice1712* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_ice1712*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  store %struct.snd_ice1712* %0, %struct.snd_ice1712** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %9 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %8, i32 0, i32 2
  %10 = load i64, i64* %5, align 8
  %11 = call i32 @spin_lock_irqsave(i32* %9, i64 %10)
  %12 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %13 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i8, i8* %14, align 8
  store i8 %15, i8* %6, align 1
  %16 = load i8, i8* %6, align 1
  %17 = zext i8 %16 to i32
  %18 = and i32 %17, 16
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %31

20:                                               ; preds = %2
  %21 = load i8, i8* %6, align 1
  %22 = zext i8 %21 to i32
  %23 = and i32 %22, 1
  %24 = icmp ne i32 %23, 0
  %25 = zext i1 %24 to i64
  %26 = select i1 %24, i32 -7, i32 -97
  %27 = load i8, i8* %6, align 1
  %28 = zext i8 %27 to i32
  %29 = and i32 %28, %26
  %30 = trunc i32 %29 to i8
  store i8 %30, i8* %6, align 1
  br label %31

31:                                               ; preds = %20, %2
  %32 = load i32, i32* %4, align 4
  switch i32 %32, label %66 [
    i32 32000, label %33
    i32 44100, label %44
    i32 48000, label %55
  ]

33:                                               ; preds = %31
  %34 = load i8, i8* %6, align 1
  %35 = zext i8 %34 to i32
  %36 = and i32 %35, 1
  %37 = icmp ne i32 %36, 0
  %38 = zext i1 %37 to i64
  %39 = select i1 %37, i32 2, i32 0
  %40 = load i8, i8* %6, align 1
  %41 = zext i8 %40 to i32
  %42 = or i32 %41, %39
  %43 = trunc i32 %42 to i8
  store i8 %43, i8* %6, align 1
  br label %77

44:                                               ; preds = %31
  %45 = load i8, i8* %6, align 1
  %46 = zext i8 %45 to i32
  %47 = and i32 %46, 1
  %48 = icmp ne i32 %47, 0
  %49 = zext i1 %48 to i64
  %50 = select i1 %48, i32 6, i32 64
  %51 = load i8, i8* %6, align 1
  %52 = zext i8 %51 to i32
  %53 = or i32 %52, %50
  %54 = trunc i32 %53 to i8
  store i8 %54, i8* %6, align 1
  br label %77

55:                                               ; preds = %31
  %56 = load i8, i8* %6, align 1
  %57 = zext i8 %56 to i32
  %58 = and i32 %57, 1
  %59 = icmp ne i32 %58, 0
  %60 = zext i1 %59 to i64
  %61 = select i1 %59, i32 4, i32 32
  %62 = load i8, i8* %6, align 1
  %63 = zext i8 %62 to i32
  %64 = or i32 %63, %61
  %65 = trunc i32 %64 to i8
  store i8 %65, i8* %6, align 1
  br label %77

66:                                               ; preds = %31
  %67 = load i8, i8* %6, align 1
  %68 = zext i8 %67 to i32
  %69 = and i32 %68, 1
  %70 = icmp ne i32 %69, 0
  %71 = zext i1 %70 to i64
  %72 = select i1 %70, i32 6, i32 64
  %73 = load i8, i8* %6, align 1
  %74 = zext i8 %73 to i32
  %75 = or i32 %74, %72
  %76 = trunc i32 %75 to i8
  store i8 %76, i8* %6, align 1
  br label %77

77:                                               ; preds = %66, %55, %44, %33
  %78 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %79 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  %81 = load i8, i8* %80, align 8
  %82 = zext i8 %81 to i32
  %83 = load i8, i8* %6, align 1
  %84 = zext i8 %83 to i32
  %85 = icmp ne i32 %82, %84
  %86 = zext i1 %85 to i32
  store i32 %86, i32* %7, align 4
  %87 = load i8, i8* %6, align 1
  %88 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %89 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 0
  store i8 %87, i8* %90, align 8
  %91 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %92 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %91, i32 0, i32 2
  %93 = load i64, i64* %5, align 8
  %94 = call i32 @spin_unlock_irqrestore(i32* %92, i64 %93)
  %95 = load i32, i32* %7, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %108

97:                                               ; preds = %77
  %98 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %99 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 8
  %101 = load i32, i32* @SNDRV_CTL_EVENT_MASK_VALUE, align 4
  %102 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %103 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 1
  %105 = load %struct.TYPE_3__*, %struct.TYPE_3__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 0
  %107 = call i32 @snd_ctl_notify(i32 %100, i32 %101, i32* %106)
  br label %108

108:                                              ; preds = %97, %77
  %109 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %110 = load i8, i8* %6, align 1
  %111 = call i32 @snd_ice1712_ews_cs8404_spdif_write(%struct.snd_ice1712* %109, i8 zeroext %110)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @snd_ctl_notify(i32, i32, i32*) #1

declare dso_local i32 @snd_ice1712_ews_cs8404_spdif_write(%struct.snd_ice1712*, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
