; ModuleID = '/home/carl/AnghaBench/linux/fs/hpfs/extr_namei.c_hpfs_unlink.c'
source_filename = "/home/carl/AnghaBench/linux/fs/hpfs/extr_namei.c_hpfs_unlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.dentry = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i8*, i32 }
%struct.quad_buffer_head = type { i32 }
%struct.hpfs_dirent = type { i64, i64 }
%struct.TYPE_4__ = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@EISDIR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"there was error when removing dirent\00", align 1
@EFSERROR = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*)* @hpfs_unlink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hpfs_unlink(%struct.inode* %0, %struct.dentry* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.quad_buffer_head, align 4
  %8 = alloca %struct.hpfs_dirent*, align 8
  %9 = alloca %struct.inode*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.dentry* %1, %struct.dentry** %4, align 8
  %13 = load %struct.dentry*, %struct.dentry** %4, align 8
  %14 = getelementptr inbounds %struct.dentry, %struct.dentry* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  store i8* %16, i8** %5, align 8
  %17 = load %struct.dentry*, %struct.dentry** %4, align 8
  %18 = getelementptr inbounds %struct.dentry, %struct.dentry* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %6, align 4
  %21 = load %struct.dentry*, %struct.dentry** %4, align 8
  %22 = call %struct.inode* @d_inode(%struct.dentry* %21)
  store %struct.inode* %22, %struct.inode** %9, align 8
  %23 = load %struct.inode*, %struct.inode** %3, align 8
  %24 = getelementptr inbounds %struct.inode, %struct.inode* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @hpfs_lock(i32 %25)
  %27 = load i8*, i8** %5, align 8
  %28 = call i32 @hpfs_adjust_length(i8* %27, i32* %6)
  %29 = load i32, i32* @ENOENT, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %12, align 4
  %31 = load %struct.inode*, %struct.inode** %3, align 8
  %32 = load %struct.inode*, %struct.inode** %3, align 8
  %33 = call %struct.TYPE_4__* @hpfs_i(%struct.inode* %32)
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i8*, i8** %5, align 8
  %37 = load i32, i32* %6, align 4
  %38 = call %struct.hpfs_dirent* @map_dirent(%struct.inode* %31, i32 %35, i8* %36, i32 %37, i32* %10, %struct.quad_buffer_head* %7)
  store %struct.hpfs_dirent* %38, %struct.hpfs_dirent** %8, align 8
  %39 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %8, align 8
  %40 = icmp ne %struct.hpfs_dirent* %39, null
  br i1 %40, label %42, label %41

41:                                               ; preds = %2
  br label %80

42:                                               ; preds = %2
  %43 = load i32, i32* @EPERM, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %12, align 4
  %45 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %8, align 8
  %46 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %42
  br label %78

50:                                               ; preds = %42
  %51 = load i32, i32* @EISDIR, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %12, align 4
  %53 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %8, align 8
  %54 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %50
  br label %78

58:                                               ; preds = %50
  %59 = load %struct.inode*, %struct.inode** %3, align 8
  %60 = load i32, i32* %10, align 4
  %61 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %8, align 8
  %62 = call i32 @hpfs_remove_dirent(%struct.inode* %59, i32 %60, %struct.hpfs_dirent* %61, %struct.quad_buffer_head* %7, i32 1)
  store i32 %62, i32* %11, align 4
  %63 = load i32, i32* %11, align 4
  switch i32 %63, label %74 [
    i32 1, label %64
    i32 2, label %71
  ]

64:                                               ; preds = %58
  %65 = load %struct.inode*, %struct.inode** %3, align 8
  %66 = getelementptr inbounds %struct.inode, %struct.inode* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @hpfs_error(i32 %67, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %69 = load i32, i32* @EFSERROR, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %12, align 4
  br label %77

71:                                               ; preds = %58
  %72 = load i32, i32* @ENOSPC, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %12, align 4
  br label %77

74:                                               ; preds = %58
  %75 = load %struct.inode*, %struct.inode** %9, align 8
  %76 = call i32 @drop_nlink(%struct.inode* %75)
  store i32 0, i32* %12, align 4
  br label %77

77:                                               ; preds = %74, %71, %64
  br label %80

78:                                               ; preds = %57, %49
  %79 = call i32 @hpfs_brelse4(%struct.quad_buffer_head* %7)
  br label %80

80:                                               ; preds = %78, %77, %41
  %81 = load i32, i32* %12, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %86, label %83

83:                                               ; preds = %80
  %84 = load %struct.inode*, %struct.inode** %3, align 8
  %85 = call i32 @hpfs_update_directory_times(%struct.inode* %84)
  br label %86

86:                                               ; preds = %83, %80
  %87 = load %struct.inode*, %struct.inode** %3, align 8
  %88 = getelementptr inbounds %struct.inode, %struct.inode* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @hpfs_unlock(i32 %89)
  %91 = load i32, i32* %12, align 4
  ret i32 %91
}

declare dso_local %struct.inode* @d_inode(%struct.dentry*) #1

declare dso_local i32 @hpfs_lock(i32) #1

declare dso_local i32 @hpfs_adjust_length(i8*, i32*) #1

declare dso_local %struct.hpfs_dirent* @map_dirent(%struct.inode*, i32, i8*, i32, i32*, %struct.quad_buffer_head*) #1

declare dso_local %struct.TYPE_4__* @hpfs_i(%struct.inode*) #1

declare dso_local i32 @hpfs_remove_dirent(%struct.inode*, i32, %struct.hpfs_dirent*, %struct.quad_buffer_head*, i32) #1

declare dso_local i32 @hpfs_error(i32, i8*) #1

declare dso_local i32 @drop_nlink(%struct.inode*) #1

declare dso_local i32 @hpfs_brelse4(%struct.quad_buffer_head*) #1

declare dso_local i32 @hpfs_update_directory_times(%struct.inode*) #1

declare dso_local i32 @hpfs_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
