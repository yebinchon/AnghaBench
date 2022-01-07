; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ice1712/extr_juli.c_juli_add_controls.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ice1712/extr_juli.c_juli_add_controls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_ice1712 = type { %struct.TYPE_4__*, i32, %struct.juli_spec* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.juli_spec = type { i32 }
%struct.snd_kcontrol = type { i32 }

@juli_mute_controls = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [23 x i8] c"Master Playback Volume\00", align 1
@juli_master_db_scale = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@slave_vols = common dso_local global i32 0, align 4
@SNDRV_PCM_STREAM_CAPTURE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_ice1712*)* @juli_add_controls to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @juli_add_controls(%struct.snd_ice1712* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_ice1712*, align 8
  %4 = alloca %struct.juli_spec*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_kcontrol*, align 8
  store %struct.snd_ice1712* %0, %struct.snd_ice1712** %3, align 8
  %8 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %9 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %8, i32 0, i32 2
  %10 = load %struct.juli_spec*, %struct.juli_spec** %9, align 8
  store %struct.juli_spec* %10, %struct.juli_spec** %4, align 8
  %11 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %12 = call i32 @snd_ice1712_akm4xxx_build_controls(%struct.snd_ice1712* %11)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = load i32, i32* %5, align 4
  store i32 %16, i32* %2, align 4
  br label %80

17:                                               ; preds = %1
  store i32 0, i32* %6, align 4
  br label %18

18:                                               ; preds = %39, %17
  %19 = load i32, i32* %6, align 4
  %20 = load i32*, i32** @juli_mute_controls, align 8
  %21 = call i32 @ARRAY_SIZE(i32* %20)
  %22 = icmp ult i32 %19, %21
  br i1 %22, label %23, label %42

23:                                               ; preds = %18
  %24 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %25 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = load i32*, i32** @juli_mute_controls, align 8
  %28 = load i32, i32* %6, align 4
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %32 = call %struct.snd_kcontrol* @snd_ctl_new1(i32* %30, %struct.snd_ice1712* %31)
  %33 = call i32 @snd_ctl_add(i32 %26, %struct.snd_kcontrol* %32)
  store i32 %33, i32* %5, align 4
  %34 = load i32, i32* %5, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %23
  %37 = load i32, i32* %5, align 4
  store i32 %37, i32* %2, align 4
  br label %80

38:                                               ; preds = %23
  br label %39

39:                                               ; preds = %38
  %40 = load i32, i32* %6, align 4
  %41 = add i32 %40, 1
  store i32 %41, i32* %6, align 4
  br label %18

42:                                               ; preds = %18
  %43 = load i32, i32* @juli_master_db_scale, align 4
  %44 = call %struct.snd_kcontrol* @snd_ctl_make_virtual_master(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %43)
  store %struct.snd_kcontrol* %44, %struct.snd_kcontrol** %7, align 8
  %45 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %7, align 8
  %46 = icmp ne %struct.snd_kcontrol* %45, null
  br i1 %46, label %50, label %47

47:                                               ; preds = %42
  %48 = load i32, i32* @ENOMEM, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %2, align 4
  br label %80

50:                                               ; preds = %42
  %51 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %52 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %7, align 8
  %55 = load i32, i32* @slave_vols, align 4
  %56 = call i32 @add_slaves(i32 %53, %struct.snd_kcontrol* %54, i32 %55)
  %57 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %58 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %7, align 8
  %61 = call i32 @snd_ctl_add(i32 %59, %struct.snd_kcontrol* %60)
  store i32 %61, i32* %5, align 4
  %62 = load i32, i32* %5, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %50
  %65 = load i32, i32* %5, align 4
  store i32 %65, i32* %2, align 4
  br label %80

66:                                               ; preds = %50
  %67 = load %struct.juli_spec*, %struct.juli_spec** %4, align 8
  %68 = getelementptr inbounds %struct.juli_spec, %struct.juli_spec* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %71 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %70, i32 0, i32 0
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %73, align 8
  %75 = load i64, i64* @SNDRV_PCM_STREAM_CAPTURE, align 8
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @snd_ak4114_build(i32 %69, i32* null, i32 %78)
  store i32 %79, i32* %2, align 4
  br label %80

80:                                               ; preds = %66, %64, %47, %36, %15
  %81 = load i32, i32* %2, align 4
  ret i32 %81
}

declare dso_local i32 @snd_ice1712_akm4xxx_build_controls(%struct.snd_ice1712*) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @snd_ctl_add(i32, %struct.snd_kcontrol*) #1

declare dso_local %struct.snd_kcontrol* @snd_ctl_new1(i32*, %struct.snd_ice1712*) #1

declare dso_local %struct.snd_kcontrol* @snd_ctl_make_virtual_master(i8*, i32) #1

declare dso_local i32 @add_slaves(i32, %struct.snd_kcontrol*, i32) #1

declare dso_local i32 @snd_ak4114_build(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
