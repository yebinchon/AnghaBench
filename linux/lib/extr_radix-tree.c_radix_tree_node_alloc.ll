; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_radix-tree.c_radix_tree_node_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_radix-tree.c_radix_tree_node_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radix_tree_node = type { i32, i32, i32, i32, %struct.radix_tree_root*, %struct.radix_tree_node* }
%struct.radix_tree_root = type { i32 }
%struct.radix_tree_preload = type { i64, %struct.radix_tree_node* }

@radix_tree_node_cachep = common dso_local global i32 0, align 4
@__GFP_NOWARN = common dso_local global i32 0, align 4
@radix_tree_preloads = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.radix_tree_node* (i32, %struct.radix_tree_node*, %struct.radix_tree_root*, i32, i32, i32, i32)* @radix_tree_node_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.radix_tree_node* @radix_tree_node_alloc(i32 %0, %struct.radix_tree_node* %1, %struct.radix_tree_root* %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.radix_tree_node*, align 8
  %10 = alloca %struct.radix_tree_root*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.radix_tree_node*, align 8
  %16 = alloca %struct.radix_tree_preload*, align 8
  store i32 %0, i32* %8, align 4
  store %struct.radix_tree_node* %1, %struct.radix_tree_node** %9, align 8
  store %struct.radix_tree_root* %2, %struct.radix_tree_root** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  store %struct.radix_tree_node* null, %struct.radix_tree_node** %15, align 8
  %17 = load i32, i32* %8, align 4
  %18 = call i32 @gfpflags_allow_blocking(i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %54, label %20

20:                                               ; preds = %7
  %21 = call i32 (...) @in_interrupt()
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %54, label %23

23:                                               ; preds = %20
  %24 = load i32, i32* @radix_tree_node_cachep, align 4
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* @__GFP_NOWARN, align 4
  %27 = or i32 %25, %26
  %28 = call %struct.radix_tree_node* @kmem_cache_alloc(i32 %24, i32 %27)
  store %struct.radix_tree_node* %28, %struct.radix_tree_node** %15, align 8
  %29 = load %struct.radix_tree_node*, %struct.radix_tree_node** %15, align 8
  %30 = icmp ne %struct.radix_tree_node* %29, null
  br i1 %30, label %31, label %32

31:                                               ; preds = %23
  br label %58

32:                                               ; preds = %23
  %33 = call %struct.radix_tree_preload* @this_cpu_ptr(i32* @radix_tree_preloads)
  store %struct.radix_tree_preload* %33, %struct.radix_tree_preload** %16, align 8
  %34 = load %struct.radix_tree_preload*, %struct.radix_tree_preload** %16, align 8
  %35 = getelementptr inbounds %struct.radix_tree_preload, %struct.radix_tree_preload* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %51

38:                                               ; preds = %32
  %39 = load %struct.radix_tree_preload*, %struct.radix_tree_preload** %16, align 8
  %40 = getelementptr inbounds %struct.radix_tree_preload, %struct.radix_tree_preload* %39, i32 0, i32 1
  %41 = load %struct.radix_tree_node*, %struct.radix_tree_node** %40, align 8
  store %struct.radix_tree_node* %41, %struct.radix_tree_node** %15, align 8
  %42 = load %struct.radix_tree_node*, %struct.radix_tree_node** %15, align 8
  %43 = getelementptr inbounds %struct.radix_tree_node, %struct.radix_tree_node* %42, i32 0, i32 5
  %44 = load %struct.radix_tree_node*, %struct.radix_tree_node** %43, align 8
  %45 = load %struct.radix_tree_preload*, %struct.radix_tree_preload** %16, align 8
  %46 = getelementptr inbounds %struct.radix_tree_preload, %struct.radix_tree_preload* %45, i32 0, i32 1
  store %struct.radix_tree_node* %44, %struct.radix_tree_node** %46, align 8
  %47 = load %struct.radix_tree_preload*, %struct.radix_tree_preload** %16, align 8
  %48 = getelementptr inbounds %struct.radix_tree_preload, %struct.radix_tree_preload* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = add nsw i64 %49, -1
  store i64 %50, i64* %48, align 8
  br label %51

51:                                               ; preds = %38, %32
  %52 = load %struct.radix_tree_node*, %struct.radix_tree_node** %15, align 8
  %53 = call i32 @kmemleak_update_trace(%struct.radix_tree_node* %52)
  br label %58

54:                                               ; preds = %20, %7
  %55 = load i32, i32* @radix_tree_node_cachep, align 4
  %56 = load i32, i32* %8, align 4
  %57 = call %struct.radix_tree_node* @kmem_cache_alloc(i32 %55, i32 %56)
  store %struct.radix_tree_node* %57, %struct.radix_tree_node** %15, align 8
  br label %58

58:                                               ; preds = %54, %51, %31
  %59 = load %struct.radix_tree_node*, %struct.radix_tree_node** %15, align 8
  %60 = call i32 @radix_tree_is_internal_node(%struct.radix_tree_node* %59)
  %61 = call i32 @BUG_ON(i32 %60)
  %62 = load %struct.radix_tree_node*, %struct.radix_tree_node** %15, align 8
  %63 = icmp ne %struct.radix_tree_node* %62, null
  br i1 %63, label %64, label %83

64:                                               ; preds = %58
  %65 = load i32, i32* %11, align 4
  %66 = load %struct.radix_tree_node*, %struct.radix_tree_node** %15, align 8
  %67 = getelementptr inbounds %struct.radix_tree_node, %struct.radix_tree_node* %66, i32 0, i32 0
  store i32 %65, i32* %67, align 8
  %68 = load i32, i32* %12, align 4
  %69 = load %struct.radix_tree_node*, %struct.radix_tree_node** %15, align 8
  %70 = getelementptr inbounds %struct.radix_tree_node, %struct.radix_tree_node* %69, i32 0, i32 1
  store i32 %68, i32* %70, align 4
  %71 = load i32, i32* %13, align 4
  %72 = load %struct.radix_tree_node*, %struct.radix_tree_node** %15, align 8
  %73 = getelementptr inbounds %struct.radix_tree_node, %struct.radix_tree_node* %72, i32 0, i32 2
  store i32 %71, i32* %73, align 8
  %74 = load i32, i32* %14, align 4
  %75 = load %struct.radix_tree_node*, %struct.radix_tree_node** %15, align 8
  %76 = getelementptr inbounds %struct.radix_tree_node, %struct.radix_tree_node* %75, i32 0, i32 3
  store i32 %74, i32* %76, align 4
  %77 = load %struct.radix_tree_node*, %struct.radix_tree_node** %9, align 8
  %78 = load %struct.radix_tree_node*, %struct.radix_tree_node** %15, align 8
  %79 = getelementptr inbounds %struct.radix_tree_node, %struct.radix_tree_node* %78, i32 0, i32 5
  store %struct.radix_tree_node* %77, %struct.radix_tree_node** %79, align 8
  %80 = load %struct.radix_tree_root*, %struct.radix_tree_root** %10, align 8
  %81 = load %struct.radix_tree_node*, %struct.radix_tree_node** %15, align 8
  %82 = getelementptr inbounds %struct.radix_tree_node, %struct.radix_tree_node* %81, i32 0, i32 4
  store %struct.radix_tree_root* %80, %struct.radix_tree_root** %82, align 8
  br label %83

83:                                               ; preds = %64, %58
  %84 = load %struct.radix_tree_node*, %struct.radix_tree_node** %15, align 8
  ret %struct.radix_tree_node* %84
}

declare dso_local i32 @gfpflags_allow_blocking(i32) #1

declare dso_local i32 @in_interrupt(...) #1

declare dso_local %struct.radix_tree_node* @kmem_cache_alloc(i32, i32) #1

declare dso_local %struct.radix_tree_preload* @this_cpu_ptr(i32*) #1

declare dso_local i32 @kmemleak_update_trace(%struct.radix_tree_node*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @radix_tree_is_internal_node(%struct.radix_tree_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
