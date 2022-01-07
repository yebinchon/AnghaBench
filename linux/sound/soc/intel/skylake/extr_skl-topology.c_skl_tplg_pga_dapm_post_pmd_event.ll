; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/skylake/extr_skl-topology.c_skl_tplg_pga_dapm_post_pmd_event.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/skylake/extr_skl-topology.c_skl_tplg_pga_dapm_post_pmd_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dapm_widget = type { %struct.skl_module_cfg* }
%struct.skl_module_cfg = type { %struct.TYPE_4__*, %struct.TYPE_3__*, i32 }
%struct.TYPE_4__ = type { i64, %struct.skl_module_cfg* }
%struct.TYPE_3__ = type { i32 }
%struct.skl_dev = type { i32 }

@SKL_PIN_BIND_DONE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dapm_widget*, %struct.skl_dev*)* @skl_tplg_pga_dapm_post_pmd_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @skl_tplg_pga_dapm_post_pmd_event(%struct.snd_soc_dapm_widget* %0, %struct.skl_dev* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_soc_dapm_widget*, align 8
  %5 = alloca %struct.skl_dev*, align 8
  %6 = alloca %struct.skl_module_cfg*, align 8
  %7 = alloca %struct.skl_module_cfg*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.snd_soc_dapm_widget* %0, %struct.snd_soc_dapm_widget** %4, align 8
  store %struct.skl_dev* %1, %struct.skl_dev** %5, align 8
  store i32 0, i32* %8, align 4
  %10 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %4, align 8
  %11 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %10, i32 0, i32 0
  %12 = load %struct.skl_module_cfg*, %struct.skl_module_cfg** %11, align 8
  store %struct.skl_module_cfg* %12, %struct.skl_module_cfg** %6, align 8
  %13 = load %struct.skl_dev*, %struct.skl_dev** %5, align 8
  %14 = load %struct.skl_module_cfg*, %struct.skl_module_cfg** %6, align 8
  %15 = getelementptr inbounds %struct.skl_module_cfg, %struct.skl_module_cfg* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @skl_stop_pipe(%struct.skl_dev* %13, i32 %16)
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %8, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %2
  %21 = load i32, i32* %8, align 4
  store i32 %21, i32* %3, align 4
  br label %65

22:                                               ; preds = %2
  store i32 0, i32* %9, align 4
  br label %23

23:                                               ; preds = %60, %22
  %24 = load i32, i32* %9, align 4
  %25 = load %struct.skl_module_cfg*, %struct.skl_module_cfg** %6, align 8
  %26 = getelementptr inbounds %struct.skl_module_cfg, %struct.skl_module_cfg* %25, i32 0, i32 1
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp slt i32 %24, %29
  br i1 %30, label %31, label %63

31:                                               ; preds = %23
  %32 = load %struct.skl_module_cfg*, %struct.skl_module_cfg** %6, align 8
  %33 = getelementptr inbounds %struct.skl_module_cfg, %struct.skl_module_cfg* %32, i32 0, i32 0
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = load i32, i32* %9, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @SKL_PIN_BIND_DONE, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %59

42:                                               ; preds = %31
  %43 = load %struct.skl_module_cfg*, %struct.skl_module_cfg** %6, align 8
  %44 = getelementptr inbounds %struct.skl_module_cfg, %struct.skl_module_cfg* %43, i32 0, i32 0
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = load i32, i32* %9, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 1
  %50 = load %struct.skl_module_cfg*, %struct.skl_module_cfg** %49, align 8
  store %struct.skl_module_cfg* %50, %struct.skl_module_cfg** %7, align 8
  %51 = load %struct.skl_module_cfg*, %struct.skl_module_cfg** %7, align 8
  %52 = icmp ne %struct.skl_module_cfg* %51, null
  br i1 %52, label %54, label %53

53:                                               ; preds = %42
  br label %60

54:                                               ; preds = %42
  %55 = load %struct.skl_dev*, %struct.skl_dev** %5, align 8
  %56 = load %struct.skl_module_cfg*, %struct.skl_module_cfg** %6, align 8
  %57 = load %struct.skl_module_cfg*, %struct.skl_module_cfg** %7, align 8
  %58 = call i32 @skl_unbind_modules(%struct.skl_dev* %55, %struct.skl_module_cfg* %56, %struct.skl_module_cfg* %57)
  store i32 %58, i32* %8, align 4
  br label %59

59:                                               ; preds = %54, %31
  br label %60

60:                                               ; preds = %59, %53
  %61 = load i32, i32* %9, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %9, align 4
  br label %23

63:                                               ; preds = %23
  %64 = load i32, i32* %8, align 4
  store i32 %64, i32* %3, align 4
  br label %65

65:                                               ; preds = %63, %20
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

declare dso_local i32 @skl_stop_pipe(%struct.skl_dev*, i32) #1

declare dso_local i32 @skl_unbind_modules(%struct.skl_dev*, %struct.skl_module_cfg*, %struct.skl_module_cfg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
