; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_inode.c_ext4_da_get_block_prep.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_inode.c_ext4_da_get_block_prep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.buffer_head = type { i64 }
%struct.ext4_map_blocks = type { i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ext4_da_get_block_prep(%struct.inode* %0, i32 %1, %struct.buffer_head* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.buffer_head*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.ext4_map_blocks, align 4
  %11 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.buffer_head* %2, %struct.buffer_head** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %11, align 4
  %12 = load i32, i32* %9, align 4
  %13 = icmp eq i32 %12, 0
  %14 = zext i1 %13 to i32
  %15 = call i32 @BUG_ON(i32 %14)
  %16 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %17 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.inode*, %struct.inode** %6, align 8
  %20 = getelementptr inbounds %struct.inode, %struct.inode* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %18, %23
  %25 = zext i1 %24 to i32
  %26 = call i32 @BUG_ON(i32 %25)
  %27 = load i32, i32* %7, align 4
  %28 = getelementptr inbounds %struct.ext4_map_blocks, %struct.ext4_map_blocks* %10, i32 0, i32 3
  store i32 %27, i32* %28, align 4
  %29 = getelementptr inbounds %struct.ext4_map_blocks, %struct.ext4_map_blocks* %10, i32 0, i32 0
  store i32 1, i32* %29, align 4
  %30 = load %struct.inode*, %struct.inode** %6, align 8
  %31 = load i32, i32* %7, align 4
  %32 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %33 = call i32 @ext4_da_map_blocks(%struct.inode* %30, i32 %31, %struct.ext4_map_blocks* %10, %struct.buffer_head* %32)
  store i32 %33, i32* %11, align 4
  %34 = load i32, i32* %11, align 4
  %35 = icmp sle i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %4
  %37 = load i32, i32* %11, align 4
  store i32 %37, i32* %5, align 4
  br label %59

38:                                               ; preds = %4
  %39 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %40 = load %struct.inode*, %struct.inode** %6, align 8
  %41 = getelementptr inbounds %struct.inode, %struct.inode* %40, i32 0, i32 0
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.ext4_map_blocks, %struct.ext4_map_blocks* %10, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @map_bh(%struct.buffer_head* %39, %struct.TYPE_2__* %42, i32 %44)
  %46 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %47 = getelementptr inbounds %struct.ext4_map_blocks, %struct.ext4_map_blocks* %10, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @ext4_update_bh_state(%struct.buffer_head* %46, i32 %48)
  %50 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %51 = call i64 @buffer_unwritten(%struct.buffer_head* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %38
  %54 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %55 = call i32 @set_buffer_new(%struct.buffer_head* %54)
  %56 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %57 = call i32 @set_buffer_mapped(%struct.buffer_head* %56)
  br label %58

58:                                               ; preds = %53, %38
  store i32 0, i32* %5, align 4
  br label %59

59:                                               ; preds = %58, %36
  %60 = load i32, i32* %5, align 4
  ret i32 %60
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @ext4_da_map_blocks(%struct.inode*, i32, %struct.ext4_map_blocks*, %struct.buffer_head*) #1

declare dso_local i32 @map_bh(%struct.buffer_head*, %struct.TYPE_2__*, i32) #1

declare dso_local i32 @ext4_update_bh_state(%struct.buffer_head*, i32) #1

declare dso_local i64 @buffer_unwritten(%struct.buffer_head*) #1

declare dso_local i32 @set_buffer_new(%struct.buffer_head*) #1

declare dso_local i32 @set_buffer_mapped(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
