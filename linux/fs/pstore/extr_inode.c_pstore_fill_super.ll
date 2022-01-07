; ModuleID = '/home/carl/AnghaBench/linux/fs/pstore/extr_inode.c_pstore_fill_super.c'
source_filename = "/home/carl/AnghaBench/linux/fs/pstore/extr_inode.c_pstore_fill_super.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32, i32, i32*, i32, i32, i32, i32 }
%struct.inode = type { i32, i32*, i32* }

@pstore_sb = common dso_local global %struct.super_block* null, align 8
@MAX_LFS_FILESIZE = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@PSTOREFS_MAGIC = common dso_local global i32 0, align 4
@pstore_ops = common dso_local global i32 0, align 4
@S_IFDIR = common dso_local global i32 0, align 4
@pstore_dir_inode_operations = common dso_local global i32 0, align 4
@simple_dir_operations = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, i8*, i32)* @pstore_fill_super to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pstore_fill_super(%struct.super_block* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.inode*, align 8
  store %struct.super_block* %0, %struct.super_block** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.super_block*, %struct.super_block** %5, align 8
  store %struct.super_block* %9, %struct.super_block** @pstore_sb, align 8
  %10 = load i32, i32* @MAX_LFS_FILESIZE, align 4
  %11 = load %struct.super_block*, %struct.super_block** %5, align 8
  %12 = getelementptr inbounds %struct.super_block, %struct.super_block* %11, i32 0, i32 6
  store i32 %10, i32* %12, align 4
  %13 = load i32, i32* @PAGE_SIZE, align 4
  %14 = load %struct.super_block*, %struct.super_block** %5, align 8
  %15 = getelementptr inbounds %struct.super_block, %struct.super_block* %14, i32 0, i32 5
  store i32 %13, i32* %15, align 8
  %16 = load i32, i32* @PAGE_SHIFT, align 4
  %17 = load %struct.super_block*, %struct.super_block** %5, align 8
  %18 = getelementptr inbounds %struct.super_block, %struct.super_block* %17, i32 0, i32 4
  store i32 %16, i32* %18, align 4
  %19 = load i32, i32* @PSTOREFS_MAGIC, align 4
  %20 = load %struct.super_block*, %struct.super_block** %5, align 8
  %21 = getelementptr inbounds %struct.super_block, %struct.super_block* %20, i32 0, i32 3
  store i32 %19, i32* %21, align 8
  %22 = load %struct.super_block*, %struct.super_block** %5, align 8
  %23 = getelementptr inbounds %struct.super_block, %struct.super_block* %22, i32 0, i32 2
  store i32* @pstore_ops, i32** %23, align 8
  %24 = load %struct.super_block*, %struct.super_block** %5, align 8
  %25 = getelementptr inbounds %struct.super_block, %struct.super_block* %24, i32 0, i32 0
  store i32 1, i32* %25, align 8
  %26 = load i8*, i8** %6, align 8
  %27 = call i32 @parse_options(i8* %26)
  %28 = load %struct.super_block*, %struct.super_block** %5, align 8
  %29 = call %struct.inode* @pstore_get_inode(%struct.super_block* %28)
  store %struct.inode* %29, %struct.inode** %8, align 8
  %30 = load %struct.inode*, %struct.inode** %8, align 8
  %31 = icmp ne %struct.inode* %30, null
  br i1 %31, label %32, label %43

32:                                               ; preds = %3
  %33 = load i32, i32* @S_IFDIR, align 4
  %34 = or i32 %33, 488
  %35 = load %struct.inode*, %struct.inode** %8, align 8
  %36 = getelementptr inbounds %struct.inode, %struct.inode* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 8
  %37 = load %struct.inode*, %struct.inode** %8, align 8
  %38 = getelementptr inbounds %struct.inode, %struct.inode* %37, i32 0, i32 2
  store i32* @pstore_dir_inode_operations, i32** %38, align 8
  %39 = load %struct.inode*, %struct.inode** %8, align 8
  %40 = getelementptr inbounds %struct.inode, %struct.inode* %39, i32 0, i32 1
  store i32* @simple_dir_operations, i32** %40, align 8
  %41 = load %struct.inode*, %struct.inode** %8, align 8
  %42 = call i32 @inc_nlink(%struct.inode* %41)
  br label %43

43:                                               ; preds = %32, %3
  %44 = load %struct.inode*, %struct.inode** %8, align 8
  %45 = call i32 @d_make_root(%struct.inode* %44)
  %46 = load %struct.super_block*, %struct.super_block** %5, align 8
  %47 = getelementptr inbounds %struct.super_block, %struct.super_block* %46, i32 0, i32 1
  store i32 %45, i32* %47, align 4
  %48 = load %struct.super_block*, %struct.super_block** %5, align 8
  %49 = getelementptr inbounds %struct.super_block, %struct.super_block* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %55, label %52

52:                                               ; preds = %43
  %53 = load i32, i32* @ENOMEM, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %4, align 4
  br label %57

55:                                               ; preds = %43
  %56 = call i32 @pstore_get_records(i32 0)
  store i32 0, i32* %4, align 4
  br label %57

57:                                               ; preds = %55, %52
  %58 = load i32, i32* %4, align 4
  ret i32 %58
}

declare dso_local i32 @parse_options(i8*) #1

declare dso_local %struct.inode* @pstore_get_inode(%struct.super_block*) #1

declare dso_local i32 @inc_nlink(%struct.inode*) #1

declare dso_local i32 @d_make_root(%struct.inode*) #1

declare dso_local i32 @pstore_get_records(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
