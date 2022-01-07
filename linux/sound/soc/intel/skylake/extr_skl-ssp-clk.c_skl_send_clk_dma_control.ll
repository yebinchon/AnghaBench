; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/skylake/extr_skl-ssp-clk.c_skl_send_clk_dma_control.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/skylake/extr_skl-ssp-clk.c_skl_send_clk_dma_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.skl_dev = type { i32 }
%struct.skl_clk_rate_cfg_table = type { i64, %union.skl_clk_ctrl_ipc }
%union.skl_clk_ctrl_ipc = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i32, i32 }
%struct.nhlt_specific_cfg = type { i32, i64* }
%struct.nhlt_fmt_cfg = type { %struct.nhlt_specific_cfg }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@EIO = common dso_local global i32 0, align 4
@SKL_SCLK_FS = common dso_local global i64 0, align 8
@DMA_TRANSMITION_START = common dso_local global i32 0, align 4
@DMA_TRANSMITION_STOP = common dso_local global i32 0, align 4
@SKL_SCLK = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@SKL_DMA_I2S_LINK_INPUT_CLASS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.skl_dev*, %struct.skl_clk_rate_cfg_table*, i32, i64, i32)* @skl_send_clk_dma_control to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @skl_send_clk_dma_control(%struct.skl_dev* %0, %struct.skl_clk_rate_cfg_table* %1, i32 %2, i64 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.skl_dev*, align 8
  %8 = alloca %struct.skl_clk_rate_cfg_table*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.nhlt_specific_cfg*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.nhlt_fmt_cfg*, align 8
  %16 = alloca %union.skl_clk_ctrl_ipc*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i64*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  store %struct.skl_dev* %0, %struct.skl_dev** %7, align 8
  store %struct.skl_clk_rate_cfg_table* %1, %struct.skl_clk_rate_cfg_table** %8, align 8
  store i32 %2, i32* %9, align 4
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 0, i32* %14, align 4
  store i8* null, i8** %17, align 8
  %21 = load %struct.skl_clk_rate_cfg_table*, %struct.skl_clk_rate_cfg_table** %8, align 8
  %22 = icmp ne %struct.skl_clk_rate_cfg_table* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %5
  %24 = load i32, i32* @EIO, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %6, align 4
  br label %134

26:                                               ; preds = %5
  %27 = load %struct.skl_clk_rate_cfg_table*, %struct.skl_clk_rate_cfg_table** %8, align 8
  %28 = getelementptr inbounds %struct.skl_clk_rate_cfg_table, %struct.skl_clk_rate_cfg_table* %27, i32 0, i32 1
  store %union.skl_clk_ctrl_ipc* %28, %union.skl_clk_ctrl_ipc** %16, align 8
  %29 = load %struct.skl_clk_rate_cfg_table*, %struct.skl_clk_rate_cfg_table** %8, align 8
  %30 = getelementptr inbounds %struct.skl_clk_rate_cfg_table, %struct.skl_clk_rate_cfg_table* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = inttoptr i64 %31 to %struct.nhlt_fmt_cfg*
  store %struct.nhlt_fmt_cfg* %32, %struct.nhlt_fmt_cfg** %15, align 8
  %33 = load %struct.nhlt_fmt_cfg*, %struct.nhlt_fmt_cfg** %15, align 8
  %34 = getelementptr inbounds %struct.nhlt_fmt_cfg, %struct.nhlt_fmt_cfg* %33, i32 0, i32 0
  store %struct.nhlt_specific_cfg* %34, %struct.nhlt_specific_cfg** %12, align 8
  %35 = load i64, i64* %10, align 8
  %36 = load i64, i64* @SKL_SCLK_FS, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %54

38:                                               ; preds = %26
  %39 = load i32, i32* %11, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %38
  %42 = load i32, i32* @DMA_TRANSMITION_START, align 4
  br label %45

43:                                               ; preds = %38
  %44 = load i32, i32* @DMA_TRANSMITION_STOP, align 4
  br label %45

45:                                               ; preds = %43, %41
  %46 = phi i32 [ %42, %41 ], [ %44, %43 ]
  %47 = load %union.skl_clk_ctrl_ipc*, %union.skl_clk_ctrl_ipc** %16, align 8
  %48 = bitcast %union.skl_clk_ctrl_ipc* %47 to %struct.TYPE_5__*
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  store i32 %46, i32* %50, align 4
  %51 = load %union.skl_clk_ctrl_ipc*, %union.skl_clk_ctrl_ipc** %16, align 8
  %52 = bitcast %union.skl_clk_ctrl_ipc* %51 to %struct.TYPE_5__*
  %53 = bitcast %struct.TYPE_5__* %52 to i64*
  store i64* %53, i64** %18, align 8
  store i64 4, i64* %19, align 8
  br label %85

54:                                               ; preds = %26
  %55 = load i64, i64* %10, align 8
  %56 = load i64, i64* @SKL_SCLK, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %62

58:                                               ; preds = %54
  %59 = load %union.skl_clk_ctrl_ipc*, %union.skl_clk_ctrl_ipc** %16, align 8
  %60 = bitcast %union.skl_clk_ctrl_ipc* %59 to %struct.TYPE_6__*
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  store i32 0, i32* %61, align 4
  br label %66

62:                                               ; preds = %54
  %63 = load %union.skl_clk_ctrl_ipc*, %union.skl_clk_ctrl_ipc** %16, align 8
  %64 = bitcast %union.skl_clk_ctrl_ipc* %63 to %struct.TYPE_6__*
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  store i32 1, i32* %65, align 4
  br label %66

66:                                               ; preds = %62, %58
  %67 = load i32, i32* %11, align 4
  %68 = load %union.skl_clk_ctrl_ipc*, %union.skl_clk_ctrl_ipc** %16, align 8
  %69 = bitcast %union.skl_clk_ctrl_ipc* %68 to %struct.TYPE_6__*
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 1
  store i32 %67, i32* %70, align 4
  %71 = load i32, i32* %11, align 4
  %72 = load %union.skl_clk_ctrl_ipc*, %union.skl_clk_ctrl_ipc** %16, align 8
  %73 = bitcast %union.skl_clk_ctrl_ipc* %72 to %struct.TYPE_6__*
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 2
  store i32 %71, i32* %74, align 4
  %75 = load i32, i32* %11, align 4
  %76 = icmp ne i32 %75, 0
  %77 = xor i1 %76, true
  %78 = zext i1 %77 to i32
  %79 = load %union.skl_clk_ctrl_ipc*, %union.skl_clk_ctrl_ipc** %16, align 8
  %80 = bitcast %union.skl_clk_ctrl_ipc* %79 to %struct.TYPE_6__*
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 3
  store i32 %78, i32* %81, align 4
  %82 = load %union.skl_clk_ctrl_ipc*, %union.skl_clk_ctrl_ipc** %16, align 8
  %83 = bitcast %union.skl_clk_ctrl_ipc* %82 to %struct.TYPE_6__*
  %84 = bitcast %struct.TYPE_6__* %83 to i64*
  store i64* %84, i64** %18, align 8
  store i64 4, i64* %19, align 8
  br label %85

85:                                               ; preds = %66, %45
  %86 = load %struct.nhlt_specific_cfg*, %struct.nhlt_specific_cfg** %12, align 8
  %87 = getelementptr inbounds %struct.nhlt_specific_cfg, %struct.nhlt_specific_cfg* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = sext i32 %88 to i64
  %90 = load i64, i64* %19, align 8
  %91 = add nsw i64 %89, %90
  %92 = trunc i64 %91 to i32
  store i32 %92, i32* %13, align 4
  %93 = load i32, i32* %13, align 4
  %94 = load i32, i32* @GFP_KERNEL, align 4
  %95 = call i8* @kzalloc(i32 %93, i32 %94)
  store i8* %95, i8** %17, align 8
  %96 = load i8*, i8** %17, align 8
  %97 = icmp ne i8* %96, null
  br i1 %97, label %101, label %98

98:                                               ; preds = %85
  %99 = load i32, i32* @ENOMEM, align 4
  %100 = sub nsw i32 0, %99
  store i32 %100, i32* %6, align 4
  br label %134

101:                                              ; preds = %85
  %102 = load i8*, i8** %17, align 8
  %103 = load %struct.nhlt_specific_cfg*, %struct.nhlt_specific_cfg** %12, align 8
  %104 = getelementptr inbounds %struct.nhlt_specific_cfg, %struct.nhlt_specific_cfg* %103, i32 0, i32 1
  %105 = load i64*, i64** %104, align 8
  %106 = load %struct.nhlt_specific_cfg*, %struct.nhlt_specific_cfg** %12, align 8
  %107 = getelementptr inbounds %struct.nhlt_specific_cfg, %struct.nhlt_specific_cfg* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = sext i32 %108 to i64
  %110 = call i32 @memcpy(i8* %102, i64* %105, i64 %109)
  %111 = load i8*, i8** %17, align 8
  %112 = load %struct.nhlt_specific_cfg*, %struct.nhlt_specific_cfg** %12, align 8
  %113 = getelementptr inbounds %struct.nhlt_specific_cfg, %struct.nhlt_specific_cfg* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = sext i32 %114 to i64
  %116 = getelementptr i8, i8* %111, i64 %115
  %117 = load i64*, i64** %18, align 8
  %118 = load i64, i64* %19, align 8
  %119 = call i32 @memcpy(i8* %116, i64* %117, i64 %118)
  %120 = load i32, i32* @SKL_DMA_I2S_LINK_INPUT_CLASS, align 4
  %121 = shl i32 %120, 8
  %122 = load i32, i32* %9, align 4
  %123 = shl i32 %122, 4
  %124 = or i32 %121, %123
  store i32 %124, i32* %14, align 4
  %125 = load %struct.skl_dev*, %struct.skl_dev** %7, align 8
  %126 = load i8*, i8** %17, align 8
  %127 = bitcast i8* %126 to i32*
  %128 = load i32, i32* %13, align 4
  %129 = load i32, i32* %14, align 4
  %130 = call i32 @skl_dsp_set_dma_control(%struct.skl_dev* %125, i32* %127, i32 %128, i32 %129)
  store i32 %130, i32* %20, align 4
  %131 = load i8*, i8** %17, align 8
  %132 = call i32 @kfree(i8* %131)
  %133 = load i32, i32* %20, align 4
  store i32 %133, i32* %6, align 4
  br label %134

134:                                              ; preds = %101, %98, %23
  %135 = load i32, i32* %6, align 4
  ret i32 %135
}

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @memcpy(i8*, i64*, i64) #1

declare dso_local i32 @skl_dsp_set_dma_control(%struct.skl_dev*, i32*, i32, i32) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
