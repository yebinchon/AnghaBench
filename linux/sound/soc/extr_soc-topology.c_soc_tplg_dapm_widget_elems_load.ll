; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/extr_soc-topology.c_soc_tplg_dapm_widget_elems_load.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/extr_soc-topology.c_soc_tplg_dapm_widget_elems_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.soc_tplg = type { i64, i32, i64 }
%struct.snd_soc_tplg_hdr = type { i32 }
%struct.snd_soc_tplg_dapm_widget = type { i32, i32 }

@SOC_TPLG_PASS_WIDGET = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [30 x i8] c"ASoC: adding %d DAPM widgets\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"ASoC: invalid widget size\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"ASoC: failed to load widget %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.soc_tplg*, %struct.snd_soc_tplg_hdr*)* @soc_tplg_dapm_widget_elems_load to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @soc_tplg_dapm_widget_elems_load(%struct.soc_tplg* %0, %struct.snd_soc_tplg_hdr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.soc_tplg*, align 8
  %5 = alloca %struct.snd_soc_tplg_hdr*, align 8
  %6 = alloca %struct.snd_soc_tplg_dapm_widget*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.soc_tplg* %0, %struct.soc_tplg** %4, align 8
  store %struct.snd_soc_tplg_hdr* %1, %struct.snd_soc_tplg_hdr** %5, align 8
  %10 = load %struct.snd_soc_tplg_hdr*, %struct.snd_soc_tplg_hdr** %5, align 8
  %11 = getelementptr inbounds %struct.snd_soc_tplg_hdr, %struct.snd_soc_tplg_hdr* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @le32_to_cpu(i32 %12)
  store i32 %13, i32* %8, align 4
  %14 = load %struct.soc_tplg*, %struct.soc_tplg** %4, align 8
  %15 = getelementptr inbounds %struct.soc_tplg, %struct.soc_tplg* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @SOC_TPLG_PASS_WIDGET, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %68

20:                                               ; preds = %2
  %21 = load %struct.soc_tplg*, %struct.soc_tplg** %4, align 8
  %22 = getelementptr inbounds %struct.soc_tplg, %struct.soc_tplg* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* %8, align 4
  %25 = call i32 @dev_dbg(i32 %23, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %24)
  store i32 0, i32* %9, align 4
  br label %26

26:                                               ; preds = %64, %20
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* %8, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %67

30:                                               ; preds = %26
  %31 = load %struct.soc_tplg*, %struct.soc_tplg** %4, align 8
  %32 = getelementptr inbounds %struct.soc_tplg, %struct.soc_tplg* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = inttoptr i64 %33 to %struct.snd_soc_tplg_dapm_widget*
  store %struct.snd_soc_tplg_dapm_widget* %34, %struct.snd_soc_tplg_dapm_widget** %6, align 8
  %35 = load %struct.snd_soc_tplg_dapm_widget*, %struct.snd_soc_tplg_dapm_widget** %6, align 8
  %36 = getelementptr inbounds %struct.snd_soc_tplg_dapm_widget, %struct.snd_soc_tplg_dapm_widget* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @le32_to_cpu(i32 %37)
  %39 = sext i32 %38 to i64
  %40 = icmp ne i64 %39, 8
  br i1 %40, label %41, label %48

41:                                               ; preds = %30
  %42 = load %struct.soc_tplg*, %struct.soc_tplg** %4, align 8
  %43 = getelementptr inbounds %struct.soc_tplg, %struct.soc_tplg* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = call i32 (i32, i8*, ...) @dev_err(i32 %44, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %3, align 4
  br label %68

48:                                               ; preds = %30
  %49 = load %struct.soc_tplg*, %struct.soc_tplg** %4, align 8
  %50 = load %struct.snd_soc_tplg_dapm_widget*, %struct.snd_soc_tplg_dapm_widget** %6, align 8
  %51 = call i32 @soc_tplg_dapm_widget_create(%struct.soc_tplg* %49, %struct.snd_soc_tplg_dapm_widget* %50)
  store i32 %51, i32* %7, align 4
  %52 = load i32, i32* %7, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %63

54:                                               ; preds = %48
  %55 = load %struct.soc_tplg*, %struct.soc_tplg** %4, align 8
  %56 = getelementptr inbounds %struct.soc_tplg, %struct.soc_tplg* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.snd_soc_tplg_dapm_widget*, %struct.snd_soc_tplg_dapm_widget** %6, align 8
  %59 = getelementptr inbounds %struct.snd_soc_tplg_dapm_widget, %struct.snd_soc_tplg_dapm_widget* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 (i32, i8*, ...) @dev_err(i32 %57, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %60)
  %62 = load i32, i32* %7, align 4
  store i32 %62, i32* %3, align 4
  br label %68

63:                                               ; preds = %48
  br label %64

64:                                               ; preds = %63
  %65 = load i32, i32* %9, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %9, align 4
  br label %26

67:                                               ; preds = %26
  store i32 0, i32* %3, align 4
  br label %68

68:                                               ; preds = %67, %54, %41, %19
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @soc_tplg_dapm_widget_create(%struct.soc_tplg*, %struct.snd_soc_tplg_dapm_widget*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
