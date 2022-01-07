; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sof/extr_topology.c_sof_dai_set_format.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sof/extr_topology.c_sof_dai_set_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_tplg_hw_config = type { i64, i64, i64, i64 }
%struct.sof_ipc_dai_config = type { i32 }

@SND_SOC_TPLG_BCLK_CM = common dso_local global i64 0, align 8
@SND_SOC_TPLG_FSYNC_CM = common dso_local global i64 0, align 8
@SOF_DAI_FMT_CBM_CFM = common dso_local global i32 0, align 4
@SOF_DAI_FMT_CBM_CFS = common dso_local global i32 0, align 4
@SOF_DAI_FMT_CBS_CFM = common dso_local global i32 0, align 4
@SOF_DAI_FMT_CBS_CFS = common dso_local global i32 0, align 4
@SOF_DAI_FMT_IB_IF = common dso_local global i32 0, align 4
@SOF_DAI_FMT_IB_NF = common dso_local global i32 0, align 4
@SOF_DAI_FMT_NB_IF = common dso_local global i32 0, align 4
@SOF_DAI_FMT_NB_NF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_soc_tplg_hw_config*, %struct.sof_ipc_dai_config*)* @sof_dai_set_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sof_dai_set_format(%struct.snd_soc_tplg_hw_config* %0, %struct.sof_ipc_dai_config* %1) #0 {
  %3 = alloca %struct.snd_soc_tplg_hw_config*, align 8
  %4 = alloca %struct.sof_ipc_dai_config*, align 8
  store %struct.snd_soc_tplg_hw_config* %0, %struct.snd_soc_tplg_hw_config** %3, align 8
  store %struct.sof_ipc_dai_config* %1, %struct.sof_ipc_dai_config** %4, align 8
  %5 = load %struct.snd_soc_tplg_hw_config*, %struct.snd_soc_tplg_hw_config** %3, align 8
  %6 = getelementptr inbounds %struct.snd_soc_tplg_hw_config, %struct.snd_soc_tplg_hw_config* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @SND_SOC_TPLG_BCLK_CM, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %29

10:                                               ; preds = %2
  %11 = load %struct.snd_soc_tplg_hw_config*, %struct.snd_soc_tplg_hw_config** %3, align 8
  %12 = getelementptr inbounds %struct.snd_soc_tplg_hw_config, %struct.snd_soc_tplg_hw_config* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @SND_SOC_TPLG_FSYNC_CM, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %22

16:                                               ; preds = %10
  %17 = load i32, i32* @SOF_DAI_FMT_CBM_CFM, align 4
  %18 = load %struct.sof_ipc_dai_config*, %struct.sof_ipc_dai_config** %4, align 8
  %19 = getelementptr inbounds %struct.sof_ipc_dai_config, %struct.sof_ipc_dai_config* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = or i32 %20, %17
  store i32 %21, i32* %19, align 4
  br label %28

22:                                               ; preds = %10
  %23 = load i32, i32* @SOF_DAI_FMT_CBM_CFS, align 4
  %24 = load %struct.sof_ipc_dai_config*, %struct.sof_ipc_dai_config** %4, align 8
  %25 = getelementptr inbounds %struct.sof_ipc_dai_config, %struct.sof_ipc_dai_config* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = or i32 %26, %23
  store i32 %27, i32* %25, align 4
  br label %28

28:                                               ; preds = %22, %16
  br label %48

29:                                               ; preds = %2
  %30 = load %struct.snd_soc_tplg_hw_config*, %struct.snd_soc_tplg_hw_config** %3, align 8
  %31 = getelementptr inbounds %struct.snd_soc_tplg_hw_config, %struct.snd_soc_tplg_hw_config* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @SND_SOC_TPLG_FSYNC_CM, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %41

35:                                               ; preds = %29
  %36 = load i32, i32* @SOF_DAI_FMT_CBS_CFM, align 4
  %37 = load %struct.sof_ipc_dai_config*, %struct.sof_ipc_dai_config** %4, align 8
  %38 = getelementptr inbounds %struct.sof_ipc_dai_config, %struct.sof_ipc_dai_config* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = or i32 %39, %36
  store i32 %40, i32* %38, align 4
  br label %47

41:                                               ; preds = %29
  %42 = load i32, i32* @SOF_DAI_FMT_CBS_CFS, align 4
  %43 = load %struct.sof_ipc_dai_config*, %struct.sof_ipc_dai_config** %4, align 8
  %44 = getelementptr inbounds %struct.sof_ipc_dai_config, %struct.sof_ipc_dai_config* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = or i32 %45, %42
  store i32 %46, i32* %44, align 4
  br label %47

47:                                               ; preds = %41, %35
  br label %48

48:                                               ; preds = %47, %28
  %49 = load %struct.snd_soc_tplg_hw_config*, %struct.snd_soc_tplg_hw_config** %3, align 8
  %50 = getelementptr inbounds %struct.snd_soc_tplg_hw_config, %struct.snd_soc_tplg_hw_config* %49, i32 0, i32 3
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %71

53:                                               ; preds = %48
  %54 = load %struct.snd_soc_tplg_hw_config*, %struct.snd_soc_tplg_hw_config** %3, align 8
  %55 = getelementptr inbounds %struct.snd_soc_tplg_hw_config, %struct.snd_soc_tplg_hw_config* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %64

58:                                               ; preds = %53
  %59 = load i32, i32* @SOF_DAI_FMT_IB_IF, align 4
  %60 = load %struct.sof_ipc_dai_config*, %struct.sof_ipc_dai_config** %4, align 8
  %61 = getelementptr inbounds %struct.sof_ipc_dai_config, %struct.sof_ipc_dai_config* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = or i32 %62, %59
  store i32 %63, i32* %61, align 4
  br label %70

64:                                               ; preds = %53
  %65 = load i32, i32* @SOF_DAI_FMT_IB_NF, align 4
  %66 = load %struct.sof_ipc_dai_config*, %struct.sof_ipc_dai_config** %4, align 8
  %67 = getelementptr inbounds %struct.sof_ipc_dai_config, %struct.sof_ipc_dai_config* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = or i32 %68, %65
  store i32 %69, i32* %67, align 4
  br label %70

70:                                               ; preds = %64, %58
  br label %89

71:                                               ; preds = %48
  %72 = load %struct.snd_soc_tplg_hw_config*, %struct.snd_soc_tplg_hw_config** %3, align 8
  %73 = getelementptr inbounds %struct.snd_soc_tplg_hw_config, %struct.snd_soc_tplg_hw_config* %72, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %82

76:                                               ; preds = %71
  %77 = load i32, i32* @SOF_DAI_FMT_NB_IF, align 4
  %78 = load %struct.sof_ipc_dai_config*, %struct.sof_ipc_dai_config** %4, align 8
  %79 = getelementptr inbounds %struct.sof_ipc_dai_config, %struct.sof_ipc_dai_config* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = or i32 %80, %77
  store i32 %81, i32* %79, align 4
  br label %88

82:                                               ; preds = %71
  %83 = load i32, i32* @SOF_DAI_FMT_NB_NF, align 4
  %84 = load %struct.sof_ipc_dai_config*, %struct.sof_ipc_dai_config** %4, align 8
  %85 = getelementptr inbounds %struct.sof_ipc_dai_config, %struct.sof_ipc_dai_config* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = or i32 %86, %83
  store i32 %87, i32* %85, align 4
  br label %88

88:                                               ; preds = %82, %76
  br label %89

89:                                               ; preds = %88, %70
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
