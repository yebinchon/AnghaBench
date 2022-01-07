; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/atmel/extr_mchp-i2s-mcc.c_mchp_i2s_mcc_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/atmel/extr_mchp-i2s-mcc.c_mchp_i2s_mcc_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mchp_i2s_mcc_dev = type { i32, i32, i32, i32, i32, i32 }

@IRQ_NONE = common dso_local global i32 0, align 4
@MCHP_I2SMCC_IMRA = common dso_local global i32 0, align 4
@MCHP_I2SMCC_ISRA = common dso_local global i32 0, align 4
@MCHP_I2SMCC_IMRB = common dso_local global i32 0, align 4
@MCHP_I2SMCC_ISRB = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@MCHP_I2SMCC_IDRA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @mchp_i2s_mcc_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mchp_i2s_mcc_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.mchp_i2s_mcc_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %15 = load i8*, i8** %5, align 8
  %16 = bitcast i8* %15 to %struct.mchp_i2s_mcc_dev*
  store %struct.mchp_i2s_mcc_dev* %16, %struct.mchp_i2s_mcc_dev** %6, align 8
  store i32 0, i32* %13, align 4
  %17 = load i32, i32* @IRQ_NONE, align 4
  store i32 %17, i32* %14, align 4
  %18 = load %struct.mchp_i2s_mcc_dev*, %struct.mchp_i2s_mcc_dev** %6, align 8
  %19 = getelementptr inbounds %struct.mchp_i2s_mcc_dev, %struct.mchp_i2s_mcc_dev* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @MCHP_I2SMCC_IMRA, align 4
  %22 = call i32 @regmap_read(i32 %20, i32 %21, i32* %8)
  %23 = load %struct.mchp_i2s_mcc_dev*, %struct.mchp_i2s_mcc_dev** %6, align 8
  %24 = getelementptr inbounds %struct.mchp_i2s_mcc_dev, %struct.mchp_i2s_mcc_dev* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @MCHP_I2SMCC_ISRA, align 4
  %27 = call i32 @regmap_read(i32 %25, i32 %26, i32* %7)
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* %7, align 4
  %30 = and i32 %28, %29
  store i32 %30, i32* %11, align 4
  %31 = load %struct.mchp_i2s_mcc_dev*, %struct.mchp_i2s_mcc_dev** %6, align 8
  %32 = getelementptr inbounds %struct.mchp_i2s_mcc_dev, %struct.mchp_i2s_mcc_dev* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @MCHP_I2SMCC_IMRB, align 4
  %35 = call i32 @regmap_read(i32 %33, i32 %34, i32* %10)
  %36 = load %struct.mchp_i2s_mcc_dev*, %struct.mchp_i2s_mcc_dev** %6, align 8
  %37 = getelementptr inbounds %struct.mchp_i2s_mcc_dev, %struct.mchp_i2s_mcc_dev* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @MCHP_I2SMCC_ISRB, align 4
  %40 = call i32 @regmap_read(i32 %38, i32 %39, i32* %9)
  %41 = load i32, i32* %10, align 4
  %42 = load i32, i32* %9, align 4
  %43 = and i32 %41, %42
  store i32 %43, i32* %12, align 4
  %44 = load i32, i32* %11, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %51, label %46

46:                                               ; preds = %2
  %47 = load i32, i32* %12, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %51, label %49

49:                                               ; preds = %46
  %50 = load i32, i32* @IRQ_NONE, align 4
  store i32 %50, i32* %3, align 4
  br label %133

51:                                               ; preds = %46, %2
  %52 = load i32, i32* %11, align 4
  %53 = load %struct.mchp_i2s_mcc_dev*, %struct.mchp_i2s_mcc_dev** %6, align 8
  %54 = getelementptr inbounds %struct.mchp_i2s_mcc_dev, %struct.mchp_i2s_mcc_dev* %53, i32 0, i32 4
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @MCHP_I2SMCC_INT_TXRDY_MASK(i32 %55)
  %57 = load %struct.mchp_i2s_mcc_dev*, %struct.mchp_i2s_mcc_dev** %6, align 8
  %58 = getelementptr inbounds %struct.mchp_i2s_mcc_dev, %struct.mchp_i2s_mcc_dev* %57, i32 0, i32 4
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @MCHP_I2SMCC_INT_RXRDY_MASK(i32 %59)
  %61 = or i32 %56, %60
  %62 = and i32 %52, %61
  %63 = load i32, i32* %13, align 4
  %64 = or i32 %63, %62
  store i32 %64, i32* %13, align 4
  %65 = load i32, i32* %13, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %51
  %68 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %68, i32* %14, align 4
  br label %69

69:                                               ; preds = %67, %51
  %70 = load i32, i32* %8, align 4
  %71 = load %struct.mchp_i2s_mcc_dev*, %struct.mchp_i2s_mcc_dev** %6, align 8
  %72 = getelementptr inbounds %struct.mchp_i2s_mcc_dev, %struct.mchp_i2s_mcc_dev* %71, i32 0, i32 4
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @MCHP_I2SMCC_INT_TXRDY_MASK(i32 %73)
  %75 = and i32 %70, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %97

77:                                               ; preds = %69
  %78 = load i32, i32* %8, align 4
  %79 = load %struct.mchp_i2s_mcc_dev*, %struct.mchp_i2s_mcc_dev** %6, align 8
  %80 = getelementptr inbounds %struct.mchp_i2s_mcc_dev, %struct.mchp_i2s_mcc_dev* %79, i32 0, i32 4
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @MCHP_I2SMCC_INT_TXRDY_MASK(i32 %81)
  %83 = and i32 %78, %82
  %84 = load i32, i32* %13, align 4
  %85 = load %struct.mchp_i2s_mcc_dev*, %struct.mchp_i2s_mcc_dev** %6, align 8
  %86 = getelementptr inbounds %struct.mchp_i2s_mcc_dev, %struct.mchp_i2s_mcc_dev* %85, i32 0, i32 4
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @MCHP_I2SMCC_INT_TXRDY_MASK(i32 %87)
  %89 = and i32 %84, %88
  %90 = icmp eq i32 %83, %89
  br i1 %90, label %91, label %97

91:                                               ; preds = %77
  %92 = load %struct.mchp_i2s_mcc_dev*, %struct.mchp_i2s_mcc_dev** %6, align 8
  %93 = getelementptr inbounds %struct.mchp_i2s_mcc_dev, %struct.mchp_i2s_mcc_dev* %92, i32 0, i32 0
  store i32 1, i32* %93, align 4
  %94 = load %struct.mchp_i2s_mcc_dev*, %struct.mchp_i2s_mcc_dev** %6, align 8
  %95 = getelementptr inbounds %struct.mchp_i2s_mcc_dev, %struct.mchp_i2s_mcc_dev* %94, i32 0, i32 5
  %96 = call i32 @wake_up_interruptible(i32* %95)
  br label %97

97:                                               ; preds = %91, %77, %69
  %98 = load i32, i32* %8, align 4
  %99 = load %struct.mchp_i2s_mcc_dev*, %struct.mchp_i2s_mcc_dev** %6, align 8
  %100 = getelementptr inbounds %struct.mchp_i2s_mcc_dev, %struct.mchp_i2s_mcc_dev* %99, i32 0, i32 4
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @MCHP_I2SMCC_INT_RXRDY_MASK(i32 %101)
  %103 = and i32 %98, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %125

105:                                              ; preds = %97
  %106 = load i32, i32* %8, align 4
  %107 = load %struct.mchp_i2s_mcc_dev*, %struct.mchp_i2s_mcc_dev** %6, align 8
  %108 = getelementptr inbounds %struct.mchp_i2s_mcc_dev, %struct.mchp_i2s_mcc_dev* %107, i32 0, i32 4
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @MCHP_I2SMCC_INT_RXRDY_MASK(i32 %109)
  %111 = and i32 %106, %110
  %112 = load i32, i32* %13, align 4
  %113 = load %struct.mchp_i2s_mcc_dev*, %struct.mchp_i2s_mcc_dev** %6, align 8
  %114 = getelementptr inbounds %struct.mchp_i2s_mcc_dev, %struct.mchp_i2s_mcc_dev* %113, i32 0, i32 4
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @MCHP_I2SMCC_INT_RXRDY_MASK(i32 %115)
  %117 = and i32 %112, %116
  %118 = icmp eq i32 %111, %117
  br i1 %118, label %119, label %125

119:                                              ; preds = %105
  %120 = load %struct.mchp_i2s_mcc_dev*, %struct.mchp_i2s_mcc_dev** %6, align 8
  %121 = getelementptr inbounds %struct.mchp_i2s_mcc_dev, %struct.mchp_i2s_mcc_dev* %120, i32 0, i32 1
  store i32 1, i32* %121, align 4
  %122 = load %struct.mchp_i2s_mcc_dev*, %struct.mchp_i2s_mcc_dev** %6, align 8
  %123 = getelementptr inbounds %struct.mchp_i2s_mcc_dev, %struct.mchp_i2s_mcc_dev* %122, i32 0, i32 3
  %124 = call i32 @wake_up_interruptible(i32* %123)
  br label %125

125:                                              ; preds = %119, %105, %97
  %126 = load %struct.mchp_i2s_mcc_dev*, %struct.mchp_i2s_mcc_dev** %6, align 8
  %127 = getelementptr inbounds %struct.mchp_i2s_mcc_dev, %struct.mchp_i2s_mcc_dev* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 4
  %129 = load i32, i32* @MCHP_I2SMCC_IDRA, align 4
  %130 = load i32, i32* %13, align 4
  %131 = call i32 @regmap_write(i32 %128, i32 %129, i32 %130)
  %132 = load i32, i32* %14, align 4
  store i32 %132, i32* %3, align 4
  br label %133

133:                                              ; preds = %125, %49
  %134 = load i32, i32* %3, align 4
  ret i32 %134
}

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @MCHP_I2SMCC_INT_TXRDY_MASK(i32) #1

declare dso_local i32 @MCHP_I2SMCC_INT_RXRDY_MASK(i32) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
