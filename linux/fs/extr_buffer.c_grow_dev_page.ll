; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_buffer.c_grow_dev_page.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_buffer.c_grow_dev_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.block_device = type { %struct.inode* }
%struct.inode = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.page = type { i32 }
%struct.buffer_head = type { i32 }

@__GFP_FS = common dso_local global i32 0, align 4
@__GFP_NOFAIL = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.block_device*, i32, i64, i32, i32, i32)* @grow_dev_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @grow_dev_page(%struct.block_device* %0, i32 %1, i64 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.block_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.inode*, align 8
  %14 = alloca %struct.page*, align 8
  %15 = alloca %struct.buffer_head*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.block_device* %0, %struct.block_device** %7, align 8
  store i32 %1, i32* %8, align 4
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %19 = load %struct.block_device*, %struct.block_device** %7, align 8
  %20 = getelementptr inbounds %struct.block_device, %struct.block_device* %19, i32 0, i32 0
  %21 = load %struct.inode*, %struct.inode** %20, align 8
  store %struct.inode* %21, %struct.inode** %13, align 8
  store i32 0, i32* %17, align 4
  %22 = load %struct.inode*, %struct.inode** %13, align 8
  %23 = getelementptr inbounds %struct.inode, %struct.inode* %22, i32 0, i32 0
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = load i32, i32* @__GFP_FS, align 4
  %26 = xor i32 %25, -1
  %27 = call i32 @mapping_gfp_constraint(%struct.TYPE_3__* %24, i32 %26)
  %28 = load i32, i32* %12, align 4
  %29 = or i32 %27, %28
  store i32 %29, i32* %18, align 4
  %30 = load i32, i32* @__GFP_NOFAIL, align 4
  %31 = load i32, i32* %18, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %18, align 4
  %33 = load %struct.inode*, %struct.inode** %13, align 8
  %34 = getelementptr inbounds %struct.inode, %struct.inode* %33, i32 0, i32 0
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %34, align 8
  %36 = load i64, i64* %9, align 8
  %37 = load i32, i32* %18, align 4
  %38 = call %struct.page* @find_or_create_page(%struct.TYPE_3__* %35, i64 %36, i32 %37)
  store %struct.page* %38, %struct.page** %14, align 8
  %39 = load %struct.page*, %struct.page** %14, align 8
  %40 = call i32 @PageLocked(%struct.page* %39)
  %41 = icmp ne i32 %40, 0
  %42 = xor i1 %41, true
  %43 = zext i1 %42 to i32
  %44 = call i32 @BUG_ON(i32 %43)
  %45 = load %struct.page*, %struct.page** %14, align 8
  %46 = call i64 @page_has_buffers(%struct.page* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %71

48:                                               ; preds = %6
  %49 = load %struct.page*, %struct.page** %14, align 8
  %50 = call %struct.buffer_head* @page_buffers(%struct.page* %49)
  store %struct.buffer_head* %50, %struct.buffer_head** %15, align 8
  %51 = load %struct.buffer_head*, %struct.buffer_head** %15, align 8
  %52 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %10, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %65

56:                                               ; preds = %48
  %57 = load %struct.page*, %struct.page** %14, align 8
  %58 = load %struct.block_device*, %struct.block_device** %7, align 8
  %59 = load i64, i64* %9, align 8
  %60 = trunc i64 %59 to i32
  %61 = load i32, i32* %11, align 4
  %62 = shl i32 %60, %61
  %63 = load i32, i32* %10, align 4
  %64 = call i32 @init_page_buffers(%struct.page* %57, %struct.block_device* %58, i32 %62, i32 %63)
  store i32 %64, i32* %16, align 4
  br label %96

65:                                               ; preds = %48
  %66 = load %struct.page*, %struct.page** %14, align 8
  %67 = call i32 @try_to_free_buffers(%struct.page* %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %70, label %69

69:                                               ; preds = %65
  br label %106

70:                                               ; preds = %65
  br label %71

71:                                               ; preds = %70, %6
  %72 = load %struct.page*, %struct.page** %14, align 8
  %73 = load i32, i32* %10, align 4
  %74 = call %struct.buffer_head* @alloc_page_buffers(%struct.page* %72, i32 %73, i32 1)
  store %struct.buffer_head* %74, %struct.buffer_head** %15, align 8
  %75 = load %struct.inode*, %struct.inode** %13, align 8
  %76 = getelementptr inbounds %struct.inode, %struct.inode* %75, i32 0, i32 0
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 0
  %79 = call i32 @spin_lock(i32* %78)
  %80 = load %struct.page*, %struct.page** %14, align 8
  %81 = load %struct.buffer_head*, %struct.buffer_head** %15, align 8
  %82 = call i32 @link_dev_buffers(%struct.page* %80, %struct.buffer_head* %81)
  %83 = load %struct.page*, %struct.page** %14, align 8
  %84 = load %struct.block_device*, %struct.block_device** %7, align 8
  %85 = load i64, i64* %9, align 8
  %86 = trunc i64 %85 to i32
  %87 = load i32, i32* %11, align 4
  %88 = shl i32 %86, %87
  %89 = load i32, i32* %10, align 4
  %90 = call i32 @init_page_buffers(%struct.page* %83, %struct.block_device* %84, i32 %88, i32 %89)
  store i32 %90, i32* %16, align 4
  %91 = load %struct.inode*, %struct.inode** %13, align 8
  %92 = getelementptr inbounds %struct.inode, %struct.inode* %91, i32 0, i32 0
  %93 = load %struct.TYPE_3__*, %struct.TYPE_3__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 0
  %95 = call i32 @spin_unlock(i32* %94)
  br label %96

96:                                               ; preds = %71, %56
  %97 = load i32, i32* %8, align 4
  %98 = load i32, i32* %16, align 4
  %99 = icmp slt i32 %97, %98
  br i1 %99, label %100, label %101

100:                                              ; preds = %96
  br label %104

101:                                              ; preds = %96
  %102 = load i32, i32* @ENXIO, align 4
  %103 = sub nsw i32 0, %102
  br label %104

104:                                              ; preds = %101, %100
  %105 = phi i32 [ 1, %100 ], [ %103, %101 ]
  store i32 %105, i32* %17, align 4
  br label %106

106:                                              ; preds = %104, %69
  %107 = load %struct.page*, %struct.page** %14, align 8
  %108 = call i32 @unlock_page(%struct.page* %107)
  %109 = load %struct.page*, %struct.page** %14, align 8
  %110 = call i32 @put_page(%struct.page* %109)
  %111 = load i32, i32* %17, align 4
  ret i32 %111
}

declare dso_local i32 @mapping_gfp_constraint(%struct.TYPE_3__*, i32) #1

declare dso_local %struct.page* @find_or_create_page(%struct.TYPE_3__*, i64, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @PageLocked(%struct.page*) #1

declare dso_local i64 @page_has_buffers(%struct.page*) #1

declare dso_local %struct.buffer_head* @page_buffers(%struct.page*) #1

declare dso_local i32 @init_page_buffers(%struct.page*, %struct.block_device*, i32, i32) #1

declare dso_local i32 @try_to_free_buffers(%struct.page*) #1

declare dso_local %struct.buffer_head* @alloc_page_buffers(%struct.page*, i32, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @link_dev_buffers(%struct.page*, %struct.buffer_head*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

declare dso_local i32 @put_page(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
