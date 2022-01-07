; ModuleID = '/home/carl/AnghaBench/linux/fs/nilfs2/extr_gcinode.c_nilfs_gccache_wait_and_mark_dirty.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nilfs2/extr_gcinode.c_nilfs_gccache_wait_and_mark_dirty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buffer_head = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.inode* }
%struct.inode = type { i32, i32 }

@KERN_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [59 x i8] c"I/O error reading %s block for GC (ino=%lu, vblocknr=%llu)\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"node\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"data\00", align 1
@EIO = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nilfs_gccache_wait_and_mark_dirty(%struct.buffer_head* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.buffer_head*, align 8
  %4 = alloca %struct.inode*, align 8
  store %struct.buffer_head* %0, %struct.buffer_head** %3, align 8
  %5 = load %struct.buffer_head*, %struct.buffer_head** %3, align 8
  %6 = call i32 @wait_on_buffer(%struct.buffer_head* %5)
  %7 = load %struct.buffer_head*, %struct.buffer_head** %3, align 8
  %8 = call i32 @buffer_uptodate(%struct.buffer_head* %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %36, label %10

10:                                               ; preds = %1
  %11 = load %struct.buffer_head*, %struct.buffer_head** %3, align 8
  %12 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %11, i32 0, i32 1
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load %struct.inode*, %struct.inode** %16, align 8
  store %struct.inode* %17, %struct.inode** %4, align 8
  %18 = load %struct.inode*, %struct.inode** %4, align 8
  %19 = getelementptr inbounds %struct.inode, %struct.inode* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @KERN_ERR, align 4
  %22 = load %struct.buffer_head*, %struct.buffer_head** %3, align 8
  %23 = call i64 @buffer_nilfs_node(%struct.buffer_head* %22)
  %24 = icmp ne i64 %23, 0
  %25 = zext i1 %24 to i64
  %26 = select i1 %24, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)
  %27 = load %struct.inode*, %struct.inode** %4, align 8
  %28 = getelementptr inbounds %struct.inode, %struct.inode* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.buffer_head*, %struct.buffer_head** %3, align 8
  %31 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = call i32 @nilfs_msg(i32 %20, i32 %21, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0), i8* %26, i32 %29, i64 %32)
  %34 = load i32, i32* @EIO, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %2, align 4
  br label %59

36:                                               ; preds = %1
  %37 = load %struct.buffer_head*, %struct.buffer_head** %3, align 8
  %38 = call i64 @buffer_dirty(%struct.buffer_head* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %36
  %41 = load i32, i32* @EEXIST, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %2, align 4
  br label %59

43:                                               ; preds = %36
  %44 = load %struct.buffer_head*, %struct.buffer_head** %3, align 8
  %45 = call i64 @buffer_nilfs_node(%struct.buffer_head* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %56

47:                                               ; preds = %43
  %48 = load %struct.buffer_head*, %struct.buffer_head** %3, align 8
  %49 = call i64 @nilfs_btree_broken_node_block(%struct.buffer_head* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %47
  %52 = load %struct.buffer_head*, %struct.buffer_head** %3, align 8
  %53 = call i32 @clear_buffer_uptodate(%struct.buffer_head* %52)
  %54 = load i32, i32* @EIO, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %2, align 4
  br label %59

56:                                               ; preds = %47, %43
  %57 = load %struct.buffer_head*, %struct.buffer_head** %3, align 8
  %58 = call i32 @mark_buffer_dirty(%struct.buffer_head* %57)
  store i32 0, i32* %2, align 4
  br label %59

59:                                               ; preds = %56, %51, %40, %10
  %60 = load i32, i32* %2, align 4
  ret i32 %60
}

declare dso_local i32 @wait_on_buffer(%struct.buffer_head*) #1

declare dso_local i32 @buffer_uptodate(%struct.buffer_head*) #1

declare dso_local i32 @nilfs_msg(i32, i32, i8*, i8*, i32, i64) #1

declare dso_local i64 @buffer_nilfs_node(%struct.buffer_head*) #1

declare dso_local i64 @buffer_dirty(%struct.buffer_head*) #1

declare dso_local i64 @nilfs_btree_broken_node_block(%struct.buffer_head*) #1

declare dso_local i32 @clear_buffer_uptodate(%struct.buffer_head*) #1

declare dso_local i32 @mark_buffer_dirty(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
