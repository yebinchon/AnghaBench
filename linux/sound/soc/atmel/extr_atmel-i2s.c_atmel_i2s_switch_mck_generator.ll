; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/atmel/extr_atmel-i2s.c_atmel_i2s_switch_mck_generator.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/atmel/extr_atmel-i2s.c_atmel_i2s_switch_mck_generator.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atmel_i2s_dev = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }

@ATMEL_I2SC_MR_IMCKDIV_MASK = common dso_local global i32 0, align 4
@ATMEL_I2SC_MR_IMCKFS_MASK = common dso_local global i32 0, align 4
@ATMEL_I2SC_MR_IMCKMODE_MASK = common dso_local global i32 0, align 4
@ATMEL_I2SC_CR = common dso_local global i32 0, align 4
@ATMEL_I2SC_CR_CKDIS = common dso_local global i32 0, align 4
@ATMEL_I2SC_MR = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ATMEL_I2SC_MR_IMCKMODE_I2SMCK = common dso_local global i32 0, align 4
@ATMEL_I2SC_CR_CKEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.atmel_i2s_dev*, i32)* @atmel_i2s_switch_mck_generator to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atmel_i2s_switch_mck_generator(%struct.atmel_i2s_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.atmel_i2s_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.atmel_i2s_dev* %0, %struct.atmel_i2s_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %10 = load i32, i32* @ATMEL_I2SC_MR_IMCKDIV_MASK, align 4
  %11 = load i32, i32* @ATMEL_I2SC_MR_IMCKFS_MASK, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* @ATMEL_I2SC_MR_IMCKMODE_MASK, align 4
  %14 = or i32 %12, %13
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %5, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %45, label %17

17:                                               ; preds = %2
  %18 = load %struct.atmel_i2s_dev*, %struct.atmel_i2s_dev** %4, align 8
  %19 = getelementptr inbounds %struct.atmel_i2s_dev, %struct.atmel_i2s_dev* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @ATMEL_I2SC_CR, align 4
  %22 = load i32, i32* @ATMEL_I2SC_CR_CKDIS, align 4
  %23 = call i32 @regmap_write(i32 %20, i32 %21, i32 %22)
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* %9, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %17
  %27 = load i32, i32* %9, align 4
  store i32 %27, i32* %3, align 4
  br label %123

28:                                               ; preds = %17
  %29 = load %struct.atmel_i2s_dev*, %struct.atmel_i2s_dev** %4, align 8
  %30 = getelementptr inbounds %struct.atmel_i2s_dev, %struct.atmel_i2s_dev* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @ATMEL_I2SC_MR, align 4
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @regmap_update_bits(i32 %31, i32 %32, i32 %33, i32 %34)
  store i32 %35, i32* %9, align 4
  %36 = load i32, i32* %9, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %28
  %39 = load i32, i32* %9, align 4
  store i32 %39, i32* %3, align 4
  br label %123

40:                                               ; preds = %28
  %41 = load %struct.atmel_i2s_dev*, %struct.atmel_i2s_dev** %4, align 8
  %42 = getelementptr inbounds %struct.atmel_i2s_dev, %struct.atmel_i2s_dev* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @clk_disable_unprepare(i32 %43)
  store i32 0, i32* %3, align 4
  br label %123

45:                                               ; preds = %2
  %46 = load %struct.atmel_i2s_dev*, %struct.atmel_i2s_dev** %4, align 8
  %47 = getelementptr inbounds %struct.atmel_i2s_dev, %struct.atmel_i2s_dev* %46, i32 0, i32 1
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = icmp ne %struct.TYPE_2__* %48, null
  br i1 %49, label %53, label %50

50:                                               ; preds = %45
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %3, align 4
  br label %123

53:                                               ; preds = %45
  %54 = load %struct.atmel_i2s_dev*, %struct.atmel_i2s_dev** %4, align 8
  %55 = getelementptr inbounds %struct.atmel_i2s_dev, %struct.atmel_i2s_dev* %54, i32 0, i32 1
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.atmel_i2s_dev*, %struct.atmel_i2s_dev** %4, align 8
  %60 = getelementptr inbounds %struct.atmel_i2s_dev, %struct.atmel_i2s_dev* %59, i32 0, i32 1
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = add nsw i32 %63, 1
  %65 = mul nsw i32 %58, %64
  %66 = sext i32 %65 to i64
  store i64 %66, i64* %8, align 8
  %67 = load %struct.atmel_i2s_dev*, %struct.atmel_i2s_dev** %4, align 8
  %68 = getelementptr inbounds %struct.atmel_i2s_dev, %struct.atmel_i2s_dev* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = load i64, i64* %8, align 8
  %71 = call i32 @clk_set_rate(i32 %69, i64 %70)
  store i32 %71, i32* %9, align 4
  %72 = load i32, i32* %9, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %53
  %75 = load i32, i32* %9, align 4
  store i32 %75, i32* %3, align 4
  br label %123

76:                                               ; preds = %53
  %77 = load %struct.atmel_i2s_dev*, %struct.atmel_i2s_dev** %4, align 8
  %78 = getelementptr inbounds %struct.atmel_i2s_dev, %struct.atmel_i2s_dev* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @clk_prepare_enable(i32 %79)
  store i32 %80, i32* %9, align 4
  %81 = load i32, i32* %9, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %76
  %84 = load i32, i32* %9, align 4
  store i32 %84, i32* %3, align 4
  br label %123

85:                                               ; preds = %76
  %86 = load %struct.atmel_i2s_dev*, %struct.atmel_i2s_dev** %4, align 8
  %87 = getelementptr inbounds %struct.atmel_i2s_dev, %struct.atmel_i2s_dev* %86, i32 0, i32 1
  %88 = load %struct.TYPE_2__*, %struct.TYPE_2__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @ATMEL_I2SC_MR_IMCKDIV(i32 %90)
  %92 = load i32, i32* %6, align 4
  %93 = or i32 %92, %91
  store i32 %93, i32* %6, align 4
  %94 = load %struct.atmel_i2s_dev*, %struct.atmel_i2s_dev** %4, align 8
  %95 = getelementptr inbounds %struct.atmel_i2s_dev, %struct.atmel_i2s_dev* %94, i32 0, i32 1
  %96 = load %struct.TYPE_2__*, %struct.TYPE_2__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @ATMEL_I2SC_MR_IMCKFS(i32 %98)
  %100 = load i32, i32* %6, align 4
  %101 = or i32 %100, %99
  store i32 %101, i32* %6, align 4
  %102 = load i32, i32* @ATMEL_I2SC_MR_IMCKMODE_I2SMCK, align 4
  %103 = load i32, i32* %6, align 4
  %104 = or i32 %103, %102
  store i32 %104, i32* %6, align 4
  %105 = load %struct.atmel_i2s_dev*, %struct.atmel_i2s_dev** %4, align 8
  %106 = getelementptr inbounds %struct.atmel_i2s_dev, %struct.atmel_i2s_dev* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = load i32, i32* @ATMEL_I2SC_MR, align 4
  %109 = load i32, i32* %7, align 4
  %110 = load i32, i32* %6, align 4
  %111 = call i32 @regmap_update_bits(i32 %107, i32 %108, i32 %109, i32 %110)
  store i32 %111, i32* %9, align 4
  %112 = load i32, i32* %9, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %116

114:                                              ; preds = %85
  %115 = load i32, i32* %9, align 4
  store i32 %115, i32* %3, align 4
  br label %123

116:                                              ; preds = %85
  %117 = load %struct.atmel_i2s_dev*, %struct.atmel_i2s_dev** %4, align 8
  %118 = getelementptr inbounds %struct.atmel_i2s_dev, %struct.atmel_i2s_dev* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = load i32, i32* @ATMEL_I2SC_CR, align 4
  %121 = load i32, i32* @ATMEL_I2SC_CR_CKEN, align 4
  %122 = call i32 @regmap_write(i32 %119, i32 %120, i32 %121)
  store i32 %122, i32* %3, align 4
  br label %123

123:                                              ; preds = %116, %114, %83, %74, %50, %40, %38, %26
  %124 = load i32, i32* %3, align 4
  ret i32 %124
}

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

declare dso_local i32 @clk_set_rate(i32, i64) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @ATMEL_I2SC_MR_IMCKDIV(i32) #1

declare dso_local i32 @ATMEL_I2SC_MR_IMCKFS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
