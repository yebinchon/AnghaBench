; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ice1712/extr_prodigy192.c_prodigy192_add_controls.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ice1712/extr_prodigy192.c_prodigy192_add_controls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_ice1712 = type { %struct.TYPE_4__*, i32, %struct.prodigy192_spec* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.prodigy192_spec = type { i64 }

@stac_controls = common dso_local global i32* null, align 8
@ak4114_controls = common dso_local global i32* null, align 8
@SNDRV_PCM_STREAM_CAPTURE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_ice1712*)* @prodigy192_add_controls to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @prodigy192_add_controls(%struct.snd_ice1712* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_ice1712*, align 8
  %4 = alloca %struct.prodigy192_spec*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.snd_ice1712* %0, %struct.snd_ice1712** %3, align 8
  %7 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %8 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %7, i32 0, i32 2
  %9 = load %struct.prodigy192_spec*, %struct.prodigy192_spec** %8, align 8
  store %struct.prodigy192_spec* %9, %struct.prodigy192_spec** %4, align 8
  store i32 0, i32* %5, align 4
  br label %10

10:                                               ; preds = %31, %1
  %11 = load i32, i32* %5, align 4
  %12 = load i32*, i32** @stac_controls, align 8
  %13 = call i32 @ARRAY_SIZE(i32* %12)
  %14 = icmp ult i32 %11, %13
  br i1 %14, label %15, label %34

15:                                               ; preds = %10
  %16 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %17 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = load i32*, i32** @stac_controls, align 8
  %20 = load i32, i32* %5, align 4
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %19, i64 %21
  %23 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %24 = call i32 @snd_ctl_new1(i32* %22, %struct.snd_ice1712* %23)
  %25 = call i32 @snd_ctl_add(i32 %18, i32 %24)
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %15
  %29 = load i32, i32* %6, align 4
  store i32 %29, i32* %2, align 4
  br label %86

30:                                               ; preds = %15
  br label %31

31:                                               ; preds = %30
  %32 = load i32, i32* %5, align 4
  %33 = add i32 %32, 1
  store i32 %33, i32* %5, align 4
  br label %10

34:                                               ; preds = %10
  %35 = load %struct.prodigy192_spec*, %struct.prodigy192_spec** %4, align 8
  %36 = getelementptr inbounds %struct.prodigy192_spec, %struct.prodigy192_spec* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %83

39:                                               ; preds = %34
  store i32 0, i32* %5, align 4
  br label %40

40:                                               ; preds = %61, %39
  %41 = load i32, i32* %5, align 4
  %42 = load i32*, i32** @ak4114_controls, align 8
  %43 = call i32 @ARRAY_SIZE(i32* %42)
  %44 = icmp ult i32 %41, %43
  br i1 %44, label %45, label %64

45:                                               ; preds = %40
  %46 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %47 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = load i32*, i32** @ak4114_controls, align 8
  %50 = load i32, i32* %5, align 4
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %54 = call i32 @snd_ctl_new1(i32* %52, %struct.snd_ice1712* %53)
  %55 = call i32 @snd_ctl_add(i32 %48, i32 %54)
  store i32 %55, i32* %6, align 4
  %56 = load i32, i32* %6, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %45
  %59 = load i32, i32* %6, align 4
  store i32 %59, i32* %2, align 4
  br label %86

60:                                               ; preds = %45
  br label %61

61:                                               ; preds = %60
  %62 = load i32, i32* %5, align 4
  %63 = add i32 %62, 1
  store i32 %63, i32* %5, align 4
  br label %40

64:                                               ; preds = %40
  %65 = load %struct.prodigy192_spec*, %struct.prodigy192_spec** %4, align 8
  %66 = getelementptr inbounds %struct.prodigy192_spec, %struct.prodigy192_spec* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %69 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %68, i32 0, i32 0
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %71, align 8
  %73 = load i64, i64* @SNDRV_PCM_STREAM_CAPTURE, align 8
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @snd_ak4114_build(i64 %67, i32* null, i32 %76)
  store i32 %77, i32* %6, align 4
  %78 = load i32, i32* %6, align 4
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %64
  %81 = load i32, i32* %6, align 4
  store i32 %81, i32* %2, align 4
  br label %86

82:                                               ; preds = %64
  br label %83

83:                                               ; preds = %82, %34
  %84 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %85 = call i32 @stac9460_proc_init(%struct.snd_ice1712* %84)
  store i32 0, i32* %2, align 4
  br label %86

86:                                               ; preds = %83, %80, %58, %28
  %87 = load i32, i32* %2, align 4
  ret i32 %87
}

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @snd_ctl_add(i32, i32) #1

declare dso_local i32 @snd_ctl_new1(i32*, %struct.snd_ice1712*) #1

declare dso_local i32 @snd_ak4114_build(i64, i32*, i32) #1

declare dso_local i32 @stac9460_proc_init(%struct.snd_ice1712*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
