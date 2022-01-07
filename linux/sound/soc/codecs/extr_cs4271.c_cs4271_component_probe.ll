; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_cs4271.c_cs4271_component_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_cs4271.c_cs4271_component_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, %struct.cs4271_platform_data* }
%struct.cs4271_platform_data = type { i32, i32 }
%struct.cs4271_private = type { i32, i32, i32 }

@.str = private unnamed_addr constant [33 x i8] c"Failed to enable regulators: %d\0A\00", align 1
@CS4271_MODE2 = common dso_local global i32 0, align 4
@CS4271_MODE2_PDN = common dso_local global i32 0, align 4
@CS4271_MODE2_CPEN = common dso_local global i32 0, align 4
@CS4271_MODE2_MUTECAEQUB = common dso_local global i32 0, align 4
@cs4271_dt_ids = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*)* @cs4271_component_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cs4271_component_probe(%struct.snd_soc_component* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_soc_component*, align 8
  %4 = alloca %struct.cs4271_private*, align 8
  %5 = alloca %struct.cs4271_platform_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %3, align 8
  %8 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %9 = call %struct.cs4271_private* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %8)
  store %struct.cs4271_private* %9, %struct.cs4271_private** %4, align 8
  %10 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %11 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %10, i32 0, i32 0
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 1
  %14 = load %struct.cs4271_platform_data*, %struct.cs4271_platform_data** %13, align 8
  store %struct.cs4271_platform_data* %14, %struct.cs4271_platform_data** %5, align 8
  store i32 0, i32* %7, align 4
  %15 = load %struct.cs4271_private*, %struct.cs4271_private** %4, align 8
  %16 = getelementptr inbounds %struct.cs4271_private, %struct.cs4271_private* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @ARRAY_SIZE(i32 %17)
  %19 = load %struct.cs4271_private*, %struct.cs4271_private** %4, align 8
  %20 = getelementptr inbounds %struct.cs4271_private, %struct.cs4271_private* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @regulator_bulk_enable(i32 %18, i32 %21)
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %1
  %26 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %27 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %26, i32 0, i32 0
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @dev_err(%struct.TYPE_3__* %28, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %29)
  %31 = load i32, i32* %6, align 4
  store i32 %31, i32* %2, align 4
  br label %95

32:                                               ; preds = %1
  %33 = load %struct.cs4271_platform_data*, %struct.cs4271_platform_data** %5, align 8
  %34 = icmp ne %struct.cs4271_platform_data* %33, null
  br i1 %34, label %35, label %44

35:                                               ; preds = %32
  %36 = load %struct.cs4271_platform_data*, %struct.cs4271_platform_data** %5, align 8
  %37 = getelementptr inbounds %struct.cs4271_platform_data, %struct.cs4271_platform_data* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %7, align 4
  %39 = load %struct.cs4271_platform_data*, %struct.cs4271_platform_data** %5, align 8
  %40 = getelementptr inbounds %struct.cs4271_platform_data, %struct.cs4271_platform_data* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.cs4271_private*, %struct.cs4271_private** %4, align 8
  %43 = getelementptr inbounds %struct.cs4271_private, %struct.cs4271_private* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 4
  br label %44

44:                                               ; preds = %35, %32
  %45 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %46 = call i32 @cs4271_reset(%struct.snd_soc_component* %45)
  %47 = load %struct.cs4271_private*, %struct.cs4271_private** %4, align 8
  %48 = getelementptr inbounds %struct.cs4271_private, %struct.cs4271_private* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @regcache_sync(i32 %49)
  store i32 %50, i32* %6, align 4
  %51 = load i32, i32* %6, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %44
  %54 = load i32, i32* %6, align 4
  store i32 %54, i32* %2, align 4
  br label %95

55:                                               ; preds = %44
  %56 = load %struct.cs4271_private*, %struct.cs4271_private** %4, align 8
  %57 = getelementptr inbounds %struct.cs4271_private, %struct.cs4271_private* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @CS4271_MODE2, align 4
  %60 = load i32, i32* @CS4271_MODE2_PDN, align 4
  %61 = load i32, i32* @CS4271_MODE2_CPEN, align 4
  %62 = or i32 %60, %61
  %63 = load i32, i32* @CS4271_MODE2_PDN, align 4
  %64 = load i32, i32* @CS4271_MODE2_CPEN, align 4
  %65 = or i32 %63, %64
  %66 = call i32 @regmap_update_bits(i32 %58, i32 %59, i32 %62, i32 %65)
  store i32 %66, i32* %6, align 4
  %67 = load i32, i32* %6, align 4
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %55
  %70 = load i32, i32* %6, align 4
  store i32 %70, i32* %2, align 4
  br label %95

71:                                               ; preds = %55
  %72 = load %struct.cs4271_private*, %struct.cs4271_private** %4, align 8
  %73 = getelementptr inbounds %struct.cs4271_private, %struct.cs4271_private* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @CS4271_MODE2, align 4
  %76 = load i32, i32* @CS4271_MODE2_PDN, align 4
  %77 = call i32 @regmap_update_bits(i32 %74, i32 %75, i32 %76, i32 0)
  store i32 %77, i32* %6, align 4
  %78 = load i32, i32* %6, align 4
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %71
  %81 = load i32, i32* %6, align 4
  store i32 %81, i32* %2, align 4
  br label %95

82:                                               ; preds = %71
  %83 = call i32 @udelay(i32 85)
  %84 = load i32, i32* %7, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %94

86:                                               ; preds = %82
  %87 = load %struct.cs4271_private*, %struct.cs4271_private** %4, align 8
  %88 = getelementptr inbounds %struct.cs4271_private, %struct.cs4271_private* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @CS4271_MODE2, align 4
  %91 = load i32, i32* @CS4271_MODE2_MUTECAEQUB, align 4
  %92 = load i32, i32* @CS4271_MODE2_MUTECAEQUB, align 4
  %93 = call i32 @regmap_update_bits(i32 %89, i32 %90, i32 %91, i32 %92)
  br label %94

94:                                               ; preds = %86, %82
  store i32 0, i32* %2, align 4
  br label %95

95:                                               ; preds = %94, %80, %69, %53, %25
  %96 = load i32, i32* %2, align 4
  ret i32 %96
}

declare dso_local %struct.cs4271_private* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @regulator_bulk_enable(i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_3__*, i8*, i32) #1

declare dso_local i32 @cs4271_reset(%struct.snd_soc_component*) #1

declare dso_local i32 @regcache_sync(i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
