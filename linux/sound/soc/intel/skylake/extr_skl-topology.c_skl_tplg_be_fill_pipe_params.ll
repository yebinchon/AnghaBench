; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/skylake/extr_skl-topology.c_skl_tplg_be_fill_pipe_params.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/skylake/extr_skl-topology.c_skl_tplg_be_fill_pipe_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { i32 }
%struct.skl_module_cfg = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32*, i32 }
%struct.skl_pipe_params = type { i32, i32, i32, i32 }
%struct.nhlt_specific_cfg = type { i32, i32 }
%struct.skl_dev = type { i32 }

@NHLT_LINK_HDA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Blob NULL for id %x type %d dirn %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"PCM: ch %d, freq %d, fmt %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, %struct.skl_module_cfg*, %struct.skl_pipe_params*)* @skl_tplg_be_fill_pipe_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @skl_tplg_be_fill_pipe_params(%struct.snd_soc_dai* %0, %struct.skl_module_cfg* %1, %struct.skl_pipe_params* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_soc_dai*, align 8
  %6 = alloca %struct.skl_module_cfg*, align 8
  %7 = alloca %struct.skl_pipe_params*, align 8
  %8 = alloca %struct.nhlt_specific_cfg*, align 8
  %9 = alloca %struct.skl_dev*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %5, align 8
  store %struct.skl_module_cfg* %1, %struct.skl_module_cfg** %6, align 8
  store %struct.skl_pipe_params* %2, %struct.skl_pipe_params** %7, align 8
  %12 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %5, align 8
  %13 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.skl_dev* @get_skl_ctx(i32 %14)
  store %struct.skl_dev* %15, %struct.skl_dev** %9, align 8
  %16 = load %struct.skl_module_cfg*, %struct.skl_module_cfg** %6, align 8
  %17 = getelementptr inbounds %struct.skl_module_cfg, %struct.skl_module_cfg* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @skl_tplg_be_link_type(i32 %18)
  store i32 %19, i32* %10, align 4
  %20 = load %struct.skl_module_cfg*, %struct.skl_module_cfg** %6, align 8
  %21 = getelementptr inbounds %struct.skl_module_cfg, %struct.skl_module_cfg* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @skl_tplg_be_dev_type(i32 %22)
  store i32 %23, i32* %11, align 4
  %24 = load %struct.skl_module_cfg*, %struct.skl_module_cfg** %6, align 8
  %25 = load %struct.skl_pipe_params*, %struct.skl_pipe_params** %7, align 8
  %26 = call i32 @skl_tplg_fill_dma_id(%struct.skl_module_cfg* %24, %struct.skl_pipe_params* %25)
  %27 = load i32, i32* %10, align 4
  %28 = load i32, i32* @NHLT_LINK_HDA, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %93

31:                                               ; preds = %3
  %32 = load %struct.skl_dev*, %struct.skl_dev** %9, align 8
  %33 = load %struct.skl_module_cfg*, %struct.skl_module_cfg** %6, align 8
  %34 = getelementptr inbounds %struct.skl_module_cfg, %struct.skl_module_cfg* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* %10, align 4
  %37 = load %struct.skl_pipe_params*, %struct.skl_pipe_params** %7, align 8
  %38 = getelementptr inbounds %struct.skl_pipe_params, %struct.skl_pipe_params* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.skl_pipe_params*, %struct.skl_pipe_params** %7, align 8
  %41 = getelementptr inbounds %struct.skl_pipe_params, %struct.skl_pipe_params* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.skl_pipe_params*, %struct.skl_pipe_params** %7, align 8
  %44 = getelementptr inbounds %struct.skl_pipe_params, %struct.skl_pipe_params* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.skl_pipe_params*, %struct.skl_pipe_params** %7, align 8
  %47 = getelementptr inbounds %struct.skl_pipe_params, %struct.skl_pipe_params* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %11, align 4
  %50 = call %struct.nhlt_specific_cfg* @skl_get_ep_blob(%struct.skl_dev* %32, i32 %35, i32 %36, i32 %39, i32 %42, i32 %45, i32 %48, i32 %49)
  store %struct.nhlt_specific_cfg* %50, %struct.nhlt_specific_cfg** %8, align 8
  %51 = load %struct.nhlt_specific_cfg*, %struct.nhlt_specific_cfg** %8, align 8
  %52 = icmp ne %struct.nhlt_specific_cfg* %51, null
  br i1 %52, label %53, label %65

53:                                               ; preds = %31
  %54 = load %struct.nhlt_specific_cfg*, %struct.nhlt_specific_cfg** %8, align 8
  %55 = getelementptr inbounds %struct.nhlt_specific_cfg, %struct.nhlt_specific_cfg* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.skl_module_cfg*, %struct.skl_module_cfg** %6, align 8
  %58 = getelementptr inbounds %struct.skl_module_cfg, %struct.skl_module_cfg* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 1
  store i32 %56, i32* %59, align 8
  %60 = load %struct.nhlt_specific_cfg*, %struct.nhlt_specific_cfg** %8, align 8
  %61 = getelementptr inbounds %struct.nhlt_specific_cfg, %struct.nhlt_specific_cfg* %60, i32 0, i32 0
  %62 = load %struct.skl_module_cfg*, %struct.skl_module_cfg** %6, align 8
  %63 = getelementptr inbounds %struct.skl_module_cfg, %struct.skl_module_cfg* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  store i32* %61, i32** %64, align 8
  br label %92

65:                                               ; preds = %31
  %66 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %5, align 8
  %67 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.skl_module_cfg*, %struct.skl_module_cfg** %6, align 8
  %70 = getelementptr inbounds %struct.skl_module_cfg, %struct.skl_module_cfg* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* %10, align 4
  %73 = load %struct.skl_pipe_params*, %struct.skl_pipe_params** %7, align 8
  %74 = getelementptr inbounds %struct.skl_pipe_params, %struct.skl_pipe_params* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @dev_err(i32 %68, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %71, i32 %72, i32 %75)
  %77 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %5, align 8
  %78 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.skl_pipe_params*, %struct.skl_pipe_params** %7, align 8
  %81 = getelementptr inbounds %struct.skl_pipe_params, %struct.skl_pipe_params* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.skl_pipe_params*, %struct.skl_pipe_params** %7, align 8
  %84 = getelementptr inbounds %struct.skl_pipe_params, %struct.skl_pipe_params* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.skl_pipe_params*, %struct.skl_pipe_params** %7, align 8
  %87 = getelementptr inbounds %struct.skl_pipe_params, %struct.skl_pipe_params* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @dev_err(i32 %79, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %82, i32 %85, i32 %88)
  %90 = load i32, i32* @EINVAL, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %4, align 4
  br label %93

92:                                               ; preds = %53
  store i32 0, i32* %4, align 4
  br label %93

93:                                               ; preds = %92, %65, %30
  %94 = load i32, i32* %4, align 4
  ret i32 %94
}

declare dso_local %struct.skl_dev* @get_skl_ctx(i32) #1

declare dso_local i32 @skl_tplg_be_link_type(i32) #1

declare dso_local i32 @skl_tplg_be_dev_type(i32) #1

declare dso_local i32 @skl_tplg_fill_dma_id(%struct.skl_module_cfg*, %struct.skl_pipe_params*) #1

declare dso_local %struct.nhlt_specific_cfg* @skl_get_ep_blob(%struct.skl_dev*, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
