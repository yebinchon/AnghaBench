; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_ad193x.c_ad193x_reg_default_init.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_ad193x.c_ad193x_reg_default_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.reg_sequence = type { i32, i32 }
%struct.ad193x_priv = type { i32 }

@ad193x_reg_default_init.reg_init = internal constant [14 x %struct.reg_sequence] [%struct.reg_sequence { i32 0, i32 153 }, %struct.reg_sequence { i32 1, i32 4 }, %struct.reg_sequence { i32 2, i32 64 }, %struct.reg_sequence { i32 3, i32 0 }, %struct.reg_sequence { i32 4, i32 26 }, %struct.reg_sequence { i32 5, i32 0 }, %struct.reg_sequence { i32 6, i32 0 }, %struct.reg_sequence { i32 7, i32 0 }, %struct.reg_sequence { i32 8, i32 0 }, %struct.reg_sequence { i32 9, i32 0 }, %struct.reg_sequence { i32 10, i32 0 }, %struct.reg_sequence { i32 11, i32 0 }, %struct.reg_sequence { i32 12, i32 0 }, %struct.reg_sequence { i32 13, i32 0 }], align 16
@ad193x_reg_default_init.reg_adc_init = internal constant [3 x %struct.reg_sequence] [%struct.reg_sequence { i32 14, i32 3 }, %struct.reg_sequence { i32 15, i32 67 }, %struct.reg_sequence { i32 16, i32 0 }], align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ad193x_priv*)* @ad193x_reg_default_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ad193x_reg_default_init(%struct.ad193x_priv* %0) #0 {
  %2 = alloca %struct.ad193x_priv*, align 8
  store %struct.ad193x_priv* %0, %struct.ad193x_priv** %2, align 8
  %3 = load %struct.ad193x_priv*, %struct.ad193x_priv** %2, align 8
  %4 = getelementptr inbounds %struct.ad193x_priv, %struct.ad193x_priv* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = call i32 @ARRAY_SIZE(%struct.reg_sequence* getelementptr inbounds ([14 x %struct.reg_sequence], [14 x %struct.reg_sequence]* @ad193x_reg_default_init.reg_init, i64 0, i64 0))
  %7 = call i32 @regmap_multi_reg_write(i32 %5, %struct.reg_sequence* getelementptr inbounds ([14 x %struct.reg_sequence], [14 x %struct.reg_sequence]* @ad193x_reg_default_init.reg_init, i64 0, i64 0), i32 %6)
  %8 = load %struct.ad193x_priv*, %struct.ad193x_priv** %2, align 8
  %9 = call i64 @ad193x_has_adc(%struct.ad193x_priv* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %17

11:                                               ; preds = %1
  %12 = load %struct.ad193x_priv*, %struct.ad193x_priv** %2, align 8
  %13 = getelementptr inbounds %struct.ad193x_priv, %struct.ad193x_priv* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @ARRAY_SIZE(%struct.reg_sequence* getelementptr inbounds ([3 x %struct.reg_sequence], [3 x %struct.reg_sequence]* @ad193x_reg_default_init.reg_adc_init, i64 0, i64 0))
  %16 = call i32 @regmap_multi_reg_write(i32 %14, %struct.reg_sequence* getelementptr inbounds ([3 x %struct.reg_sequence], [3 x %struct.reg_sequence]* @ad193x_reg_default_init.reg_adc_init, i64 0, i64 0), i32 %15)
  br label %17

17:                                               ; preds = %11, %1
  ret void
}

declare dso_local i32 @regmap_multi_reg_write(i32, %struct.reg_sequence*, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.reg_sequence*) #1

declare dso_local i64 @ad193x_has_adc(%struct.ad193x_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
