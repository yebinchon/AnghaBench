; ModuleID = '/home/carl/AnghaBench/linux/fs/gfs2/extr_ops_fstype.c_gfs2_lookup_root.c'
source_filename = "/home/carl/AnghaBench/linux/fs/gfs2/extr_ops_fstype.c_gfs2_lookup_root.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { %struct.gfs2_sbd* }
%struct.gfs2_sbd = type { i32 }
%struct.dentry = type { i32 }
%struct.inode = type { i32 }

@DT_DIR = common dso_local global i32 0, align 4
@GFS2_BLKST_FREE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"can't read in %s inode: %ld\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"can't alloc %s dentry\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, %struct.dentry**, i32, i8*)* @gfs2_lookup_root to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gfs2_lookup_root(%struct.super_block* %0, %struct.dentry** %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.super_block*, align 8
  %7 = alloca %struct.dentry**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.gfs2_sbd*, align 8
  %11 = alloca %struct.dentry*, align 8
  %12 = alloca %struct.inode*, align 8
  store %struct.super_block* %0, %struct.super_block** %6, align 8
  store %struct.dentry** %1, %struct.dentry*** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %13 = load %struct.super_block*, %struct.super_block** %6, align 8
  %14 = getelementptr inbounds %struct.super_block, %struct.super_block* %13, i32 0, i32 0
  %15 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %14, align 8
  store %struct.gfs2_sbd* %15, %struct.gfs2_sbd** %10, align 8
  %16 = load %struct.super_block*, %struct.super_block** %6, align 8
  %17 = load i32, i32* @DT_DIR, align 4
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* @GFS2_BLKST_FREE, align 4
  %20 = call %struct.inode* @gfs2_inode_lookup(%struct.super_block* %16, i32 %17, i32 %18, i32 0, i32 %19)
  store %struct.inode* %20, %struct.inode** %12, align 8
  %21 = load %struct.inode*, %struct.inode** %12, align 8
  %22 = call i64 @IS_ERR(%struct.inode* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %32

24:                                               ; preds = %4
  %25 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %10, align 8
  %26 = load i8*, i8** %9, align 8
  %27 = load %struct.inode*, %struct.inode** %12, align 8
  %28 = call i32 @PTR_ERR(%struct.inode* %27)
  %29 = call i32 (%struct.gfs2_sbd*, i8*, i8*, ...) @fs_err(%struct.gfs2_sbd* %25, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8* %26, i32 %28)
  %30 = load %struct.inode*, %struct.inode** %12, align 8
  %31 = call i32 @PTR_ERR(%struct.inode* %30)
  store i32 %31, i32* %5, align 4
  br label %46

32:                                               ; preds = %4
  %33 = load %struct.inode*, %struct.inode** %12, align 8
  %34 = call %struct.dentry* @d_make_root(%struct.inode* %33)
  store %struct.dentry* %34, %struct.dentry** %11, align 8
  %35 = load %struct.dentry*, %struct.dentry** %11, align 8
  %36 = icmp ne %struct.dentry* %35, null
  br i1 %36, label %43, label %37

37:                                               ; preds = %32
  %38 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %10, align 8
  %39 = load i8*, i8** %9, align 8
  %40 = call i32 (%struct.gfs2_sbd*, i8*, i8*, ...) @fs_err(%struct.gfs2_sbd* %38, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* %39)
  %41 = load i32, i32* @ENOMEM, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %5, align 4
  br label %46

43:                                               ; preds = %32
  %44 = load %struct.dentry*, %struct.dentry** %11, align 8
  %45 = load %struct.dentry**, %struct.dentry*** %7, align 8
  store %struct.dentry* %44, %struct.dentry** %45, align 8
  store i32 0, i32* %5, align 4
  br label %46

46:                                               ; preds = %43, %37, %24
  %47 = load i32, i32* %5, align 4
  ret i32 %47
}

declare dso_local %struct.inode* @gfs2_inode_lookup(%struct.super_block*, i32, i32, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.inode*) #1

declare dso_local i32 @fs_err(%struct.gfs2_sbd*, i8*, i8*, ...) #1

declare dso_local i32 @PTR_ERR(%struct.inode*) #1

declare dso_local %struct.dentry* @d_make_root(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
