; ModuleID = '/home/carl/AnghaBench/linux/fs/minix/extr_bitmap.c_minix_V2_raw_inode.c'
source_filename = "/home/carl/AnghaBench/linux/fs/minix/extr_bitmap.c_minix_V2_raw_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.minix2_inode = type { i32 }
%struct.super_block = type { i32, i32 }
%struct.buffer_head = type { i64 }
%struct.minix_sb_info = type { i32, i32, i32 }

@.str = private unnamed_addr constant [49 x i8] c"Bad inode number on dev %s: %ld is out of range\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"Unable to read inode block\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.minix2_inode* @minix_V2_raw_inode(%struct.super_block* %0, i32 %1, %struct.buffer_head** %2) #0 {
  %4 = alloca %struct.minix2_inode*, align 8
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.buffer_head**, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.minix_sb_info*, align 8
  %10 = alloca %struct.minix2_inode*, align 8
  %11 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.buffer_head** %2, %struct.buffer_head*** %7, align 8
  %12 = load %struct.super_block*, %struct.super_block** %5, align 8
  %13 = call %struct.minix_sb_info* @minix_sb(%struct.super_block* %12)
  store %struct.minix_sb_info* %13, %struct.minix_sb_info** %9, align 8
  %14 = load %struct.super_block*, %struct.super_block** %5, align 8
  %15 = getelementptr inbounds %struct.super_block, %struct.super_block* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = sext i32 %16 to i64
  %18 = udiv i64 %17, 4
  %19 = trunc i64 %18 to i32
  store i32 %19, i32* %11, align 4
  %20 = load %struct.buffer_head**, %struct.buffer_head*** %7, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %20, align 8
  %21 = load i32, i32* %6, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %3
  %24 = load i32, i32* %6, align 4
  %25 = load %struct.minix_sb_info*, %struct.minix_sb_info** %9, align 8
  %26 = getelementptr inbounds %struct.minix_sb_info, %struct.minix_sb_info* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp sgt i32 %24, %27
  br i1 %28, label %29, label %36

29:                                               ; preds = %23, %3
  %30 = load %struct.super_block*, %struct.super_block** %5, align 8
  %31 = getelementptr inbounds %struct.super_block, %struct.super_block* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %6, align 4
  %34 = sext i32 %33 to i64
  %35 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %32, i64 %34)
  store %struct.minix2_inode* null, %struct.minix2_inode** %4, align 8
  br label %73

36:                                               ; preds = %23
  %37 = load i32, i32* %6, align 4
  %38 = add nsw i32 %37, -1
  store i32 %38, i32* %6, align 4
  %39 = load %struct.minix_sb_info*, %struct.minix_sb_info** %9, align 8
  %40 = getelementptr inbounds %struct.minix_sb_info, %struct.minix_sb_info* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = add nsw i32 2, %41
  %43 = load %struct.minix_sb_info*, %struct.minix_sb_info** %9, align 8
  %44 = getelementptr inbounds %struct.minix_sb_info, %struct.minix_sb_info* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = add nsw i32 %42, %45
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* %11, align 4
  %49 = sdiv i32 %47, %48
  %50 = add nsw i32 %46, %49
  store i32 %50, i32* %8, align 4
  %51 = load %struct.super_block*, %struct.super_block** %5, align 8
  %52 = load i32, i32* %8, align 4
  %53 = call %struct.buffer_head* @sb_bread(%struct.super_block* %51, i32 %52)
  %54 = load %struct.buffer_head**, %struct.buffer_head*** %7, align 8
  store %struct.buffer_head* %53, %struct.buffer_head** %54, align 8
  %55 = load %struct.buffer_head**, %struct.buffer_head*** %7, align 8
  %56 = load %struct.buffer_head*, %struct.buffer_head** %55, align 8
  %57 = icmp ne %struct.buffer_head* %56, null
  br i1 %57, label %60, label %58

58:                                               ; preds = %36
  %59 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  store %struct.minix2_inode* null, %struct.minix2_inode** %4, align 8
  br label %73

60:                                               ; preds = %36
  %61 = load %struct.buffer_head**, %struct.buffer_head*** %7, align 8
  %62 = load %struct.buffer_head*, %struct.buffer_head** %61, align 8
  %63 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = inttoptr i64 %64 to i8*
  %66 = bitcast i8* %65 to %struct.minix2_inode*
  store %struct.minix2_inode* %66, %struct.minix2_inode** %10, align 8
  %67 = load %struct.minix2_inode*, %struct.minix2_inode** %10, align 8
  %68 = load i32, i32* %6, align 4
  %69 = load i32, i32* %11, align 4
  %70 = srem i32 %68, %69
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.minix2_inode, %struct.minix2_inode* %67, i64 %71
  store %struct.minix2_inode* %72, %struct.minix2_inode** %4, align 8
  br label %73

73:                                               ; preds = %60, %58, %29
  %74 = load %struct.minix2_inode*, %struct.minix2_inode** %4, align 8
  ret %struct.minix2_inode* %74
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
