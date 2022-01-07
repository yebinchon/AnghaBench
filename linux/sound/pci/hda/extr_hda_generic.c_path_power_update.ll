; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_generic.c_path_power_update.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_generic.c_path_power_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.nid_path = type { i32, i64* }

@AC_WCAP_POWER = common dso_local global i32 0, align 4
@AC_PWRST_D0 = common dso_local global i32 0, align 4
@AC_PWRST_D3 = common dso_local global i32 0, align 4
@AC_VERB_GET_POWER_STATE = common dso_local global i32 0, align 4
@AC_VERB_SET_POWER_STATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.hda_codec*, %struct.nid_path*, i32)* @path_power_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @path_power_update(%struct.hda_codec* %0, %struct.nid_path* %1, i32 %2) #0 {
  %4 = alloca %struct.hda_codec*, align 8
  %5 = alloca %struct.nid_path*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.hda_codec* %0, %struct.hda_codec** %4, align 8
  store %struct.nid_path* %1, %struct.nid_path** %5, align 8
  store i32 %2, i32* %6, align 4
  store i64 0, i64* %8, align 8
  store i32 0, i32* %9, align 4
  br label %12

12:                                               ; preds = %72, %3
  %13 = load i32, i32* %9, align 4
  %14 = load %struct.nid_path*, %struct.nid_path** %5, align 8
  %15 = getelementptr inbounds %struct.nid_path, %struct.nid_path* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp slt i32 %13, %16
  br i1 %17, label %18, label %75

18:                                               ; preds = %12
  %19 = load %struct.nid_path*, %struct.nid_path** %5, align 8
  %20 = getelementptr inbounds %struct.nid_path, %struct.nid_path* %19, i32 0, i32 1
  %21 = load i64*, i64** %20, align 8
  %22 = load i32, i32* %9, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i64, i64* %21, i64 %23
  %25 = load i64, i64* %24, align 8
  store i64 %25, i64* %7, align 8
  %26 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %27 = load i64, i64* %7, align 8
  %28 = call i32 @get_wcaps(%struct.hda_codec* %26, i64 %27)
  %29 = load i32, i32* @AC_WCAP_POWER, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %18
  br label %72

33:                                               ; preds = %18
  %34 = load i64, i64* %7, align 8
  %35 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %36 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp eq i64 %34, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %33
  br label %72

41:                                               ; preds = %33
  %42 = load i32, i32* %6, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %41
  %45 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %46 = load i64, i64* %7, align 8
  %47 = call i64 @is_active_nid_for_any(%struct.hda_codec* %45, i64 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %44, %41
  %50 = load i32, i32* @AC_PWRST_D0, align 4
  store i32 %50, i32* %10, align 4
  br label %53

51:                                               ; preds = %44
  %52 = load i32, i32* @AC_PWRST_D3, align 4
  store i32 %52, i32* %10, align 4
  br label %53

53:                                               ; preds = %51, %49
  %54 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %55 = load i64, i64* %7, align 8
  %56 = load i32, i32* @AC_VERB_GET_POWER_STATE, align 4
  %57 = call i32 @snd_hda_codec_read(%struct.hda_codec* %54, i64 %55, i32 0, i32 %56, i32 0)
  store i32 %57, i32* %11, align 4
  %58 = load i32, i32* %11, align 4
  %59 = load i32, i32* %10, align 4
  %60 = load i32, i32* %10, align 4
  %61 = shl i32 %60, 4
  %62 = or i32 %59, %61
  %63 = icmp ne i32 %58, %62
  br i1 %63, label %64, label %71

64:                                               ; preds = %53
  %65 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %66 = load i64, i64* %7, align 8
  %67 = load i32, i32* @AC_VERB_SET_POWER_STATE, align 4
  %68 = load i32, i32* %10, align 4
  %69 = call i32 @snd_hda_codec_write(%struct.hda_codec* %65, i64 %66, i32 0, i32 %67, i32 %68)
  %70 = load i64, i64* %7, align 8
  store i64 %70, i64* %8, align 8
  br label %71

71:                                               ; preds = %64, %53
  br label %72

72:                                               ; preds = %71, %40, %32
  %73 = load i32, i32* %9, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %9, align 4
  br label %12

75:                                               ; preds = %12
  %76 = load i64, i64* %8, align 8
  ret i64 %76
}

declare dso_local i32 @get_wcaps(%struct.hda_codec*, i64) #1

declare dso_local i64 @is_active_nid_for_any(%struct.hda_codec*, i64) #1

declare dso_local i32 @snd_hda_codec_read(%struct.hda_codec*, i64, i32, i32, i32) #1

declare dso_local i32 @snd_hda_codec_write(%struct.hda_codec*, i64, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
