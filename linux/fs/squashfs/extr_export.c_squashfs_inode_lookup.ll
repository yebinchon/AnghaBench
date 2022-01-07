; ModuleID = '/home/carl/AnghaBench/linux/fs/squashfs/extr_export.c_squashfs_inode_lookup.c'
source_filename = "/home/carl/AnghaBench/linux/fs/squashfs/extr_export.c_squashfs_inode_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { %struct.squashfs_sb_info* }
%struct.squashfs_sb_info = type { i32* }

@.str = private unnamed_addr constant [50 x i8] c"Entered squashfs_inode_lookup, inode_number = %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"squashfs_inode_lookup, inode = 0x%llx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.super_block*, i32)* @squashfs_inode_lookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @squashfs_inode_lookup(%struct.super_block* %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.super_block*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.squashfs_sb_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load %struct.super_block*, %struct.super_block** %4, align 8
  %13 = getelementptr inbounds %struct.super_block, %struct.super_block* %12, i32 0, i32 0
  %14 = load %struct.squashfs_sb_info*, %struct.squashfs_sb_info** %13, align 8
  store %struct.squashfs_sb_info* %14, %struct.squashfs_sb_info** %6, align 8
  %15 = load i32, i32* %5, align 4
  %16 = sub nsw i32 %15, 1
  %17 = call i32 @SQUASHFS_LOOKUP_BLOCK(i32 %16)
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %5, align 4
  %19 = sub nsw i32 %18, 1
  %20 = call i32 @SQUASHFS_LOOKUP_BLOCK_OFFSET(i32 %19)
  store i32 %20, i32* %8, align 4
  %21 = load %struct.squashfs_sb_info*, %struct.squashfs_sb_info** %6, align 8
  %22 = getelementptr inbounds %struct.squashfs_sb_info, %struct.squashfs_sb_info* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = load i32, i32* %7, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = call i64 @le64_to_cpu(i32 %27)
  %29 = trunc i64 %28 to i32
  store i32 %29, i32* %9, align 4
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @TRACE(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %30)
  %32 = load %struct.super_block*, %struct.super_block** %4, align 8
  %33 = call i32 @squashfs_read_metadata(%struct.super_block* %32, i32* %10, i32* %9, i32* %8, i32 4)
  store i32 %33, i32* %11, align 4
  %34 = load i32, i32* %11, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %2
  %37 = load i32, i32* %11, align 4
  %38 = sext i32 %37 to i64
  store i64 %38, i64* %3, align 8
  br label %46

39:                                               ; preds = %2
  %40 = load i32, i32* %10, align 4
  %41 = call i64 @le64_to_cpu(i32 %40)
  %42 = trunc i64 %41 to i32
  %43 = call i32 @TRACE(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %42)
  %44 = load i32, i32* %10, align 4
  %45 = call i64 @le64_to_cpu(i32 %44)
  store i64 %45, i64* %3, align 8
  br label %46

46:                                               ; preds = %39, %36
  %47 = load i64, i64* %3, align 8
  ret i64 %47
}

declare dso_local i32 @SQUASHFS_LOOKUP_BLOCK(i32) #1

declare dso_local i32 @SQUASHFS_LOOKUP_BLOCK_OFFSET(i32) #1

declare dso_local i64 @le64_to_cpu(i32) #1

declare dso_local i32 @TRACE(i8*, i32) #1

declare dso_local i32 @squashfs_read_metadata(%struct.super_block*, i32*, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
