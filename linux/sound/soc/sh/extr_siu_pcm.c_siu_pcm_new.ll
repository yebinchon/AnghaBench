; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sh/extr_siu_pcm.c_siu_pcm_new.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sh/extr_siu_pcm.c_siu_pcm_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.siu_info = type { i32 }
%struct.siu_port = type { %struct.TYPE_6__, %struct.TYPE_5__, %struct.snd_pcm* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.snd_pcm = type { i32 }
%struct.snd_soc_pcm_runtime = type { %struct.snd_pcm*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.snd_card* }
%struct.snd_card = type { i32 }
%struct.platform_device = type { i32 }

@siu_i2s_data = common dso_local global %struct.siu_info* null, align 8
@SIU_PORT_NUM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@siu_ports = common dso_local global %struct.siu_port** null, align 8
@SNDRV_DMA_TYPE_DEV = common dso_local global i32 0, align 4
@SIU_BUFFER_BYTES_MAX = common dso_local global i32 0, align 4
@siu_io_tasklet = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"SuperH SIU driver initialized.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_pcm_runtime*)* @siu_pcm_new to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @siu_pcm_new(%struct.snd_soc_pcm_runtime* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_soc_pcm_runtime*, align 8
  %4 = alloca %struct.snd_card*, align 8
  %5 = alloca %struct.snd_pcm*, align 8
  %6 = alloca %struct.siu_info*, align 8
  %7 = alloca %struct.platform_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.siu_port**, align 8
  store %struct.snd_soc_pcm_runtime* %0, %struct.snd_soc_pcm_runtime** %3, align 8
  %11 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %3, align 8
  %12 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %11, i32 0, i32 1
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load %struct.snd_card*, %struct.snd_card** %14, align 8
  store %struct.snd_card* %15, %struct.snd_card** %4, align 8
  %16 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %3, align 8
  %17 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %16, i32 0, i32 0
  %18 = load %struct.snd_pcm*, %struct.snd_pcm** %17, align 8
  store %struct.snd_pcm* %18, %struct.snd_pcm** %5, align 8
  %19 = load %struct.siu_info*, %struct.siu_info** @siu_i2s_data, align 8
  store %struct.siu_info* %19, %struct.siu_info** %6, align 8
  %20 = load %struct.snd_card*, %struct.snd_card** %4, align 8
  %21 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call %struct.platform_device* @to_platform_device(i32 %22)
  store %struct.platform_device* %23, %struct.platform_device** %7, align 8
  %24 = load %struct.platform_device*, %struct.platform_device** %7, align 8
  %25 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %34, label %28

28:                                               ; preds = %1
  %29 = load %struct.platform_device*, %struct.platform_device** %7, align 8
  %30 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @SIU_PORT_NUM, align 4
  %33 = icmp sge i32 %31, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %28, %1
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %2, align 4
  br label %107

37:                                               ; preds = %28
  %38 = load %struct.platform_device*, %struct.platform_device** %7, align 8
  %39 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.siu_info*, %struct.siu_info** %6, align 8
  %42 = getelementptr inbounds %struct.siu_info, %struct.siu_info* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 4
  %43 = load %struct.platform_device*, %struct.platform_device** %7, align 8
  %44 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %9, align 4
  br label %46

46:                                               ; preds = %99, %37
  %47 = load i32, i32* %9, align 4
  %48 = load %struct.platform_device*, %struct.platform_device** %7, align 8
  %49 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = add nsw i32 %50, 1
  %52 = icmp slt i32 %47, %51
  br i1 %52, label %53, label %102

53:                                               ; preds = %46
  %54 = load %struct.siu_port**, %struct.siu_port*** @siu_ports, align 8
  %55 = load i32, i32* %9, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.siu_port*, %struct.siu_port** %54, i64 %56
  store %struct.siu_port** %57, %struct.siu_port*** %10, align 8
  %58 = load i32, i32* %9, align 4
  %59 = load %struct.siu_port**, %struct.siu_port*** %10, align 8
  %60 = load %struct.snd_card*, %struct.snd_card** %4, align 8
  %61 = call i32 @siu_init_port(i32 %58, %struct.siu_port** %59, %struct.snd_card* %60)
  store i32 %61, i32* %8, align 4
  %62 = load i32, i32* %8, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %53
  %65 = load i32, i32* %8, align 4
  store i32 %65, i32* %2, align 4
  br label %107

66:                                               ; preds = %53
  %67 = load %struct.snd_pcm*, %struct.snd_pcm** %5, align 8
  %68 = load i32, i32* @SNDRV_DMA_TYPE_DEV, align 4
  %69 = load %struct.snd_card*, %struct.snd_card** %4, align 8
  %70 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @SIU_BUFFER_BYTES_MAX, align 4
  %73 = load i32, i32* @SIU_BUFFER_BYTES_MAX, align 4
  %74 = call i32 @snd_pcm_lib_preallocate_pages_for_all(%struct.snd_pcm* %67, i32 %68, i32 %71, i32 %72, i32 %73)
  %75 = load %struct.snd_pcm*, %struct.snd_pcm** %5, align 8
  %76 = load %struct.siu_port**, %struct.siu_port*** %10, align 8
  %77 = load %struct.siu_port*, %struct.siu_port** %76, align 8
  %78 = getelementptr inbounds %struct.siu_port, %struct.siu_port* %77, i32 0, i32 2
  store %struct.snd_pcm* %75, %struct.snd_pcm** %78, align 8
  %79 = load %struct.siu_port**, %struct.siu_port*** %10, align 8
  %80 = load %struct.siu_port*, %struct.siu_port** %79, align 8
  %81 = getelementptr inbounds %struct.siu_port, %struct.siu_port* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 0
  %83 = load i32, i32* @siu_io_tasklet, align 4
  %84 = load %struct.siu_port**, %struct.siu_port*** %10, align 8
  %85 = load %struct.siu_port*, %struct.siu_port** %84, align 8
  %86 = getelementptr inbounds %struct.siu_port, %struct.siu_port* %85, i32 0, i32 1
  %87 = ptrtoint %struct.TYPE_5__* %86 to i64
  %88 = call i32 @tasklet_init(i32* %82, i32 %83, i64 %87)
  %89 = load %struct.siu_port**, %struct.siu_port*** %10, align 8
  %90 = load %struct.siu_port*, %struct.siu_port** %89, align 8
  %91 = getelementptr inbounds %struct.siu_port, %struct.siu_port* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 0
  %93 = load i32, i32* @siu_io_tasklet, align 4
  %94 = load %struct.siu_port**, %struct.siu_port*** %10, align 8
  %95 = load %struct.siu_port*, %struct.siu_port** %94, align 8
  %96 = getelementptr inbounds %struct.siu_port, %struct.siu_port* %95, i32 0, i32 0
  %97 = ptrtoint %struct.TYPE_6__* %96 to i64
  %98 = call i32 @tasklet_init(i32* %92, i32 %93, i64 %97)
  br label %99

99:                                               ; preds = %66
  %100 = load i32, i32* %9, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %9, align 4
  br label %46

102:                                              ; preds = %46
  %103 = load %struct.snd_card*, %struct.snd_card** %4, align 8
  %104 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @dev_info(i32 %105, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %107

107:                                              ; preds = %102, %64, %34
  %108 = load i32, i32* %2, align 4
  ret i32 %108
}

declare dso_local %struct.platform_device* @to_platform_device(i32) #1

declare dso_local i32 @siu_init_port(i32, %struct.siu_port**, %struct.snd_card*) #1

declare dso_local i32 @snd_pcm_lib_preallocate_pages_for_all(%struct.snd_pcm*, i32, i32, i32, i32) #1

declare dso_local i32 @tasklet_init(i32*, i32, i64) #1

declare dso_local i32 @dev_info(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
