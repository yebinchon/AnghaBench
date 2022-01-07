; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_buffer.c_alloc_page_buffers.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_buffer.c_alloc_page_buffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buffer_head = type { i32, i64, %struct.buffer_head* }
%struct.page = type { i32 }
%struct.mem_cgroup = type { i32 }

@GFP_NOFS = common dso_local global i32 0, align 4
@__GFP_ACCOUNT = common dso_local global i32 0, align 4
@__GFP_NOFAIL = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.buffer_head* @alloc_page_buffers(%struct.page* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.page*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.buffer_head*, align 8
  %8 = alloca %struct.buffer_head*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.mem_cgroup*, align 8
  store %struct.page* %0, %struct.page** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load i32, i32* @GFP_NOFS, align 4
  %13 = load i32, i32* @__GFP_ACCOUNT, align 4
  %14 = or i32 %12, %13
  store i32 %14, i32* %9, align 4
  %15 = load i32, i32* %6, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %3
  %18 = load i32, i32* @__GFP_NOFAIL, align 4
  %19 = load i32, i32* %9, align 4
  %20 = or i32 %19, %18
  store i32 %20, i32* %9, align 4
  br label %21

21:                                               ; preds = %17, %3
  %22 = load %struct.page*, %struct.page** %4, align 8
  %23 = call %struct.mem_cgroup* @get_mem_cgroup_from_page(%struct.page* %22)
  store %struct.mem_cgroup* %23, %struct.mem_cgroup** %11, align 8
  %24 = load %struct.mem_cgroup*, %struct.mem_cgroup** %11, align 8
  %25 = call i32 @memalloc_use_memcg(%struct.mem_cgroup* %24)
  store %struct.buffer_head* null, %struct.buffer_head** %8, align 8
  %26 = load i64, i64* @PAGE_SIZE, align 8
  store i64 %26, i64* %10, align 8
  br label %27

27:                                               ; preds = %38, %21
  %28 = load i64, i64* %5, align 8
  %29 = load i64, i64* %10, align 8
  %30 = sub i64 %29, %28
  store i64 %30, i64* %10, align 8
  %31 = icmp sge i64 %30, 0
  br i1 %31, label %32, label %52

32:                                               ; preds = %27
  %33 = load i32, i32* %9, align 4
  %34 = call %struct.buffer_head* @alloc_buffer_head(i32 %33)
  store %struct.buffer_head* %34, %struct.buffer_head** %7, align 8
  %35 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %36 = icmp ne %struct.buffer_head* %35, null
  br i1 %36, label %38, label %37

37:                                               ; preds = %32
  br label %58

38:                                               ; preds = %32
  %39 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %40 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %41 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %40, i32 0, i32 2
  store %struct.buffer_head* %39, %struct.buffer_head** %41, align 8
  %42 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %43 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %42, i32 0, i32 0
  store i32 -1, i32* %43, align 8
  %44 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  store %struct.buffer_head* %44, %struct.buffer_head** %8, align 8
  %45 = load i64, i64* %5, align 8
  %46 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %47 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %46, i32 0, i32 1
  store i64 %45, i64* %47, align 8
  %48 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %49 = load %struct.page*, %struct.page** %4, align 8
  %50 = load i64, i64* %10, align 8
  %51 = call i32 @set_bh_page(%struct.buffer_head* %48, %struct.page* %49, i64 %50)
  br label %27

52:                                               ; preds = %27
  br label %53

53:                                               ; preds = %73, %52
  %54 = call i32 (...) @memalloc_unuse_memcg()
  %55 = load %struct.mem_cgroup*, %struct.mem_cgroup** %11, align 8
  %56 = call i32 @mem_cgroup_put(%struct.mem_cgroup* %55)
  %57 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  ret %struct.buffer_head* %57

58:                                               ; preds = %37
  %59 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %60 = icmp ne %struct.buffer_head* %59, null
  br i1 %60, label %61, label %73

61:                                               ; preds = %58
  br label %62

62:                                               ; preds = %69, %61
  %63 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  store %struct.buffer_head* %63, %struct.buffer_head** %7, align 8
  %64 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %65 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %64, i32 0, i32 2
  %66 = load %struct.buffer_head*, %struct.buffer_head** %65, align 8
  store %struct.buffer_head* %66, %struct.buffer_head** %8, align 8
  %67 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %68 = call i32 @free_buffer_head(%struct.buffer_head* %67)
  br label %69

69:                                               ; preds = %62
  %70 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %71 = icmp ne %struct.buffer_head* %70, null
  br i1 %71, label %62, label %72

72:                                               ; preds = %69
  br label %73

73:                                               ; preds = %72, %58
  br label %53
}

declare dso_local %struct.mem_cgroup* @get_mem_cgroup_from_page(%struct.page*) #1

declare dso_local i32 @memalloc_use_memcg(%struct.mem_cgroup*) #1

declare dso_local %struct.buffer_head* @alloc_buffer_head(i32) #1

declare dso_local i32 @set_bh_page(%struct.buffer_head*, %struct.page*, i64) #1

declare dso_local i32 @memalloc_unuse_memcg(...) #1

declare dso_local i32 @mem_cgroup_put(%struct.mem_cgroup*) #1

declare dso_local i32 @free_buffer_head(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
