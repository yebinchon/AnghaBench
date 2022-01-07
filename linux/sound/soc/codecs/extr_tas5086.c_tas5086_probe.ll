; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_tas5086.c_tas5086_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_tas5086.c_tas5086_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.tas5086_private = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [33 x i8] c"Failed to enable regulators: %d\0A\00", align 1
@tas5086_dt_ids = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"ti,charge-period\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"ti,mid-z-channel-%d\00", align 1
@TAS5086_MASTER_VOL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*)* @tas5086_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tas5086_probe(%struct.snd_soc_component* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_soc_component*, align 8
  %4 = alloca %struct.tas5086_private*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.device_node*, align 8
  %8 = alloca [25 x i8], align 16
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %3, align 8
  %9 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %10 = call %struct.tas5086_private* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %9)
  store %struct.tas5086_private* %10, %struct.tas5086_private** %4, align 8
  %11 = load %struct.tas5086_private*, %struct.tas5086_private** %4, align 8
  %12 = getelementptr inbounds %struct.tas5086_private, %struct.tas5086_private* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @ARRAY_SIZE(i32 %13)
  %15 = load %struct.tas5086_private*, %struct.tas5086_private** %4, align 8
  %16 = getelementptr inbounds %struct.tas5086_private, %struct.tas5086_private* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @regulator_bulk_enable(i32 %14, i32 %17)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %1
  %22 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %23 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %22, i32 0, i32 0
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @dev_err(%struct.TYPE_4__* %24, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %25)
  %27 = load i32, i32* %6, align 4
  store i32 %27, i32* %2, align 4
  br label %105

28:                                               ; preds = %1
  %29 = load %struct.tas5086_private*, %struct.tas5086_private** %4, align 8
  %30 = getelementptr inbounds %struct.tas5086_private, %struct.tas5086_private* %29, i32 0, i32 0
  store i32 0, i32* %30, align 4
  %31 = load %struct.tas5086_private*, %struct.tas5086_private** %4, align 8
  %32 = getelementptr inbounds %struct.tas5086_private, %struct.tas5086_private* %31, i32 0, i32 1
  store i32 1300000, i32* %32, align 4
  %33 = load i32, i32* @tas5086_dt_ids, align 4
  %34 = call i32 @of_match_ptr(i32 %33)
  %35 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %36 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %35, i32 0, i32 0
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = call i64 @of_match_device(i32 %34, %struct.TYPE_4__* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %74

40:                                               ; preds = %28
  %41 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %42 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %41, i32 0, i32 0
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load %struct.device_node*, %struct.device_node** %44, align 8
  store %struct.device_node* %45, %struct.device_node** %7, align 8
  %46 = load %struct.device_node*, %struct.device_node** %7, align 8
  %47 = load %struct.tas5086_private*, %struct.tas5086_private** %4, align 8
  %48 = getelementptr inbounds %struct.tas5086_private, %struct.tas5086_private* %47, i32 0, i32 1
  %49 = call i32 @of_property_read_u32(%struct.device_node* %46, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32* %48)
  store i32 0, i32* %5, align 4
  br label %50

50:                                               ; preds = %70, %40
  %51 = load i32, i32* %5, align 4
  %52 = icmp slt i32 %51, 6
  br i1 %52, label %53, label %73

53:                                               ; preds = %50
  %54 = getelementptr inbounds [25 x i8], [25 x i8]* %8, i64 0, i64 0
  %55 = load i32, i32* %5, align 4
  %56 = add nsw i32 %55, 1
  %57 = call i32 @snprintf(i8* %54, i32 25, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 %56)
  %58 = load %struct.device_node*, %struct.device_node** %7, align 8
  %59 = getelementptr inbounds [25 x i8], [25 x i8]* %8, i64 0, i64 0
  %60 = call i32* @of_get_property(%struct.device_node* %58, i8* %59, i32* null)
  %61 = icmp ne i32* %60, null
  br i1 %61, label %62, label %69

62:                                               ; preds = %53
  %63 = load i32, i32* %5, align 4
  %64 = shl i32 1, %63
  %65 = load %struct.tas5086_private*, %struct.tas5086_private** %4, align 8
  %66 = getelementptr inbounds %struct.tas5086_private, %struct.tas5086_private* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = or i32 %67, %64
  store i32 %68, i32* %66, align 4
  br label %69

69:                                               ; preds = %62, %53
  br label %70

70:                                               ; preds = %69
  %71 = load i32, i32* %5, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %5, align 4
  br label %50

73:                                               ; preds = %50
  br label %74

74:                                               ; preds = %73, %28
  %75 = load %struct.tas5086_private*, %struct.tas5086_private** %4, align 8
  %76 = call i32 @tas5086_reset(%struct.tas5086_private* %75)
  %77 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %78 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %77, i32 0, i32 0
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %78, align 8
  %80 = load %struct.tas5086_private*, %struct.tas5086_private** %4, align 8
  %81 = call i32 @tas5086_init(%struct.TYPE_4__* %79, %struct.tas5086_private* %80)
  store i32 %81, i32* %6, align 4
  %82 = load i32, i32* %6, align 4
  %83 = icmp slt i32 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %74
  br label %95

85:                                               ; preds = %74
  %86 = load %struct.tas5086_private*, %struct.tas5086_private** %4, align 8
  %87 = getelementptr inbounds %struct.tas5086_private, %struct.tas5086_private* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @TAS5086_MASTER_VOL, align 4
  %90 = call i32 @regmap_write(i32 %88, i32 %89, i32 48)
  store i32 %90, i32* %6, align 4
  %91 = load i32, i32* %6, align 4
  %92 = icmp slt i32 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %85
  br label %95

94:                                               ; preds = %85
  store i32 0, i32* %2, align 4
  br label %105

95:                                               ; preds = %93, %84
  %96 = load %struct.tas5086_private*, %struct.tas5086_private** %4, align 8
  %97 = getelementptr inbounds %struct.tas5086_private, %struct.tas5086_private* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @ARRAY_SIZE(i32 %98)
  %100 = load %struct.tas5086_private*, %struct.tas5086_private** %4, align 8
  %101 = getelementptr inbounds %struct.tas5086_private, %struct.tas5086_private* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @regulator_bulk_disable(i32 %99, i32 %102)
  %104 = load i32, i32* %6, align 4
  store i32 %104, i32* %2, align 4
  br label %105

105:                                              ; preds = %95, %94, %21
  %106 = load i32, i32* %2, align 4
  ret i32 %106
}

declare dso_local %struct.tas5086_private* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @regulator_bulk_enable(i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_4__*, i8*, i32) #1

declare dso_local i64 @of_match_device(i32, %struct.TYPE_4__*) #1

declare dso_local i32 @of_match_ptr(i32) #1

declare dso_local i32 @of_property_read_u32(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32* @of_get_property(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @tas5086_reset(%struct.tas5086_private*) #1

declare dso_local i32 @tas5086_init(%struct.TYPE_4__*, %struct.tas5086_private*) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @regulator_bulk_disable(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
