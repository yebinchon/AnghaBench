; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sh/extr_fsi.c_fsi_get_current_fifo_samples.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sh/extr_fsi.c_fsi_get_current_fifo_samples.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsi_priv = type { i32 }
%struct.fsi_stream = type { i32 }

@DOFF_ST = common dso_local global i32 0, align 4
@DIFF_ST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fsi_priv*, %struct.fsi_stream*)* @fsi_get_current_fifo_samples to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fsi_get_current_fifo_samples(%struct.fsi_priv* %0, %struct.fsi_stream* %1) #0 {
  %3 = alloca %struct.fsi_priv*, align 8
  %4 = alloca %struct.fsi_stream*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.fsi_priv* %0, %struct.fsi_priv** %3, align 8
  store %struct.fsi_stream* %1, %struct.fsi_stream** %4, align 8
  %8 = load %struct.fsi_priv*, %struct.fsi_priv** %3, align 8
  %9 = load %struct.fsi_stream*, %struct.fsi_stream** %4, align 8
  %10 = call i32 @fsi_stream_is_play(%struct.fsi_priv* %8, %struct.fsi_stream* %9)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %2
  %14 = load %struct.fsi_priv*, %struct.fsi_priv** %3, align 8
  %15 = load i32, i32* @DOFF_ST, align 4
  %16 = call i32 @fsi_reg_read(%struct.fsi_priv* %14, i32 %15)
  br label %21

17:                                               ; preds = %2
  %18 = load %struct.fsi_priv*, %struct.fsi_priv** %3, align 8
  %19 = load i32, i32* @DIFF_ST, align 4
  %20 = call i32 @fsi_reg_read(%struct.fsi_priv* %18, i32 %19)
  br label %21

21:                                               ; preds = %17, %13
  %22 = phi i32 [ %16, %13 ], [ %20, %17 ]
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = ashr i32 %23, 8
  %25 = and i32 511, %24
  store i32 %25, i32* %7, align 4
  %26 = load %struct.fsi_priv*, %struct.fsi_priv** %3, align 8
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @fsi_frame2sample(%struct.fsi_priv* %26, i32 %27)
  ret i32 %28
}

declare dso_local i32 @fsi_stream_is_play(%struct.fsi_priv*, %struct.fsi_stream*) #1

declare dso_local i32 @fsi_reg_read(%struct.fsi_priv*, i32) #1

declare dso_local i32 @fsi_frame2sample(%struct.fsi_priv*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
