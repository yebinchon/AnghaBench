; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_cs43130.c_cs43130_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_cs43130.c_cs43130_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32, %struct.snd_soc_card* }
%struct.snd_soc_card = type { i32 }
%struct.cs43130_private = type { i64, i32, i32, i32, i32, i64, i32, %struct.snd_soc_component* }

@CS43130_XTAL_UNUSED = common dso_local global i64 0, align 8
@CS43130_CRYSTAL_SET = common dso_local global i32 0, align 4
@CS43130_XTAL_IBIAS_MASK = common dso_local global i32 0, align 4
@CS43130_INT_MASK_1 = common dso_local global i32 0, align 4
@CS43130_XTAL_ERR_INT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"Headphone\00", align 1
@CS43130_JACK_MASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"Cannot create jack\0A\00", align 1
@dev_attr_hpload_dc_l = common dso_local global i32 0, align 4
@dev_attr_hpload_dc_r = common dso_local global i32 0, align 4
@dev_attr_hpload_ac_l = common dso_local global i32 0, align 4
@dev_attr_hpload_ac_r = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"cs43130_hp\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@cs43130_imp_meas = common dso_local global i32 0, align 4
@CS43130_INT_STATUS_1 = common dso_local global i32 0, align 4
@CS43130_HP_STATUS = common dso_local global i32 0, align 4
@CS43130_HP_PLUG_INT = common dso_local global i32 0, align 4
@CS43130_HP_UNPLUG_INT = common dso_local global i32 0, align 4
@CS43130_HP_DETECT = common dso_local global i32 0, align 4
@CS43130_HP_DETECT_CTRL_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*)* @cs43130_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cs43130_probe(%struct.snd_soc_component* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_soc_component*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.cs43130_private*, align 8
  %6 = alloca %struct.snd_soc_card*, align 8
  %7 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %3, align 8
  %8 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %9 = call %struct.cs43130_private* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %8)
  store %struct.cs43130_private* %9, %struct.cs43130_private** %5, align 8
  %10 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %11 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %10, i32 0, i32 1
  %12 = load %struct.snd_soc_card*, %struct.snd_soc_card** %11, align 8
  store %struct.snd_soc_card* %12, %struct.snd_soc_card** %6, align 8
  %13 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %14 = load %struct.cs43130_private*, %struct.cs43130_private** %5, align 8
  %15 = getelementptr inbounds %struct.cs43130_private, %struct.cs43130_private* %14, i32 0, i32 7
  store %struct.snd_soc_component* %13, %struct.snd_soc_component** %15, align 8
  %16 = load %struct.cs43130_private*, %struct.cs43130_private** %5, align 8
  %17 = getelementptr inbounds %struct.cs43130_private, %struct.cs43130_private* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @CS43130_XTAL_UNUSED, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %38

21:                                               ; preds = %1
  %22 = load %struct.cs43130_private*, %struct.cs43130_private** %5, align 8
  %23 = getelementptr inbounds %struct.cs43130_private, %struct.cs43130_private* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @CS43130_CRYSTAL_SET, align 4
  %26 = load i32, i32* @CS43130_XTAL_IBIAS_MASK, align 4
  %27 = load %struct.cs43130_private*, %struct.cs43130_private** %5, align 8
  %28 = getelementptr inbounds %struct.cs43130_private, %struct.cs43130_private* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = trunc i64 %29 to i32
  %31 = call i32 @regmap_update_bits(i32 %24, i32 %25, i32 %26, i32 %30)
  %32 = load %struct.cs43130_private*, %struct.cs43130_private** %5, align 8
  %33 = getelementptr inbounds %struct.cs43130_private, %struct.cs43130_private* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @CS43130_INT_MASK_1, align 4
  %36 = load i32, i32* @CS43130_XTAL_ERR_INT, align 4
  %37 = call i32 @regmap_update_bits(i32 %34, i32 %35, i32 %36, i32 0)
  br label %38

38:                                               ; preds = %21, %1
  %39 = load %struct.snd_soc_card*, %struct.snd_soc_card** %6, align 8
  %40 = load i32, i32* @CS43130_JACK_MASK, align 4
  %41 = load %struct.cs43130_private*, %struct.cs43130_private** %5, align 8
  %42 = getelementptr inbounds %struct.cs43130_private, %struct.cs43130_private* %41, i32 0, i32 6
  %43 = call i32 @snd_soc_card_jack_new(%struct.snd_soc_card* %39, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %40, i32* %42, i32* null, i32 0)
  store i32 %43, i32* %4, align 4
  %44 = load i32, i32* %4, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %38
  %47 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %48 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @dev_err(i32 %49, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %51 = load i32, i32* %4, align 4
  store i32 %51, i32* %2, align 4
  br label %143

52:                                               ; preds = %38
  %53 = load %struct.cs43130_private*, %struct.cs43130_private** %5, align 8
  %54 = getelementptr inbounds %struct.cs43130_private, %struct.cs43130_private* %53, i32 0, i32 1
  store i32 0, i32* %54, align 8
  %55 = load %struct.cs43130_private*, %struct.cs43130_private** %5, align 8
  %56 = getelementptr inbounds %struct.cs43130_private, %struct.cs43130_private* %55, i32 0, i32 5
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %111

59:                                               ; preds = %52
  %60 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %61 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @device_create_file(i32 %62, i32* @dev_attr_hpload_dc_l)
  store i32 %63, i32* %4, align 4
  %64 = load i32, i32* %4, align 4
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %59
  %67 = load i32, i32* %4, align 4
  store i32 %67, i32* %2, align 4
  br label %143

68:                                               ; preds = %59
  %69 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %70 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @device_create_file(i32 %71, i32* @dev_attr_hpload_dc_r)
  store i32 %72, i32* %4, align 4
  %73 = load i32, i32* %4, align 4
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %68
  %76 = load i32, i32* %4, align 4
  store i32 %76, i32* %2, align 4
  br label %143

77:                                               ; preds = %68
  %78 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %79 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @device_create_file(i32 %80, i32* @dev_attr_hpload_ac_l)
  store i32 %81, i32* %4, align 4
  %82 = load i32, i32* %4, align 4
  %83 = icmp slt i32 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %77
  %85 = load i32, i32* %4, align 4
  store i32 %85, i32* %2, align 4
  br label %143

86:                                               ; preds = %77
  %87 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %88 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = call i32 @device_create_file(i32 %89, i32* @dev_attr_hpload_ac_r)
  store i32 %90, i32* %4, align 4
  %91 = load i32, i32* %4, align 4
  %92 = icmp slt i32 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %86
  %94 = load i32, i32* %4, align 4
  store i32 %94, i32* %2, align 4
  br label %143

95:                                               ; preds = %86
  %96 = call i32 @create_singlethread_workqueue(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %97 = load %struct.cs43130_private*, %struct.cs43130_private** %5, align 8
  %98 = getelementptr inbounds %struct.cs43130_private, %struct.cs43130_private* %97, i32 0, i32 4
  store i32 %96, i32* %98, align 4
  %99 = load %struct.cs43130_private*, %struct.cs43130_private** %5, align 8
  %100 = getelementptr inbounds %struct.cs43130_private, %struct.cs43130_private* %99, i32 0, i32 4
  %101 = load i32, i32* %100, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %106, label %103

103:                                              ; preds = %95
  %104 = load i32, i32* @ENOMEM, align 4
  %105 = sub nsw i32 0, %104
  store i32 %105, i32* %2, align 4
  br label %143

106:                                              ; preds = %95
  %107 = load %struct.cs43130_private*, %struct.cs43130_private** %5, align 8
  %108 = getelementptr inbounds %struct.cs43130_private, %struct.cs43130_private* %107, i32 0, i32 3
  %109 = load i32, i32* @cs43130_imp_meas, align 4
  %110 = call i32 @INIT_WORK(i32* %108, i32 %109)
  br label %111

111:                                              ; preds = %106, %52
  %112 = load %struct.cs43130_private*, %struct.cs43130_private** %5, align 8
  %113 = getelementptr inbounds %struct.cs43130_private, %struct.cs43130_private* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* @CS43130_INT_STATUS_1, align 4
  %116 = call i32 @regmap_read(i32 %114, i32 %115, i32* %7)
  %117 = load %struct.cs43130_private*, %struct.cs43130_private** %5, align 8
  %118 = getelementptr inbounds %struct.cs43130_private, %struct.cs43130_private* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* @CS43130_HP_STATUS, align 4
  %121 = call i32 @regmap_read(i32 %119, i32 %120, i32* %7)
  %122 = load %struct.cs43130_private*, %struct.cs43130_private** %5, align 8
  %123 = getelementptr inbounds %struct.cs43130_private, %struct.cs43130_private* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* @CS43130_INT_MASK_1, align 4
  %126 = load i32, i32* @CS43130_HP_PLUG_INT, align 4
  %127 = load i32, i32* @CS43130_HP_UNPLUG_INT, align 4
  %128 = or i32 %126, %127
  %129 = call i32 @regmap_update_bits(i32 %124, i32 %125, i32 %128, i32 0)
  %130 = load %struct.cs43130_private*, %struct.cs43130_private** %5, align 8
  %131 = getelementptr inbounds %struct.cs43130_private, %struct.cs43130_private* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 4
  %133 = load i32, i32* @CS43130_HP_DETECT, align 4
  %134 = load i32, i32* @CS43130_HP_DETECT_CTRL_MASK, align 4
  %135 = call i32 @regmap_update_bits(i32 %132, i32 %133, i32 %134, i32 0)
  %136 = load %struct.cs43130_private*, %struct.cs43130_private** %5, align 8
  %137 = getelementptr inbounds %struct.cs43130_private, %struct.cs43130_private* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 4
  %139 = load i32, i32* @CS43130_HP_DETECT, align 4
  %140 = load i32, i32* @CS43130_HP_DETECT_CTRL_MASK, align 4
  %141 = load i32, i32* @CS43130_HP_DETECT_CTRL_MASK, align 4
  %142 = call i32 @regmap_update_bits(i32 %138, i32 %139, i32 %140, i32 %141)
  store i32 0, i32* %2, align 4
  br label %143

143:                                              ; preds = %111, %103, %93, %84, %75, %66, %46
  %144 = load i32, i32* %2, align 4
  ret i32 %144
}

declare dso_local %struct.cs43130_private* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @snd_soc_card_jack_new(%struct.snd_soc_card*, i8*, i32, i32*, i32*, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @device_create_file(i32, i32*) #1

declare dso_local i32 @create_singlethread_workqueue(i8*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
