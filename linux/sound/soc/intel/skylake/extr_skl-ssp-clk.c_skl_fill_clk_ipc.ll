; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/skylake/extr_skl-ssp-clk.c_skl_fill_clk_ipc.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/skylake/extr_skl-ssp-clk.c_skl_fill_clk_ipc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.skl_clk_rate_cfg_table = type { i64, %union.skl_clk_ctrl_ipc }
%union.skl_clk_ctrl_ipc = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i32, i32, i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.nhlt_fmt_cfg = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__, %struct.wav_fmt }
%struct.TYPE_8__ = type { i32 }
%struct.wav_fmt = type { i32, i32, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, i32 }

@SKL_SCLK_FS = common dso_local global i64 0, align 8
@DMA_CLK_CONTROLS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.skl_clk_rate_cfg_table*, i64)* @skl_fill_clk_ipc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @skl_fill_clk_ipc(%struct.skl_clk_rate_cfg_table* %0, i64 %1) #0 {
  %3 = alloca %struct.skl_clk_rate_cfg_table*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.nhlt_fmt_cfg*, align 8
  %6 = alloca %union.skl_clk_ctrl_ipc*, align 8
  %7 = alloca %struct.wav_fmt*, align 8
  store %struct.skl_clk_rate_cfg_table* %0, %struct.skl_clk_rate_cfg_table** %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load %struct.skl_clk_rate_cfg_table*, %struct.skl_clk_rate_cfg_table** %3, align 8
  %9 = icmp ne %struct.skl_clk_rate_cfg_table* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  br label %65

11:                                               ; preds = %2
  %12 = load %struct.skl_clk_rate_cfg_table*, %struct.skl_clk_rate_cfg_table** %3, align 8
  %13 = getelementptr inbounds %struct.skl_clk_rate_cfg_table, %struct.skl_clk_rate_cfg_table* %12, i32 0, i32 1
  store %union.skl_clk_ctrl_ipc* %13, %union.skl_clk_ctrl_ipc** %6, align 8
  %14 = load i64, i64* %4, align 8
  %15 = load i64, i64* @SKL_SCLK_FS, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %55

17:                                               ; preds = %11
  %18 = load %struct.skl_clk_rate_cfg_table*, %struct.skl_clk_rate_cfg_table** %3, align 8
  %19 = getelementptr inbounds %struct.skl_clk_rate_cfg_table, %struct.skl_clk_rate_cfg_table* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = inttoptr i64 %20 to %struct.nhlt_fmt_cfg*
  store %struct.nhlt_fmt_cfg* %21, %struct.nhlt_fmt_cfg** %5, align 8
  %22 = load %struct.nhlt_fmt_cfg*, %struct.nhlt_fmt_cfg** %5, align 8
  %23 = getelementptr inbounds %struct.nhlt_fmt_cfg, %struct.nhlt_fmt_cfg* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 1
  store %struct.wav_fmt* %24, %struct.wav_fmt** %7, align 8
  %25 = load %union.skl_clk_ctrl_ipc*, %union.skl_clk_ctrl_ipc** %6, align 8
  %26 = bitcast %union.skl_clk_ctrl_ipc* %25 to %struct.TYPE_10__*
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 4
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  store i32 0, i32* %28, align 4
  %29 = load %struct.wav_fmt*, %struct.wav_fmt** %7, align 8
  %30 = getelementptr inbounds %struct.wav_fmt, %struct.wav_fmt* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = load %union.skl_clk_ctrl_ipc*, %union.skl_clk_ctrl_ipc** %6, align 8
  %33 = bitcast %union.skl_clk_ctrl_ipc* %32 to %struct.TYPE_10__*
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 3
  store i32 %31, i32* %34, align 4
  %35 = load %struct.wav_fmt*, %struct.wav_fmt** %7, align 8
  %36 = getelementptr inbounds %struct.wav_fmt, %struct.wav_fmt* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %union.skl_clk_ctrl_ipc*, %union.skl_clk_ctrl_ipc** %6, align 8
  %39 = bitcast %union.skl_clk_ctrl_ipc* %38 to %struct.TYPE_10__*
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 2
  store i32 %37, i32* %40, align 4
  %41 = load %struct.nhlt_fmt_cfg*, %struct.nhlt_fmt_cfg** %5, align 8
  %42 = getelementptr inbounds %struct.nhlt_fmt_cfg, %struct.nhlt_fmt_cfg* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %union.skl_clk_ctrl_ipc*, %union.skl_clk_ctrl_ipc** %6, align 8
  %47 = bitcast %union.skl_clk_ctrl_ipc* %46 to %struct.TYPE_10__*
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 1
  store i32 %45, i32* %48, align 4
  %49 = load %struct.wav_fmt*, %struct.wav_fmt** %7, align 8
  %50 = getelementptr inbounds %struct.wav_fmt, %struct.wav_fmt* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %union.skl_clk_ctrl_ipc*, %union.skl_clk_ctrl_ipc** %6, align 8
  %53 = bitcast %union.skl_clk_ctrl_ipc* %52 to %struct.TYPE_10__*
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 0
  store i32 %51, i32* %54, align 4
  br label %65

55:                                               ; preds = %11
  %56 = load i32, i32* @DMA_CLK_CONTROLS, align 4
  %57 = load %union.skl_clk_ctrl_ipc*, %union.skl_clk_ctrl_ipc** %6, align 8
  %58 = bitcast %union.skl_clk_ctrl_ipc* %57 to %struct.TYPE_12__*
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 1
  store i32 %56, i32* %60, align 4
  %61 = load %union.skl_clk_ctrl_ipc*, %union.skl_clk_ctrl_ipc** %6, align 8
  %62 = bitcast %union.skl_clk_ctrl_ipc* %61 to %struct.TYPE_12__*
  %63 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i32 0, i32 0
  store i32 0, i32* %64, align 4
  br label %65

65:                                               ; preds = %10, %55, %17
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
