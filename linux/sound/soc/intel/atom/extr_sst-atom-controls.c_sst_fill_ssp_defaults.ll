; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/atom/extr_sst-atom-controls.c_sst_fill_ssp_defaults.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/atom/extr_sst-atom-controls.c_sst_fill_ssp_defaults.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sst_ssp_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.snd_soc_dai = type { i32 }
%struct.sst_data = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@sst_ssp_configs = common dso_local global %struct.sst_ssp_config zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sst_fill_ssp_defaults(%struct.snd_soc_dai* %0) #0 {
  %2 = alloca %struct.snd_soc_dai*, align 8
  %3 = alloca %struct.sst_ssp_config*, align 8
  %4 = alloca %struct.sst_data*, align 8
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %2, align 8
  %5 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %2, align 8
  %6 = call %struct.sst_data* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai* %5)
  store %struct.sst_data* %6, %struct.sst_data** %4, align 8
  store %struct.sst_ssp_config* @sst_ssp_configs, %struct.sst_ssp_config** %3, align 8
  %7 = load %struct.sst_ssp_config*, %struct.sst_ssp_config** %3, align 8
  %8 = getelementptr inbounds %struct.sst_ssp_config, %struct.sst_ssp_config* %7, i32 0, i32 12
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.sst_data*, %struct.sst_data** %4, align 8
  %11 = getelementptr inbounds %struct.sst_data, %struct.sst_data* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 14
  store i32 %9, i32* %12, align 4
  %13 = load %struct.sst_ssp_config*, %struct.sst_ssp_config** %3, align 8
  %14 = getelementptr inbounds %struct.sst_ssp_config, %struct.sst_ssp_config* %13, i32 0, i32 11
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.sst_data*, %struct.sst_data** %4, align 8
  %17 = getelementptr inbounds %struct.sst_data, %struct.sst_data* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 13
  store i32 %15, i32* %18, align 4
  %19 = load %struct.sst_ssp_config*, %struct.sst_ssp_config** %3, align 8
  %20 = getelementptr inbounds %struct.sst_ssp_config, %struct.sst_ssp_config* %19, i32 0, i32 10
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.sst_data*, %struct.sst_data** %4, align 8
  %23 = getelementptr inbounds %struct.sst_data, %struct.sst_data* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 12
  store i32 %21, i32* %24, align 4
  %25 = load %struct.sst_ssp_config*, %struct.sst_ssp_config** %3, align 8
  %26 = getelementptr inbounds %struct.sst_ssp_config, %struct.sst_ssp_config* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.sst_ssp_config*, %struct.sst_ssp_config** %3, align 8
  %29 = getelementptr inbounds %struct.sst_ssp_config, %struct.sst_ssp_config* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = shl i32 %30, 1
  %32 = or i32 %27, %31
  %33 = load %struct.sst_data*, %struct.sst_data** %4, align 8
  %34 = getelementptr inbounds %struct.sst_data, %struct.sst_data* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  store i32 %32, i32* %35, align 4
  %36 = load %struct.sst_ssp_config*, %struct.sst_ssp_config** %3, align 8
  %37 = getelementptr inbounds %struct.sst_ssp_config, %struct.sst_ssp_config* %36, i32 0, i32 9
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.sst_data*, %struct.sst_data** %4, align 8
  %40 = getelementptr inbounds %struct.sst_data, %struct.sst_data* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 11
  store i32 %38, i32* %41, align 4
  %42 = load %struct.sst_ssp_config*, %struct.sst_ssp_config** %3, align 8
  %43 = getelementptr inbounds %struct.sst_ssp_config, %struct.sst_ssp_config* %42, i32 0, i32 8
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.sst_data*, %struct.sst_data** %4, align 8
  %46 = getelementptr inbounds %struct.sst_data, %struct.sst_data* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 10
  store i32 %44, i32* %47, align 4
  %48 = load %struct.sst_ssp_config*, %struct.sst_ssp_config** %3, align 8
  %49 = getelementptr inbounds %struct.sst_ssp_config, %struct.sst_ssp_config* %48, i32 0, i32 8
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.sst_data*, %struct.sst_data** %4, align 8
  %52 = getelementptr inbounds %struct.sst_data, %struct.sst_data* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 9
  store i32 %50, i32* %53, align 4
  %54 = load %struct.sst_ssp_config*, %struct.sst_ssp_config** %3, align 8
  %55 = getelementptr inbounds %struct.sst_ssp_config, %struct.sst_ssp_config* %54, i32 0, i32 7
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.sst_data*, %struct.sst_data** %4, align 8
  %58 = getelementptr inbounds %struct.sst_data, %struct.sst_data* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 8
  store i32 %56, i32* %59, align 4
  %60 = load %struct.sst_ssp_config*, %struct.sst_ssp_config** %3, align 8
  %61 = getelementptr inbounds %struct.sst_ssp_config, %struct.sst_ssp_config* %60, i32 0, i32 6
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.sst_data*, %struct.sst_data** %4, align 8
  %64 = getelementptr inbounds %struct.sst_data, %struct.sst_data* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 7
  store i32 %62, i32* %65, align 4
  %66 = load %struct.sst_ssp_config*, %struct.sst_ssp_config** %3, align 8
  %67 = getelementptr inbounds %struct.sst_ssp_config, %struct.sst_ssp_config* %66, i32 0, i32 5
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.sst_data*, %struct.sst_data** %4, align 8
  %70 = getelementptr inbounds %struct.sst_data, %struct.sst_data* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 6
  store i32 %68, i32* %71, align 4
  %72 = load %struct.sst_ssp_config*, %struct.sst_ssp_config** %3, align 8
  %73 = getelementptr inbounds %struct.sst_ssp_config, %struct.sst_ssp_config* %72, i32 0, i32 4
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.sst_data*, %struct.sst_data** %4, align 8
  %76 = getelementptr inbounds %struct.sst_data, %struct.sst_data* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 5
  store i32 %74, i32* %77, align 4
  %78 = load %struct.sst_ssp_config*, %struct.sst_ssp_config** %3, align 8
  %79 = getelementptr inbounds %struct.sst_ssp_config, %struct.sst_ssp_config* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.sst_data*, %struct.sst_data** %4, align 8
  %82 = getelementptr inbounds %struct.sst_data, %struct.sst_data* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 4
  store i32 %80, i32* %83, align 4
  %84 = load %struct.sst_ssp_config*, %struct.sst_ssp_config** %3, align 8
  %85 = getelementptr inbounds %struct.sst_ssp_config, %struct.sst_ssp_config* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.sst_data*, %struct.sst_data** %4, align 8
  %88 = getelementptr inbounds %struct.sst_data, %struct.sst_data* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 3
  store i32 %86, i32* %89, align 4
  %90 = load %struct.sst_data*, %struct.sst_data** %4, align 8
  %91 = getelementptr inbounds %struct.sst_data, %struct.sst_data* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 2
  store i32 255, i32* %92, align 4
  %93 = load %struct.sst_data*, %struct.sst_data** %4, align 8
  %94 = getelementptr inbounds %struct.sst_data, %struct.sst_data* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 1
  store i32 255, i32* %95, align 4
  ret void
}

declare dso_local %struct.sst_data* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
