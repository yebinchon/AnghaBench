; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_tlv320dac33.c_dac33_write16.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_tlv320dac33.c_dac33_write16.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.tlv320dac33_priv = type { i32, i64 }

@DAC33_I2C_ADDR_AUTOINC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"Write failed (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*, i32, i32)* @dac33_write16 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dac33_write16(%struct.snd_soc_component* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.snd_soc_component*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.tlv320dac33_priv*, align 8
  %8 = alloca [3 x i32], align 4
  %9 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %11 = call %struct.tlv320dac33_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %10)
  store %struct.tlv320dac33_priv* %11, %struct.tlv320dac33_priv** %7, align 8
  store i32 0, i32* %9, align 4
  %12 = load i32, i32* %5, align 4
  %13 = and i32 %12, 255
  %14 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 0
  store i32 %13, i32* %14, align 4
  %15 = load i32, i32* %6, align 4
  %16 = lshr i32 %15, 8
  %17 = and i32 %16, 255
  %18 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 1
  store i32 %17, i32* %18, align 4
  %19 = load i32, i32* %6, align 4
  %20 = and i32 %19, 255
  %21 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 2
  store i32 %20, i32* %21, align 4
  %22 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %23 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 0
  %24 = load i32, i32* %23, align 4
  %25 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @dac33_write_reg_cache(%struct.snd_soc_component* %22, i32 %24, i32 %26)
  %28 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %29 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 0
  %30 = load i32, i32* %29, align 4
  %31 = add nsw i32 %30, 1
  %32 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 2
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @dac33_write_reg_cache(%struct.snd_soc_component* %28, i32 %31, i32 %33)
  %35 = load %struct.tlv320dac33_priv*, %struct.tlv320dac33_priv** %7, align 8
  %36 = getelementptr inbounds %struct.tlv320dac33_priv, %struct.tlv320dac33_priv* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %59

39:                                               ; preds = %3
  %40 = load i32, i32* @DAC33_I2C_ADDR_AUTOINC, align 4
  %41 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 0
  %42 = load i32, i32* %41, align 4
  %43 = or i32 %42, %40
  store i32 %43, i32* %41, align 4
  %44 = load %struct.tlv320dac33_priv*, %struct.tlv320dac33_priv** %7, align 8
  %45 = getelementptr inbounds %struct.tlv320dac33_priv, %struct.tlv320dac33_priv* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 0
  %48 = call i32 @i2c_master_send(i32 %46, i32* %47, i32 3)
  store i32 %48, i32* %9, align 4
  %49 = load i32, i32* %9, align 4
  %50 = icmp ne i32 %49, 3
  br i1 %50, label %51, label %57

51:                                               ; preds = %39
  %52 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %53 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %9, align 4
  %56 = call i32 @dev_err(i32 %54, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %55)
  br label %58

57:                                               ; preds = %39
  store i32 0, i32* %9, align 4
  br label %58

58:                                               ; preds = %57, %51
  br label %59

59:                                               ; preds = %58, %3
  %60 = load i32, i32* %9, align 4
  ret i32 %60
}

declare dso_local %struct.tlv320dac33_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @dac33_write_reg_cache(%struct.snd_soc_component*, i32, i32) #1

declare dso_local i32 @i2c_master_send(i32, i32*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
