; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sh/extr_fsi.c_fsi_fifo_init.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sh/extr_fsi.c_fsi_fifo_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsi_priv = type { i32 }
%struct.fsi_stream = type { i32 }
%struct.device = type { i32 }
%struct.fsi_master = type { i32 }

@FIFO_SZ = common dso_local global i32 0, align 4
@FIFO_SZ_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"fifo = %d words\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"%d channel %d store\0A\00", align 1
@DOFF_CTL = common dso_local global i32 0, align 4
@IRQ_HALF = common dso_local global i32 0, align 4
@FIFO_CLR = common dso_local global i32 0, align 4
@DIFF_CTL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fsi_priv*, %struct.fsi_stream*, %struct.device*)* @fsi_fifo_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fsi_fifo_init(%struct.fsi_priv* %0, %struct.fsi_stream* %1, %struct.device* %2) #0 {
  %4 = alloca %struct.fsi_priv*, align 8
  %5 = alloca %struct.fsi_stream*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.fsi_master*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.fsi_priv* %0, %struct.fsi_priv** %4, align 8
  store %struct.fsi_stream* %1, %struct.fsi_stream** %5, align 8
  store %struct.device* %2, %struct.device** %6, align 8
  %12 = load %struct.fsi_priv*, %struct.fsi_priv** %4, align 8
  %13 = call %struct.fsi_master* @fsi_get_master(%struct.fsi_priv* %12)
  store %struct.fsi_master* %13, %struct.fsi_master** %7, align 8
  %14 = load %struct.fsi_priv*, %struct.fsi_priv** %4, align 8
  %15 = load %struct.fsi_stream*, %struct.fsi_stream** %5, align 8
  %16 = call i32 @fsi_stream_is_play(%struct.fsi_priv* %14, %struct.fsi_stream* %15)
  store i32 %16, i32* %8, align 4
  %17 = load %struct.fsi_master*, %struct.fsi_master** %7, align 8
  %18 = load i32, i32* @FIFO_SZ, align 4
  %19 = call i32 @fsi_master_read(%struct.fsi_master* %17, i32 %18)
  store i32 %19, i32* %9, align 4
  %20 = load %struct.fsi_priv*, %struct.fsi_priv** %4, align 8
  %21 = load %struct.fsi_stream*, %struct.fsi_stream** %5, align 8
  %22 = call i32 @fsi_get_port_shift(%struct.fsi_priv* %20, %struct.fsi_stream* %21)
  %23 = load i32, i32* %9, align 4
  %24 = ashr i32 %23, %22
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* @FIFO_SZ_MASK, align 4
  %26 = load i32, i32* %9, align 4
  %27 = and i32 %26, %25
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* %9, align 4
  %29 = shl i32 256, %28
  store i32 %29, i32* %11, align 4
  %30 = load %struct.device*, %struct.device** %6, align 8
  %31 = load i32, i32* %11, align 4
  %32 = call i32 (%struct.device*, i8*, i32, ...) @dev_dbg(%struct.device* %30, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %31)
  store i32 1, i32* %10, align 4
  br label %33

33:                                               ; preds = %42, %3
  %34 = load i32, i32* %10, align 4
  %35 = load %struct.fsi_priv*, %struct.fsi_priv** %4, align 8
  %36 = getelementptr inbounds %struct.fsi_priv, %struct.fsi_priv* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = icmp slt i32 %34, %37
  br i1 %38, label %39, label %45

39:                                               ; preds = %33
  %40 = load i32, i32* %11, align 4
  %41 = ashr i32 %40, 1
  store i32 %41, i32* %11, align 4
  br label %42

42:                                               ; preds = %39
  %43 = load i32, i32* %10, align 4
  %44 = shl i32 %43, 1
  store i32 %44, i32* %10, align 4
  br label %33

45:                                               ; preds = %33
  %46 = load %struct.device*, %struct.device** %6, align 8
  %47 = load %struct.fsi_priv*, %struct.fsi_priv** %4, align 8
  %48 = getelementptr inbounds %struct.fsi_priv, %struct.fsi_priv* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %11, align 4
  %51 = call i32 (%struct.device*, i8*, i32, ...) @dev_dbg(%struct.device* %46, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %49, i32 %50)
  %52 = load %struct.fsi_priv*, %struct.fsi_priv** %4, align 8
  %53 = load i32, i32* %11, align 4
  %54 = call i32 @fsi_frame2sample(%struct.fsi_priv* %52, i32 %53)
  %55 = load %struct.fsi_stream*, %struct.fsi_stream** %5, align 8
  %56 = getelementptr inbounds %struct.fsi_stream, %struct.fsi_stream* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 4
  %57 = load i32, i32* %8, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %69

59:                                               ; preds = %45
  %60 = load %struct.fsi_priv*, %struct.fsi_priv** %4, align 8
  %61 = load i32, i32* @DOFF_CTL, align 4
  %62 = load i32, i32* @IRQ_HALF, align 4
  %63 = call i32 @fsi_reg_write(%struct.fsi_priv* %60, i32 %61, i32 %62)
  %64 = load %struct.fsi_priv*, %struct.fsi_priv** %4, align 8
  %65 = load i32, i32* @DOFF_CTL, align 4
  %66 = load i32, i32* @FIFO_CLR, align 4
  %67 = load i32, i32* @FIFO_CLR, align 4
  %68 = call i32 @fsi_reg_mask_set(%struct.fsi_priv* %64, i32 %65, i32 %66, i32 %67)
  br label %79

69:                                               ; preds = %45
  %70 = load %struct.fsi_priv*, %struct.fsi_priv** %4, align 8
  %71 = load i32, i32* @DIFF_CTL, align 4
  %72 = load i32, i32* @IRQ_HALF, align 4
  %73 = call i32 @fsi_reg_write(%struct.fsi_priv* %70, i32 %71, i32 %72)
  %74 = load %struct.fsi_priv*, %struct.fsi_priv** %4, align 8
  %75 = load i32, i32* @DIFF_CTL, align 4
  %76 = load i32, i32* @FIFO_CLR, align 4
  %77 = load i32, i32* @FIFO_CLR, align 4
  %78 = call i32 @fsi_reg_mask_set(%struct.fsi_priv* %74, i32 %75, i32 %76, i32 %77)
  br label %79

79:                                               ; preds = %69, %59
  ret void
}

declare dso_local %struct.fsi_master* @fsi_get_master(%struct.fsi_priv*) #1

declare dso_local i32 @fsi_stream_is_play(%struct.fsi_priv*, %struct.fsi_stream*) #1

declare dso_local i32 @fsi_master_read(%struct.fsi_master*, i32) #1

declare dso_local i32 @fsi_get_port_shift(%struct.fsi_priv*, %struct.fsi_stream*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32, ...) #1

declare dso_local i32 @fsi_frame2sample(%struct.fsi_priv*, i32) #1

declare dso_local i32 @fsi_reg_write(%struct.fsi_priv*, i32, i32) #1

declare dso_local i32 @fsi_reg_mask_set(%struct.fsi_priv*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
