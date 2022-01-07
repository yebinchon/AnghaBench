; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_memory_hotplug.c_register_memory_resource.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_memory_hotplug.c_register_memory_resource.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.resource = type { i32 }

@IORESOURCE_SYSTEM_RAM = common dso_local global i64 0, align 8
@IORESOURCE_BUSY = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [11 x i8] c"System RAM\00", align 1
@max_mem_size = common dso_local global i64 0, align 8
@E2BIG = common dso_local global i32 0, align 4
@iomem_resource = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [55 x i8] c"Unable to reserve System RAM region: %016llx->%016llx\0A\00", align 1
@EEXIST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.resource* (i64, i64)* @register_memory_resource to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.resource* @register_memory_resource(i64 %0, i64 %1) #0 {
  %3 = alloca %struct.resource*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.resource*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load i64, i64* @IORESOURCE_SYSTEM_RAM, align 8
  %10 = load i64, i64* @IORESOURCE_BUSY, align 8
  %11 = or i64 %9, %10
  store i64 %11, i64* %7, align 8
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8** %8, align 8
  %12 = load i64, i64* %4, align 8
  %13 = load i64, i64* %5, align 8
  %14 = add nsw i64 %12, %13
  %15 = load i64, i64* @max_mem_size, align 8
  %16 = icmp sgt i64 %14, %15
  br i1 %16, label %17, label %21

17:                                               ; preds = %2
  %18 = load i32, i32* @E2BIG, align 4
  %19 = sub nsw i32 0, %18
  %20 = call %struct.resource* @ERR_PTR(i32 %19)
  store %struct.resource* %20, %struct.resource** %3, align 8
  br label %40

21:                                               ; preds = %2
  %22 = load i64, i64* %4, align 8
  %23 = load i64, i64* %5, align 8
  %24 = load i8*, i8** %8, align 8
  %25 = load i64, i64* %7, align 8
  %26 = call %struct.resource* @__request_region(i32* @iomem_resource, i64 %22, i64 %23, i8* %24, i64 %25)
  store %struct.resource* %26, %struct.resource** %6, align 8
  %27 = load %struct.resource*, %struct.resource** %6, align 8
  %28 = icmp ne %struct.resource* %27, null
  br i1 %28, label %38, label %29

29:                                               ; preds = %21
  %30 = load i64, i64* %4, align 8
  %31 = load i64, i64* %4, align 8
  %32 = load i64, i64* %5, align 8
  %33 = add nsw i64 %31, %32
  %34 = call i32 @pr_debug(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0), i64 %30, i64 %33)
  %35 = load i32, i32* @EEXIST, align 4
  %36 = sub nsw i32 0, %35
  %37 = call %struct.resource* @ERR_PTR(i32 %36)
  store %struct.resource* %37, %struct.resource** %3, align 8
  br label %40

38:                                               ; preds = %21
  %39 = load %struct.resource*, %struct.resource** %6, align 8
  store %struct.resource* %39, %struct.resource** %3, align 8
  br label %40

40:                                               ; preds = %38, %29, %17
  %41 = load %struct.resource*, %struct.resource** %3, align 8
  ret %struct.resource* %41
}

declare dso_local %struct.resource* @ERR_PTR(i32) #1

declare dso_local %struct.resource* @__request_region(i32*, i64, i64, i8*, i64) #1

declare dso_local i32 @pr_debug(i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
