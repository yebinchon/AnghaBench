; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_zswap.c_zswap_writeback_entry.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_zswap.c_zswap_writeback_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zswap_tree = type { i32, i32 }
%struct.zpool = type { i32 }
%struct.zswap_header = type { i32 }
%struct.zswap_entry = type { i64, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.page = type { i32 }
%struct.crypto_comp = type { i32 }
%struct.writeback_control = type { i32 }

@WB_SYNC_NONE = common dso_local global i32 0, align 4
@ZPOOL_MM_RO = common dso_local global i32 0, align 4
@zswap_trees = common dso_local global %struct.zswap_tree** null, align 8
@ENOMEM = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@end_swap_bio_write = common dso_local global i32 0, align 4
@zswap_written_back_pages = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.zpool*, i64)* @zswap_writeback_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zswap_writeback_entry(%struct.zpool* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.zpool*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.zswap_header*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.zswap_tree*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.zswap_entry*, align 8
  %11 = alloca %struct.page*, align 8
  %12 = alloca %struct.crypto_comp*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.writeback_control, align 4
  store %struct.zpool* %0, %struct.zpool** %4, align 8
  store i64 %1, i64* %5, align 8
  %18 = getelementptr inbounds %struct.writeback_control, %struct.writeback_control* %17, i32 0, i32 0
  %19 = load i32, i32* @WB_SYNC_NONE, align 4
  store i32 %19, i32* %18, align 4
  %20 = load %struct.zpool*, %struct.zpool** %4, align 8
  %21 = load i64, i64* %5, align 8
  %22 = load i32, i32* @ZPOOL_MM_RO, align 4
  %23 = call %struct.zswap_header* @zpool_map_handle(%struct.zpool* %20, i64 %21, i32 %22)
  store %struct.zswap_header* %23, %struct.zswap_header** %6, align 8
  %24 = load %struct.zswap_header*, %struct.zswap_header** %6, align 8
  %25 = getelementptr inbounds %struct.zswap_header, %struct.zswap_header* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %7, align 4
  %27 = load %struct.zswap_tree**, %struct.zswap_tree*** @zswap_trees, align 8
  %28 = load i32, i32* %7, align 4
  %29 = call i64 @swp_type(i32 %28)
  %30 = getelementptr inbounds %struct.zswap_tree*, %struct.zswap_tree** %27, i64 %29
  %31 = load %struct.zswap_tree*, %struct.zswap_tree** %30, align 8
  store %struct.zswap_tree* %31, %struct.zswap_tree** %8, align 8
  %32 = load i32, i32* %7, align 4
  %33 = call i64 @swp_offset(i32 %32)
  store i64 %33, i64* %9, align 8
  %34 = load %struct.zswap_tree*, %struct.zswap_tree** %8, align 8
  %35 = getelementptr inbounds %struct.zswap_tree, %struct.zswap_tree* %34, i32 0, i32 0
  %36 = call i32 @spin_lock(i32* %35)
  %37 = load %struct.zswap_tree*, %struct.zswap_tree** %8, align 8
  %38 = getelementptr inbounds %struct.zswap_tree, %struct.zswap_tree* %37, i32 0, i32 1
  %39 = load i64, i64* %9, align 8
  %40 = call %struct.zswap_entry* @zswap_entry_find_get(i32* %38, i64 %39)
  store %struct.zswap_entry* %40, %struct.zswap_entry** %10, align 8
  %41 = load %struct.zswap_entry*, %struct.zswap_entry** %10, align 8
  %42 = icmp ne %struct.zswap_entry* %41, null
  br i1 %42, label %50, label %43

43:                                               ; preds = %2
  %44 = load %struct.zswap_tree*, %struct.zswap_tree** %8, align 8
  %45 = getelementptr inbounds %struct.zswap_tree, %struct.zswap_tree* %44, i32 0, i32 0
  %46 = call i32 @spin_unlock(i32* %45)
  %47 = load %struct.zpool*, %struct.zpool** %4, align 8
  %48 = load i64, i64* %5, align 8
  %49 = call i32 @zpool_unmap_handle(%struct.zpool* %47, i64 %48)
  store i32 0, i32* %3, align 4
  br label %154

50:                                               ; preds = %2
  %51 = load %struct.zswap_tree*, %struct.zswap_tree** %8, align 8
  %52 = getelementptr inbounds %struct.zswap_tree, %struct.zswap_tree* %51, i32 0, i32 0
  %53 = call i32 @spin_unlock(i32* %52)
  %54 = load i64, i64* %9, align 8
  %55 = load %struct.zswap_entry*, %struct.zswap_entry** %10, align 8
  %56 = getelementptr inbounds %struct.zswap_entry, %struct.zswap_entry* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %54, %57
  %59 = zext i1 %58 to i32
  %60 = call i32 @BUG_ON(i32 %59)
  %61 = load i32, i32* %7, align 4
  %62 = call i32 @zswap_get_swap_cache_page(i32 %61, %struct.page** %11)
  switch i32 %62, label %109 [
    i32 129, label %63
    i32 130, label %66
    i32 128, label %71
  ]

63:                                               ; preds = %50
  %64 = load i32, i32* @ENOMEM, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %16, align 4
  br label %139

66:                                               ; preds = %50
  %67 = load %struct.page*, %struct.page** %11, align 8
  %68 = call i32 @put_page(%struct.page* %67)
  %69 = load i32, i32* @EEXIST, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %16, align 4
  br label %139

71:                                               ; preds = %50
  %72 = load i32, i32* @PAGE_SIZE, align 4
  store i32 %72, i32* %15, align 4
  %73 = load %struct.zswap_header*, %struct.zswap_header** %6, align 8
  %74 = bitcast %struct.zswap_header* %73 to i32*
  %75 = getelementptr inbounds i32, i32* %74, i64 4
  store i32* %75, i32** %13, align 8
  %76 = load %struct.page*, %struct.page** %11, align 8
  %77 = call i32* @kmap_atomic(%struct.page* %76)
  store i32* %77, i32** %14, align 8
  %78 = load %struct.zswap_entry*, %struct.zswap_entry** %10, align 8
  %79 = getelementptr inbounds %struct.zswap_entry, %struct.zswap_entry* %78, i32 0, i32 1
  %80 = load %struct.TYPE_2__*, %struct.TYPE_2__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call %struct.crypto_comp** @get_cpu_ptr(i32 %82)
  %84 = load %struct.crypto_comp*, %struct.crypto_comp** %83, align 8
  store %struct.crypto_comp* %84, %struct.crypto_comp** %12, align 8
  %85 = load %struct.crypto_comp*, %struct.crypto_comp** %12, align 8
  %86 = load i32*, i32** %13, align 8
  %87 = load %struct.zswap_entry*, %struct.zswap_entry** %10, align 8
  %88 = getelementptr inbounds %struct.zswap_entry, %struct.zswap_entry* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = load i32*, i32** %14, align 8
  %91 = call i32 @crypto_comp_decompress(%struct.crypto_comp* %85, i32* %86, i32 %89, i32* %90, i32* %15)
  store i32 %91, i32* %16, align 4
  %92 = load %struct.zswap_entry*, %struct.zswap_entry** %10, align 8
  %93 = getelementptr inbounds %struct.zswap_entry, %struct.zswap_entry* %92, i32 0, i32 1
  %94 = load %struct.TYPE_2__*, %struct.TYPE_2__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @put_cpu_ptr(i32 %96)
  %98 = load i32*, i32** %14, align 8
  %99 = call i32 @kunmap_atomic(i32* %98)
  %100 = load i32, i32* %16, align 4
  %101 = call i32 @BUG_ON(i32 %100)
  %102 = load i32, i32* %15, align 4
  %103 = load i32, i32* @PAGE_SIZE, align 4
  %104 = icmp ne i32 %102, %103
  %105 = zext i1 %104 to i32
  %106 = call i32 @BUG_ON(i32 %105)
  %107 = load %struct.page*, %struct.page** %11, align 8
  %108 = call i32 @SetPageUptodate(%struct.page* %107)
  br label %109

109:                                              ; preds = %71, %50
  %110 = load %struct.page*, %struct.page** %11, align 8
  %111 = call i32 @SetPageReclaim(%struct.page* %110)
  %112 = load %struct.page*, %struct.page** %11, align 8
  %113 = load i32, i32* @end_swap_bio_write, align 4
  %114 = call i32 @__swap_writepage(%struct.page* %112, %struct.writeback_control* %17, i32 %113)
  %115 = load %struct.page*, %struct.page** %11, align 8
  %116 = call i32 @put_page(%struct.page* %115)
  %117 = load i32, i32* @zswap_written_back_pages, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* @zswap_written_back_pages, align 4
  %119 = load %struct.zswap_tree*, %struct.zswap_tree** %8, align 8
  %120 = getelementptr inbounds %struct.zswap_tree, %struct.zswap_tree* %119, i32 0, i32 0
  %121 = call i32 @spin_lock(i32* %120)
  %122 = load %struct.zswap_tree*, %struct.zswap_tree** %8, align 8
  %123 = load %struct.zswap_entry*, %struct.zswap_entry** %10, align 8
  %124 = call i32 @zswap_entry_put(%struct.zswap_tree* %122, %struct.zswap_entry* %123)
  %125 = load %struct.zswap_entry*, %struct.zswap_entry** %10, align 8
  %126 = load %struct.zswap_tree*, %struct.zswap_tree** %8, align 8
  %127 = getelementptr inbounds %struct.zswap_tree, %struct.zswap_tree* %126, i32 0, i32 1
  %128 = load i64, i64* %9, align 8
  %129 = call %struct.zswap_entry* @zswap_rb_search(i32* %127, i64 %128)
  %130 = icmp eq %struct.zswap_entry* %125, %129
  br i1 %130, label %131, label %135

131:                                              ; preds = %109
  %132 = load %struct.zswap_tree*, %struct.zswap_tree** %8, align 8
  %133 = load %struct.zswap_entry*, %struct.zswap_entry** %10, align 8
  %134 = call i32 @zswap_entry_put(%struct.zswap_tree* %132, %struct.zswap_entry* %133)
  br label %135

135:                                              ; preds = %131, %109
  %136 = load %struct.zswap_tree*, %struct.zswap_tree** %8, align 8
  %137 = getelementptr inbounds %struct.zswap_tree, %struct.zswap_tree* %136, i32 0, i32 0
  %138 = call i32 @spin_unlock(i32* %137)
  br label %149

139:                                              ; preds = %66, %63
  %140 = load %struct.zswap_tree*, %struct.zswap_tree** %8, align 8
  %141 = getelementptr inbounds %struct.zswap_tree, %struct.zswap_tree* %140, i32 0, i32 0
  %142 = call i32 @spin_lock(i32* %141)
  %143 = load %struct.zswap_tree*, %struct.zswap_tree** %8, align 8
  %144 = load %struct.zswap_entry*, %struct.zswap_entry** %10, align 8
  %145 = call i32 @zswap_entry_put(%struct.zswap_tree* %143, %struct.zswap_entry* %144)
  %146 = load %struct.zswap_tree*, %struct.zswap_tree** %8, align 8
  %147 = getelementptr inbounds %struct.zswap_tree, %struct.zswap_tree* %146, i32 0, i32 0
  %148 = call i32 @spin_unlock(i32* %147)
  br label %149

149:                                              ; preds = %139, %135
  %150 = load %struct.zpool*, %struct.zpool** %4, align 8
  %151 = load i64, i64* %5, align 8
  %152 = call i32 @zpool_unmap_handle(%struct.zpool* %150, i64 %151)
  %153 = load i32, i32* %16, align 4
  store i32 %153, i32* %3, align 4
  br label %154

154:                                              ; preds = %149, %43
  %155 = load i32, i32* %3, align 4
  ret i32 %155
}

declare dso_local %struct.zswap_header* @zpool_map_handle(%struct.zpool*, i64, i32) #1

declare dso_local i64 @swp_type(i32) #1

declare dso_local i64 @swp_offset(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.zswap_entry* @zswap_entry_find_get(i32*, i64) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @zpool_unmap_handle(%struct.zpool*, i64) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @zswap_get_swap_cache_page(i32, %struct.page**) #1

declare dso_local i32 @put_page(%struct.page*) #1

declare dso_local i32* @kmap_atomic(%struct.page*) #1

declare dso_local %struct.crypto_comp** @get_cpu_ptr(i32) #1

declare dso_local i32 @crypto_comp_decompress(%struct.crypto_comp*, i32*, i32, i32*, i32*) #1

declare dso_local i32 @put_cpu_ptr(i32) #1

declare dso_local i32 @kunmap_atomic(i32*) #1

declare dso_local i32 @SetPageUptodate(%struct.page*) #1

declare dso_local i32 @SetPageReclaim(%struct.page*) #1

declare dso_local i32 @__swap_writepage(%struct.page*, %struct.writeback_control*, i32) #1

declare dso_local i32 @zswap_entry_put(%struct.zswap_tree*, %struct.zswap_entry*) #1

declare dso_local %struct.zswap_entry* @zswap_rb_search(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
