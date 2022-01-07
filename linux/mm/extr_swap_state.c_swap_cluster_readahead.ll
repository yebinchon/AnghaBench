; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_swap_state.c_swap_cluster_readahead.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_swap_state.c_swap_cluster_readahead.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }
%struct.vm_fault = type { i64, %struct.vm_area_struct* }
%struct.vm_area_struct = type { i32 }
%struct.swap_info_struct = type { i32, i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.inode* }
%struct.inode = type { i32 }
%struct.blk_plug = type { i32 }

@SWP_BLKDEV = common dso_local global i32 0, align 4
@SWP_FS = common dso_local global i32 0, align 4
@SWAP_RA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.page* @swap_cluster_readahead(i32 %0, i32 %1, %struct.vm_fault* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.vm_fault*, align 8
  %7 = alloca %struct.page*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.swap_info_struct*, align 8
  %14 = alloca %struct.blk_plug, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.vm_area_struct*, align 8
  %18 = alloca i64, align 8
  %19 = alloca %struct.inode*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store %struct.vm_fault* %2, %struct.vm_fault** %6, align 8
  %20 = load i32, i32* %4, align 4
  %21 = call i64 @swp_offset(i32 %20)
  store i64 %21, i64* %8, align 8
  %22 = load i64, i64* %8, align 8
  store i64 %22, i64* %9, align 8
  %23 = load i32, i32* %4, align 4
  %24 = call %struct.swap_info_struct* @swp_swap_info(i32 %23)
  store %struct.swap_info_struct* %24, %struct.swap_info_struct** %13, align 8
  store i32 1, i32* %15, align 4
  %25 = load %struct.vm_fault*, %struct.vm_fault** %6, align 8
  %26 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %25, i32 0, i32 1
  %27 = load %struct.vm_area_struct*, %struct.vm_area_struct** %26, align 8
  store %struct.vm_area_struct* %27, %struct.vm_area_struct** %17, align 8
  %28 = load %struct.vm_fault*, %struct.vm_fault** %6, align 8
  %29 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  store i64 %30, i64* %18, align 8
  %31 = load i64, i64* %9, align 8
  %32 = call i32 @swapin_nr_pages(i64 %31)
  %33 = sub nsw i32 %32, 1
  %34 = sext i32 %33 to i64
  store i64 %34, i64* %12, align 8
  %35 = load i64, i64* %12, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %3
  br label %128

38:                                               ; preds = %3
  %39 = load %struct.swap_info_struct*, %struct.swap_info_struct** %13, align 8
  %40 = getelementptr inbounds %struct.swap_info_struct, %struct.swap_info_struct* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @SWP_BLKDEV, align 4
  %43 = load i32, i32* @SWP_FS, align 4
  %44 = or i32 %42, %43
  %45 = and i32 %41, %44
  %46 = call i64 @likely(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %61

48:                                               ; preds = %38
  %49 = load %struct.swap_info_struct*, %struct.swap_info_struct** %13, align 8
  %50 = getelementptr inbounds %struct.swap_info_struct, %struct.swap_info_struct* %49, i32 0, i32 2
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  %55 = load %struct.inode*, %struct.inode** %54, align 8
  store %struct.inode* %55, %struct.inode** %19, align 8
  %56 = load %struct.inode*, %struct.inode** %19, align 8
  %57 = call i64 @inode_read_congested(%struct.inode* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %48
  br label %128

60:                                               ; preds = %48
  br label %61

61:                                               ; preds = %60, %38
  store i32 0, i32* %15, align 4
  %62 = load i64, i64* %9, align 8
  %63 = load i64, i64* %12, align 8
  %64 = xor i64 %63, -1
  %65 = and i64 %62, %64
  store i64 %65, i64* %10, align 8
  %66 = load i64, i64* %9, align 8
  %67 = load i64, i64* %12, align 8
  %68 = or i64 %66, %67
  store i64 %68, i64* %11, align 8
  %69 = load i64, i64* %10, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %74, label %71

71:                                               ; preds = %61
  %72 = load i64, i64* %10, align 8
  %73 = add i64 %72, 1
  store i64 %73, i64* %10, align 8
  br label %74

74:                                               ; preds = %71, %61
  %75 = load i64, i64* %11, align 8
  %76 = load %struct.swap_info_struct*, %struct.swap_info_struct** %13, align 8
  %77 = getelementptr inbounds %struct.swap_info_struct, %struct.swap_info_struct* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = icmp uge i64 %75, %78
  br i1 %79, label %80, label %85

80:                                               ; preds = %74
  %81 = load %struct.swap_info_struct*, %struct.swap_info_struct** %13, align 8
  %82 = getelementptr inbounds %struct.swap_info_struct, %struct.swap_info_struct* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = sub i64 %83, 1
  store i64 %84, i64* %11, align 8
  br label %85

85:                                               ; preds = %80, %74
  %86 = call i32 @blk_start_plug(%struct.blk_plug* %14)
  %87 = load i64, i64* %10, align 8
  store i64 %87, i64* %9, align 8
  br label %88

88:                                               ; preds = %122, %85
  %89 = load i64, i64* %9, align 8
  %90 = load i64, i64* %11, align 8
  %91 = icmp ule i64 %89, %90
  br i1 %91, label %92, label %125

92:                                               ; preds = %88
  %93 = load i32, i32* %4, align 4
  %94 = call i32 @swp_type(i32 %93)
  %95 = load i64, i64* %9, align 8
  %96 = call i32 @swp_entry(i32 %94, i64 %95)
  %97 = load i32, i32* %5, align 4
  %98 = load %struct.vm_area_struct*, %struct.vm_area_struct** %17, align 8
  %99 = load i64, i64* %18, align 8
  %100 = call %struct.page* @__read_swap_cache_async(i32 %96, i32 %97, %struct.vm_area_struct* %98, i64 %99, i32* %16)
  store %struct.page* %100, %struct.page** %7, align 8
  %101 = load %struct.page*, %struct.page** %7, align 8
  %102 = icmp ne %struct.page* %101, null
  br i1 %102, label %104, label %103

103:                                              ; preds = %92
  br label %122

104:                                              ; preds = %92
  %105 = load i32, i32* %16, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %119

107:                                              ; preds = %104
  %108 = load %struct.page*, %struct.page** %7, align 8
  %109 = call i32 @swap_readpage(%struct.page* %108, i32 0)
  %110 = load i64, i64* %9, align 8
  %111 = load i64, i64* %8, align 8
  %112 = icmp ne i64 %110, %111
  br i1 %112, label %113, label %118

113:                                              ; preds = %107
  %114 = load %struct.page*, %struct.page** %7, align 8
  %115 = call i32 @SetPageReadahead(%struct.page* %114)
  %116 = load i32, i32* @SWAP_RA, align 4
  %117 = call i32 @count_vm_event(i32 %116)
  br label %118

118:                                              ; preds = %113, %107
  br label %119

119:                                              ; preds = %118, %104
  %120 = load %struct.page*, %struct.page** %7, align 8
  %121 = call i32 @put_page(%struct.page* %120)
  br label %122

122:                                              ; preds = %119, %103
  %123 = load i64, i64* %9, align 8
  %124 = add i64 %123, 1
  store i64 %124, i64* %9, align 8
  br label %88

125:                                              ; preds = %88
  %126 = call i32 @blk_finish_plug(%struct.blk_plug* %14)
  %127 = call i32 (...) @lru_add_drain()
  br label %128

128:                                              ; preds = %125, %59, %37
  %129 = load i32, i32* %4, align 4
  %130 = load i32, i32* %5, align 4
  %131 = load %struct.vm_area_struct*, %struct.vm_area_struct** %17, align 8
  %132 = load i64, i64* %18, align 8
  %133 = load i32, i32* %15, align 4
  %134 = call %struct.page* @read_swap_cache_async(i32 %129, i32 %130, %struct.vm_area_struct* %131, i64 %132, i32 %133)
  ret %struct.page* %134
}

declare dso_local i64 @swp_offset(i32) #1

declare dso_local %struct.swap_info_struct* @swp_swap_info(i32) #1

declare dso_local i32 @swapin_nr_pages(i64) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i64 @inode_read_congested(%struct.inode*) #1

declare dso_local i32 @blk_start_plug(%struct.blk_plug*) #1

declare dso_local %struct.page* @__read_swap_cache_async(i32, i32, %struct.vm_area_struct*, i64, i32*) #1

declare dso_local i32 @swp_entry(i32, i64) #1

declare dso_local i32 @swp_type(i32) #1

declare dso_local i32 @swap_readpage(%struct.page*, i32) #1

declare dso_local i32 @SetPageReadahead(%struct.page*) #1

declare dso_local i32 @count_vm_event(i32) #1

declare dso_local i32 @put_page(%struct.page*) #1

declare dso_local i32 @blk_finish_plug(%struct.blk_plug*) #1

declare dso_local i32 @lru_add_drain(...) #1

declare dso_local %struct.page* @read_swap_cache_async(i32, i32, %struct.vm_area_struct*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
