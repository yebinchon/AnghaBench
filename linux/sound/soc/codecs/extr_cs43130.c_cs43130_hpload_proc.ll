; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_cs43130.c_cs43130_hpload_proc.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_cs43130.c_cs43130_hpload_proc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cs43130_private = type { i32, i32, i32, i32*, %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }
%struct.reg_sequence = type { i32 }

@CS43130_HPLOAD_AC_INT = common dso_local global i32 0, align 4
@CS43130_HP_LOAD_1 = common dso_local global i32 0, align 4
@CS43130_HPLOAD_AC_START = common dso_local global i32 0, align 4
@CS43130_HP_MEAS_LOAD_1 = common dso_local global i32 0, align 4
@CS43130_HP_MEAS_LOAD_MASK = common dso_local global i32 0, align 4
@CS43130_HP_MEAS_LOAD_1_SHIFT = common dso_local global i32 0, align 4
@CS43130_HP_MEAS_LOAD_2 = common dso_local global i32 0, align 4
@CS43130_HP_MEAS_LOAD_2_SHIFT = common dso_local global i32 0, align 4
@CS43130_INT_MASK_4 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Timeout waiting for HPLOAD interrupt\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"HP load stat: %x, INT_MASK_4: %x\0A\00", align 1
@CS43130_HPLOAD_NO_DC_INT = common dso_local global i32 0, align 4
@CS43130_HPLOAD_UNPLUG_INT = common dso_local global i32 0, align 4
@CS43130_HPLOAD_OOR_INT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"HP load measure failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cs43130_private*, %struct.reg_sequence*, i32, i32, i32)* @cs43130_hpload_proc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cs43130_hpload_proc(%struct.cs43130_private* %0, %struct.reg_sequence* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.cs43130_private*, align 8
  %8 = alloca %struct.reg_sequence*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.snd_soc_component*, align 8
  store %struct.cs43130_private* %0, %struct.cs43130_private** %7, align 8
  store %struct.reg_sequence* %1, %struct.reg_sequence** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %16 = load %struct.cs43130_private*, %struct.cs43130_private** %7, align 8
  %17 = getelementptr inbounds %struct.cs43130_private, %struct.cs43130_private* %16, i32 0, i32 4
  %18 = load %struct.snd_soc_component*, %struct.snd_soc_component** %17, align 8
  store %struct.snd_soc_component* %18, %struct.snd_soc_component** %15, align 8
  %19 = load %struct.cs43130_private*, %struct.cs43130_private** %7, align 8
  %20 = getelementptr inbounds %struct.cs43130_private, %struct.cs43130_private* %19, i32 0, i32 2
  %21 = call i32 @reinit_completion(i32* %20)
  %22 = load i32, i32* %10, align 4
  %23 = load i32, i32* @CS43130_HPLOAD_AC_INT, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %58

25:                                               ; preds = %5
  %26 = load %struct.cs43130_private*, %struct.cs43130_private** %7, align 8
  %27 = getelementptr inbounds %struct.cs43130_private, %struct.cs43130_private* %26, i32 0, i32 3
  %28 = load i32*, i32** %27, align 8
  %29 = load i32, i32* %11, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @cs43130_get_ac_reg_val(i32 %32)
  store i32 %33, i32* %14, align 4
  %34 = load %struct.cs43130_private*, %struct.cs43130_private** %7, align 8
  %35 = getelementptr inbounds %struct.cs43130_private, %struct.cs43130_private* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @CS43130_HP_LOAD_1, align 4
  %38 = load i32, i32* @CS43130_HPLOAD_AC_START, align 4
  %39 = call i32 @regmap_update_bits(i32 %36, i32 %37, i32 %38, i32 0)
  %40 = load %struct.cs43130_private*, %struct.cs43130_private** %7, align 8
  %41 = getelementptr inbounds %struct.cs43130_private, %struct.cs43130_private* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @CS43130_HP_MEAS_LOAD_1, align 4
  %44 = load i32, i32* @CS43130_HP_MEAS_LOAD_MASK, align 4
  %45 = load i32, i32* %14, align 4
  %46 = load i32, i32* @CS43130_HP_MEAS_LOAD_1_SHIFT, align 4
  %47 = ashr i32 %45, %46
  %48 = call i32 @regmap_update_bits(i32 %42, i32 %43, i32 %44, i32 %47)
  %49 = load %struct.cs43130_private*, %struct.cs43130_private** %7, align 8
  %50 = getelementptr inbounds %struct.cs43130_private, %struct.cs43130_private* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @CS43130_HP_MEAS_LOAD_2, align 4
  %53 = load i32, i32* @CS43130_HP_MEAS_LOAD_MASK, align 4
  %54 = load i32, i32* %14, align 4
  %55 = load i32, i32* @CS43130_HP_MEAS_LOAD_2_SHIFT, align 4
  %56 = ashr i32 %54, %55
  %57 = call i32 @regmap_update_bits(i32 %51, i32 %52, i32 %53, i32 %56)
  br label %58

58:                                               ; preds = %25, %5
  %59 = load %struct.cs43130_private*, %struct.cs43130_private** %7, align 8
  %60 = getelementptr inbounds %struct.cs43130_private, %struct.cs43130_private* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.reg_sequence*, %struct.reg_sequence** %8, align 8
  %63 = load i32, i32* %9, align 4
  %64 = call i32 @regmap_multi_reg_write(i32 %61, %struct.reg_sequence* %62, i32 %63)
  %65 = load %struct.cs43130_private*, %struct.cs43130_private** %7, align 8
  %66 = getelementptr inbounds %struct.cs43130_private, %struct.cs43130_private* %65, i32 0, i32 2
  %67 = call i32 @msecs_to_jiffies(i32 1000)
  %68 = call i32 @wait_for_completion_timeout(i32* %66, i32 %67)
  store i32 %68, i32* %12, align 4
  %69 = load %struct.cs43130_private*, %struct.cs43130_private** %7, align 8
  %70 = getelementptr inbounds %struct.cs43130_private, %struct.cs43130_private* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @CS43130_INT_MASK_4, align 4
  %73 = call i32 @regmap_read(i32 %71, i32 %72, i32* %13)
  %74 = load i32, i32* %12, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %81, label %76

76:                                               ; preds = %58
  %77 = load %struct.snd_soc_component*, %struct.snd_soc_component** %15, align 8
  %78 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @dev_err(i32 %79, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %6, align 4
  br label %113

81:                                               ; preds = %58
  %82 = load %struct.snd_soc_component*, %struct.snd_soc_component** %15, align 8
  %83 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.cs43130_private*, %struct.cs43130_private** %7, align 8
  %86 = getelementptr inbounds %struct.cs43130_private, %struct.cs43130_private* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* %13, align 4
  %89 = call i32 (i32, i8*, ...) @dev_dbg(i32 %84, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %87, i32 %88)
  %90 = load %struct.cs43130_private*, %struct.cs43130_private** %7, align 8
  %91 = getelementptr inbounds %struct.cs43130_private, %struct.cs43130_private* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* @CS43130_HPLOAD_NO_DC_INT, align 4
  %94 = load i32, i32* @CS43130_HPLOAD_UNPLUG_INT, align 4
  %95 = or i32 %93, %94
  %96 = load i32, i32* @CS43130_HPLOAD_OOR_INT, align 4
  %97 = or i32 %95, %96
  %98 = and i32 %92, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %107, label %100

100:                                              ; preds = %81
  %101 = load %struct.cs43130_private*, %struct.cs43130_private** %7, align 8
  %102 = getelementptr inbounds %struct.cs43130_private, %struct.cs43130_private* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = load i32, i32* %10, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %112, label %107

107:                                              ; preds = %100, %81
  %108 = load %struct.snd_soc_component*, %struct.snd_soc_component** %15, align 8
  %109 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = call i32 (i32, i8*, ...) @dev_dbg(i32 %110, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %6, align 4
  br label %113

112:                                              ; preds = %100
  store i32 0, i32* %6, align 4
  br label %113

113:                                              ; preds = %112, %107, %76
  %114 = load i32, i32* %6, align 4
  ret i32 %114
}

declare dso_local i32 @reinit_completion(i32*) #1

declare dso_local i32 @cs43130_get_ac_reg_val(i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @regmap_multi_reg_write(i32, %struct.reg_sequence*, i32) #1

declare dso_local i32 @wait_for_completion_timeout(i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @dev_dbg(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
