; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/radix-tree/extr_linux.c_kmem_cache_free.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/radix-tree/extr_linux.c_kmem_cache_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kmem_cache = type { i32, i32, %struct.radix_tree_node*, i32 }
%struct.radix_tree_node = type { %struct.radix_tree_node* }

@nr_allocated = common dso_local global i32 0, align 4
@kmalloc_verbose = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [20 x i8] c"Freeing %p to slab\0A\00", align 1
@POISON_FREE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kmem_cache_free(%struct.kmem_cache* %0, i8* %1) #0 {
  %3 = alloca %struct.kmem_cache*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.radix_tree_node*, align 8
  store %struct.kmem_cache* %0, %struct.kmem_cache** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = call i32 @assert(i8* %6)
  %8 = call i32 @uatomic_dec(i32* @nr_allocated)
  %9 = load i64, i64* @kmalloc_verbose, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load i8*, i8** %4, align 8
  %13 = call i32 @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i8* %12)
  br label %14

14:                                               ; preds = %11, %2
  %15 = load %struct.kmem_cache*, %struct.kmem_cache** %3, align 8
  %16 = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %15, i32 0, i32 1
  %17 = call i32 @pthread_mutex_lock(i32* %16)
  %18 = load %struct.kmem_cache*, %struct.kmem_cache** %3, align 8
  %19 = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp sgt i32 %20, 10
  br i1 %21, label %22, label %31

22:                                               ; preds = %14
  %23 = load i8*, i8** %4, align 8
  %24 = load i32, i32* @POISON_FREE, align 4
  %25 = load %struct.kmem_cache*, %struct.kmem_cache** %3, align 8
  %26 = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @memset(i8* %23, i32 %24, i32 %27)
  %29 = load i8*, i8** %4, align 8
  %30 = call i32 @free(i8* %29)
  br label %46

31:                                               ; preds = %14
  %32 = load i8*, i8** %4, align 8
  %33 = bitcast i8* %32 to %struct.radix_tree_node*
  store %struct.radix_tree_node* %33, %struct.radix_tree_node** %5, align 8
  %34 = load %struct.kmem_cache*, %struct.kmem_cache** %3, align 8
  %35 = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %35, align 8
  %38 = load %struct.kmem_cache*, %struct.kmem_cache** %3, align 8
  %39 = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %38, i32 0, i32 2
  %40 = load %struct.radix_tree_node*, %struct.radix_tree_node** %39, align 8
  %41 = load %struct.radix_tree_node*, %struct.radix_tree_node** %5, align 8
  %42 = getelementptr inbounds %struct.radix_tree_node, %struct.radix_tree_node* %41, i32 0, i32 0
  store %struct.radix_tree_node* %40, %struct.radix_tree_node** %42, align 8
  %43 = load %struct.radix_tree_node*, %struct.radix_tree_node** %5, align 8
  %44 = load %struct.kmem_cache*, %struct.kmem_cache** %3, align 8
  %45 = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %44, i32 0, i32 2
  store %struct.radix_tree_node* %43, %struct.radix_tree_node** %45, align 8
  br label %46

46:                                               ; preds = %31, %22
  %47 = load %struct.kmem_cache*, %struct.kmem_cache** %3, align 8
  %48 = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %47, i32 0, i32 1
  %49 = call i32 @pthread_mutex_unlock(i32* %48)
  ret void
}

declare dso_local i32 @assert(i8*) #1

declare dso_local i32 @uatomic_dec(i32*) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
