; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_zswap.c_zswap_frontswap_load.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_zswap.c_zswap_frontswap_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zswap_tree = type { i32, i32 }
%struct.page = type { i32 }
%struct.zswap_entry = type { i32, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.crypto_comp = type { i32 }

@zswap_trees = common dso_local global %struct.zswap_tree** null, align 8
@PAGE_SIZE = common dso_local global i32 0, align 4
@ZPOOL_MM_RO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, %struct.page*)* @zswap_frontswap_load to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zswap_frontswap_load(i32 %0, i32 %1, %struct.page* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.page*, align 8
  %8 = alloca %struct.zswap_tree*, align 8
  %9 = alloca %struct.zswap_entry*, align 8
  %10 = alloca %struct.crypto_comp*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store %struct.page* %2, %struct.page** %7, align 8
  %15 = load %struct.zswap_tree**, %struct.zswap_tree*** @zswap_trees, align 8
  %16 = load i32, i32* %5, align 4
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds %struct.zswap_tree*, %struct.zswap_tree** %15, i64 %17
  %19 = load %struct.zswap_tree*, %struct.zswap_tree** %18, align 8
  store %struct.zswap_tree* %19, %struct.zswap_tree** %8, align 8
  %20 = load %struct.zswap_tree*, %struct.zswap_tree** %8, align 8
  %21 = getelementptr inbounds %struct.zswap_tree, %struct.zswap_tree* %20, i32 0, i32 0
  %22 = call i32 @spin_lock(i32* %21)
  %23 = load %struct.zswap_tree*, %struct.zswap_tree** %8, align 8
  %24 = getelementptr inbounds %struct.zswap_tree, %struct.zswap_tree* %23, i32 0, i32 1
  %25 = load i32, i32* %6, align 4
  %26 = call %struct.zswap_entry* @zswap_entry_find_get(i32* %24, i32 %25)
  store %struct.zswap_entry* %26, %struct.zswap_entry** %9, align 8
  %27 = load %struct.zswap_entry*, %struct.zswap_entry** %9, align 8
  %28 = icmp ne %struct.zswap_entry* %27, null
  br i1 %28, label %33, label %29

29:                                               ; preds = %3
  %30 = load %struct.zswap_tree*, %struct.zswap_tree** %8, align 8
  %31 = getelementptr inbounds %struct.zswap_tree, %struct.zswap_tree* %30, i32 0, i32 0
  %32 = call i32 @spin_unlock(i32* %31)
  store i32 -1, i32* %4, align 4
  br label %119

33:                                               ; preds = %3
  %34 = load %struct.zswap_tree*, %struct.zswap_tree** %8, align 8
  %35 = getelementptr inbounds %struct.zswap_tree, %struct.zswap_tree* %34, i32 0, i32 0
  %36 = call i32 @spin_unlock(i32* %35)
  %37 = load %struct.zswap_entry*, %struct.zswap_entry** %9, align 8
  %38 = getelementptr inbounds %struct.zswap_entry, %struct.zswap_entry* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %51, label %41

41:                                               ; preds = %33
  %42 = load %struct.page*, %struct.page** %7, align 8
  %43 = call i32* @kmap_atomic(%struct.page* %42)
  store i32* %43, i32** %12, align 8
  %44 = load i32*, i32** %12, align 8
  %45 = load %struct.zswap_entry*, %struct.zswap_entry** %9, align 8
  %46 = getelementptr inbounds %struct.zswap_entry, %struct.zswap_entry* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @zswap_fill_page(i32* %44, i32 %47)
  %49 = load i32*, i32** %12, align 8
  %50 = call i32 @kunmap_atomic(i32* %49)
  br label %109

51:                                               ; preds = %33
  %52 = load i32, i32* @PAGE_SIZE, align 4
  store i32 %52, i32* %13, align 4
  %53 = load %struct.zswap_entry*, %struct.zswap_entry** %9, align 8
  %54 = getelementptr inbounds %struct.zswap_entry, %struct.zswap_entry* %53, i32 0, i32 1
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.zswap_entry*, %struct.zswap_entry** %9, align 8
  %59 = getelementptr inbounds %struct.zswap_entry, %struct.zswap_entry* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @ZPOOL_MM_RO, align 4
  %62 = call i32* @zpool_map_handle(i32 %57, i32 %60, i32 %61)
  store i32* %62, i32** %11, align 8
  %63 = load %struct.zswap_entry*, %struct.zswap_entry** %9, align 8
  %64 = getelementptr inbounds %struct.zswap_entry, %struct.zswap_entry* %63, i32 0, i32 1
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i64 @zpool_evictable(i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %51
  %71 = load i32*, i32** %11, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 4
  store i32* %72, i32** %11, align 8
  br label %73

73:                                               ; preds = %70, %51
  %74 = load %struct.page*, %struct.page** %7, align 8
  %75 = call i32* @kmap_atomic(%struct.page* %74)
  store i32* %75, i32** %12, align 8
  %76 = load %struct.zswap_entry*, %struct.zswap_entry** %9, align 8
  %77 = getelementptr inbounds %struct.zswap_entry, %struct.zswap_entry* %76, i32 0, i32 1
  %78 = load %struct.TYPE_2__*, %struct.TYPE_2__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = call %struct.crypto_comp** @get_cpu_ptr(i32 %80)
  %82 = load %struct.crypto_comp*, %struct.crypto_comp** %81, align 8
  store %struct.crypto_comp* %82, %struct.crypto_comp** %10, align 8
  %83 = load %struct.crypto_comp*, %struct.crypto_comp** %10, align 8
  %84 = load i32*, i32** %11, align 8
  %85 = load %struct.zswap_entry*, %struct.zswap_entry** %9, align 8
  %86 = getelementptr inbounds %struct.zswap_entry, %struct.zswap_entry* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 8
  %88 = load i32*, i32** %12, align 8
  %89 = call i32 @crypto_comp_decompress(%struct.crypto_comp* %83, i32* %84, i32 %87, i32* %88, i32* %13)
  store i32 %89, i32* %14, align 4
  %90 = load %struct.zswap_entry*, %struct.zswap_entry** %9, align 8
  %91 = getelementptr inbounds %struct.zswap_entry, %struct.zswap_entry* %90, i32 0, i32 1
  %92 = load %struct.TYPE_2__*, %struct.TYPE_2__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @put_cpu_ptr(i32 %94)
  %96 = load i32*, i32** %12, align 8
  %97 = call i32 @kunmap_atomic(i32* %96)
  %98 = load %struct.zswap_entry*, %struct.zswap_entry** %9, align 8
  %99 = getelementptr inbounds %struct.zswap_entry, %struct.zswap_entry* %98, i32 0, i32 1
  %100 = load %struct.TYPE_2__*, %struct.TYPE_2__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.zswap_entry*, %struct.zswap_entry** %9, align 8
  %104 = getelementptr inbounds %struct.zswap_entry, %struct.zswap_entry* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = call i32 @zpool_unmap_handle(i32 %102, i32 %105)
  %107 = load i32, i32* %14, align 4
  %108 = call i32 @BUG_ON(i32 %107)
  br label %109

109:                                              ; preds = %73, %41
  %110 = load %struct.zswap_tree*, %struct.zswap_tree** %8, align 8
  %111 = getelementptr inbounds %struct.zswap_tree, %struct.zswap_tree* %110, i32 0, i32 0
  %112 = call i32 @spin_lock(i32* %111)
  %113 = load %struct.zswap_tree*, %struct.zswap_tree** %8, align 8
  %114 = load %struct.zswap_entry*, %struct.zswap_entry** %9, align 8
  %115 = call i32 @zswap_entry_put(%struct.zswap_tree* %113, %struct.zswap_entry* %114)
  %116 = load %struct.zswap_tree*, %struct.zswap_tree** %8, align 8
  %117 = getelementptr inbounds %struct.zswap_tree, %struct.zswap_tree* %116, i32 0, i32 0
  %118 = call i32 @spin_unlock(i32* %117)
  store i32 0, i32* %4, align 4
  br label %119

119:                                              ; preds = %109, %29
  %120 = load i32, i32* %4, align 4
  ret i32 %120
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.zswap_entry* @zswap_entry_find_get(i32*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32* @kmap_atomic(%struct.page*) #1

declare dso_local i32 @zswap_fill_page(i32*, i32) #1

declare dso_local i32 @kunmap_atomic(i32*) #1

declare dso_local i32* @zpool_map_handle(i32, i32, i32) #1

declare dso_local i64 @zpool_evictable(i32) #1

declare dso_local %struct.crypto_comp** @get_cpu_ptr(i32) #1

declare dso_local i32 @crypto_comp_decompress(%struct.crypto_comp*, i32*, i32, i32*, i32*) #1

declare dso_local i32 @put_cpu_ptr(i32) #1

declare dso_local i32 @zpool_unmap_handle(i32, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @zswap_entry_put(%struct.zswap_tree*, %struct.zswap_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
