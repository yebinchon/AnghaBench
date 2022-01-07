; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/skylake/extr_skl-pcm.c_skl_platform_soc_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/skylake/extr_skl-pcm.c_skl_platform_soc_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.hdac_bus = type { i64 }
%struct.skl_dev = type { %struct.TYPE_5__, i32, i32 (i32, i32)*, i32 (i32, i32)*, %struct.TYPE_4__*, i32, %struct.snd_soc_component* }
%struct.TYPE_5__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.skl_dsp_ops = type { i32 (i32, %struct.skl_dev.0*)* }
%struct.skl_dev.0 = type opaque

@.str = private unnamed_addr constant [26 x i8] c"Failed to init topology!\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Failed to boot first fw: %d\0A\00", align 1
@skl_update_d0i3c = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*)* @skl_platform_soc_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @skl_platform_soc_probe(%struct.snd_soc_component* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_soc_component*, align 8
  %4 = alloca %struct.hdac_bus*, align 8
  %5 = alloca %struct.skl_dev*, align 8
  %6 = alloca %struct.skl_dsp_ops*, align 8
  %7 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %3, align 8
  %8 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %9 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.hdac_bus* @dev_get_drvdata(i32 %10)
  store %struct.hdac_bus* %11, %struct.hdac_bus** %4, align 8
  %12 = load %struct.hdac_bus*, %struct.hdac_bus** %4, align 8
  %13 = call %struct.skl_dev* @bus_to_skl(%struct.hdac_bus* %12)
  store %struct.skl_dev* %13, %struct.skl_dev** %5, align 8
  %14 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %15 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @pm_runtime_get_sync(i32 %16)
  %18 = load %struct.hdac_bus*, %struct.hdac_bus** %4, align 8
  %19 = getelementptr inbounds %struct.hdac_bus, %struct.hdac_bus* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %125

22:                                               ; preds = %1
  %23 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %24 = load %struct.skl_dev*, %struct.skl_dev** %5, align 8
  %25 = getelementptr inbounds %struct.skl_dev, %struct.skl_dev* %24, i32 0, i32 6
  store %struct.snd_soc_component* %23, %struct.snd_soc_component** %25, align 8
  %26 = load %struct.skl_dev*, %struct.skl_dev** %5, align 8
  %27 = call i32 @skl_debugfs_init(%struct.skl_dev* %26)
  %28 = load %struct.skl_dev*, %struct.skl_dev** %5, align 8
  %29 = getelementptr inbounds %struct.skl_dev, %struct.skl_dev* %28, i32 0, i32 5
  store i32 %27, i32* %29, align 8
  %30 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %31 = load %struct.hdac_bus*, %struct.hdac_bus** %4, align 8
  %32 = call i32 @skl_tplg_init(%struct.snd_soc_component* %30, %struct.hdac_bus* %31)
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* %7, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %22
  %36 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %37 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 (i32, i8*, ...) @dev_err(i32 %38, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %40 = load i32, i32* %7, align 4
  store i32 %40, i32* %2, align 4
  br label %134

41:                                               ; preds = %22
  %42 = load %struct.skl_dev*, %struct.skl_dev** %5, align 8
  %43 = getelementptr inbounds %struct.skl_dev, %struct.skl_dev* %42, i32 0, i32 4
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call %struct.skl_dsp_ops* @skl_get_dsp_ops(i32 %46)
  store %struct.skl_dsp_ops* %47, %struct.skl_dsp_ops** %6, align 8
  %48 = load %struct.skl_dsp_ops*, %struct.skl_dsp_ops** %6, align 8
  %49 = icmp ne %struct.skl_dsp_ops* %48, null
  br i1 %49, label %53, label %50

50:                                               ; preds = %41
  %51 = load i32, i32* @EIO, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %2, align 4
  br label %134

53:                                               ; preds = %41
  %54 = load %struct.skl_dev*, %struct.skl_dev** %5, align 8
  %55 = getelementptr inbounds %struct.skl_dev, %struct.skl_dev* %54, i32 0, i32 3
  %56 = load i32 (i32, i32)*, i32 (i32, i32)** %55, align 8
  %57 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %58 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 %56(i32 %59, i32 0)
  %61 = load %struct.skl_dev*, %struct.skl_dev** %5, align 8
  %62 = getelementptr inbounds %struct.skl_dev, %struct.skl_dev* %61, i32 0, i32 2
  %63 = load i32 (i32, i32)*, i32 (i32, i32)** %62, align 8
  %64 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %65 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 %63(i32 %66, i32 0)
  %68 = load %struct.skl_dsp_ops*, %struct.skl_dsp_ops** %6, align 8
  %69 = getelementptr inbounds %struct.skl_dsp_ops, %struct.skl_dsp_ops* %68, i32 0, i32 0
  %70 = load i32 (i32, %struct.skl_dev.0*)*, i32 (i32, %struct.skl_dev.0*)** %69, align 8
  %71 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %72 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.skl_dev*, %struct.skl_dev** %5, align 8
  %75 = bitcast %struct.skl_dev* %74 to %struct.skl_dev.0*
  %76 = call i32 %70(i32 %73, %struct.skl_dev.0* %75)
  store i32 %76, i32* %7, align 4
  %77 = load %struct.skl_dev*, %struct.skl_dev** %5, align 8
  %78 = getelementptr inbounds %struct.skl_dev, %struct.skl_dev* %77, i32 0, i32 3
  %79 = load i32 (i32, i32)*, i32 (i32, i32)** %78, align 8
  %80 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %81 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i32 %79(i32 %82, i32 1)
  %84 = load %struct.skl_dev*, %struct.skl_dev** %5, align 8
  %85 = getelementptr inbounds %struct.skl_dev, %struct.skl_dev* %84, i32 0, i32 2
  %86 = load i32 (i32, i32)*, i32 (i32, i32)** %85, align 8
  %87 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %88 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call i32 %86(i32 %89, i32 1)
  %91 = load i32, i32* %7, align 4
  %92 = icmp slt i32 %91, 0
  br i1 %92, label %93, label %100

93:                                               ; preds = %53
  %94 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %95 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* %7, align 4
  %98 = call i32 (i32, i8*, ...) @dev_err(i32 %96, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %97)
  %99 = load i32, i32* %7, align 4
  store i32 %99, i32* %2, align 4
  br label %134

100:                                              ; preds = %53
  %101 = load %struct.skl_dev*, %struct.skl_dev** %5, align 8
  %102 = call i32 @skl_populate_modules(%struct.skl_dev* %101)
  %103 = load i32, i32* @skl_update_d0i3c, align 4
  %104 = load %struct.skl_dev*, %struct.skl_dev** %5, align 8
  %105 = getelementptr inbounds %struct.skl_dev, %struct.skl_dev* %104, i32 0, i32 1
  store i32 %103, i32* %105, align 8
  %106 = load %struct.skl_dev*, %struct.skl_dev** %5, align 8
  %107 = getelementptr inbounds %struct.skl_dev, %struct.skl_dev* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i32 0, i32 0
  %109 = load %struct.TYPE_6__*, %struct.TYPE_6__** %108, align 8
  %110 = icmp ne %struct.TYPE_6__* %109, null
  br i1 %110, label %111, label %124

111:                                              ; preds = %100
  %112 = load %struct.skl_dev*, %struct.skl_dev** %5, align 8
  %113 = load %struct.skl_dev*, %struct.skl_dev** %5, align 8
  %114 = getelementptr inbounds %struct.skl_dev, %struct.skl_dev* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %114, i32 0, i32 0
  %116 = load %struct.TYPE_6__*, %struct.TYPE_6__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.skl_dev*, %struct.skl_dev** %5, align 8
  %120 = getelementptr inbounds %struct.skl_dev, %struct.skl_dev* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %120, i32 0, i32 0
  %122 = load %struct.TYPE_6__*, %struct.TYPE_6__** %121, align 8
  %123 = call i32 @skl_dsp_set_astate_cfg(%struct.skl_dev* %112, i32 %118, %struct.TYPE_6__* %122)
  br label %124

124:                                              ; preds = %111, %100
  br label %125

125:                                              ; preds = %124, %1
  %126 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %127 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @pm_runtime_mark_last_busy(i32 %128)
  %130 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %131 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @pm_runtime_put_autosuspend(i32 %132)
  store i32 0, i32* %2, align 4
  br label %134

134:                                              ; preds = %125, %93, %50, %35
  %135 = load i32, i32* %2, align 4
  ret i32 %135
}

declare dso_local %struct.hdac_bus* @dev_get_drvdata(i32) #1

declare dso_local %struct.skl_dev* @bus_to_skl(%struct.hdac_bus*) #1

declare dso_local i32 @pm_runtime_get_sync(i32) #1

declare dso_local i32 @skl_debugfs_init(%struct.skl_dev*) #1

declare dso_local i32 @skl_tplg_init(%struct.snd_soc_component*, %struct.hdac_bus*) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local %struct.skl_dsp_ops* @skl_get_dsp_ops(i32) #1

declare dso_local i32 @skl_populate_modules(%struct.skl_dev*) #1

declare dso_local i32 @skl_dsp_set_astate_cfg(%struct.skl_dev*, i32, %struct.TYPE_6__*) #1

declare dso_local i32 @pm_runtime_mark_last_busy(i32) #1

declare dso_local i32 @pm_runtime_put_autosuspend(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
