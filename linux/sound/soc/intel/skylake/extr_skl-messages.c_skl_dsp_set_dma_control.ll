; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/skylake/extr_skl-messages.c_skl_dsp_set_dma_control.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/skylake/extr_skl-messages.c_skl_dsp_set_dma_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.skl_dev = type { i32 }
%struct.skl_dma_control = type { i32, i32, i32 }
%struct.skl_ipc_large_config_msg = type { i64, i32, i32 }

@DMA_CONTROL_ID = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@DMA_I2S_BLOB_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @skl_dsp_set_dma_control(%struct.skl_dev* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.skl_dev*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.skl_dma_control*, align 8
  %11 = alloca %struct.skl_ipc_large_config_msg, align 8
  %12 = alloca i32, align 4
  store %struct.skl_dev* %0, %struct.skl_dev** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = bitcast %struct.skl_ipc_large_config_msg* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %13, i8 0, i64 16, i1 false)
  store i32 0, i32* %12, align 4
  %14 = load i32, i32* %8, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %54

17:                                               ; preds = %4
  %18 = load i32, i32* @DMA_CONTROL_ID, align 4
  %19 = getelementptr inbounds %struct.skl_ipc_large_config_msg, %struct.skl_ipc_large_config_msg* %11, i32 0, i32 1
  store i32 %18, i32* %19, align 8
  %20 = load i32, i32* %8, align 4
  %21 = sext i32 %20 to i64
  %22 = add i64 12, %21
  %23 = getelementptr inbounds %struct.skl_ipc_large_config_msg, %struct.skl_ipc_large_config_msg* %11, i32 0, i32 0
  store i64 %22, i64* %23, align 8
  %24 = getelementptr inbounds %struct.skl_ipc_large_config_msg, %struct.skl_ipc_large_config_msg* %11, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i32, i32* @GFP_KERNEL, align 4
  %27 = call %struct.skl_dma_control* @kzalloc(i64 %25, i32 %26)
  store %struct.skl_dma_control* %27, %struct.skl_dma_control** %10, align 8
  %28 = load %struct.skl_dma_control*, %struct.skl_dma_control** %10, align 8
  %29 = icmp eq %struct.skl_dma_control* %28, null
  br i1 %29, label %30, label %33

30:                                               ; preds = %17
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %5, align 4
  br label %54

33:                                               ; preds = %17
  %34 = load i32, i32* %9, align 4
  %35 = load %struct.skl_dma_control*, %struct.skl_dma_control** %10, align 8
  %36 = getelementptr inbounds %struct.skl_dma_control, %struct.skl_dma_control* %35, i32 0, i32 2
  store i32 %34, i32* %36, align 4
  %37 = load i32, i32* @DMA_I2S_BLOB_SIZE, align 4
  %38 = load %struct.skl_dma_control*, %struct.skl_dma_control** %10, align 8
  %39 = getelementptr inbounds %struct.skl_dma_control, %struct.skl_dma_control* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 4
  %40 = load %struct.skl_dma_control*, %struct.skl_dma_control** %10, align 8
  %41 = getelementptr inbounds %struct.skl_dma_control, %struct.skl_dma_control* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32*, i32** %7, align 8
  %44 = load i32, i32* %8, align 4
  %45 = call i32 @memcpy(i32 %42, i32* %43, i32 %44)
  %46 = load %struct.skl_dev*, %struct.skl_dev** %6, align 8
  %47 = getelementptr inbounds %struct.skl_dev, %struct.skl_dev* %46, i32 0, i32 0
  %48 = load %struct.skl_dma_control*, %struct.skl_dma_control** %10, align 8
  %49 = bitcast %struct.skl_dma_control* %48 to i32*
  %50 = call i32 @skl_ipc_set_large_config(i32* %47, %struct.skl_ipc_large_config_msg* %11, i32* %49)
  store i32 %50, i32* %12, align 4
  %51 = load %struct.skl_dma_control*, %struct.skl_dma_control** %10, align 8
  %52 = call i32 @kfree(%struct.skl_dma_control* %51)
  %53 = load i32, i32* %12, align 4
  store i32 %53, i32* %5, align 4
  br label %54

54:                                               ; preds = %33, %30, %16
  %55 = load i32, i32* %5, align 4
  ret i32 %55
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.skl_dma_control* @kzalloc(i64, i32) #2

declare dso_local i32 @memcpy(i32, i32*, i32) #2

declare dso_local i32 @skl_ipc_set_large_config(i32*, %struct.skl_ipc_large_config_msg*, i32*) #2

declare dso_local i32 @kfree(%struct.skl_dma_control*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
