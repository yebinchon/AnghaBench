; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/ti/extr_omap-mcbsp-st.c_omap_mcbsp_st_init.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/ti/extr_omap-mcbsp-st.c_omap_mcbsp_st_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.omap_mcbsp = type { %struct.omap_mcbsp_st_data*, %struct.TYPE_5__* }
%struct.omap_mcbsp_st_data = type { i32, i32* }
%struct.TYPE_5__ = type { i32 }
%struct.resource = type { i32 }

@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"sidetone\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"ick\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"Failed to get ick, sidetone might be broken\0A\00", align 1
@sidetone_attr_group = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @omap_mcbsp_st_init(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.omap_mcbsp*, align 8
  %5 = alloca %struct.omap_mcbsp_st_data*, align 8
  %6 = alloca %struct.resource*, align 8
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = call %struct.omap_mcbsp* @platform_get_drvdata(%struct.platform_device* %8)
  store %struct.omap_mcbsp* %9, %struct.omap_mcbsp** %4, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = load i32, i32* @IORESOURCE_MEM, align 4
  %12 = call %struct.resource* @platform_get_resource_byname(%struct.platform_device* %10, i32 %11, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  store %struct.resource* %12, %struct.resource** %6, align 8
  %13 = load %struct.resource*, %struct.resource** %6, align 8
  %14 = icmp ne %struct.resource* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %79

16:                                               ; preds = %1
  %17 = load %struct.omap_mcbsp*, %struct.omap_mcbsp** %4, align 8
  %18 = getelementptr inbounds %struct.omap_mcbsp, %struct.omap_mcbsp* %17, i32 0, i32 1
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call %struct.omap_mcbsp_st_data* @devm_kzalloc(%struct.TYPE_5__* %19, i32 16, i32 %20)
  store %struct.omap_mcbsp_st_data* %21, %struct.omap_mcbsp_st_data** %5, align 8
  %22 = load %struct.omap_mcbsp_st_data*, %struct.omap_mcbsp_st_data** %5, align 8
  %23 = icmp ne %struct.omap_mcbsp_st_data* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %16
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %79

27:                                               ; preds = %16
  %28 = load %struct.omap_mcbsp*, %struct.omap_mcbsp** %4, align 8
  %29 = getelementptr inbounds %struct.omap_mcbsp, %struct.omap_mcbsp* %28, i32 0, i32 1
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %29, align 8
  %31 = call i32* @clk_get(%struct.TYPE_5__* %30, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %32 = load %struct.omap_mcbsp_st_data*, %struct.omap_mcbsp_st_data** %5, align 8
  %33 = getelementptr inbounds %struct.omap_mcbsp_st_data, %struct.omap_mcbsp_st_data* %32, i32 0, i32 1
  store i32* %31, i32** %33, align 8
  %34 = load %struct.omap_mcbsp_st_data*, %struct.omap_mcbsp_st_data** %5, align 8
  %35 = getelementptr inbounds %struct.omap_mcbsp_st_data, %struct.omap_mcbsp_st_data* %34, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  %37 = call i64 @IS_ERR(i32* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %46

39:                                               ; preds = %27
  %40 = load %struct.omap_mcbsp*, %struct.omap_mcbsp** %4, align 8
  %41 = getelementptr inbounds %struct.omap_mcbsp, %struct.omap_mcbsp* %40, i32 0, i32 1
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %41, align 8
  %43 = call i32 @dev_warn(%struct.TYPE_5__* %42, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0))
  %44 = load %struct.omap_mcbsp_st_data*, %struct.omap_mcbsp_st_data** %5, align 8
  %45 = getelementptr inbounds %struct.omap_mcbsp_st_data, %struct.omap_mcbsp_st_data* %44, i32 0, i32 1
  store i32* null, i32** %45, align 8
  br label %46

46:                                               ; preds = %39, %27
  %47 = load %struct.omap_mcbsp*, %struct.omap_mcbsp** %4, align 8
  %48 = getelementptr inbounds %struct.omap_mcbsp, %struct.omap_mcbsp* %47, i32 0, i32 1
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %48, align 8
  %50 = load %struct.resource*, %struct.resource** %6, align 8
  %51 = getelementptr inbounds %struct.resource, %struct.resource* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.resource*, %struct.resource** %6, align 8
  %54 = call i32 @resource_size(%struct.resource* %53)
  %55 = call i32 @devm_ioremap(%struct.TYPE_5__* %49, i32 %52, i32 %54)
  %56 = load %struct.omap_mcbsp_st_data*, %struct.omap_mcbsp_st_data** %5, align 8
  %57 = getelementptr inbounds %struct.omap_mcbsp_st_data, %struct.omap_mcbsp_st_data* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 8
  %58 = load %struct.omap_mcbsp_st_data*, %struct.omap_mcbsp_st_data** %5, align 8
  %59 = getelementptr inbounds %struct.omap_mcbsp_st_data, %struct.omap_mcbsp_st_data* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %65, label %62

62:                                               ; preds = %46
  %63 = load i32, i32* @ENOMEM, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %2, align 4
  br label %79

65:                                               ; preds = %46
  %66 = load %struct.omap_mcbsp*, %struct.omap_mcbsp** %4, align 8
  %67 = getelementptr inbounds %struct.omap_mcbsp, %struct.omap_mcbsp* %66, i32 0, i32 1
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 0
  %70 = call i32 @sysfs_create_group(i32* %69, i32* @sidetone_attr_group)
  store i32 %70, i32* %7, align 4
  %71 = load i32, i32* %7, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %65
  %74 = load i32, i32* %7, align 4
  store i32 %74, i32* %2, align 4
  br label %79

75:                                               ; preds = %65
  %76 = load %struct.omap_mcbsp_st_data*, %struct.omap_mcbsp_st_data** %5, align 8
  %77 = load %struct.omap_mcbsp*, %struct.omap_mcbsp** %4, align 8
  %78 = getelementptr inbounds %struct.omap_mcbsp, %struct.omap_mcbsp* %77, i32 0, i32 0
  store %struct.omap_mcbsp_st_data* %76, %struct.omap_mcbsp_st_data** %78, align 8
  store i32 0, i32* %2, align 4
  br label %79

79:                                               ; preds = %75, %73, %62, %24, %15
  %80 = load i32, i32* %2, align 4
  ret i32 %80
}

declare dso_local %struct.omap_mcbsp* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local %struct.resource* @platform_get_resource_byname(%struct.platform_device*, i32, i8*) #1

declare dso_local %struct.omap_mcbsp_st_data* @devm_kzalloc(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32* @clk_get(%struct.TYPE_5__*, i8*) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @dev_warn(%struct.TYPE_5__*, i8*) #1

declare dso_local i32 @devm_ioremap(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @resource_size(%struct.resource*) #1

declare dso_local i32 @sysfs_create_group(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
