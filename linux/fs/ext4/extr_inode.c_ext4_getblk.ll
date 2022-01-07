; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_inode.c_ext4_getblk.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_inode.c_ext4_getblk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buffer_head = type { i32 }
%struct.inode = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.ext4_map_blocks = type { i32, i32, i32, i32 }

@EXT4_GET_BLOCKS_CREATE = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EXT4_MAP_NEW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"call get_create_access\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"call ext4_handle_dirty_metadata\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"not a new buffer\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.buffer_head* @ext4_getblk(i32* %0, %struct.inode* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.buffer_head*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.inode*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.ext4_map_blocks, align 4
  %11 = alloca %struct.buffer_head*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store %struct.inode* %1, %struct.inode** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load i32, i32* %9, align 4
  %15 = load i32, i32* @EXT4_GET_BLOCKS_CREATE, align 4
  %16 = and i32 %14, %15
  store i32 %16, i32* %12, align 4
  %17 = load i32*, i32** %6, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %4
  %20 = load i32, i32* %12, align 4
  %21 = icmp eq i32 %20, 0
  br label %22

22:                                               ; preds = %19, %4
  %23 = phi i1 [ true, %4 ], [ %21, %19 ]
  %24 = zext i1 %23 to i32
  %25 = call i32 @J_ASSERT(i32 %24)
  %26 = load i32, i32* %8, align 4
  %27 = getelementptr inbounds %struct.ext4_map_blocks, %struct.ext4_map_blocks* %10, i32 0, i32 3
  store i32 %26, i32* %27, align 4
  %28 = getelementptr inbounds %struct.ext4_map_blocks, %struct.ext4_map_blocks* %10, i32 0, i32 0
  store i32 1, i32* %28, align 4
  %29 = load i32*, i32** %6, align 8
  %30 = load %struct.inode*, %struct.inode** %7, align 8
  %31 = load i32, i32* %9, align 4
  %32 = call i32 @ext4_map_blocks(i32* %29, %struct.inode* %30, %struct.ext4_map_blocks* %10, i32 %31)
  store i32 %32, i32* %13, align 4
  %33 = load i32, i32* %13, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %45

35:                                               ; preds = %22
  %36 = load i32, i32* %12, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %35
  %39 = load i32, i32* @ENOSPC, align 4
  %40 = sub nsw i32 0, %39
  %41 = call %struct.buffer_head* @ERR_PTR(i32 %40)
  br label %43

42:                                               ; preds = %35
  br label %43

43:                                               ; preds = %42, %38
  %44 = phi %struct.buffer_head* [ %41, %38 ], [ null, %42 ]
  store %struct.buffer_head* %44, %struct.buffer_head** %5, align 8
  br label %136

45:                                               ; preds = %22
  %46 = load i32, i32* %13, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %45
  %49 = load i32, i32* %13, align 4
  %50 = call %struct.buffer_head* @ERR_PTR(i32 %49)
  store %struct.buffer_head* %50, %struct.buffer_head** %5, align 8
  br label %136

51:                                               ; preds = %45
  %52 = load %struct.inode*, %struct.inode** %7, align 8
  %53 = getelementptr inbounds %struct.inode, %struct.inode* %52, i32 0, i32 0
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = getelementptr inbounds %struct.ext4_map_blocks, %struct.ext4_map_blocks* %10, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = call %struct.buffer_head* @sb_getblk(%struct.TYPE_2__* %54, i32 %56)
  store %struct.buffer_head* %57, %struct.buffer_head** %11, align 8
  %58 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %59 = icmp ne %struct.buffer_head* %58, null
  %60 = xor i1 %59, true
  %61 = zext i1 %60 to i32
  %62 = call i64 @unlikely(i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %51
  %65 = load i32, i32* @ENOMEM, align 4
  %66 = sub nsw i32 0, %65
  %67 = call %struct.buffer_head* @ERR_PTR(i32 %66)
  store %struct.buffer_head* %67, %struct.buffer_head** %5, align 8
  br label %136

68:                                               ; preds = %51
  %69 = getelementptr inbounds %struct.ext4_map_blocks, %struct.ext4_map_blocks* %10, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @EXT4_MAP_NEW, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %126

74:                                               ; preds = %68
  %75 = load i32, i32* %12, align 4
  %76 = icmp ne i32 %75, 0
  %77 = zext i1 %76 to i32
  %78 = call i32 @J_ASSERT(i32 %77)
  %79 = load i32*, i32** %6, align 8
  %80 = icmp ne i32* %79, null
  %81 = zext i1 %80 to i32
  %82 = call i32 @J_ASSERT(i32 %81)
  %83 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %84 = call i32 @lock_buffer(%struct.buffer_head* %83)
  %85 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %86 = call i32 @BUFFER_TRACE(%struct.buffer_head* %85, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %87 = load i32*, i32** %6, align 8
  %88 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %89 = call i32 @ext4_journal_get_create_access(i32* %87, %struct.buffer_head* %88)
  store i32 %89, i32* %13, align 4
  %90 = load i32, i32* %13, align 4
  %91 = call i64 @unlikely(i32 %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %74
  %94 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %95 = call i32 @unlock_buffer(%struct.buffer_head* %94)
  br label %131

96:                                               ; preds = %74
  %97 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %98 = call i32 @buffer_uptodate(%struct.buffer_head* %97)
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %112, label %100

100:                                              ; preds = %96
  %101 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %102 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.inode*, %struct.inode** %7, align 8
  %105 = getelementptr inbounds %struct.inode, %struct.inode* %104, i32 0, i32 0
  %106 = load %struct.TYPE_2__*, %struct.TYPE_2__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @memset(i32 %103, i32 0, i32 %108)
  %110 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %111 = call i32 @set_buffer_uptodate(%struct.buffer_head* %110)
  br label %112

112:                                              ; preds = %100, %96
  %113 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %114 = call i32 @unlock_buffer(%struct.buffer_head* %113)
  %115 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %116 = call i32 @BUFFER_TRACE(%struct.buffer_head* %115, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %117 = load i32*, i32** %6, align 8
  %118 = load %struct.inode*, %struct.inode** %7, align 8
  %119 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %120 = call i32 @ext4_handle_dirty_metadata(i32* %117, %struct.inode* %118, %struct.buffer_head* %119)
  store i32 %120, i32* %13, align 4
  %121 = load i32, i32* %13, align 4
  %122 = call i64 @unlikely(i32 %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %125

124:                                              ; preds = %112
  br label %131

125:                                              ; preds = %112
  br label %129

126:                                              ; preds = %68
  %127 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %128 = call i32 @BUFFER_TRACE(%struct.buffer_head* %127, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  br label %129

129:                                              ; preds = %126, %125
  %130 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  store %struct.buffer_head* %130, %struct.buffer_head** %5, align 8
  br label %136

131:                                              ; preds = %124, %93
  %132 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %133 = call i32 @brelse(%struct.buffer_head* %132)
  %134 = load i32, i32* %13, align 4
  %135 = call %struct.buffer_head* @ERR_PTR(i32 %134)
  store %struct.buffer_head* %135, %struct.buffer_head** %5, align 8
  br label %136

136:                                              ; preds = %131, %129, %64, %48, %43
  %137 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  ret %struct.buffer_head* %137
}

declare dso_local i32 @J_ASSERT(i32) #1

declare dso_local i32 @ext4_map_blocks(i32*, %struct.inode*, %struct.ext4_map_blocks*, i32) #1

declare dso_local %struct.buffer_head* @ERR_PTR(i32) #1

declare dso_local %struct.buffer_head* @sb_getblk(%struct.TYPE_2__*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @lock_buffer(%struct.buffer_head*) #1

declare dso_local i32 @BUFFER_TRACE(%struct.buffer_head*, i8*) #1

declare dso_local i32 @ext4_journal_get_create_access(i32*, %struct.buffer_head*) #1

declare dso_local i32 @unlock_buffer(%struct.buffer_head*) #1

declare dso_local i32 @buffer_uptodate(%struct.buffer_head*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @set_buffer_uptodate(%struct.buffer_head*) #1

declare dso_local i32 @ext4_handle_dirty_metadata(i32*, %struct.inode*, %struct.buffer_head*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
