; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_vmalloc.c_vb_free.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_vmalloc.c_vb_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmap_block = type { i64, i32, i32, i32, i32 }

@PAGE_SIZE = common dso_local global i64 0, align 8
@VMAP_MAX_ALLOC = common dso_local global i64 0, align 8
@VMAP_BLOCK_SIZE = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i64 0, align 8
@vmap_block_tree = common dso_local global i32 0, align 4
@VMAP_BBMAP_BITS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i64)* @vb_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vb_free(i8* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.vmap_block*, align 8
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  %9 = load i64, i64* %4, align 8
  %10 = call i32 @offset_in_page(i64 %9)
  %11 = call i32 @BUG_ON(i32 %10)
  %12 = load i64, i64* %4, align 8
  %13 = load i64, i64* @PAGE_SIZE, align 8
  %14 = load i64, i64* @VMAP_MAX_ALLOC, align 8
  %15 = mul i64 %13, %14
  %16 = icmp ugt i64 %12, %15
  %17 = zext i1 %16 to i32
  %18 = call i32 @BUG_ON(i32 %17)
  %19 = load i8*, i8** %3, align 8
  %20 = ptrtoint i8* %19 to i64
  %21 = load i8*, i8** %3, align 8
  %22 = ptrtoint i8* %21 to i64
  %23 = load i64, i64* %4, align 8
  %24 = add i64 %22, %23
  %25 = call i32 @flush_cache_vunmap(i64 %20, i64 %24)
  %26 = load i64, i64* %4, align 8
  %27 = call i32 @get_order(i64 %26)
  store i32 %27, i32* %7, align 4
  %28 = load i8*, i8** %3, align 8
  %29 = ptrtoint i8* %28 to i64
  %30 = load i32, i32* @VMAP_BLOCK_SIZE, align 4
  %31 = sub nsw i32 %30, 1
  %32 = sext i32 %31 to i64
  %33 = and i64 %29, %32
  store i64 %33, i64* %5, align 8
  %34 = load i64, i64* @PAGE_SHIFT, align 8
  %35 = load i64, i64* %5, align 8
  %36 = lshr i64 %35, %34
  store i64 %36, i64* %5, align 8
  %37 = load i8*, i8** %3, align 8
  %38 = ptrtoint i8* %37 to i64
  %39 = call i64 @addr_to_vb_idx(i64 %38)
  store i64 %39, i64* %6, align 8
  %40 = call i32 (...) @rcu_read_lock()
  %41 = load i64, i64* %6, align 8
  %42 = call %struct.vmap_block* @radix_tree_lookup(i32* @vmap_block_tree, i64 %41)
  store %struct.vmap_block* %42, %struct.vmap_block** %8, align 8
  %43 = call i32 (...) @rcu_read_unlock()
  %44 = load %struct.vmap_block*, %struct.vmap_block** %8, align 8
  %45 = icmp ne %struct.vmap_block* %44, null
  %46 = xor i1 %45, true
  %47 = zext i1 %46 to i32
  %48 = call i32 @BUG_ON(i32 %47)
  %49 = load i8*, i8** %3, align 8
  %50 = ptrtoint i8* %49 to i64
  %51 = load i8*, i8** %3, align 8
  %52 = ptrtoint i8* %51 to i64
  %53 = load i64, i64* %4, align 8
  %54 = add i64 %52, %53
  %55 = call i32 @vunmap_page_range(i64 %50, i64 %54)
  %56 = call i64 (...) @debug_pagealloc_enabled()
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %66

58:                                               ; preds = %2
  %59 = load i8*, i8** %3, align 8
  %60 = ptrtoint i8* %59 to i64
  %61 = load i8*, i8** %3, align 8
  %62 = ptrtoint i8* %61 to i64
  %63 = load i64, i64* %4, align 8
  %64 = add i64 %62, %63
  %65 = call i32 @flush_tlb_kernel_range(i64 %60, i64 %64)
  br label %66

66:                                               ; preds = %58, %2
  %67 = load %struct.vmap_block*, %struct.vmap_block** %8, align 8
  %68 = getelementptr inbounds %struct.vmap_block, %struct.vmap_block* %67, i32 0, i32 2
  %69 = call i32 @spin_lock(i32* %68)
  %70 = load %struct.vmap_block*, %struct.vmap_block** %8, align 8
  %71 = getelementptr inbounds %struct.vmap_block, %struct.vmap_block* %70, i32 0, i32 4
  %72 = load i32, i32* %71, align 4
  %73 = load i64, i64* %5, align 8
  %74 = call i32 @min(i32 %72, i64 %73)
  %75 = load %struct.vmap_block*, %struct.vmap_block** %8, align 8
  %76 = getelementptr inbounds %struct.vmap_block, %struct.vmap_block* %75, i32 0, i32 4
  store i32 %74, i32* %76, align 4
  %77 = load %struct.vmap_block*, %struct.vmap_block** %8, align 8
  %78 = getelementptr inbounds %struct.vmap_block, %struct.vmap_block* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 8
  %80 = load i64, i64* %5, align 8
  %81 = load i32, i32* %7, align 4
  %82 = zext i32 %81 to i64
  %83 = shl i64 1, %82
  %84 = add i64 %80, %83
  %85 = call i32 @max(i32 %79, i64 %84)
  %86 = load %struct.vmap_block*, %struct.vmap_block** %8, align 8
  %87 = getelementptr inbounds %struct.vmap_block, %struct.vmap_block* %86, i32 0, i32 3
  store i32 %85, i32* %87, align 8
  %88 = load i32, i32* %7, align 4
  %89 = zext i32 %88 to i64
  %90 = shl i64 1, %89
  %91 = load %struct.vmap_block*, %struct.vmap_block** %8, align 8
  %92 = getelementptr inbounds %struct.vmap_block, %struct.vmap_block* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = add i64 %93, %90
  store i64 %94, i64* %92, align 8
  %95 = load %struct.vmap_block*, %struct.vmap_block** %8, align 8
  %96 = getelementptr inbounds %struct.vmap_block, %struct.vmap_block* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @VMAP_BBMAP_BITS, align 8
  %99 = icmp eq i64 %97, %98
  br i1 %99, label %100, label %110

100:                                              ; preds = %66
  %101 = load %struct.vmap_block*, %struct.vmap_block** %8, align 8
  %102 = getelementptr inbounds %struct.vmap_block, %struct.vmap_block* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 8
  %104 = call i32 @BUG_ON(i32 %103)
  %105 = load %struct.vmap_block*, %struct.vmap_block** %8, align 8
  %106 = getelementptr inbounds %struct.vmap_block, %struct.vmap_block* %105, i32 0, i32 2
  %107 = call i32 @spin_unlock(i32* %106)
  %108 = load %struct.vmap_block*, %struct.vmap_block** %8, align 8
  %109 = call i32 @free_vmap_block(%struct.vmap_block* %108)
  br label %114

110:                                              ; preds = %66
  %111 = load %struct.vmap_block*, %struct.vmap_block** %8, align 8
  %112 = getelementptr inbounds %struct.vmap_block, %struct.vmap_block* %111, i32 0, i32 2
  %113 = call i32 @spin_unlock(i32* %112)
  br label %114

114:                                              ; preds = %110, %100
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @offset_in_page(i64) #1

declare dso_local i32 @flush_cache_vunmap(i64, i64) #1

declare dso_local i32 @get_order(i64) #1

declare dso_local i64 @addr_to_vb_idx(i64) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.vmap_block* @radix_tree_lookup(i32*, i64) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @vunmap_page_range(i64, i64) #1

declare dso_local i64 @debug_pagealloc_enabled(...) #1

declare dso_local i32 @flush_tlb_kernel_range(i64, i64) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @min(i32, i64) #1

declare dso_local i32 @max(i32, i64) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @free_vmap_block(%struct.vmap_block*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
