; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ice1712/extr_revo.c_revo_add_controls.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ice1712/extr_revo.c_revo_add_controls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_ice1712 = type { %struct.TYPE_5__*, %struct.revo51_spec*, %struct.TYPE_6__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.revo51_spec = type { i32, i32 }
%struct.TYPE_6__ = type { i32 }

@SNDRV_PCM_STREAM_CAPTURE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_ice1712*)* @revo_add_controls to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @revo_add_controls(%struct.snd_ice1712* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_ice1712*, align 8
  %4 = alloca %struct.revo51_spec*, align 8
  %5 = alloca i32, align 4
  store %struct.snd_ice1712* %0, %struct.snd_ice1712** %3, align 8
  %6 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %7 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %6, i32 0, i32 1
  %8 = load %struct.revo51_spec*, %struct.revo51_spec** %7, align 8
  store %struct.revo51_spec* %8, %struct.revo51_spec** %4, align 8
  %9 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %10 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %9, i32 0, i32 2
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  switch i32 %12, label %67 [
    i32 128, label %13
    i32 129, label %21
    i32 130, label %41
  ]

13:                                               ; preds = %1
  %14 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %15 = call i32 @snd_ice1712_akm4xxx_build_controls(%struct.snd_ice1712* %14)
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %13
  %19 = load i32, i32* %5, align 4
  store i32 %19, i32* %2, align 4
  br label %68

20:                                               ; preds = %13
  br label %67

21:                                               ; preds = %1
  %22 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %23 = call i32 @snd_ice1712_akm4xxx_build_controls(%struct.snd_ice1712* %22)
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* %5, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %21
  %27 = load i32, i32* %5, align 4
  store i32 %27, i32* %2, align 4
  br label %68

28:                                               ; preds = %21
  %29 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %30 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %29, i32 0, i32 1
  %31 = load %struct.revo51_spec*, %struct.revo51_spec** %30, align 8
  store %struct.revo51_spec* %31, %struct.revo51_spec** %4, align 8
  %32 = load %struct.revo51_spec*, %struct.revo51_spec** %4, align 8
  %33 = getelementptr inbounds %struct.revo51_spec, %struct.revo51_spec* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @snd_pt2258_build_controls(i32 %34)
  store i32 %35, i32* %5, align 4
  %36 = load i32, i32* %5, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %28
  %39 = load i32, i32* %5, align 4
  store i32 %39, i32* %2, align 4
  br label %68

40:                                               ; preds = %28
  br label %67

41:                                               ; preds = %1
  %42 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %43 = call i32 @snd_ice1712_akm4xxx_build_controls(%struct.snd_ice1712* %42)
  store i32 %43, i32* %5, align 4
  %44 = load i32, i32* %5, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %41
  %47 = load i32, i32* %5, align 4
  store i32 %47, i32* %2, align 4
  br label %68

48:                                               ; preds = %41
  %49 = load %struct.revo51_spec*, %struct.revo51_spec** %4, align 8
  %50 = getelementptr inbounds %struct.revo51_spec, %struct.revo51_spec* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %53 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %52, i32 0, i32 0
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = load i64, i64* @SNDRV_PCM_STREAM_CAPTURE, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @snd_ak4114_build(i32 %51, i32* null, i32 %60)
  store i32 %61, i32* %5, align 4
  %62 = load i32, i32* %5, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %48
  %65 = load i32, i32* %5, align 4
  store i32 %65, i32* %2, align 4
  br label %68

66:                                               ; preds = %48
  br label %67

67:                                               ; preds = %1, %66, %40, %20
  store i32 0, i32* %2, align 4
  br label %68

68:                                               ; preds = %67, %64, %46, %38, %26, %18
  %69 = load i32, i32* %2, align 4
  ret i32 %69
}

declare dso_local i32 @snd_ice1712_akm4xxx_build_controls(%struct.snd_ice1712*) #1

declare dso_local i32 @snd_pt2258_build_controls(i32) #1

declare dso_local i32 @snd_ak4114_build(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
