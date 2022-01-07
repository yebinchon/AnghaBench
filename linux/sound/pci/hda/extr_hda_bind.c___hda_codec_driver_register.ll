; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_bind.c___hda_codec_driver_register.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_bind.c___hda_codec_driver_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec_driver = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.TYPE_4__, i32, i32, i32 }
%struct.TYPE_4__ = type { i8*, i32*, i32, i32, i32, i32*, %struct.module* }
%struct.module = type { i32 }

@snd_hda_bus_type = common dso_local global i32 0, align 4
@hda_codec_driver_probe = common dso_local global i32 0, align 4
@hda_codec_driver_remove = common dso_local global i32 0, align 4
@hda_codec_driver_shutdown = common dso_local global i32 0, align 4
@hda_codec_driver_pm = common dso_local global i32 0, align 4
@HDA_DEV_LEGACY = common dso_local global i32 0, align 4
@hda_codec_match = common dso_local global i32 0, align 4
@hda_codec_unsol_event = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__hda_codec_driver_register(%struct.hda_codec_driver* %0, i8* %1, %struct.module* %2) #0 {
  %4 = alloca %struct.hda_codec_driver*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.module*, align 8
  store %struct.hda_codec_driver* %0, %struct.hda_codec_driver** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.module* %2, %struct.module** %6, align 8
  %7 = load i8*, i8** %5, align 8
  %8 = load %struct.hda_codec_driver*, %struct.hda_codec_driver** %4, align 8
  %9 = getelementptr inbounds %struct.hda_codec_driver, %struct.hda_codec_driver* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  store i8* %7, i8** %11, align 8
  %12 = load %struct.module*, %struct.module** %6, align 8
  %13 = load %struct.hda_codec_driver*, %struct.hda_codec_driver** %4, align 8
  %14 = getelementptr inbounds %struct.hda_codec_driver, %struct.hda_codec_driver* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 6
  store %struct.module* %12, %struct.module** %16, align 8
  %17 = load %struct.hda_codec_driver*, %struct.hda_codec_driver** %4, align 8
  %18 = getelementptr inbounds %struct.hda_codec_driver, %struct.hda_codec_driver* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 5
  store i32* @snd_hda_bus_type, i32** %20, align 8
  %21 = load i32, i32* @hda_codec_driver_probe, align 4
  %22 = load %struct.hda_codec_driver*, %struct.hda_codec_driver** %4, align 8
  %23 = getelementptr inbounds %struct.hda_codec_driver, %struct.hda_codec_driver* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 4
  store i32 %21, i32* %25, align 8
  %26 = load i32, i32* @hda_codec_driver_remove, align 4
  %27 = load %struct.hda_codec_driver*, %struct.hda_codec_driver** %4, align 8
  %28 = getelementptr inbounds %struct.hda_codec_driver, %struct.hda_codec_driver* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 3
  store i32 %26, i32* %30, align 4
  %31 = load i32, i32* @hda_codec_driver_shutdown, align 4
  %32 = load %struct.hda_codec_driver*, %struct.hda_codec_driver** %4, align 8
  %33 = getelementptr inbounds %struct.hda_codec_driver, %struct.hda_codec_driver* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 2
  store i32 %31, i32* %35, align 8
  %36 = load %struct.hda_codec_driver*, %struct.hda_codec_driver** %4, align 8
  %37 = getelementptr inbounds %struct.hda_codec_driver, %struct.hda_codec_driver* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 1
  store i32* @hda_codec_driver_pm, i32** %39, align 8
  %40 = load i32, i32* @HDA_DEV_LEGACY, align 4
  %41 = load %struct.hda_codec_driver*, %struct.hda_codec_driver** %4, align 8
  %42 = getelementptr inbounds %struct.hda_codec_driver, %struct.hda_codec_driver* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 3
  store i32 %40, i32* %43, align 8
  %44 = load i32, i32* @hda_codec_match, align 4
  %45 = load %struct.hda_codec_driver*, %struct.hda_codec_driver** %4, align 8
  %46 = getelementptr inbounds %struct.hda_codec_driver, %struct.hda_codec_driver* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 2
  store i32 %44, i32* %47, align 4
  %48 = load i32, i32* @hda_codec_unsol_event, align 4
  %49 = load %struct.hda_codec_driver*, %struct.hda_codec_driver** %4, align 8
  %50 = getelementptr inbounds %struct.hda_codec_driver, %struct.hda_codec_driver* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 1
  store i32 %48, i32* %51, align 8
  %52 = load %struct.hda_codec_driver*, %struct.hda_codec_driver** %4, align 8
  %53 = getelementptr inbounds %struct.hda_codec_driver, %struct.hda_codec_driver* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  %55 = call i32 @driver_register(%struct.TYPE_4__* %54)
  ret i32 %55
}

declare dso_local i32 @driver_register(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
