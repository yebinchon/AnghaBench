; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/samsung/extr_spdif.c_spdif_remove.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/samsung/extr_spdif.c_spdif_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.samsung_spdif_info = type { i32, i32, i32 }
%struct.platform_device = type { i32 }
%struct.resource = type { i32 }

@spdif_info = common dso_local global %struct.samsung_spdif_info zeroinitializer, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @spdif_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spdif_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.samsung_spdif_info*, align 8
  %4 = alloca %struct.resource*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  store %struct.samsung_spdif_info* @spdif_info, %struct.samsung_spdif_info** %3, align 8
  %5 = load %struct.samsung_spdif_info*, %struct.samsung_spdif_info** %3, align 8
  %6 = getelementptr inbounds %struct.samsung_spdif_info, %struct.samsung_spdif_info* %5, i32 0, i32 2
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @iounmap(i32 %7)
  %9 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %10 = load i32, i32* @IORESOURCE_MEM, align 4
  %11 = call %struct.resource* @platform_get_resource(%struct.platform_device* %9, i32 %10, i32 0)
  store %struct.resource* %11, %struct.resource** %4, align 8
  %12 = load %struct.resource*, %struct.resource** %4, align 8
  %13 = icmp ne %struct.resource* %12, null
  br i1 %13, label %14, label %21

14:                                               ; preds = %1
  %15 = load %struct.resource*, %struct.resource** %4, align 8
  %16 = getelementptr inbounds %struct.resource, %struct.resource* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.resource*, %struct.resource** %4, align 8
  %19 = call i32 @resource_size(%struct.resource* %18)
  %20 = call i32 @release_mem_region(i32 %17, i32 %19)
  br label %21

21:                                               ; preds = %14, %1
  %22 = load %struct.samsung_spdif_info*, %struct.samsung_spdif_info** %3, align 8
  %23 = getelementptr inbounds %struct.samsung_spdif_info, %struct.samsung_spdif_info* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @clk_disable_unprepare(i32 %24)
  %26 = load %struct.samsung_spdif_info*, %struct.samsung_spdif_info** %3, align 8
  %27 = getelementptr inbounds %struct.samsung_spdif_info, %struct.samsung_spdif_info* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @clk_disable_unprepare(i32 %28)
  ret i32 0
}

declare dso_local i32 @iounmap(i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @release_mem_region(i32, i32) #1

declare dso_local i32 @resource_size(%struct.resource*) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
