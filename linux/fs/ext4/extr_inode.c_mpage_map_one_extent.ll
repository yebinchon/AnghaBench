; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_inode.c_mpage_map_one_extent.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_inode.c_mpage_map_one_extent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32* }
%struct.mpage_da_data = type { %struct.TYPE_7__, %struct.ext4_map_blocks, %struct.inode* }
%struct.TYPE_7__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32* }
%struct.ext4_map_blocks = type { i32, i64 }
%struct.inode = type { i32 }

@EXT4_GET_BLOCKS_CREATE = common dso_local global i32 0, align 4
@EXT4_GET_BLOCKS_METADATA_NOFAIL = common dso_local global i32 0, align 4
@EXT4_GET_BLOCKS_IO_SUBMIT = common dso_local global i32 0, align 4
@EXT4_GET_BLOCKS_IO_CREATE_EXT = common dso_local global i32 0, align 4
@BH_Delay = common dso_local global i32 0, align 4
@EXT4_GET_BLOCKS_DELALLOC_RESERVE = common dso_local global i32 0, align 4
@EXT4_MAP_UNWRITTEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, %struct.mpage_da_data*)* @mpage_map_one_extent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpage_map_one_extent(%struct.TYPE_8__* %0, %struct.mpage_da_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca %struct.mpage_da_data*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.ext4_map_blocks*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store %struct.mpage_da_data* %1, %struct.mpage_da_data** %5, align 8
  %11 = load %struct.mpage_da_data*, %struct.mpage_da_data** %5, align 8
  %12 = getelementptr inbounds %struct.mpage_da_data, %struct.mpage_da_data* %11, i32 0, i32 2
  %13 = load %struct.inode*, %struct.inode** %12, align 8
  store %struct.inode* %13, %struct.inode** %6, align 8
  %14 = load %struct.mpage_da_data*, %struct.mpage_da_data** %5, align 8
  %15 = getelementptr inbounds %struct.mpage_da_data, %struct.mpage_da_data* %14, i32 0, i32 1
  store %struct.ext4_map_blocks* %15, %struct.ext4_map_blocks** %7, align 8
  %16 = load %struct.inode*, %struct.inode** %6, align 8
  %17 = load %struct.ext4_map_blocks*, %struct.ext4_map_blocks** %7, align 8
  %18 = call i32 @trace_ext4_da_write_pages_extent(%struct.inode* %16, %struct.ext4_map_blocks* %17)
  %19 = load i32, i32* @EXT4_GET_BLOCKS_CREATE, align 4
  %20 = load i32, i32* @EXT4_GET_BLOCKS_METADATA_NOFAIL, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @EXT4_GET_BLOCKS_IO_SUBMIT, align 4
  %23 = or i32 %21, %22
  store i32 %23, i32* %8, align 4
  %24 = load %struct.inode*, %struct.inode** %6, align 8
  %25 = call i32 @ext4_should_dioread_nolock(%struct.inode* %24)
  store i32 %25, i32* %10, align 4
  %26 = load i32, i32* %10, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %2
  %29 = load i32, i32* @EXT4_GET_BLOCKS_IO_CREATE_EXT, align 4
  %30 = load i32, i32* %8, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %8, align 4
  br label %32

32:                                               ; preds = %28, %2
  %33 = load %struct.ext4_map_blocks*, %struct.ext4_map_blocks** %7, align 8
  %34 = getelementptr inbounds %struct.ext4_map_blocks, %struct.ext4_map_blocks* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @BH_Delay, align 4
  %37 = shl i32 1, %36
  %38 = and i32 %35, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %32
  %41 = load i32, i32* @EXT4_GET_BLOCKS_DELALLOC_RESERVE, align 4
  %42 = load i32, i32* %8, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %8, align 4
  br label %44

44:                                               ; preds = %40, %32
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %46 = load %struct.inode*, %struct.inode** %6, align 8
  %47 = load %struct.ext4_map_blocks*, %struct.ext4_map_blocks** %7, align 8
  %48 = load i32, i32* %8, align 4
  %49 = call i32 @ext4_map_blocks(%struct.TYPE_8__* %45, %struct.inode* %46, %struct.ext4_map_blocks* %47, i32 %48)
  store i32 %49, i32* %9, align 4
  %50 = load i32, i32* %9, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %44
  %53 = load i32, i32* %9, align 4
  store i32 %53, i32* %3, align 4
  br label %101

54:                                               ; preds = %44
  %55 = load i32, i32* %10, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %94

57:                                               ; preds = %54
  %58 = load %struct.ext4_map_blocks*, %struct.ext4_map_blocks** %7, align 8
  %59 = getelementptr inbounds %struct.ext4_map_blocks, %struct.ext4_map_blocks* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @EXT4_MAP_UNWRITTEN, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %94

64:                                               ; preds = %57
  %65 = load %struct.mpage_da_data*, %struct.mpage_da_data** %5, align 8
  %66 = getelementptr inbounds %struct.mpage_da_data, %struct.mpage_da_data* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 0
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 0
  %70 = load i32*, i32** %69, align 8
  %71 = icmp ne i32* %70, null
  br i1 %71, label %87, label %72

72:                                               ; preds = %64
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %74 = call i64 @ext4_handle_valid(%struct.TYPE_8__* %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %87

76:                                               ; preds = %72
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 0
  %79 = load i32*, i32** %78, align 8
  %80 = load %struct.mpage_da_data*, %struct.mpage_da_data** %5, align 8
  %81 = getelementptr inbounds %struct.mpage_da_data, %struct.mpage_da_data* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 0
  %83 = load %struct.TYPE_9__*, %struct.TYPE_9__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 0
  store i32* %79, i32** %84, align 8
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 0
  store i32* null, i32** %86, align 8
  br label %87

87:                                               ; preds = %76, %72, %64
  %88 = load %struct.inode*, %struct.inode** %6, align 8
  %89 = load %struct.mpage_da_data*, %struct.mpage_da_data** %5, align 8
  %90 = getelementptr inbounds %struct.mpage_da_data, %struct.mpage_da_data* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 0
  %92 = load %struct.TYPE_9__*, %struct.TYPE_9__** %91, align 8
  %93 = call i32 @ext4_set_io_unwritten_flag(%struct.inode* %88, %struct.TYPE_9__* %92)
  br label %94

94:                                               ; preds = %87, %57, %54
  %95 = load %struct.ext4_map_blocks*, %struct.ext4_map_blocks** %7, align 8
  %96 = getelementptr inbounds %struct.ext4_map_blocks, %struct.ext4_map_blocks* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = icmp eq i64 %97, 0
  %99 = zext i1 %98 to i32
  %100 = call i32 @BUG_ON(i32 %99)
  store i32 0, i32* %3, align 4
  br label %101

101:                                              ; preds = %94, %52
  %102 = load i32, i32* %3, align 4
  ret i32 %102
}

declare dso_local i32 @trace_ext4_da_write_pages_extent(%struct.inode*, %struct.ext4_map_blocks*) #1

declare dso_local i32 @ext4_should_dioread_nolock(%struct.inode*) #1

declare dso_local i32 @ext4_map_blocks(%struct.TYPE_8__*, %struct.inode*, %struct.ext4_map_blocks*, i32) #1

declare dso_local i64 @ext4_handle_valid(%struct.TYPE_8__*) #1

declare dso_local i32 @ext4_set_io_unwritten_flag(%struct.inode*, %struct.TYPE_9__*) #1

declare dso_local i32 @BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
