; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_sigmadsp.c_sigmadsp_alloc_control.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_sigmadsp.c_sigmadsp_alloc_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sigmadsp = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.sigmadsp_control = type { %struct.snd_kcontrol*, i32, i32 }
%struct.snd_kcontrol = type { i32 }
%struct.snd_kcontrol_new = type { i64, i32, i32, i32, i32, i32, i32 }

@SNDRV_CTL_ELEM_IFACE_MIXER = common dso_local global i32 0, align 4
@sigmadsp_ctrl_info = common dso_local global i32 0, align 4
@sigmadsp_ctrl_get = common dso_local global i32 0, align 4
@sigmadsp_ctrl_put = common dso_local global i32 0, align 4
@SNDRV_CTL_ELEM_ACCESS_READWRITE = common dso_local global i32 0, align 4
@SNDRV_CTL_ELEM_ACCESS_INACTIVE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@sigmadsp_control_free = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sigmadsp*, %struct.sigmadsp_control*, i32)* @sigmadsp_alloc_control to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sigmadsp_alloc_control(%struct.sigmadsp* %0, %struct.sigmadsp_control* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sigmadsp*, align 8
  %6 = alloca %struct.sigmadsp_control*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.snd_kcontrol_new, align 8
  %9 = alloca %struct.snd_kcontrol*, align 8
  store %struct.sigmadsp* %0, %struct.sigmadsp** %5, align 8
  store %struct.sigmadsp_control* %1, %struct.sigmadsp_control** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = call i32 @memset(%struct.snd_kcontrol_new* %8, i32 0, i32 32)
  %11 = load i32, i32* @SNDRV_CTL_ELEM_IFACE_MIXER, align 4
  %12 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %8, i32 0, i32 6
  store i32 %11, i32* %12, align 4
  %13 = load %struct.sigmadsp_control*, %struct.sigmadsp_control** %6, align 8
  %14 = getelementptr inbounds %struct.sigmadsp_control, %struct.sigmadsp_control* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %8, i32 0, i32 5
  store i32 %15, i32* %16, align 8
  %17 = load i32, i32* @sigmadsp_ctrl_info, align 4
  %18 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %8, i32 0, i32 4
  store i32 %17, i32* %18, align 4
  %19 = load i32, i32* @sigmadsp_ctrl_get, align 4
  %20 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %8, i32 0, i32 3
  store i32 %19, i32* %20, align 8
  %21 = load i32, i32* @sigmadsp_ctrl_put, align 4
  %22 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %8, i32 0, i32 2
  store i32 %21, i32* %22, align 4
  %23 = load %struct.sigmadsp_control*, %struct.sigmadsp_control** %6, align 8
  %24 = ptrtoint %struct.sigmadsp_control* %23 to i64
  %25 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %8, i32 0, i32 0
  store i64 %24, i64* %25, align 8
  %26 = load i32, i32* @SNDRV_CTL_ELEM_ACCESS_READWRITE, align 4
  %27 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %8, i32 0, i32 1
  store i32 %26, i32* %27, align 8
  %28 = load %struct.sigmadsp_control*, %struct.sigmadsp_control** %6, align 8
  %29 = getelementptr inbounds %struct.sigmadsp_control, %struct.sigmadsp_control* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* %7, align 4
  %32 = call i32 @sigmadsp_samplerate_valid(i32 %30, i32 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %39, label %34

34:                                               ; preds = %3
  %35 = load i32, i32* @SNDRV_CTL_ELEM_ACCESS_INACTIVE, align 4
  %36 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %8, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = or i32 %37, %35
  store i32 %38, i32* %36, align 8
  br label %39

39:                                               ; preds = %34, %3
  %40 = load %struct.sigmadsp*, %struct.sigmadsp** %5, align 8
  %41 = call %struct.snd_kcontrol* @snd_ctl_new1(%struct.snd_kcontrol_new* %8, %struct.sigmadsp* %40)
  store %struct.snd_kcontrol* %41, %struct.snd_kcontrol** %9, align 8
  %42 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %9, align 8
  %43 = icmp ne %struct.snd_kcontrol* %42, null
  br i1 %43, label %47, label %44

44:                                               ; preds = %39
  %45 = load i32, i32* @ENOMEM, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %4, align 4
  br label %63

47:                                               ; preds = %39
  %48 = load i32, i32* @sigmadsp_control_free, align 4
  %49 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %9, align 8
  %50 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 4
  %51 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %9, align 8
  %52 = load %struct.sigmadsp_control*, %struct.sigmadsp_control** %6, align 8
  %53 = getelementptr inbounds %struct.sigmadsp_control, %struct.sigmadsp_control* %52, i32 0, i32 0
  store %struct.snd_kcontrol* %51, %struct.snd_kcontrol** %53, align 8
  %54 = load %struct.sigmadsp*, %struct.sigmadsp** %5, align 8
  %55 = getelementptr inbounds %struct.sigmadsp, %struct.sigmadsp* %54, i32 0, i32 0
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %9, align 8
  %62 = call i32 @snd_ctl_add(i32 %60, %struct.snd_kcontrol* %61)
  store i32 %62, i32* %4, align 4
  br label %63

63:                                               ; preds = %47, %44
  %64 = load i32, i32* %4, align 4
  ret i32 %64
}

declare dso_local i32 @memset(%struct.snd_kcontrol_new*, i32, i32) #1

declare dso_local i32 @sigmadsp_samplerate_valid(i32, i32) #1

declare dso_local %struct.snd_kcontrol* @snd_ctl_new1(%struct.snd_kcontrol_new*, %struct.sigmadsp*) #1

declare dso_local i32 @snd_ctl_add(i32, %struct.snd_kcontrol*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
