; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/asihpi/extr_asihpi.c_snd_asihpi_volume_info.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/asihpi/extr_asihpi.c_snd_asihpi_volume_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i32 }
%struct.snd_ctl_elem_info = type { %struct.TYPE_4__, i32, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i16, i16, i16 }

@VOL_STEP_mB = common dso_local global i16 0, align 2
@HPI_MAX_CHANNELS = common dso_local global i32 0, align 4
@SNDRV_CTL_ELEM_TYPE_INTEGER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_info*)* @snd_asihpi_volume_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_asihpi_volume_info(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_info* %1) #0 {
  %3 = alloca %struct.snd_kcontrol*, align 8
  %4 = alloca %struct.snd_ctl_elem_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i16, align 2
  %9 = alloca i16, align 2
  %10 = alloca i16, align 2
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %3, align 8
  store %struct.snd_ctl_elem_info* %1, %struct.snd_ctl_elem_info** %4, align 8
  %11 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %12 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = call i64 @hpi_volume_query_range(i32 %14, i16* %8, i16* %9, i16* %10)
  store i64 %15, i64* %7, align 8
  %16 = load i64, i64* %7, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  store i16 0, i16* %9, align 2
  store i16 -10000, i16* %8, align 2
  %19 = load i16, i16* @VOL_STEP_mB, align 2
  store i16 %19, i16* %10, align 2
  br label %20

20:                                               ; preds = %18, %2
  %21 = load i32, i32* %5, align 4
  %22 = call i64 @hpi_meter_query_channels(i32 %21, i32* %6)
  store i64 %22, i64* %7, align 8
  %23 = load i64, i64* %7, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %20
  %26 = load i32, i32* @HPI_MAX_CHANNELS, align 4
  store i32 %26, i32* %6, align 4
  br label %27

27:                                               ; preds = %25, %20
  %28 = load i32, i32* @SNDRV_CTL_ELEM_TYPE_INTEGER, align 4
  %29 = load %struct.snd_ctl_elem_info*, %struct.snd_ctl_elem_info** %4, align 8
  %30 = getelementptr inbounds %struct.snd_ctl_elem_info, %struct.snd_ctl_elem_info* %29, i32 0, i32 2
  store i32 %28, i32* %30, align 4
  %31 = load i32, i32* %6, align 4
  %32 = load %struct.snd_ctl_elem_info*, %struct.snd_ctl_elem_info** %4, align 8
  %33 = getelementptr inbounds %struct.snd_ctl_elem_info, %struct.snd_ctl_elem_info* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 4
  %34 = load i16, i16* %8, align 2
  %35 = sext i16 %34 to i32
  %36 = load i16, i16* @VOL_STEP_mB, align 2
  %37 = sext i16 %36 to i32
  %38 = sdiv i32 %35, %37
  %39 = trunc i32 %38 to i16
  %40 = load %struct.snd_ctl_elem_info*, %struct.snd_ctl_elem_info** %4, align 8
  %41 = getelementptr inbounds %struct.snd_ctl_elem_info, %struct.snd_ctl_elem_info* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  store i16 %39, i16* %43, align 4
  %44 = load i16, i16* %9, align 2
  %45 = sext i16 %44 to i32
  %46 = load i16, i16* @VOL_STEP_mB, align 2
  %47 = sext i16 %46 to i32
  %48 = sdiv i32 %45, %47
  %49 = trunc i32 %48 to i16
  %50 = load %struct.snd_ctl_elem_info*, %struct.snd_ctl_elem_info** %4, align 8
  %51 = getelementptr inbounds %struct.snd_ctl_elem_info, %struct.snd_ctl_elem_info* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 1
  store i16 %49, i16* %53, align 2
  %54 = load i16, i16* %10, align 2
  %55 = sext i16 %54 to i32
  %56 = load i16, i16* @VOL_STEP_mB, align 2
  %57 = sext i16 %56 to i32
  %58 = sdiv i32 %55, %57
  %59 = trunc i32 %58 to i16
  %60 = load %struct.snd_ctl_elem_info*, %struct.snd_ctl_elem_info** %4, align 8
  %61 = getelementptr inbounds %struct.snd_ctl_elem_info, %struct.snd_ctl_elem_info* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 2
  store i16 %59, i16* %63, align 4
  ret i32 0
}

declare dso_local i64 @hpi_volume_query_range(i32, i16*, i16*, i16*) #1

declare dso_local i64 @hpi_meter_query_channels(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
