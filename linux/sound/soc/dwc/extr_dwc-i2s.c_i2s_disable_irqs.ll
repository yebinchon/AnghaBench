; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/dwc/extr_dwc-i2s.c_i2s_disable_irqs.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/dwc/extr_dwc-i2s.c_i2s_disable_irqs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dw_i2s_dev = type { i32 }

@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dw_i2s_dev*, i64, i32)* @i2s_disable_irqs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i2s_disable_irqs(%struct.dw_i2s_dev* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.dw_i2s_dev*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.dw_i2s_dev* %0, %struct.dw_i2s_dev** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i64, i64* %5, align 8
  %10 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %38

12:                                               ; preds = %3
  store i64 0, i64* %7, align 8
  br label %13

13:                                               ; preds = %34, %12
  %14 = load i64, i64* %7, align 8
  %15 = load i32, i32* %6, align 4
  %16 = sdiv i32 %15, 2
  %17 = sext i32 %16 to i64
  %18 = icmp slt i64 %14, %17
  br i1 %18, label %19, label %37

19:                                               ; preds = %13
  %20 = load %struct.dw_i2s_dev*, %struct.dw_i2s_dev** %4, align 8
  %21 = getelementptr inbounds %struct.dw_i2s_dev, %struct.dw_i2s_dev* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i64, i64* %7, align 8
  %24 = call i32 @IMR(i64 %23)
  %25 = call i64 @i2s_read_reg(i32 %22, i32 %24)
  store i64 %25, i64* %8, align 8
  %26 = load %struct.dw_i2s_dev*, %struct.dw_i2s_dev** %4, align 8
  %27 = getelementptr inbounds %struct.dw_i2s_dev, %struct.dw_i2s_dev* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i64, i64* %7, align 8
  %30 = call i32 @IMR(i64 %29)
  %31 = load i64, i64* %8, align 8
  %32 = or i64 %31, 48
  %33 = call i32 @i2s_write_reg(i32 %28, i32 %30, i64 %32)
  br label %34

34:                                               ; preds = %19
  %35 = load i64, i64* %7, align 8
  %36 = add nsw i64 %35, 1
  store i64 %36, i64* %7, align 8
  br label %13

37:                                               ; preds = %13
  br label %64

38:                                               ; preds = %3
  store i64 0, i64* %7, align 8
  br label %39

39:                                               ; preds = %60, %38
  %40 = load i64, i64* %7, align 8
  %41 = load i32, i32* %6, align 4
  %42 = sdiv i32 %41, 2
  %43 = sext i32 %42 to i64
  %44 = icmp slt i64 %40, %43
  br i1 %44, label %45, label %63

45:                                               ; preds = %39
  %46 = load %struct.dw_i2s_dev*, %struct.dw_i2s_dev** %4, align 8
  %47 = getelementptr inbounds %struct.dw_i2s_dev, %struct.dw_i2s_dev* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i64, i64* %7, align 8
  %50 = call i32 @IMR(i64 %49)
  %51 = call i64 @i2s_read_reg(i32 %48, i32 %50)
  store i64 %51, i64* %8, align 8
  %52 = load %struct.dw_i2s_dev*, %struct.dw_i2s_dev** %4, align 8
  %53 = getelementptr inbounds %struct.dw_i2s_dev, %struct.dw_i2s_dev* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i64, i64* %7, align 8
  %56 = call i32 @IMR(i64 %55)
  %57 = load i64, i64* %8, align 8
  %58 = or i64 %57, 3
  %59 = call i32 @i2s_write_reg(i32 %54, i32 %56, i64 %58)
  br label %60

60:                                               ; preds = %45
  %61 = load i64, i64* %7, align 8
  %62 = add nsw i64 %61, 1
  store i64 %62, i64* %7, align 8
  br label %39

63:                                               ; preds = %39
  br label %64

64:                                               ; preds = %63, %37
  ret void
}

declare dso_local i64 @i2s_read_reg(i32, i32) #1

declare dso_local i32 @IMR(i64) #1

declare dso_local i32 @i2s_write_reg(i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
