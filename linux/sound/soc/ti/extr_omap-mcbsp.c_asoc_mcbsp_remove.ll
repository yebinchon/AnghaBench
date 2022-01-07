; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/ti/extr_omap-mcbsp.c_asoc_mcbsp_remove.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/ti/extr_omap-mcbsp.c_asoc_mcbsp_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.omap_mcbsp = type { i32, %struct.TYPE_4__*, %struct.TYPE_5__*, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { i64, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 (i32)* }

@additional_attr_group = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @asoc_mcbsp_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @asoc_mcbsp_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.omap_mcbsp*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %4 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %5 = call %struct.omap_mcbsp* @platform_get_drvdata(%struct.platform_device* %4)
  store %struct.omap_mcbsp* %5, %struct.omap_mcbsp** %3, align 8
  %6 = load %struct.omap_mcbsp*, %struct.omap_mcbsp** %3, align 8
  %7 = getelementptr inbounds %struct.omap_mcbsp, %struct.omap_mcbsp* %6, i32 0, i32 2
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 1
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %11 = icmp ne %struct.TYPE_6__* %10, null
  br i1 %11, label %12, label %33

12:                                               ; preds = %1
  %13 = load %struct.omap_mcbsp*, %struct.omap_mcbsp** %3, align 8
  %14 = getelementptr inbounds %struct.omap_mcbsp, %struct.omap_mcbsp* %13, i32 0, i32 2
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 1
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load i32 (i32)*, i32 (i32)** %18, align 8
  %20 = icmp ne i32 (i32)* %19, null
  br i1 %20, label %21, label %33

21:                                               ; preds = %12
  %22 = load %struct.omap_mcbsp*, %struct.omap_mcbsp** %3, align 8
  %23 = getelementptr inbounds %struct.omap_mcbsp, %struct.omap_mcbsp* %22, i32 0, i32 2
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 1
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i32 (i32)*, i32 (i32)** %27, align 8
  %29 = load %struct.omap_mcbsp*, %struct.omap_mcbsp** %3, align 8
  %30 = getelementptr inbounds %struct.omap_mcbsp, %struct.omap_mcbsp* %29, i32 0, i32 4
  %31 = load i32, i32* %30, align 4
  %32 = call i32 %28(i32 %31)
  br label %33

33:                                               ; preds = %21, %12, %1
  %34 = load %struct.omap_mcbsp*, %struct.omap_mcbsp** %3, align 8
  %35 = getelementptr inbounds %struct.omap_mcbsp, %struct.omap_mcbsp* %34, i32 0, i32 3
  %36 = call i64 @pm_qos_request_active(i32* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %33
  %39 = load %struct.omap_mcbsp*, %struct.omap_mcbsp** %3, align 8
  %40 = getelementptr inbounds %struct.omap_mcbsp, %struct.omap_mcbsp* %39, i32 0, i32 3
  %41 = call i32 @pm_qos_remove_request(i32* %40)
  br label %42

42:                                               ; preds = %38, %33
  %43 = load %struct.omap_mcbsp*, %struct.omap_mcbsp** %3, align 8
  %44 = getelementptr inbounds %struct.omap_mcbsp, %struct.omap_mcbsp* %43, i32 0, i32 2
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %42
  %50 = load %struct.omap_mcbsp*, %struct.omap_mcbsp** %3, align 8
  %51 = getelementptr inbounds %struct.omap_mcbsp, %struct.omap_mcbsp* %50, i32 0, i32 1
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = call i32 @sysfs_remove_group(i32* %53, i32* @additional_attr_group)
  br label %55

55:                                               ; preds = %49, %42
  %56 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %57 = call i32 @omap_mcbsp_st_cleanup(%struct.platform_device* %56)
  %58 = load %struct.omap_mcbsp*, %struct.omap_mcbsp** %3, align 8
  %59 = getelementptr inbounds %struct.omap_mcbsp, %struct.omap_mcbsp* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @clk_put(i32 %60)
  ret i32 0
}

declare dso_local %struct.omap_mcbsp* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i64 @pm_qos_request_active(i32*) #1

declare dso_local i32 @pm_qos_remove_request(i32*) #1

declare dso_local i32 @sysfs_remove_group(i32*, i32*) #1

declare dso_local i32 @omap_mcbsp_st_cleanup(%struct.platform_device*) #1

declare dso_local i32 @clk_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
