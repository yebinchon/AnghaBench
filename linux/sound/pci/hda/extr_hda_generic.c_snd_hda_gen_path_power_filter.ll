; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_generic.c_snd_hda_gen_path_power_filter.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_generic.c_snd_hda_gen_path_power_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { %struct.TYPE_2__, i32, %struct.hda_gen_spec* }
%struct.TYPE_2__ = type { i64 }
%struct.hda_gen_spec = type { i32 }

@AC_PWRST_D0 = common dso_local global i32 0, align 4
@AC_WID_POWER = common dso_local global i64 0, align 8
@AC_PWRST_D3 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_hda_gen_path_power_filter(%struct.hda_codec* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hda_codec*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.hda_gen_spec*, align 8
  store %struct.hda_codec* %0, %struct.hda_codec** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %10 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %9, i32 0, i32 2
  %11 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %10, align 8
  store %struct.hda_gen_spec* %11, %struct.hda_gen_spec** %8, align 8
  %12 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %8, align 8
  %13 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %23, label %16

16:                                               ; preds = %3
  %17 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %18 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %16
  %22 = load i32, i32* %7, align 4
  store i32 %22, i32* %4, align 4
  br label %54

23:                                               ; preds = %16, %3
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* @AC_PWRST_D0, align 4
  %26 = icmp ne i32 %24, %25
  br i1 %26, label %34, label %27

27:                                               ; preds = %23
  %28 = load i64, i64* %6, align 8
  %29 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %30 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp eq i64 %28, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %27, %23
  %35 = load i32, i32* %7, align 4
  store i32 %35, i32* %4, align 4
  br label %54

36:                                               ; preds = %27
  %37 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %38 = load i64, i64* %6, align 8
  %39 = call i32 @get_wcaps(%struct.hda_codec* %37, i64 %38)
  %40 = call i64 @get_wcaps_type(i32 %39)
  %41 = load i64, i64* @AC_WID_POWER, align 8
  %42 = icmp sge i64 %40, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %36
  %44 = load i32, i32* %7, align 4
  store i32 %44, i32* %4, align 4
  br label %54

45:                                               ; preds = %36
  %46 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %47 = load i64, i64* %6, align 8
  %48 = call i64 @is_active_nid_for_any(%struct.hda_codec* %46, i64 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %45
  %51 = load i32, i32* %7, align 4
  store i32 %51, i32* %4, align 4
  br label %54

52:                                               ; preds = %45
  %53 = load i32, i32* @AC_PWRST_D3, align 4
  store i32 %53, i32* %4, align 4
  br label %54

54:                                               ; preds = %52, %50, %43, %34, %21
  %55 = load i32, i32* %4, align 4
  ret i32 %55
}

declare dso_local i64 @get_wcaps_type(i32) #1

declare dso_local i32 @get_wcaps(%struct.hda_codec*, i64) #1

declare dso_local i64 @is_active_nid_for_any(%struct.hda_codec*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
