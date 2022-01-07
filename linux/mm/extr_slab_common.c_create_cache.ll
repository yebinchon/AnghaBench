; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_slab_common.c_create_cache.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_slab_common.c_create_cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_cgroup = type { i32 }
%struct.kmem_cache = type { i8*, i32, i32, i32, void (i8*)*, i32, i32, i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@kmem_cache = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@slab_caches = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.kmem_cache* (i8*, i32, i32, i32, i32, i32, void (i8*)*, %struct.mem_cgroup*, %struct.kmem_cache*)* @create_cache to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.kmem_cache* @create_cache(i8* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, void (i8*)* %6, %struct.mem_cgroup* %7, %struct.kmem_cache* %8) #0 {
  %10 = alloca %struct.kmem_cache*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca void (i8*)*, align 8
  %18 = alloca %struct.mem_cgroup*, align 8
  %19 = alloca %struct.kmem_cache*, align 8
  %20 = alloca %struct.kmem_cache*, align 8
  %21 = alloca i32, align 4
  store i8* %0, i8** %11, align 8
  store i32 %1, i32* %12, align 4
  store i32 %2, i32* %13, align 4
  store i32 %3, i32* %14, align 4
  store i32 %4, i32* %15, align 4
  store i32 %5, i32* %16, align 4
  store void (i8*)* %6, void (i8*)** %17, align 8
  store %struct.mem_cgroup* %7, %struct.mem_cgroup** %18, align 8
  store %struct.kmem_cache* %8, %struct.kmem_cache** %19, align 8
  %22 = load i32, i32* %15, align 4
  %23 = load i32, i32* %16, align 4
  %24 = add i32 %22, %23
  %25 = load i32, i32* %12, align 4
  %26 = icmp ugt i32 %24, %25
  %27 = zext i1 %26 to i32
  %28 = call i64 @WARN_ON(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %9
  store i32 0, i32* %16, align 4
  store i32 0, i32* %15, align 4
  br label %31

31:                                               ; preds = %30, %9
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %21, align 4
  %34 = load i32, i32* @kmem_cache, align 4
  %35 = load i32, i32* @GFP_KERNEL, align 4
  %36 = call %struct.kmem_cache* @kmem_cache_zalloc(i32 %34, i32 %35)
  store %struct.kmem_cache* %36, %struct.kmem_cache** %20, align 8
  %37 = load %struct.kmem_cache*, %struct.kmem_cache** %20, align 8
  %38 = icmp ne %struct.kmem_cache* %37, null
  br i1 %38, label %40, label %39

39:                                               ; preds = %31
  br label %83

40:                                               ; preds = %31
  %41 = load i8*, i8** %11, align 8
  %42 = load %struct.kmem_cache*, %struct.kmem_cache** %20, align 8
  %43 = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %42, i32 0, i32 0
  store i8* %41, i8** %43, align 8
  %44 = load i32, i32* %12, align 4
  %45 = load %struct.kmem_cache*, %struct.kmem_cache** %20, align 8
  %46 = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %45, i32 0, i32 2
  store i32 %44, i32* %46, align 4
  %47 = load %struct.kmem_cache*, %struct.kmem_cache** %20, align 8
  %48 = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %47, i32 0, i32 1
  store i32 %44, i32* %48, align 8
  %49 = load i32, i32* %13, align 4
  %50 = load %struct.kmem_cache*, %struct.kmem_cache** %20, align 8
  %51 = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %50, i32 0, i32 3
  store i32 %49, i32* %51, align 8
  %52 = load void (i8*)*, void (i8*)** %17, align 8
  %53 = load %struct.kmem_cache*, %struct.kmem_cache** %20, align 8
  %54 = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %53, i32 0, i32 4
  store void (i8*)* %52, void (i8*)** %54, align 8
  %55 = load i32, i32* %15, align 4
  %56 = load %struct.kmem_cache*, %struct.kmem_cache** %20, align 8
  %57 = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %56, i32 0, i32 5
  store i32 %55, i32* %57, align 8
  %58 = load i32, i32* %16, align 4
  %59 = load %struct.kmem_cache*, %struct.kmem_cache** %20, align 8
  %60 = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %59, i32 0, i32 6
  store i32 %58, i32* %60, align 4
  %61 = load %struct.kmem_cache*, %struct.kmem_cache** %20, align 8
  %62 = load %struct.kmem_cache*, %struct.kmem_cache** %19, align 8
  %63 = call i32 @init_memcg_params(%struct.kmem_cache* %61, %struct.kmem_cache* %62)
  store i32 %63, i32* %21, align 4
  %64 = load i32, i32* %21, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %40
  br label %91

67:                                               ; preds = %40
  %68 = load %struct.kmem_cache*, %struct.kmem_cache** %20, align 8
  %69 = load i32, i32* %14, align 4
  %70 = call i32 @__kmem_cache_create(%struct.kmem_cache* %68, i32 %69)
  store i32 %70, i32* %21, align 4
  %71 = load i32, i32* %21, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %67
  br label %91

74:                                               ; preds = %67
  %75 = load %struct.kmem_cache*, %struct.kmem_cache** %20, align 8
  %76 = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %75, i32 0, i32 7
  store i32 1, i32* %76, align 8
  %77 = load %struct.kmem_cache*, %struct.kmem_cache** %20, align 8
  %78 = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %77, i32 0, i32 8
  %79 = call i32 @list_add(i32* %78, i32* @slab_caches)
  %80 = load %struct.kmem_cache*, %struct.kmem_cache** %20, align 8
  %81 = load %struct.mem_cgroup*, %struct.mem_cgroup** %18, align 8
  %82 = call i32 @memcg_link_cache(%struct.kmem_cache* %80, %struct.mem_cgroup* %81)
  br label %83

83:                                               ; preds = %91, %74, %39
  %84 = load i32, i32* %21, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %83
  %87 = load i32, i32* %21, align 4
  %88 = call %struct.kmem_cache* @ERR_PTR(i32 %87)
  store %struct.kmem_cache* %88, %struct.kmem_cache** %10, align 8
  br label %97

89:                                               ; preds = %83
  %90 = load %struct.kmem_cache*, %struct.kmem_cache** %20, align 8
  store %struct.kmem_cache* %90, %struct.kmem_cache** %10, align 8
  br label %97

91:                                               ; preds = %73, %66
  %92 = load %struct.kmem_cache*, %struct.kmem_cache** %20, align 8
  %93 = call i32 @destroy_memcg_params(%struct.kmem_cache* %92)
  %94 = load i32, i32* @kmem_cache, align 4
  %95 = load %struct.kmem_cache*, %struct.kmem_cache** %20, align 8
  %96 = call i32 @kmem_cache_free(i32 %94, %struct.kmem_cache* %95)
  br label %83

97:                                               ; preds = %89, %86
  %98 = load %struct.kmem_cache*, %struct.kmem_cache** %10, align 8
  ret %struct.kmem_cache* %98
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local %struct.kmem_cache* @kmem_cache_zalloc(i32, i32) #1

declare dso_local i32 @init_memcg_params(%struct.kmem_cache*, %struct.kmem_cache*) #1

declare dso_local i32 @__kmem_cache_create(%struct.kmem_cache*, i32) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @memcg_link_cache(%struct.kmem_cache*, %struct.mem_cgroup*) #1

declare dso_local %struct.kmem_cache* @ERR_PTR(i32) #1

declare dso_local i32 @destroy_memcg_params(%struct.kmem_cache*) #1

declare dso_local i32 @kmem_cache_free(i32, %struct.kmem_cache*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
