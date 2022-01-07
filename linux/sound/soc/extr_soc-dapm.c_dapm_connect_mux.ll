; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/extr_soc-dapm.c_dapm_connect_mux.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/extr_soc-dapm.c_dapm_connect_mux.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dapm_context = type { i32 }
%struct.snd_soc_dapm_path = type { i32, i32 }
%struct.snd_soc_dapm_widget = type { %struct.snd_kcontrol_new* }
%struct.snd_kcontrol_new = type { i64 }
%struct.soc_enum = type { i64, i32, i32, i32*, i32 }

@SND_SOC_NOPM = common dso_local global i64 0, align 8
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_path*, i8*, %struct.snd_soc_dapm_widget*)* @dapm_connect_mux to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dapm_connect_mux(%struct.snd_soc_dapm_context* %0, %struct.snd_soc_dapm_path* %1, i8* %2, %struct.snd_soc_dapm_widget* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_soc_dapm_context*, align 8
  %7 = alloca %struct.snd_soc_dapm_path*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.snd_soc_dapm_widget*, align 8
  %10 = alloca %struct.snd_kcontrol_new*, align 8
  %11 = alloca %struct.soc_enum*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.snd_soc_dapm_context* %0, %struct.snd_soc_dapm_context** %6, align 8
  store %struct.snd_soc_dapm_path* %1, %struct.snd_soc_dapm_path** %7, align 8
  store i8* %2, i8** %8, align 8
  store %struct.snd_soc_dapm_widget* %3, %struct.snd_soc_dapm_widget** %9, align 8
  %15 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %9, align 8
  %16 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %15, i32 0, i32 0
  %17 = load %struct.snd_kcontrol_new*, %struct.snd_kcontrol_new** %16, align 8
  %18 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %17, i64 0
  store %struct.snd_kcontrol_new* %18, %struct.snd_kcontrol_new** %10, align 8
  %19 = load %struct.snd_kcontrol_new*, %struct.snd_kcontrol_new** %10, align 8
  %20 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = inttoptr i64 %21 to %struct.soc_enum*
  store %struct.soc_enum* %22, %struct.soc_enum** %11, align 8
  %23 = load %struct.soc_enum*, %struct.soc_enum** %11, align 8
  %24 = getelementptr inbounds %struct.soc_enum, %struct.soc_enum* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @SND_SOC_NOPM, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %46

28:                                               ; preds = %4
  %29 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %6, align 8
  %30 = load %struct.soc_enum*, %struct.soc_enum** %11, align 8
  %31 = getelementptr inbounds %struct.soc_enum, %struct.soc_enum* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = call i32 @soc_dapm_read(%struct.snd_soc_dapm_context* %29, i64 %32, i32* %12)
  %34 = load i32, i32* %12, align 4
  %35 = load %struct.soc_enum*, %struct.soc_enum** %11, align 8
  %36 = getelementptr inbounds %struct.soc_enum, %struct.soc_enum* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = lshr i32 %34, %37
  %39 = load %struct.soc_enum*, %struct.soc_enum** %11, align 8
  %40 = getelementptr inbounds %struct.soc_enum, %struct.soc_enum* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = and i32 %38, %41
  store i32 %42, i32* %12, align 4
  %43 = load %struct.soc_enum*, %struct.soc_enum** %11, align 8
  %44 = load i32, i32* %12, align 4
  %45 = call i32 @snd_soc_enum_val_to_item(%struct.soc_enum* %43, i32 %44)
  store i32 %45, i32* %13, align 4
  br label %47

46:                                               ; preds = %4
  store i32 0, i32* %13, align 4
  br label %47

47:                                               ; preds = %46, %28
  %48 = load %struct.soc_enum*, %struct.soc_enum** %11, align 8
  %49 = getelementptr inbounds %struct.soc_enum, %struct.soc_enum* %48, i32 0, i32 3
  %50 = load i32*, i32** %49, align 8
  %51 = load %struct.soc_enum*, %struct.soc_enum** %11, align 8
  %52 = getelementptr inbounds %struct.soc_enum, %struct.soc_enum* %51, i32 0, i32 4
  %53 = load i32, i32* %52, align 8
  %54 = load i8*, i8** %8, align 8
  %55 = call i32 @match_string(i32* %50, i32 %53, i8* %54)
  store i32 %55, i32* %14, align 4
  %56 = load i32, i32* %14, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %47
  %59 = load i32, i32* @ENODEV, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %5, align 4
  br label %77

61:                                               ; preds = %47
  %62 = load %struct.soc_enum*, %struct.soc_enum** %11, align 8
  %63 = getelementptr inbounds %struct.soc_enum, %struct.soc_enum* %62, i32 0, i32 3
  %64 = load i32*, i32** %63, align 8
  %65 = load i32, i32* %14, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.snd_soc_dapm_path*, %struct.snd_soc_dapm_path** %7, align 8
  %70 = getelementptr inbounds %struct.snd_soc_dapm_path, %struct.snd_soc_dapm_path* %69, i32 0, i32 1
  store i32 %68, i32* %70, align 4
  %71 = load i32, i32* %14, align 4
  %72 = load i32, i32* %13, align 4
  %73 = icmp eq i32 %71, %72
  %74 = zext i1 %73 to i32
  %75 = load %struct.snd_soc_dapm_path*, %struct.snd_soc_dapm_path** %7, align 8
  %76 = getelementptr inbounds %struct.snd_soc_dapm_path, %struct.snd_soc_dapm_path* %75, i32 0, i32 0
  store i32 %74, i32* %76, align 4
  store i32 0, i32* %5, align 4
  br label %77

77:                                               ; preds = %61, %58
  %78 = load i32, i32* %5, align 4
  ret i32 %78
}

declare dso_local i32 @soc_dapm_read(%struct.snd_soc_dapm_context*, i64, i32*) #1

declare dso_local i32 @snd_soc_enum_val_to_item(%struct.soc_enum*, i32) #1

declare dso_local i32 @match_string(i32*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
