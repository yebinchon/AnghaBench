; ModuleID = '/home/carl/AnghaBench/linux/fs/ufs/extr_balloc.c_ufs_clear_frags.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ufs/extr_balloc.c_ufs_clear_frags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.buffer_head = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.inode*, i64, i32, i32)* @ufs_clear_frags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ufs_clear_frags(%struct.inode* %0, i64 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.inode*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.buffer_head*, align 8
  %10 = alloca i64, align 8
  store %struct.inode* %0, %struct.inode** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load i64, i64* %6, align 8
  %12 = load i32, i32* %7, align 4
  %13 = zext i32 %12 to i64
  %14 = add nsw i64 %11, %13
  store i64 %14, i64* %10, align 8
  br label %15

15:                                               ; preds = %54, %4
  %16 = load i64, i64* %6, align 8
  %17 = load i64, i64* %10, align 8
  %18 = icmp slt i64 %16, %17
  br i1 %18, label %19, label %57

19:                                               ; preds = %15
  %20 = load %struct.inode*, %struct.inode** %5, align 8
  %21 = getelementptr inbounds %struct.inode, %struct.inode* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = load i64, i64* %6, align 8
  %24 = call %struct.buffer_head* @sb_getblk(%struct.TYPE_2__* %22, i64 %23)
  store %struct.buffer_head* %24, %struct.buffer_head** %9, align 8
  %25 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %26 = call i32 @lock_buffer(%struct.buffer_head* %25)
  %27 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %28 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.inode*, %struct.inode** %5, align 8
  %31 = getelementptr inbounds %struct.inode, %struct.inode* %30, i32 0, i32 0
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @memset(i32 %29, i32 0, i32 %34)
  %36 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %37 = call i32 @set_buffer_uptodate(%struct.buffer_head* %36)
  %38 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %39 = call i32 @mark_buffer_dirty(%struct.buffer_head* %38)
  %40 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %41 = call i32 @unlock_buffer(%struct.buffer_head* %40)
  %42 = load %struct.inode*, %struct.inode** %5, align 8
  %43 = call i64 @IS_SYNC(%struct.inode* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %19
  %46 = load i32, i32* %8, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %45, %19
  %49 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %50 = call i32 @sync_dirty_buffer(%struct.buffer_head* %49)
  br label %51

51:                                               ; preds = %48, %45
  %52 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %53 = call i32 @brelse(%struct.buffer_head* %52)
  br label %54

54:                                               ; preds = %51
  %55 = load i64, i64* %6, align 8
  %56 = add nsw i64 %55, 1
  store i64 %56, i64* %6, align 8
  br label %15

57:                                               ; preds = %15
  ret void
}

declare dso_local %struct.buffer_head* @sb_getblk(%struct.TYPE_2__*, i64) #1

declare dso_local i32 @lock_buffer(%struct.buffer_head*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @set_buffer_uptodate(%struct.buffer_head*) #1

declare dso_local i32 @mark_buffer_dirty(%struct.buffer_head*) #1

declare dso_local i32 @unlock_buffer(%struct.buffer_head*) #1

declare dso_local i64 @IS_SYNC(%struct.inode*) #1

declare dso_local i32 @sync_dirty_buffer(%struct.buffer_head*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
