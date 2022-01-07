; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_hugetlb.c_resv_map_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_hugetlb.c_resv_map_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.resv_map = type { i32, i32, i32, i64, i32, i32, i32 }
%struct.file_region = type { i32, i32, i32, i64, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.resv_map* @resv_map_alloc() #0 {
  %1 = alloca %struct.resv_map*, align 8
  %2 = alloca %struct.resv_map*, align 8
  %3 = alloca %struct.file_region*, align 8
  %4 = load i32, i32* @GFP_KERNEL, align 4
  %5 = call %struct.resv_map* @kmalloc(i32 40, i32 %4)
  store %struct.resv_map* %5, %struct.resv_map** %2, align 8
  %6 = load i32, i32* @GFP_KERNEL, align 4
  %7 = call %struct.resv_map* @kmalloc(i32 40, i32 %6)
  %8 = bitcast %struct.resv_map* %7 to %struct.file_region*
  store %struct.file_region* %8, %struct.file_region** %3, align 8
  %9 = load %struct.resv_map*, %struct.resv_map** %2, align 8
  %10 = icmp ne %struct.resv_map* %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %0
  %12 = load %struct.file_region*, %struct.file_region** %3, align 8
  %13 = icmp ne %struct.file_region* %12, null
  br i1 %13, label %20, label %14

14:                                               ; preds = %11, %0
  %15 = load %struct.resv_map*, %struct.resv_map** %2, align 8
  %16 = call i32 @kfree(%struct.resv_map* %15)
  %17 = load %struct.file_region*, %struct.file_region** %3, align 8
  %18 = bitcast %struct.file_region* %17 to %struct.resv_map*
  %19 = call i32 @kfree(%struct.resv_map* %18)
  store %struct.resv_map* null, %struct.resv_map** %1, align 8
  br label %43

20:                                               ; preds = %11
  %21 = load %struct.resv_map*, %struct.resv_map** %2, align 8
  %22 = getelementptr inbounds %struct.resv_map, %struct.resv_map* %21, i32 0, i32 6
  %23 = call i32 @kref_init(i32* %22)
  %24 = load %struct.resv_map*, %struct.resv_map** %2, align 8
  %25 = getelementptr inbounds %struct.resv_map, %struct.resv_map* %24, i32 0, i32 5
  %26 = call i32 @spin_lock_init(i32* %25)
  %27 = load %struct.resv_map*, %struct.resv_map** %2, align 8
  %28 = getelementptr inbounds %struct.resv_map, %struct.resv_map* %27, i32 0, i32 4
  %29 = call i32 @INIT_LIST_HEAD(i32* %28)
  %30 = load %struct.resv_map*, %struct.resv_map** %2, align 8
  %31 = getelementptr inbounds %struct.resv_map, %struct.resv_map* %30, i32 0, i32 3
  store i64 0, i64* %31, align 8
  %32 = load %struct.resv_map*, %struct.resv_map** %2, align 8
  %33 = getelementptr inbounds %struct.resv_map, %struct.resv_map* %32, i32 0, i32 1
  %34 = call i32 @INIT_LIST_HEAD(i32* %33)
  %35 = load %struct.file_region*, %struct.file_region** %3, align 8
  %36 = getelementptr inbounds %struct.file_region, %struct.file_region* %35, i32 0, i32 2
  %37 = load %struct.resv_map*, %struct.resv_map** %2, align 8
  %38 = getelementptr inbounds %struct.resv_map, %struct.resv_map* %37, i32 0, i32 1
  %39 = call i32 @list_add(i32* %36, i32* %38)
  %40 = load %struct.resv_map*, %struct.resv_map** %2, align 8
  %41 = getelementptr inbounds %struct.resv_map, %struct.resv_map* %40, i32 0, i32 0
  store i32 1, i32* %41, align 8
  %42 = load %struct.resv_map*, %struct.resv_map** %2, align 8
  store %struct.resv_map* %42, %struct.resv_map** %1, align 8
  br label %43

43:                                               ; preds = %20, %14
  %44 = load %struct.resv_map*, %struct.resv_map** %1, align 8
  ret %struct.resv_map* %44
}

declare dso_local %struct.resv_map* @kmalloc(i32, i32) #1

declare dso_local i32 @kfree(%struct.resv_map*) #1

declare dso_local i32 @kref_init(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
