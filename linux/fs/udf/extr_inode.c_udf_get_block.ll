; ModuleID = '/home/carl/AnghaBench/linux/fs/udf/extr_inode.c_udf_get_block.c'
source_filename = "/home/carl/AnghaBench/linux/fs/udf/extr_inode.c_udf_get_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.buffer_head = type { i32 }
%struct.udf_inode_info = type { i64, i32, i32 }

@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i64, %struct.buffer_head*, i32)* @udf_get_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @udf_get_block(%struct.inode* %0, i64 %1, %struct.buffer_head* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.buffer_head*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca %struct.udf_inode_info*, align 8
  store %struct.inode* %0, %struct.inode** %6, align 8
  store i64 %1, i64* %7, align 8
  store %struct.buffer_head* %2, %struct.buffer_head** %8, align 8
  store i32 %3, i32* %9, align 4
  store i64 0, i64* %12, align 8
  %14 = load i32, i32* %9, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %30, label %16

16:                                               ; preds = %4
  %17 = load %struct.inode*, %struct.inode** %6, align 8
  %18 = load i64, i64* %7, align 8
  %19 = call i64 @udf_block_map(%struct.inode* %17, i64 %18)
  store i64 %19, i64* %12, align 8
  %20 = load i64, i64* %12, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %16
  %23 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %24 = load %struct.inode*, %struct.inode** %6, align 8
  %25 = getelementptr inbounds %struct.inode, %struct.inode* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i64, i64* %12, align 8
  %28 = call i32 @map_bh(%struct.buffer_head* %23, i32 %26, i64 %27)
  br label %29

29:                                               ; preds = %22, %16
  store i32 0, i32* %5, align 4
  br label %80

30:                                               ; preds = %4
  %31 = load i32, i32* @EIO, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %33 = load %struct.inode*, %struct.inode** %6, align 8
  %34 = call %struct.udf_inode_info* @UDF_I(%struct.inode* %33)
  store %struct.udf_inode_info* %34, %struct.udf_inode_info** %13, align 8
  %35 = load %struct.udf_inode_info*, %struct.udf_inode_info** %13, align 8
  %36 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %35, i32 0, i32 1
  %37 = call i32 @down_write(i32* %36)
  %38 = load i64, i64* %7, align 8
  %39 = load %struct.udf_inode_info*, %struct.udf_inode_info** %13, align 8
  %40 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = add nsw i64 %41, 1
  %43 = icmp eq i64 %38, %42
  br i1 %43, label %44, label %53

44:                                               ; preds = %30
  %45 = load %struct.udf_inode_info*, %struct.udf_inode_info** %13, align 8
  %46 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = add nsw i64 %47, 1
  store i64 %48, i64* %46, align 8
  %49 = load %struct.udf_inode_info*, %struct.udf_inode_info** %13, align 8
  %50 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %50, align 4
  br label %53

53:                                               ; preds = %44, %30
  %54 = load %struct.inode*, %struct.inode** %6, align 8
  %55 = call i32 @udf_clear_extent_cache(%struct.inode* %54)
  %56 = load %struct.inode*, %struct.inode** %6, align 8
  %57 = load i64, i64* %7, align 8
  %58 = call i64 @inode_getblk(%struct.inode* %56, i64 %57, i32* %10, i32* %11)
  store i64 %58, i64* %12, align 8
  %59 = load i64, i64* %12, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %62, label %61

61:                                               ; preds = %53
  br label %75

62:                                               ; preds = %53
  %63 = load i32, i32* %11, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %62
  %66 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %67 = call i32 @set_buffer_new(%struct.buffer_head* %66)
  br label %68

68:                                               ; preds = %65, %62
  %69 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %70 = load %struct.inode*, %struct.inode** %6, align 8
  %71 = getelementptr inbounds %struct.inode, %struct.inode* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i64, i64* %12, align 8
  %74 = call i32 @map_bh(%struct.buffer_head* %69, i32 %72, i64 %73)
  br label %75

75:                                               ; preds = %68, %61
  %76 = load %struct.udf_inode_info*, %struct.udf_inode_info** %13, align 8
  %77 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %76, i32 0, i32 1
  %78 = call i32 @up_write(i32* %77)
  %79 = load i32, i32* %10, align 4
  store i32 %79, i32* %5, align 4
  br label %80

80:                                               ; preds = %75, %29
  %81 = load i32, i32* %5, align 4
  ret i32 %81
}

declare dso_local i64 @udf_block_map(%struct.inode*, i64) #1

declare dso_local i32 @map_bh(%struct.buffer_head*, i32, i64) #1

declare dso_local %struct.udf_inode_info* @UDF_I(%struct.inode*) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local i32 @udf_clear_extent_cache(%struct.inode*) #1

declare dso_local i64 @inode_getblk(%struct.inode*, i64, i32*, i32*) #1

declare dso_local i32 @set_buffer_new(%struct.buffer_head*) #1

declare dso_local i32 @up_write(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
