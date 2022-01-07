; ModuleID = '/home/carl/AnghaBench/linux/fs/minix/extr_bitmap.c_minix_V1_raw_inode.c'
source_filename = "/home/carl/AnghaBench/linux/fs/minix/extr_bitmap.c_minix_V1_raw_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.minix_inode = type { i32 }
%struct.super_block = type { i32 }
%struct.buffer_head = type { i64 }
%struct.minix_sb_info = type { i32, i32, i32 }

@.str = private unnamed_addr constant [49 x i8] c"Bad inode number on dev %s: %ld is out of range\0A\00", align 1
@MINIX_INODES_PER_BLOCK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"Unable to read inode block\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.minix_inode* @minix_V1_raw_inode(%struct.super_block* %0, i32 %1, %struct.buffer_head** %2) #0 {
  %4 = alloca %struct.minix_inode*, align 8
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.buffer_head**, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.minix_sb_info*, align 8
  %10 = alloca %struct.minix_inode*, align 8
  store %struct.super_block* %0, %struct.super_block** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.buffer_head** %2, %struct.buffer_head*** %7, align 8
  %11 = load %struct.super_block*, %struct.super_block** %5, align 8
  %12 = call %struct.minix_sb_info* @minix_sb(%struct.super_block* %11)
  store %struct.minix_sb_info* %12, %struct.minix_sb_info** %9, align 8
  %13 = load i32, i32* %6, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %3
  %16 = load i32, i32* %6, align 4
  %17 = load %struct.minix_sb_info*, %struct.minix_sb_info** %9, align 8
  %18 = getelementptr inbounds %struct.minix_sb_info, %struct.minix_sb_info* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp sgt i32 %16, %19
  br i1 %20, label %21, label %28

21:                                               ; preds = %15, %3
  %22 = load %struct.super_block*, %struct.super_block** %5, align 8
  %23 = getelementptr inbounds %struct.super_block, %struct.super_block* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %6, align 4
  %26 = sext i32 %25 to i64
  %27 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %24, i64 %26)
  store %struct.minix_inode* null, %struct.minix_inode** %4, align 8
  br label %65

28:                                               ; preds = %15
  %29 = load i32, i32* %6, align 4
  %30 = add nsw i32 %29, -1
  store i32 %30, i32* %6, align 4
  %31 = load %struct.minix_sb_info*, %struct.minix_sb_info** %9, align 8
  %32 = getelementptr inbounds %struct.minix_sb_info, %struct.minix_sb_info* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = add nsw i32 2, %33
  %35 = load %struct.minix_sb_info*, %struct.minix_sb_info** %9, align 8
  %36 = getelementptr inbounds %struct.minix_sb_info, %struct.minix_sb_info* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = add nsw i32 %34, %37
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* @MINIX_INODES_PER_BLOCK, align 4
  %41 = sdiv i32 %39, %40
  %42 = add nsw i32 %38, %41
  store i32 %42, i32* %8, align 4
  %43 = load %struct.super_block*, %struct.super_block** %5, align 8
  %44 = load i32, i32* %8, align 4
  %45 = call %struct.buffer_head* @sb_bread(%struct.super_block* %43, i32 %44)
  %46 = load %struct.buffer_head**, %struct.buffer_head*** %7, align 8
  store %struct.buffer_head* %45, %struct.buffer_head** %46, align 8
  %47 = load %struct.buffer_head**, %struct.buffer_head*** %7, align 8
  %48 = load %struct.buffer_head*, %struct.buffer_head** %47, align 8
  %49 = icmp ne %struct.buffer_head* %48, null
  br i1 %49, label %52, label %50

50:                                               ; preds = %28
  %51 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  store %struct.minix_inode* null, %struct.minix_inode** %4, align 8
  br label %65

52:                                               ; preds = %28
  %53 = load %struct.buffer_head**, %struct.buffer_head*** %7, align 8
  %54 = load %struct.buffer_head*, %struct.buffer_head** %53, align 8
  %55 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = inttoptr i64 %56 to i8*
  %58 = bitcast i8* %57 to %struct.minix_inode*
  store %struct.minix_inode* %58, %struct.minix_inode** %10, align 8
  %59 = load %struct.minix_inode*, %struct.minix_inode** %10, align 8
  %60 = load i32, i32* %6, align 4
  %61 = load i32, i32* @MINIX_INODES_PER_BLOCK, align 4
  %62 = srem i32 %60, %61
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.minix_inode, %struct.minix_inode* %59, i64 %63
  store %struct.minix_inode* %64, %struct.minix_inode** %4, align 8
  br label %65

65:                                               ; preds = %52, %50, %21
  %66 = load %struct.minix_inode*, %struct.minix_inode** %4, align 8
  ret %struct.minix_inode* %66
}

declare dso_local %struct.minix_sb_info* @minix_sb(%struct.super_block*) #1

declare dso_local i32 @printk(i8*, ...) #1

declare dso_local %struct.buffer_head* @sb_bread(%struct.super_block*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
