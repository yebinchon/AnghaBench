; ModuleID = '/home/carl/AnghaBench/linux/fs/hpfs/extr_namei.c_hpfs_rmdir.c'
source_filename = "/home/carl/AnghaBench/linux/fs/hpfs/extr_namei.c_hpfs_rmdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.dentry = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i8*, i32 }
%struct.quad_buffer_head = type { i32 }
%struct.hpfs_dirent = type { i32, i64 }
%struct.TYPE_4__ = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@ENOTDIR = common dso_local global i32 0, align 4
@ENOTEMPTY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"there was error when removing dirent\00", align 1
@EFSERROR = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*)* @hpfs_rmdir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hpfs_rmdir(%struct.inode* %0, %struct.dentry* %1) #0 {
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
  %13 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.dentry* %1, %struct.dentry** %4, align 8
  %14 = load %struct.dentry*, %struct.dentry** %4, align 8
  %15 = getelementptr inbounds %struct.dentry, %struct.dentry* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  store i8* %17, i8** %5, align 8
  %18 = load %struct.dentry*, %struct.dentry** %4, align 8
  %19 = getelementptr inbounds %struct.dentry, %struct.dentry* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %6, align 4
  %22 = load %struct.dentry*, %struct.dentry** %4, align 8
  %23 = call %struct.inode* @d_inode(%struct.dentry* %22)
  store %struct.inode* %23, %struct.inode** %9, align 8
  store i32 0, i32* %11, align 4
  %24 = load i8*, i8** %5, align 8
  %25 = call i32 @hpfs_adjust_length(i8* %24, i32* %6)
  %26 = load %struct.inode*, %struct.inode** %3, align 8
  %27 = getelementptr inbounds %struct.inode, %struct.inode* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @hpfs_lock(i32 %28)
  %30 = load i32, i32* @ENOENT, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %12, align 4
  %32 = load %struct.inode*, %struct.inode** %3, align 8
  %33 = load %struct.inode*, %struct.inode** %3, align 8
  %34 = call %struct.TYPE_4__* @hpfs_i(%struct.inode* %33)
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i8*, i8** %5, align 8
  %38 = load i32, i32* %6, align 4
  %39 = call %struct.hpfs_dirent* @map_dirent(%struct.inode* %32, i32 %36, i8* %37, i32 %38, i32* %10, %struct.quad_buffer_head* %7)
  store %struct.hpfs_dirent* %39, %struct.hpfs_dirent** %8, align 8
  %40 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %8, align 8
  %41 = icmp ne %struct.hpfs_dirent* %40, null
  br i1 %41, label %43, label %42

42:                                               ; preds = %2
  br label %97

43:                                               ; preds = %2
  %44 = load i32, i32* @EPERM, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %12, align 4
  %46 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %8, align 8
  %47 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %43
  br label %95

51:                                               ; preds = %43
  %52 = load i32, i32* @ENOTDIR, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %12, align 4
  %54 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %8, align 8
  %55 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %51
  br label %95

59:                                               ; preds = %51
  %60 = load %struct.inode*, %struct.inode** %3, align 8
  %61 = getelementptr inbounds %struct.inode, %struct.inode* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.inode*, %struct.inode** %9, align 8
  %64 = call %struct.TYPE_4__* @hpfs_i(%struct.inode* %63)
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @hpfs_count_dnodes(i32 %62, i32 %66, i32* null, i32* null, i32* %11)
  %68 = load i32, i32* @ENOTEMPTY, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %12, align 4
  %70 = load i32, i32* %11, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %59
  br label %95

73:                                               ; preds = %59
  %74 = load %struct.inode*, %struct.inode** %3, align 8
  %75 = load i32, i32* %10, align 4
  %76 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %8, align 8
  %77 = call i32 @hpfs_remove_dirent(%struct.inode* %74, i32 %75, %struct.hpfs_dirent* %76, %struct.quad_buffer_head* %7, i32 1)
  store i32 %77, i32* %13, align 4
  %78 = load i32, i32* %13, align 4
  switch i32 %78, label %89 [
    i32 1, label %79
    i32 2, label %86
  ]

79:                                               ; preds = %73
  %80 = load %struct.inode*, %struct.inode** %3, align 8
  %81 = getelementptr inbounds %struct.inode, %struct.inode* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @hpfs_error(i32 %82, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %84 = load i32, i32* @EFSERROR, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %12, align 4
  br label %94

86:                                               ; preds = %73
  %87 = load i32, i32* @ENOSPC, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %12, align 4
  br label %94

89:                                               ; preds = %73
  %90 = load %struct.inode*, %struct.inode** %3, align 8
  %91 = call i32 @drop_nlink(%struct.inode* %90)
  %92 = load %struct.inode*, %struct.inode** %9, align 8
  %93 = call i32 @clear_nlink(%struct.inode* %92)
  store i32 0, i32* %12, align 4
  br label %94

94:                                               ; preds = %89, %86, %79
  br label %97

95:                                               ; preds = %72, %58, %50
  %96 = call i32 @hpfs_brelse4(%struct.quad_buffer_head* %7)
  br label %97

97:                                               ; preds = %95, %94, %42
  %98 = load i32, i32* %12, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %103, label %100

100:                                              ; preds = %97
  %101 = load %struct.inode*, %struct.inode** %3, align 8
  %102 = call i32 @hpfs_update_directory_times(%struct.inode* %101)
  br label %103

103:                                              ; preds = %100, %97
  %104 = load %struct.inode*, %struct.inode** %3, align 8
  %105 = getelementptr inbounds %struct.inode, %struct.inode* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @hpfs_unlock(i32 %106)
  %108 = load i32, i32* %12, align 4
  ret i32 %108
}

declare dso_local %struct.inode* @d_inode(%struct.dentry*) #1

declare dso_local i32 @hpfs_adjust_length(i8*, i32*) #1

declare dso_local i32 @hpfs_lock(i32) #1

declare dso_local %struct.hpfs_dirent* @map_dirent(%struct.inode*, i32, i8*, i32, i32*, %struct.quad_buffer_head*) #1

declare dso_local %struct.TYPE_4__* @hpfs_i(%struct.inode*) #1

declare dso_local i32 @hpfs_count_dnodes(i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @hpfs_remove_dirent(%struct.inode*, i32, %struct.hpfs_dirent*, %struct.quad_buffer_head*, i32) #1

declare dso_local i32 @hpfs_error(i32, i8*) #1

declare dso_local i32 @drop_nlink(%struct.inode*) #1

declare dso_local i32 @clear_nlink(%struct.inode*) #1

declare dso_local i32 @hpfs_brelse4(%struct.quad_buffer_head*) #1

declare dso_local i32 @hpfs_update_directory_times(%struct.inode*) #1

declare dso_local i32 @hpfs_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
