; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/bcm/extr_bcm2835-i2s.c_bcm2835_i2s_clear_fifos.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/bcm/extr_bcm2835-i2s.c_bcm2835_i2s_clear_fifos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcm2835_i2s_dev = type { i32, i32, i32 }

@BCM2835_I2S_TXON = common dso_local global i32 0, align 4
@BCM2835_I2S_RXON = common dso_local global i32 0, align 4
@BCM2835_I2S_TXCLR = common dso_local global i32 0, align 4
@BCM2835_I2S_RXCLR = common dso_local global i32 0, align 4
@BCM2835_I2S_CS_A_REG = common dso_local global i32 0, align 4
@BCM2835_I2S_SYNC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"I2S SYNC error!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bcm2835_i2s_dev*, i32, i32)* @bcm2835_i2s_clear_fifos to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bcm2835_i2s_clear_fifos(%struct.bcm2835_i2s_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.bcm2835_i2s_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.bcm2835_i2s_dev* %0, %struct.bcm2835_i2s_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 1000, i32* %7, align 4
  %14 = load i32, i32* %5, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = load i32, i32* @BCM2835_I2S_TXON, align 4
  br label %19

18:                                               ; preds = %3
  br label %19

19:                                               ; preds = %18, %16
  %20 = phi i32 [ %17, %16 ], [ 0, %18 ]
  store i32 %20, i32* %12, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %19
  %24 = load i32, i32* @BCM2835_I2S_RXON, align 4
  br label %26

25:                                               ; preds = %19
  br label %26

26:                                               ; preds = %25, %23
  %27 = phi i32 [ %24, %23 ], [ 0, %25 ]
  %28 = load i32, i32* %12, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %12, align 4
  %30 = load i32, i32* %5, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %26
  %33 = load i32, i32* @BCM2835_I2S_TXCLR, align 4
  br label %35

34:                                               ; preds = %26
  br label %35

35:                                               ; preds = %34, %32
  %36 = phi i32 [ %33, %32 ], [ 0, %34 ]
  store i32 %36, i32* %13, align 4
  %37 = load i32, i32* %6, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %35
  %40 = load i32, i32* @BCM2835_I2S_RXCLR, align 4
  br label %42

41:                                               ; preds = %35
  br label %42

42:                                               ; preds = %41, %39
  %43 = phi i32 [ %40, %39 ], [ 0, %41 ]
  %44 = load i32, i32* %13, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %13, align 4
  %46 = load %struct.bcm2835_i2s_dev*, %struct.bcm2835_i2s_dev** %4, align 8
  %47 = getelementptr inbounds %struct.bcm2835_i2s_dev, %struct.bcm2835_i2s_dev* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @BCM2835_I2S_CS_A_REG, align 4
  %50 = call i32 @regmap_read(i32 %48, i32 %49, i32* %9)
  %51 = load i32, i32* %9, align 4
  %52 = load i32, i32* @BCM2835_I2S_RXON, align 4
  %53 = load i32, i32* @BCM2835_I2S_TXON, align 4
  %54 = or i32 %52, %53
  %55 = and i32 %51, %54
  store i32 %55, i32* %10, align 4
  %56 = load %struct.bcm2835_i2s_dev*, %struct.bcm2835_i2s_dev** %4, align 8
  %57 = getelementptr inbounds %struct.bcm2835_i2s_dev, %struct.bcm2835_i2s_dev* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  store i32 %58, i32* %11, align 4
  %59 = load i32, i32* %11, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %64, label %61

61:                                               ; preds = %42
  %62 = load %struct.bcm2835_i2s_dev*, %struct.bcm2835_i2s_dev** %4, align 8
  %63 = call i32 @bcm2835_i2s_start_clock(%struct.bcm2835_i2s_dev* %62)
  br label %64

64:                                               ; preds = %61, %42
  %65 = load %struct.bcm2835_i2s_dev*, %struct.bcm2835_i2s_dev** %4, align 8
  %66 = getelementptr inbounds %struct.bcm2835_i2s_dev, %struct.bcm2835_i2s_dev* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @BCM2835_I2S_CS_A_REG, align 4
  %69 = load i32, i32* %12, align 4
  %70 = call i32 @regmap_update_bits(i32 %67, i32 %68, i32 %69, i32 0)
  %71 = load %struct.bcm2835_i2s_dev*, %struct.bcm2835_i2s_dev** %4, align 8
  %72 = getelementptr inbounds %struct.bcm2835_i2s_dev, %struct.bcm2835_i2s_dev* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @BCM2835_I2S_CS_A_REG, align 4
  %75 = load i32, i32* %13, align 4
  %76 = load i32, i32* %13, align 4
  %77 = call i32 @regmap_update_bits(i32 %73, i32 %74, i32 %75, i32 %76)
  %78 = load %struct.bcm2835_i2s_dev*, %struct.bcm2835_i2s_dev** %4, align 8
  %79 = getelementptr inbounds %struct.bcm2835_i2s_dev, %struct.bcm2835_i2s_dev* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @BCM2835_I2S_CS_A_REG, align 4
  %82 = call i32 @regmap_read(i32 %80, i32 %81, i32* %8)
  %83 = load i32, i32* @BCM2835_I2S_SYNC, align 4
  %84 = load i32, i32* %8, align 4
  %85 = and i32 %84, %83
  store i32 %85, i32* %8, align 4
  %86 = load %struct.bcm2835_i2s_dev*, %struct.bcm2835_i2s_dev** %4, align 8
  %87 = getelementptr inbounds %struct.bcm2835_i2s_dev, %struct.bcm2835_i2s_dev* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @BCM2835_I2S_CS_A_REG, align 4
  %90 = load i32, i32* @BCM2835_I2S_SYNC, align 4
  %91 = load i32, i32* %8, align 4
  %92 = xor i32 %91, -1
  %93 = call i32 @regmap_update_bits(i32 %88, i32 %89, i32 %90, i32 %92)
  br label %94

94:                                               ; preds = %110, %64
  %95 = load i32, i32* %7, align 4
  %96 = add nsw i32 %95, -1
  store i32 %96, i32* %7, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %111

98:                                               ; preds = %94
  %99 = load %struct.bcm2835_i2s_dev*, %struct.bcm2835_i2s_dev** %4, align 8
  %100 = getelementptr inbounds %struct.bcm2835_i2s_dev, %struct.bcm2835_i2s_dev* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* @BCM2835_I2S_CS_A_REG, align 4
  %103 = call i32 @regmap_read(i32 %101, i32 %102, i32* %9)
  %104 = load i32, i32* %9, align 4
  %105 = load i32, i32* @BCM2835_I2S_SYNC, align 4
  %106 = and i32 %104, %105
  %107 = load i32, i32* %8, align 4
  %108 = icmp ne i32 %106, %107
  br i1 %108, label %109, label %110

109:                                              ; preds = %98
  br label %111

110:                                              ; preds = %98
  br label %94

111:                                              ; preds = %109, %94
  %112 = load i32, i32* %7, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %119, label %114

114:                                              ; preds = %111
  %115 = load %struct.bcm2835_i2s_dev*, %struct.bcm2835_i2s_dev** %4, align 8
  %116 = getelementptr inbounds %struct.bcm2835_i2s_dev, %struct.bcm2835_i2s_dev* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @dev_err(i32 %117, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  br label %119

119:                                              ; preds = %114, %111
  %120 = load i32, i32* %11, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %125, label %122

122:                                              ; preds = %119
  %123 = load %struct.bcm2835_i2s_dev*, %struct.bcm2835_i2s_dev** %4, align 8
  %124 = call i32 @bcm2835_i2s_stop_clock(%struct.bcm2835_i2s_dev* %123)
  br label %125

125:                                              ; preds = %122, %119
  %126 = load %struct.bcm2835_i2s_dev*, %struct.bcm2835_i2s_dev** %4, align 8
  %127 = getelementptr inbounds %struct.bcm2835_i2s_dev, %struct.bcm2835_i2s_dev* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = load i32, i32* @BCM2835_I2S_CS_A_REG, align 4
  %130 = load i32, i32* @BCM2835_I2S_RXON, align 4
  %131 = load i32, i32* @BCM2835_I2S_TXON, align 4
  %132 = or i32 %130, %131
  %133 = load i32, i32* %10, align 4
  %134 = call i32 @regmap_update_bits(i32 %128, i32 %129, i32 %132, i32 %133)
  ret void
}

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @bcm2835_i2s_start_clock(%struct.bcm2835_i2s_dev*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @bcm2835_i2s_stop_clock(%struct.bcm2835_i2s_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
