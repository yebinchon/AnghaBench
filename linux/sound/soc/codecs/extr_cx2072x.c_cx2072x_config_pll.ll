; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_cx2072x.c_cx2072x_config_pll.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_cx2072x.c_cx2072x_config_pll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx2072x_priv = type { i32, i32, i32, %struct.device* }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"Unsupported sample rate %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@CX2072X_ANALOG_TEST4 = common dso_local global i32 0, align 4
@CX2072X_ANALOG_TEST7 = common dso_local global i32 0, align 4
@CX2072X_ANALOG_TEST6 = common dso_local global i32 0, align 4
@CX2072X_ANALOG_TEST8 = common dso_local global i32 0, align 4
@CX2072X_DIGITAL_TEST16 = common dso_local global i32 0, align 4
@CX2072X_DIGITAL_TEST17 = common dso_local global i32 0, align 4
@CX2072X_DIGITAL_TEST18 = common dso_local global i32 0, align 4
@CX2072X_DIGITAL_TEST19 = common dso_local global i32 0, align 4
@CX2072X_DIGITAL_TEST20 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cx2072x_priv*)* @cx2072x_config_pll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cx2072x_config_pll(%struct.cx2072x_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cx2072x_priv*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.cx2072x_priv* %0, %struct.cx2072x_priv** %3, align 8
  %16 = load %struct.cx2072x_priv*, %struct.cx2072x_priv** %3, align 8
  %17 = getelementptr inbounds %struct.cx2072x_priv, %struct.cx2072x_priv* %16, i32 0, i32 3
  %18 = load %struct.device*, %struct.device** %17, align 8
  store %struct.device* %18, %struct.device** %4, align 8
  %19 = load %struct.cx2072x_priv*, %struct.cx2072x_priv** %3, align 8
  %20 = getelementptr inbounds %struct.cx2072x_priv, %struct.cx2072x_priv* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %13, align 4
  store i32 2, i32* %14, align 4
  store i32 96, i32* %15, align 4
  %22 = load i32, i32* %13, align 4
  switch i32 %22, label %26 [
    i32 48000, label %23
    i32 32000, label %23
    i32 24000, label %23
    i32 16000, label %23
    i32 96000, label %24
    i32 192000, label %25
  ]

23:                                               ; preds = %1, %1, %1, %1
  br label %32

24:                                               ; preds = %1
  store i32 1, i32* %14, align 4
  store i32 48, i32* %15, align 4
  br label %32

25:                                               ; preds = %1
  store i32 0, i32* %14, align 4
  store i32 24, i32* %15, align 4
  br label %32

26:                                               ; preds = %1
  %27 = load %struct.device*, %struct.device** %4, align 8
  %28 = load i32, i32* %13, align 4
  %29 = call i32 @dev_err(%struct.device* %27, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %28)
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %2, align 4
  br label %159

32:                                               ; preds = %25, %24, %23
  %33 = load %struct.cx2072x_priv*, %struct.cx2072x_priv** %3, align 8
  %34 = getelementptr inbounds %struct.cx2072x_priv, %struct.cx2072x_priv* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @get_div_from_mclk(i32 %35)
  store i32 %36, i32* %5, align 4
  %37 = load %struct.cx2072x_priv*, %struct.cx2072x_priv** %3, align 8
  %38 = getelementptr inbounds %struct.cx2072x_priv, %struct.cx2072x_priv* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %5, align 4
  %41 = udiv i32 %39, %40
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* %13, align 4
  %43 = mul i32 %42, 3072
  store i32 %43, i32* %8, align 4
  %44 = load i32, i32* %8, align 4
  %45 = load i32, i32* %7, align 4
  %46 = udiv i32 %44, %45
  store i32 %46, i32* %9, align 4
  %47 = load i32, i32* %8, align 4
  %48 = load i32, i32* %9, align 4
  %49 = load i32, i32* %7, align 4
  %50 = mul i32 %48, %49
  %51 = sub i32 %47, %50
  store i32 %51, i32* %10, align 4
  %52 = load i32, i32* %10, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %68

54:                                               ; preds = %32
  %55 = load i32, i32* %10, align 4
  %56 = mul i32 %55, 1000
  store i32 %56, i32* %10, align 4
  %57 = load i32, i32* %7, align 4
  %58 = load i32, i32* %10, align 4
  %59 = udiv i32 %58, %57
  store i32 %59, i32* %10, align 4
  %60 = load i32, i32* %10, align 4
  %61 = add i32 4000, %60
  %62 = mul nsw i32 %61, 1048572
  store i32 %62, i32* %11, align 4
  %63 = load i32, i32* %11, align 4
  %64 = call i32 @do_div(i32 %63, i32 7)
  %65 = load i32, i32* %11, align 4
  %66 = add nsw i32 %65, 499
  %67 = sdiv i32 %66, 1000
  store i32 %67, i32* %12, align 4
  br label %68

68:                                               ; preds = %54, %32
  %69 = load i32, i32* %5, align 4
  %70 = sub i32 %69, 1
  %71 = mul i32 %70, 2
  store i32 %71, i32* %6, align 4
  %72 = load %struct.cx2072x_priv*, %struct.cx2072x_priv** %3, align 8
  %73 = getelementptr inbounds %struct.cx2072x_priv, %struct.cx2072x_priv* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* @CX2072X_ANALOG_TEST4, align 4
  %76 = load i32, i32* %6, align 4
  %77 = shl i32 %76, 8
  %78 = or i32 64, %77
  %79 = call i32 @regmap_write(i32 %74, i32 %75, i32 %78)
  %80 = load i32, i32* %10, align 4
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %88

82:                                               ; preds = %68
  %83 = load %struct.cx2072x_priv*, %struct.cx2072x_priv** %3, align 8
  %84 = getelementptr inbounds %struct.cx2072x_priv, %struct.cx2072x_priv* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* @CX2072X_ANALOG_TEST7, align 4
  %87 = call i32 @regmap_write(i32 %85, i32 %86, i32 256)
  br label %103

88:                                               ; preds = %68
  %89 = load %struct.cx2072x_priv*, %struct.cx2072x_priv** %3, align 8
  %90 = getelementptr inbounds %struct.cx2072x_priv, %struct.cx2072x_priv* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* @CX2072X_ANALOG_TEST6, align 4
  %93 = load i32, i32* %12, align 4
  %94 = and i32 %93, 4095
  %95 = call i32 @regmap_write(i32 %91, i32 %92, i32 %94)
  %96 = load %struct.cx2072x_priv*, %struct.cx2072x_priv** %3, align 8
  %97 = getelementptr inbounds %struct.cx2072x_priv, %struct.cx2072x_priv* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 8
  %99 = load i32, i32* @CX2072X_ANALOG_TEST7, align 4
  %100 = load i32, i32* %12, align 4
  %101 = lshr i32 %100, 12
  %102 = call i32 @regmap_write(i32 %98, i32 %99, i32 %101)
  br label %103

103:                                              ; preds = %88, %82
  %104 = load i32, i32* %9, align 4
  %105 = add i32 %104, -1
  store i32 %105, i32* %9, align 4
  %106 = load %struct.cx2072x_priv*, %struct.cx2072x_priv** %3, align 8
  %107 = getelementptr inbounds %struct.cx2072x_priv, %struct.cx2072x_priv* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 8
  %109 = load i32, i32* @CX2072X_ANALOG_TEST8, align 4
  %110 = load i32, i32* %9, align 4
  %111 = call i32 @regmap_write(i32 %108, i32 %109, i32 %110)
  %112 = load i32, i32* %10, align 4
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %114, label %120

114:                                              ; preds = %103
  %115 = load %struct.cx2072x_priv*, %struct.cx2072x_priv** %3, align 8
  %116 = getelementptr inbounds %struct.cx2072x_priv, %struct.cx2072x_priv* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 8
  %118 = load i32, i32* @CX2072X_DIGITAL_TEST16, align 4
  %119 = call i32 @regmap_write(i32 %117, i32 %118, i32 0)
  br label %158

120:                                              ; preds = %103
  %121 = load %struct.cx2072x_priv*, %struct.cx2072x_priv** %3, align 8
  %122 = getelementptr inbounds %struct.cx2072x_priv, %struct.cx2072x_priv* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 8
  %124 = load i32, i32* @CX2072X_DIGITAL_TEST16, align 4
  %125 = load i32, i32* %14, align 4
  %126 = shl i32 %125, 4
  %127 = and i32 %126, 240
  %128 = call i32 @regmap_write(i32 %123, i32 %124, i32 %127)
  %129 = load %struct.cx2072x_priv*, %struct.cx2072x_priv** %3, align 8
  %130 = getelementptr inbounds %struct.cx2072x_priv, %struct.cx2072x_priv* %129, i32 0, i32 2
  %131 = load i32, i32* %130, align 8
  %132 = load i32, i32* @CX2072X_DIGITAL_TEST17, align 4
  %133 = load i32, i32* %15, align 4
  %134 = call i32 @regmap_write(i32 %131, i32 %132, i32 %133)
  %135 = load %struct.cx2072x_priv*, %struct.cx2072x_priv** %3, align 8
  %136 = getelementptr inbounds %struct.cx2072x_priv, %struct.cx2072x_priv* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 8
  %138 = load i32, i32* @CX2072X_DIGITAL_TEST18, align 4
  %139 = load i32, i32* %15, align 4
  %140 = mul nsw i32 %139, 3
  %141 = sdiv i32 %140, 2
  %142 = call i32 @regmap_write(i32 %137, i32 %138, i32 %141)
  %143 = load %struct.cx2072x_priv*, %struct.cx2072x_priv** %3, align 8
  %144 = getelementptr inbounds %struct.cx2072x_priv, %struct.cx2072x_priv* %143, i32 0, i32 2
  %145 = load i32, i32* %144, align 8
  %146 = load i32, i32* @CX2072X_DIGITAL_TEST19, align 4
  %147 = call i32 @regmap_write(i32 %145, i32 %146, i32 1)
  %148 = load %struct.cx2072x_priv*, %struct.cx2072x_priv** %3, align 8
  %149 = getelementptr inbounds %struct.cx2072x_priv, %struct.cx2072x_priv* %148, i32 0, i32 2
  %150 = load i32, i32* %149, align 8
  %151 = load i32, i32* @CX2072X_DIGITAL_TEST20, align 4
  %152 = call i32 @regmap_write(i32 %150, i32 %151, i32 2)
  %153 = load %struct.cx2072x_priv*, %struct.cx2072x_priv** %3, align 8
  %154 = getelementptr inbounds %struct.cx2072x_priv, %struct.cx2072x_priv* %153, i32 0, i32 2
  %155 = load i32, i32* %154, align 8
  %156 = load i32, i32* @CX2072X_DIGITAL_TEST16, align 4
  %157 = call i32 @regmap_update_bits(i32 %155, i32 %156, i32 1, i32 1)
  br label %158

158:                                              ; preds = %120, %114
  store i32 0, i32* %2, align 4
  br label %159

159:                                              ; preds = %158, %26
  %160 = load i32, i32* %2, align 4
  ret i32 %160
}

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @get_div_from_mclk(i32) #1

declare dso_local i32 @do_div(i32, i32) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
