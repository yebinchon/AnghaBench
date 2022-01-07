; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_cs35l36.c_cs35l36_dai_set_sysclk.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_cs35l36.c_cs35l36_dai_set_sysclk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }
%struct.cs35l36_private = type { i32 }

@CS35L36_FS_NOM_6MHZ = common dso_local global i32 0, align 4
@CS35L36_FS1_DEFAULT_VAL = common dso_local global i32 0, align 4
@CS35L36_FS2_DEFAULT_VAL = common dso_local global i32 0, align 4
@CS35L36_TESTKEY_CTRL = common dso_local global i32 0, align 4
@CS35L36_TEST_UNLOCK1 = common dso_local global i32 0, align 4
@CS35L36_TEST_UNLOCK2 = common dso_local global i32 0, align 4
@CS35L36_TST_FS_MON0 = common dso_local global i32 0, align 4
@CS35L36_FS1_WINDOW_MASK = common dso_local global i32 0, align 4
@CS35L36_FS2_WINDOW_MASK = common dso_local global i32 0, align 4
@CS35L36_FS2_WINDOW_SHIFT = common dso_local global i32 0, align 4
@CS35L36_TEST_LOCK1 = common dso_local global i32 0, align 4
@CS35L36_TEST_LOCK2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, i32, i32, i32)* @cs35l36_dai_set_sysclk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cs35l36_dai_set_sysclk(%struct.snd_soc_dai* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.snd_soc_dai*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.snd_soc_component*, align 8
  %10 = alloca %struct.cs35l36_private*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %13 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %5, align 8
  %14 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %13, i32 0, i32 0
  %15 = load %struct.snd_soc_component*, %struct.snd_soc_component** %14, align 8
  store %struct.snd_soc_component* %15, %struct.snd_soc_component** %9, align 8
  %16 = load %struct.snd_soc_component*, %struct.snd_soc_component** %9, align 8
  %17 = call %struct.cs35l36_private* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %16)
  store %struct.cs35l36_private* %17, %struct.cs35l36_private** %10, align 8
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* @CS35L36_FS_NOM_6MHZ, align 4
  %20 = icmp ugt i32 %18, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %4
  %22 = load i32, i32* @CS35L36_FS1_DEFAULT_VAL, align 4
  store i32 %22, i32* %11, align 4
  %23 = load i32, i32* @CS35L36_FS2_DEFAULT_VAL, align 4
  store i32 %23, i32* %12, align 4
  br label %43

24:                                               ; preds = %4
  %25 = load i32, i32* @CS35L36_FS_NOM_6MHZ, align 4
  %26 = mul i32 %25, 4
  %27 = load i32, i32* %7, align 4
  %28 = add i32 %26, %27
  %29 = sub i32 %28, 1
  %30 = load i32, i32* %7, align 4
  %31 = udiv i32 %29, %30
  %32 = mul i32 3, %31
  %33 = add i32 %32, 4
  store i32 %33, i32* %11, align 4
  %34 = load i32, i32* @CS35L36_FS_NOM_6MHZ, align 4
  %35 = mul i32 %34, 4
  %36 = load i32, i32* %7, align 4
  %37 = add i32 %35, %36
  %38 = sub i32 %37, 1
  %39 = load i32, i32* %7, align 4
  %40 = udiv i32 %38, %39
  %41 = mul i32 5, %40
  %42 = add i32 %41, 4
  store i32 %42, i32* %12, align 4
  br label %43

43:                                               ; preds = %24, %21
  %44 = load %struct.cs35l36_private*, %struct.cs35l36_private** %10, align 8
  %45 = getelementptr inbounds %struct.cs35l36_private, %struct.cs35l36_private* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @CS35L36_TESTKEY_CTRL, align 4
  %48 = load i32, i32* @CS35L36_TEST_UNLOCK1, align 4
  %49 = call i32 @regmap_write(i32 %46, i32 %47, i32 %48)
  %50 = load %struct.cs35l36_private*, %struct.cs35l36_private** %10, align 8
  %51 = getelementptr inbounds %struct.cs35l36_private, %struct.cs35l36_private* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @CS35L36_TESTKEY_CTRL, align 4
  %54 = load i32, i32* @CS35L36_TEST_UNLOCK2, align 4
  %55 = call i32 @regmap_write(i32 %52, i32 %53, i32 %54)
  %56 = load %struct.cs35l36_private*, %struct.cs35l36_private** %10, align 8
  %57 = getelementptr inbounds %struct.cs35l36_private, %struct.cs35l36_private* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @CS35L36_TST_FS_MON0, align 4
  %60 = load i32, i32* @CS35L36_FS1_WINDOW_MASK, align 4
  %61 = load i32, i32* @CS35L36_FS2_WINDOW_MASK, align 4
  %62 = or i32 %60, %61
  %63 = load i32, i32* %11, align 4
  %64 = load i32, i32* %12, align 4
  %65 = load i32, i32* @CS35L36_FS2_WINDOW_SHIFT, align 4
  %66 = shl i32 %64, %65
  %67 = or i32 %63, %66
  %68 = call i32 @regmap_update_bits(i32 %58, i32 %59, i32 %62, i32 %67)
  %69 = load %struct.cs35l36_private*, %struct.cs35l36_private** %10, align 8
  %70 = getelementptr inbounds %struct.cs35l36_private, %struct.cs35l36_private* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @CS35L36_TESTKEY_CTRL, align 4
  %73 = load i32, i32* @CS35L36_TEST_LOCK1, align 4
  %74 = call i32 @regmap_write(i32 %71, i32 %72, i32 %73)
  %75 = load %struct.cs35l36_private*, %struct.cs35l36_private** %10, align 8
  %76 = getelementptr inbounds %struct.cs35l36_private, %struct.cs35l36_private* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @CS35L36_TESTKEY_CTRL, align 4
  %79 = load i32, i32* @CS35L36_TEST_LOCK2, align 4
  %80 = call i32 @regmap_write(i32 %77, i32 %78, i32 %79)
  ret i32 0
}

declare dso_local %struct.cs35l36_private* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
