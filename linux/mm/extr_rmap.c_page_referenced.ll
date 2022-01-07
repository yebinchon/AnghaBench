; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_rmap.c_page_referenced.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_rmap.c_page_referenced.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }
%struct.mem_cgroup = type { i32 }
%struct.page_referenced_arg = type { i64, i32, i32, %struct.mem_cgroup* }
%struct.rmap_walk_control = type { i8*, i32, i32, i32 }

@page_lock_anon_vma_read = common dso_local global i32 0, align 4
@page_referenced_one = common dso_local global i32 0, align 4
@invalid_page_referenced_vma = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @page_referenced(%struct.page* %0, i32 %1, %struct.mem_cgroup* %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.page*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.mem_cgroup*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.page_referenced_arg, align 8
  %12 = alloca %struct.rmap_walk_control, align 8
  store %struct.page* %0, %struct.page** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.mem_cgroup* %2, %struct.mem_cgroup** %8, align 8
  store i64* %3, i64** %9, align 8
  store i32 0, i32* %10, align 4
  %13 = getelementptr inbounds %struct.page_referenced_arg, %struct.page_referenced_arg* %11, i32 0, i32 0
  store i64 0, i64* %13, align 8
  %14 = getelementptr inbounds %struct.page_referenced_arg, %struct.page_referenced_arg* %11, i32 0, i32 1
  store i32 0, i32* %14, align 8
  %15 = getelementptr inbounds %struct.page_referenced_arg, %struct.page_referenced_arg* %11, i32 0, i32 2
  %16 = load %struct.page*, %struct.page** %6, align 8
  %17 = call i32 @total_mapcount(%struct.page* %16)
  store i32 %17, i32* %15, align 4
  %18 = getelementptr inbounds %struct.page_referenced_arg, %struct.page_referenced_arg* %11, i32 0, i32 3
  %19 = load %struct.mem_cgroup*, %struct.mem_cgroup** %8, align 8
  store %struct.mem_cgroup* %19, %struct.mem_cgroup** %18, align 8
  %20 = getelementptr inbounds %struct.rmap_walk_control, %struct.rmap_walk_control* %12, i32 0, i32 0
  %21 = bitcast %struct.page_referenced_arg* %11 to i8*
  store i8* %21, i8** %20, align 8
  %22 = getelementptr inbounds %struct.rmap_walk_control, %struct.rmap_walk_control* %12, i32 0, i32 1
  store i32 0, i32* %22, align 8
  %23 = getelementptr inbounds %struct.rmap_walk_control, %struct.rmap_walk_control* %12, i32 0, i32 2
  %24 = load i32, i32* @page_lock_anon_vma_read, align 4
  store i32 %24, i32* %23, align 4
  %25 = getelementptr inbounds %struct.rmap_walk_control, %struct.rmap_walk_control* %12, i32 0, i32 3
  %26 = load i32, i32* @page_referenced_one, align 4
  store i32 %26, i32* %25, align 8
  %27 = load i64*, i64** %9, align 8
  store i64 0, i64* %27, align 8
  %28 = getelementptr inbounds %struct.page_referenced_arg, %struct.page_referenced_arg* %11, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %75

32:                                               ; preds = %4
  %33 = load %struct.page*, %struct.page** %6, align 8
  %34 = call i32 @page_rmapping(%struct.page* %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %32
  store i32 0, i32* %5, align 4
  br label %75

37:                                               ; preds = %32
  %38 = load i32, i32* %7, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %55, label %40

40:                                               ; preds = %37
  %41 = load %struct.page*, %struct.page** %6, align 8
  %42 = call i32 @PageAnon(%struct.page* %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %40
  %45 = load %struct.page*, %struct.page** %6, align 8
  %46 = call i64 @PageKsm(%struct.page* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %55

48:                                               ; preds = %44, %40
  %49 = load %struct.page*, %struct.page** %6, align 8
  %50 = call i32 @trylock_page(%struct.page* %49)
  store i32 %50, i32* %10, align 4
  %51 = load i32, i32* %10, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %48
  store i32 1, i32* %5, align 4
  br label %75

54:                                               ; preds = %48
  br label %55

55:                                               ; preds = %54, %44, %37
  %56 = load %struct.mem_cgroup*, %struct.mem_cgroup** %8, align 8
  %57 = icmp ne %struct.mem_cgroup* %56, null
  br i1 %57, label %58, label %61

58:                                               ; preds = %55
  %59 = load i32, i32* @invalid_page_referenced_vma, align 4
  %60 = getelementptr inbounds %struct.rmap_walk_control, %struct.rmap_walk_control* %12, i32 0, i32 1
  store i32 %59, i32* %60, align 8
  br label %61

61:                                               ; preds = %58, %55
  %62 = load %struct.page*, %struct.page** %6, align 8
  %63 = call i32 @rmap_walk(%struct.page* %62, %struct.rmap_walk_control* %12)
  %64 = getelementptr inbounds %struct.page_referenced_arg, %struct.page_referenced_arg* %11, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64*, i64** %9, align 8
  store i64 %65, i64* %66, align 8
  %67 = load i32, i32* %10, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %61
  %70 = load %struct.page*, %struct.page** %6, align 8
  %71 = call i32 @unlock_page(%struct.page* %70)
  br label %72

72:                                               ; preds = %69, %61
  %73 = getelementptr inbounds %struct.page_referenced_arg, %struct.page_referenced_arg* %11, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  store i32 %74, i32* %5, align 4
  br label %75

75:                                               ; preds = %72, %53, %36, %31
  %76 = load i32, i32* %5, align 4
  ret i32 %76
}

declare dso_local i32 @total_mapcount(%struct.page*) #1

declare dso_local i32 @page_rmapping(%struct.page*) #1

declare dso_local i32 @PageAnon(%struct.page*) #1

declare dso_local i64 @PageKsm(%struct.page*) #1

declare dso_local i32 @trylock_page(%struct.page*) #1

declare dso_local i32 @rmap_walk(%struct.page*, %struct.rmap_walk_control*) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
