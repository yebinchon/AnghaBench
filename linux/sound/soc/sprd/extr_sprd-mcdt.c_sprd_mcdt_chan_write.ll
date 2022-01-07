; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sprd/extr_sprd-mcdt.c_sprd_mcdt_chan_write.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sprd/extr_sprd-mcdt.c_sprd_mcdt_chan_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sprd_mcdt_chan = type { i32, i64, %struct.sprd_mcdt_dev* }
%struct.sprd_mcdt_dev = type { i32, i32 }

@.str = private unnamed_addr constant [42 x i8] c"Can not write data when DMA mode enabled\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@MCDT_DAC_FIFO_REAL_FULL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Channel fifo is full now\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [50 x i8] c"Data size is larger than the available fifo size\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sprd_mcdt_chan_write(%struct.sprd_mcdt_chan* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sprd_mcdt_chan*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sprd_mcdt_dev*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  store %struct.sprd_mcdt_chan* %0, %struct.sprd_mcdt_chan** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load %struct.sprd_mcdt_chan*, %struct.sprd_mcdt_chan** %5, align 8
  %15 = getelementptr inbounds %struct.sprd_mcdt_chan, %struct.sprd_mcdt_chan* %14, i32 0, i32 2
  %16 = load %struct.sprd_mcdt_dev*, %struct.sprd_mcdt_dev** %15, align 8
  store %struct.sprd_mcdt_dev* %16, %struct.sprd_mcdt_dev** %8, align 8
  store i32 0, i32* %11, align 4
  %17 = load i32, i32* %7, align 4
  %18 = sdiv i32 %17, 4
  store i32 %18, i32* %12, align 4
  %19 = load i8*, i8** %6, align 8
  %20 = bitcast i8* %19 to i32*
  store i32* %20, i32** %13, align 8
  %21 = load %struct.sprd_mcdt_dev*, %struct.sprd_mcdt_dev** %8, align 8
  %22 = getelementptr inbounds %struct.sprd_mcdt_dev, %struct.sprd_mcdt_dev* %21, i32 0, i32 0
  %23 = load i64, i64* %9, align 8
  %24 = call i32 @spin_lock_irqsave(i32* %22, i64 %23)
  %25 = load %struct.sprd_mcdt_chan*, %struct.sprd_mcdt_chan** %5, align 8
  %26 = getelementptr inbounds %struct.sprd_mcdt_chan, %struct.sprd_mcdt_chan* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %40

29:                                               ; preds = %3
  %30 = load %struct.sprd_mcdt_dev*, %struct.sprd_mcdt_dev** %8, align 8
  %31 = getelementptr inbounds %struct.sprd_mcdt_dev, %struct.sprd_mcdt_dev* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @dev_err(i32 %32, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  %34 = load %struct.sprd_mcdt_dev*, %struct.sprd_mcdt_dev** %8, align 8
  %35 = getelementptr inbounds %struct.sprd_mcdt_dev, %struct.sprd_mcdt_dev* %34, i32 0, i32 0
  %36 = load i64, i64* %9, align 8
  %37 = call i32 @spin_unlock_irqrestore(i32* %35, i64 %36)
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %4, align 4
  br label %99

40:                                               ; preds = %3
  %41 = load %struct.sprd_mcdt_dev*, %struct.sprd_mcdt_dev** %8, align 8
  %42 = load %struct.sprd_mcdt_chan*, %struct.sprd_mcdt_chan** %5, align 8
  %43 = getelementptr inbounds %struct.sprd_mcdt_chan, %struct.sprd_mcdt_chan* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @MCDT_DAC_FIFO_REAL_FULL, align 4
  %46 = call i64 @sprd_mcdt_chan_fifo_sts(%struct.sprd_mcdt_dev* %41, i32 %44, i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %59

48:                                               ; preds = %40
  %49 = load %struct.sprd_mcdt_dev*, %struct.sprd_mcdt_dev** %8, align 8
  %50 = getelementptr inbounds %struct.sprd_mcdt_dev, %struct.sprd_mcdt_dev* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @dev_err(i32 %51, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %53 = load %struct.sprd_mcdt_dev*, %struct.sprd_mcdt_dev** %8, align 8
  %54 = getelementptr inbounds %struct.sprd_mcdt_dev, %struct.sprd_mcdt_dev* %53, i32 0, i32 0
  %55 = load i64, i64* %9, align 8
  %56 = call i32 @spin_unlock_irqrestore(i32* %54, i64 %55)
  %57 = load i32, i32* @EBUSY, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %4, align 4
  br label %99

59:                                               ; preds = %40
  %60 = load %struct.sprd_mcdt_dev*, %struct.sprd_mcdt_dev** %8, align 8
  %61 = load %struct.sprd_mcdt_chan*, %struct.sprd_mcdt_chan** %5, align 8
  %62 = getelementptr inbounds %struct.sprd_mcdt_chan, %struct.sprd_mcdt_chan* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @sprd_mcdt_dac_fifo_avail(%struct.sprd_mcdt_dev* %60, i32 %63)
  store i32 %64, i32* %10, align 4
  %65 = load i32, i32* %7, align 4
  %66 = load i32, i32* %10, align 4
  %67 = icmp sgt i32 %65, %66
  br i1 %67, label %68, label %79

68:                                               ; preds = %59
  %69 = load %struct.sprd_mcdt_dev*, %struct.sprd_mcdt_dev** %8, align 8
  %70 = getelementptr inbounds %struct.sprd_mcdt_dev, %struct.sprd_mcdt_dev* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @dev_err(i32 %71, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0))
  %73 = load %struct.sprd_mcdt_dev*, %struct.sprd_mcdt_dev** %8, align 8
  %74 = getelementptr inbounds %struct.sprd_mcdt_dev, %struct.sprd_mcdt_dev* %73, i32 0, i32 0
  %75 = load i64, i64* %9, align 8
  %76 = call i32 @spin_unlock_irqrestore(i32* %74, i64 %75)
  %77 = load i32, i32* @EBUSY, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %4, align 4
  br label %99

79:                                               ; preds = %59
  br label %80

80:                                               ; preds = %85, %79
  %81 = load i32, i32* %11, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %11, align 4
  %83 = load i32, i32* %12, align 4
  %84 = icmp slt i32 %81, %83
  br i1 %84, label %85, label %94

85:                                               ; preds = %80
  %86 = load %struct.sprd_mcdt_dev*, %struct.sprd_mcdt_dev** %8, align 8
  %87 = load %struct.sprd_mcdt_chan*, %struct.sprd_mcdt_chan** %5, align 8
  %88 = getelementptr inbounds %struct.sprd_mcdt_chan, %struct.sprd_mcdt_chan* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = load i32*, i32** %13, align 8
  %91 = getelementptr inbounds i32, i32* %90, i32 1
  store i32* %91, i32** %13, align 8
  %92 = load i32, i32* %90, align 4
  %93 = call i32 @sprd_mcdt_dac_write_fifo(%struct.sprd_mcdt_dev* %86, i32 %89, i32 %92)
  br label %80

94:                                               ; preds = %80
  %95 = load %struct.sprd_mcdt_dev*, %struct.sprd_mcdt_dev** %8, align 8
  %96 = getelementptr inbounds %struct.sprd_mcdt_dev, %struct.sprd_mcdt_dev* %95, i32 0, i32 0
  %97 = load i64, i64* %9, align 8
  %98 = call i32 @spin_unlock_irqrestore(i32* %96, i64 %97)
  store i32 0, i32* %4, align 4
  br label %99

99:                                               ; preds = %94, %68, %48, %29
  %100 = load i32, i32* %4, align 4
  ret i32 %100
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i64 @sprd_mcdt_chan_fifo_sts(%struct.sprd_mcdt_dev*, i32, i32) #1

declare dso_local i32 @sprd_mcdt_dac_fifo_avail(%struct.sprd_mcdt_dev*, i32) #1

declare dso_local i32 @sprd_mcdt_dac_write_fifo(%struct.sprd_mcdt_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
