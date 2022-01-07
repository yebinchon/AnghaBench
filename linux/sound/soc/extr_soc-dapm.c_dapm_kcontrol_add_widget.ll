; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/extr_soc-dapm.c_dapm_kcontrol_add_widget.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/extr_soc-dapm.c_dapm_kcontrol_add_widget.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i32 }
%struct.snd_soc_dapm_widget = type { i32 }
%struct.dapm_kcontrol_data = type { %struct.snd_soc_dapm_widget_list* }
%struct.snd_soc_dapm_widget_list = type { i32, %struct.snd_soc_dapm_widget** }

@widgets = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_soc_dapm_widget*)* @dapm_kcontrol_add_widget to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dapm_kcontrol_add_widget(%struct.snd_kcontrol* %0, %struct.snd_soc_dapm_widget* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_kcontrol*, align 8
  %5 = alloca %struct.snd_soc_dapm_widget*, align 8
  %6 = alloca %struct.dapm_kcontrol_data*, align 8
  %7 = alloca %struct.snd_soc_dapm_widget_list*, align 8
  %8 = alloca i32, align 4
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %4, align 8
  store %struct.snd_soc_dapm_widget* %1, %struct.snd_soc_dapm_widget** %5, align 8
  %9 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %10 = call %struct.dapm_kcontrol_data* @snd_kcontrol_chip(%struct.snd_kcontrol* %9)
  store %struct.dapm_kcontrol_data* %10, %struct.dapm_kcontrol_data** %6, align 8
  %11 = load %struct.dapm_kcontrol_data*, %struct.dapm_kcontrol_data** %6, align 8
  %12 = getelementptr inbounds %struct.dapm_kcontrol_data, %struct.dapm_kcontrol_data* %11, i32 0, i32 0
  %13 = load %struct.snd_soc_dapm_widget_list*, %struct.snd_soc_dapm_widget_list** %12, align 8
  %14 = icmp ne %struct.snd_soc_dapm_widget_list* %13, null
  br i1 %14, label %15, label %22

15:                                               ; preds = %2
  %16 = load %struct.dapm_kcontrol_data*, %struct.dapm_kcontrol_data** %6, align 8
  %17 = getelementptr inbounds %struct.dapm_kcontrol_data, %struct.dapm_kcontrol_data* %16, i32 0, i32 0
  %18 = load %struct.snd_soc_dapm_widget_list*, %struct.snd_soc_dapm_widget_list** %17, align 8
  %19 = getelementptr inbounds %struct.snd_soc_dapm_widget_list, %struct.snd_soc_dapm_widget_list* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %8, align 4
  br label %23

22:                                               ; preds = %2
  store i32 1, i32* %8, align 4
  br label %23

23:                                               ; preds = %22, %15
  %24 = load %struct.dapm_kcontrol_data*, %struct.dapm_kcontrol_data** %6, align 8
  %25 = getelementptr inbounds %struct.dapm_kcontrol_data, %struct.dapm_kcontrol_data* %24, i32 0, i32 0
  %26 = load %struct.snd_soc_dapm_widget_list*, %struct.snd_soc_dapm_widget_list** %25, align 8
  %27 = load %struct.snd_soc_dapm_widget_list*, %struct.snd_soc_dapm_widget_list** %7, align 8
  %28 = load i32, i32* @widgets, align 4
  %29 = load i32, i32* %8, align 4
  %30 = call i32 @struct_size(%struct.snd_soc_dapm_widget_list* %27, i32 %28, i32 %29)
  %31 = load i32, i32* @GFP_KERNEL, align 4
  %32 = call %struct.snd_soc_dapm_widget_list* @krealloc(%struct.snd_soc_dapm_widget_list* %26, i32 %30, i32 %31)
  store %struct.snd_soc_dapm_widget_list* %32, %struct.snd_soc_dapm_widget_list** %7, align 8
  %33 = load %struct.snd_soc_dapm_widget_list*, %struct.snd_soc_dapm_widget_list** %7, align 8
  %34 = icmp ne %struct.snd_soc_dapm_widget_list* %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %23
  %36 = load i32, i32* @ENOMEM, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %3, align 4
  br label %53

38:                                               ; preds = %23
  %39 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %5, align 8
  %40 = load %struct.snd_soc_dapm_widget_list*, %struct.snd_soc_dapm_widget_list** %7, align 8
  %41 = getelementptr inbounds %struct.snd_soc_dapm_widget_list, %struct.snd_soc_dapm_widget_list* %40, i32 0, i32 1
  %42 = load %struct.snd_soc_dapm_widget**, %struct.snd_soc_dapm_widget*** %41, align 8
  %43 = load i32, i32* %8, align 4
  %44 = sub i32 %43, 1
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %42, i64 %45
  store %struct.snd_soc_dapm_widget* %39, %struct.snd_soc_dapm_widget** %46, align 8
  %47 = load i32, i32* %8, align 4
  %48 = load %struct.snd_soc_dapm_widget_list*, %struct.snd_soc_dapm_widget_list** %7, align 8
  %49 = getelementptr inbounds %struct.snd_soc_dapm_widget_list, %struct.snd_soc_dapm_widget_list* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 8
  %50 = load %struct.snd_soc_dapm_widget_list*, %struct.snd_soc_dapm_widget_list** %7, align 8
  %51 = load %struct.dapm_kcontrol_data*, %struct.dapm_kcontrol_data** %6, align 8
  %52 = getelementptr inbounds %struct.dapm_kcontrol_data, %struct.dapm_kcontrol_data* %51, i32 0, i32 0
  store %struct.snd_soc_dapm_widget_list* %50, %struct.snd_soc_dapm_widget_list** %52, align 8
  store i32 0, i32* %3, align 4
  br label %53

53:                                               ; preds = %38, %35
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local %struct.dapm_kcontrol_data* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

declare dso_local %struct.snd_soc_dapm_widget_list* @krealloc(%struct.snd_soc_dapm_widget_list*, i32, i32) #1

declare dso_local i32 @struct_size(%struct.snd_soc_dapm_widget_list*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
