; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_slub.c_early_kmem_cache_node_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_slub.c_early_kmem_cache_node_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, %struct.kmem_cache_node** }
%struct.kmem_cache_node = type { i32 }
%struct.page = type { i32, i32, i64, %struct.kmem_cache_node* }

@kmem_cache_node = common dso_local global %struct.TYPE_8__* null, align 8
@GFP_NOWAIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"SLUB: Unable to allocate memory from node %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [79 x i8] c"SLUB: Allocating a useless per node structure in order to be able to continue\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@DEACTIVATE_TO_HEAD = common dso_local global i32 0, align 4
@SLUB_RED_ACTIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @early_kmem_cache_node_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @early_kmem_cache_node_alloc(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.page*, align 8
  %4 = alloca %struct.kmem_cache_node*, align 8
  store i32 %0, i32* %2, align 4
  %5 = load %struct.TYPE_8__*, %struct.TYPE_8__** @kmem_cache_node, align 8
  %6 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = sext i32 %7 to i64
  %9 = icmp ult i64 %8, 4
  %10 = zext i1 %9 to i32
  %11 = call i32 @BUG_ON(i32 %10)
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** @kmem_cache_node, align 8
  %13 = load i32, i32* @GFP_NOWAIT, align 4
  %14 = load i32, i32* %2, align 4
  %15 = call %struct.page* @new_slab(%struct.TYPE_8__* %12, i32 %13, i32 %14)
  store %struct.page* %15, %struct.page** %3, align 8
  %16 = load %struct.page*, %struct.page** %3, align 8
  %17 = icmp ne %struct.page* %16, null
  %18 = xor i1 %17, true
  %19 = zext i1 %18 to i32
  %20 = call i32 @BUG_ON(i32 %19)
  %21 = load %struct.page*, %struct.page** %3, align 8
  %22 = call i32 @page_to_nid(%struct.page* %21)
  %23 = load i32, i32* %2, align 4
  %24 = icmp ne i32 %22, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %1
  %26 = load i32, i32* %2, align 4
  %27 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %26)
  %28 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.1, i64 0, i64 0))
  br label %29

29:                                               ; preds = %25, %1
  %30 = load %struct.page*, %struct.page** %3, align 8
  %31 = getelementptr inbounds %struct.page, %struct.page* %30, i32 0, i32 3
  %32 = load %struct.kmem_cache_node*, %struct.kmem_cache_node** %31, align 8
  store %struct.kmem_cache_node* %32, %struct.kmem_cache_node** %4, align 8
  %33 = load %struct.kmem_cache_node*, %struct.kmem_cache_node** %4, align 8
  %34 = icmp ne %struct.kmem_cache_node* %33, null
  %35 = xor i1 %34, true
  %36 = zext i1 %35 to i32
  %37 = call i32 @BUG_ON(i32 %36)
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** @kmem_cache_node, align 8
  %39 = load %struct.kmem_cache_node*, %struct.kmem_cache_node** %4, align 8
  %40 = load i32, i32* @GFP_KERNEL, align 4
  %41 = call %struct.kmem_cache_node* @kasan_kmalloc(%struct.TYPE_8__* %38, %struct.kmem_cache_node* %39, i32 4, i32 %40)
  store %struct.kmem_cache_node* %41, %struct.kmem_cache_node** %4, align 8
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** @kmem_cache_node, align 8
  %43 = load %struct.kmem_cache_node*, %struct.kmem_cache_node** %4, align 8
  %44 = call %struct.kmem_cache_node* @get_freepointer(%struct.TYPE_8__* %42, %struct.kmem_cache_node* %43)
  %45 = load %struct.page*, %struct.page** %3, align 8
  %46 = getelementptr inbounds %struct.page, %struct.page* %45, i32 0, i32 3
  store %struct.kmem_cache_node* %44, %struct.kmem_cache_node** %46, align 8
  %47 = load %struct.page*, %struct.page** %3, align 8
  %48 = getelementptr inbounds %struct.page, %struct.page* %47, i32 0, i32 0
  store i32 1, i32* %48, align 8
  %49 = load %struct.page*, %struct.page** %3, align 8
  %50 = getelementptr inbounds %struct.page, %struct.page* %49, i32 0, i32 2
  store i64 0, i64* %50, align 8
  %51 = load %struct.kmem_cache_node*, %struct.kmem_cache_node** %4, align 8
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** @kmem_cache_node, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 1
  %54 = load %struct.kmem_cache_node**, %struct.kmem_cache_node*** %53, align 8
  %55 = load i32, i32* %2, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.kmem_cache_node*, %struct.kmem_cache_node** %54, i64 %56
  store %struct.kmem_cache_node* %51, %struct.kmem_cache_node** %57, align 8
  %58 = load %struct.kmem_cache_node*, %struct.kmem_cache_node** %4, align 8
  %59 = call i32 @init_kmem_cache_node(%struct.kmem_cache_node* %58)
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** @kmem_cache_node, align 8
  %61 = load i32, i32* %2, align 4
  %62 = load %struct.page*, %struct.page** %3, align 8
  %63 = getelementptr inbounds %struct.page, %struct.page* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @inc_slabs_node(%struct.TYPE_8__* %60, i32 %61, i32 %64)
  %66 = load %struct.kmem_cache_node*, %struct.kmem_cache_node** %4, align 8
  %67 = load %struct.page*, %struct.page** %3, align 8
  %68 = load i32, i32* @DEACTIVATE_TO_HEAD, align 4
  %69 = call i32 @__add_partial(%struct.kmem_cache_node* %66, %struct.page* %67, i32 %68)
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local %struct.page* @new_slab(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @page_to_nid(%struct.page*) #1

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local %struct.kmem_cache_node* @kasan_kmalloc(%struct.TYPE_8__*, %struct.kmem_cache_node*, i32, i32) #1

declare dso_local %struct.kmem_cache_node* @get_freepointer(%struct.TYPE_8__*, %struct.kmem_cache_node*) #1

declare dso_local i32 @init_kmem_cache_node(%struct.kmem_cache_node*) #1

declare dso_local i32 @inc_slabs_node(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @__add_partial(%struct.kmem_cache_node*, %struct.page*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
