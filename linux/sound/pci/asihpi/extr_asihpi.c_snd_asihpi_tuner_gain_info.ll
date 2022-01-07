; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/asihpi/extr_asihpi.c_snd_asihpi_tuner_gain_info.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/asihpi/extr_asihpi.c_snd_asihpi_tuner_gain_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i32 }
%struct.snd_ctl_elem_info = type { i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32 }

@SNDRV_CTL_ELEM_TYPE_INTEGER = common dso_local global i32 0, align 4
@HPI_UNITS_PER_dB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_info*)* @snd_asihpi_tuner_gain_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_asihpi_tuner_gain_info(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_kcontrol*, align 8
  %5 = alloca %struct.snd_ctl_elem_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i16, align 2
  %9 = alloca [3 x i64], align 16
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %4, align 8
  store %struct.snd_ctl_elem_info* %1, %struct.snd_ctl_elem_info** %5, align 8
  %10 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %11 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %6, align 4
  store i16 0, i16* %8, align 2
  br label %13

13:                                               ; preds = %30, %2
  %14 = load i16, i16* %8, align 2
  %15 = sext i16 %14 to i32
  %16 = icmp slt i32 %15, 3
  br i1 %16, label %17, label %33

17:                                               ; preds = %13
  %18 = load i32, i32* %6, align 4
  %19 = load i16, i16* %8, align 2
  %20 = load i16, i16* %8, align 2
  %21 = sext i16 %20 to i64
  %22 = getelementptr inbounds [3 x i64], [3 x i64]* %9, i64 0, i64 %21
  %23 = call i64 @hpi_tuner_query_gain(i32 %18, i16 signext %19, i64* %22)
  store i64 %23, i64* %7, align 8
  %24 = load i64, i64* %7, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %17
  %27 = load i64, i64* %7, align 8
  %28 = trunc i64 %27 to i32
  store i32 %28, i32* %3, align 4
  br label %66

29:                                               ; preds = %17
  br label %30

30:                                               ; preds = %29
  %31 = load i16, i16* %8, align 2
  %32 = add i16 %31, 1
  store i16 %32, i16* %8, align 2
  br label %13

33:                                               ; preds = %13
  %34 = load i32, i32* @SNDRV_CTL_ELEM_TYPE_INTEGER, align 4
  %35 = load %struct.snd_ctl_elem_info*, %struct.snd_ctl_elem_info** %5, align 8
  %36 = getelementptr inbounds %struct.snd_ctl_elem_info, %struct.snd_ctl_elem_info* %35, i32 0, i32 2
  store i32 %34, i32* %36, align 4
  %37 = load %struct.snd_ctl_elem_info*, %struct.snd_ctl_elem_info** %5, align 8
  %38 = getelementptr inbounds %struct.snd_ctl_elem_info, %struct.snd_ctl_elem_info* %37, i32 0, i32 0
  store i32 1, i32* %38, align 4
  %39 = getelementptr inbounds [3 x i64], [3 x i64]* %9, i64 0, i64 0
  %40 = load i64, i64* %39, align 16
  %41 = trunc i64 %40 to i32
  %42 = load i32, i32* @HPI_UNITS_PER_dB, align 4
  %43 = sdiv i32 %41, %42
  %44 = load %struct.snd_ctl_elem_info*, %struct.snd_ctl_elem_info** %5, align 8
  %45 = getelementptr inbounds %struct.snd_ctl_elem_info, %struct.snd_ctl_elem_info* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  store i32 %43, i32* %47, align 4
  %48 = getelementptr inbounds [3 x i64], [3 x i64]* %9, i64 0, i64 1
  %49 = load i64, i64* %48, align 8
  %50 = trunc i64 %49 to i32
  %51 = load i32, i32* @HPI_UNITS_PER_dB, align 4
  %52 = sdiv i32 %50, %51
  %53 = load %struct.snd_ctl_elem_info*, %struct.snd_ctl_elem_info** %5, align 8
  %54 = getelementptr inbounds %struct.snd_ctl_elem_info, %struct.snd_ctl_elem_info* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 1
  store i32 %52, i32* %56, align 4
  %57 = getelementptr inbounds [3 x i64], [3 x i64]* %9, i64 0, i64 2
  %58 = load i64, i64* %57, align 16
  %59 = trunc i64 %58 to i32
  %60 = load i32, i32* @HPI_UNITS_PER_dB, align 4
  %61 = sdiv i32 %59, %60
  %62 = load %struct.snd_ctl_elem_info*, %struct.snd_ctl_elem_info** %5, align 8
  %63 = getelementptr inbounds %struct.snd_ctl_elem_info, %struct.snd_ctl_elem_info* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 2
  store i32 %61, i32* %65, align 4
  store i32 0, i32* %3, align 4
  br label %66

66:                                               ; preds = %33, %26
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

declare dso_local i64 @hpi_tuner_query_gain(i32, i16 signext, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
