; ModuleID = '/home/carl/AnghaBench/linux/fs/hostfs/extr_hostfs_kern.c_hostfs_fill_sb_common.c'
source_filename = "/home/carl/AnghaBench/linux/fs/hostfs/extr_hostfs_kern.c_hostfs_fill_sb_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32, i32, i8*, i32*, i32, i32*, i32*, i32 }
%struct.inode = type { i32 }

@HOSTFS_SUPER_MAGIC = common dso_local global i32 0, align 4
@hostfs_sbops = common dso_local global i32 0, align 4
@simple_dentry_operations = common dso_local global i32 0, align 4
@MAX_LFS_FILESIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@ENOMEM = common dso_local global i32 0, align 4
@root_ino = common dso_local global i8* null, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, i8*, i32)* @hostfs_fill_sb_common to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hostfs_fill_sb_common(%struct.super_block* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.inode*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  store %struct.super_block* %0, %struct.super_block** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load i8*, i8** %6, align 8
  store i8* %13, i8** %10, align 8
  %14 = load %struct.super_block*, %struct.super_block** %5, align 8
  %15 = getelementptr inbounds %struct.super_block, %struct.super_block* %14, i32 0, i32 0
  store i32 1024, i32* %15, align 8
  %16 = load %struct.super_block*, %struct.super_block** %5, align 8
  %17 = getelementptr inbounds %struct.super_block, %struct.super_block* %16, i32 0, i32 1
  store i32 10, i32* %17, align 4
  %18 = load i32, i32* @HOSTFS_SUPER_MAGIC, align 4
  %19 = load %struct.super_block*, %struct.super_block** %5, align 8
  %20 = getelementptr inbounds %struct.super_block, %struct.super_block* %19, i32 0, i32 7
  store i32 %18, i32* %20, align 8
  %21 = load %struct.super_block*, %struct.super_block** %5, align 8
  %22 = getelementptr inbounds %struct.super_block, %struct.super_block* %21, i32 0, i32 6
  store i32* @hostfs_sbops, i32** %22, align 8
  %23 = load %struct.super_block*, %struct.super_block** %5, align 8
  %24 = getelementptr inbounds %struct.super_block, %struct.super_block* %23, i32 0, i32 5
  store i32* @simple_dentry_operations, i32** %24, align 8
  %25 = load i32, i32* @MAX_LFS_FILESIZE, align 4
  %26 = load %struct.super_block*, %struct.super_block** %5, align 8
  %27 = getelementptr inbounds %struct.super_block, %struct.super_block* %26, i32 0, i32 4
  store i32 %25, i32* %27, align 8
  %28 = load i8*, i8** %10, align 8
  %29 = icmp eq i8* %28, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %3
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %10, align 8
  br label %31

31:                                               ; preds = %30, %3
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %11, align 4
  %34 = load i8*, i8** @root_ino, align 8
  %35 = call i64 @strlen(i8* %34)
  %36 = load i8*, i8** %10, align 8
  %37 = call i64 @strlen(i8* %36)
  %38 = add nsw i64 %35, %37
  %39 = add nsw i64 %38, 2
  %40 = load i32, i32* @GFP_KERNEL, align 4
  %41 = call i8* @kmalloc(i64 %39, i32 %40)
  store i8* %41, i8** %9, align 8
  %42 = load %struct.super_block*, %struct.super_block** %5, align 8
  %43 = getelementptr inbounds %struct.super_block, %struct.super_block* %42, i32 0, i32 2
  store i8* %41, i8** %43, align 8
  %44 = load i8*, i8** %9, align 8
  %45 = icmp eq i8* %44, null
  br i1 %45, label %46, label %47

46:                                               ; preds = %31
  br label %105

47:                                               ; preds = %31
  %48 = load i8*, i8** %9, align 8
  %49 = load i8*, i8** @root_ino, align 8
  %50 = load i8*, i8** %10, align 8
  %51 = call i32 @sprintf(i8* %48, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* %49, i8* %50)
  %52 = load %struct.super_block*, %struct.super_block** %5, align 8
  %53 = call %struct.inode* @new_inode(%struct.super_block* %52)
  store %struct.inode* %53, %struct.inode** %8, align 8
  %54 = load %struct.inode*, %struct.inode** %8, align 8
  %55 = icmp ne %struct.inode* %54, null
  br i1 %55, label %57, label %56

56:                                               ; preds = %47
  br label %105

57:                                               ; preds = %47
  %58 = load %struct.inode*, %struct.inode** %8, align 8
  %59 = load i8*, i8** %9, align 8
  %60 = call i32 @read_name(%struct.inode* %58, i8* %59)
  store i32 %60, i32* %11, align 4
  %61 = load i32, i32* %11, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %57
  br label %102

64:                                               ; preds = %57
  %65 = load %struct.inode*, %struct.inode** %8, align 8
  %66 = getelementptr inbounds %struct.inode, %struct.inode* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i64 @S_ISLNK(i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %89

70:                                               ; preds = %64
  %71 = load i8*, i8** %9, align 8
  %72 = call i8* @follow_link(i8* %71)
  store i8* %72, i8** %12, align 8
  %73 = load i8*, i8** %12, align 8
  %74 = call i64 @IS_ERR(i8* %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %70
  %77 = load i8*, i8** %12, align 8
  %78 = call i32 @PTR_ERR(i8* %77)
  store i32 %78, i32* %11, align 4
  br label %102

79:                                               ; preds = %70
  %80 = load %struct.inode*, %struct.inode** %8, align 8
  %81 = load i8*, i8** %12, align 8
  %82 = call i32 @read_name(%struct.inode* %80, i8* %81)
  store i32 %82, i32* %11, align 4
  %83 = load i8*, i8** %12, align 8
  %84 = call i32 @kfree(i8* %83)
  %85 = load i32, i32* %11, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %79
  br label %102

88:                                               ; preds = %79
  br label %89

89:                                               ; preds = %88, %64
  %90 = load i32, i32* @ENOMEM, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %11, align 4
  %92 = load %struct.inode*, %struct.inode** %8, align 8
  %93 = call i32* @d_make_root(%struct.inode* %92)
  %94 = load %struct.super_block*, %struct.super_block** %5, align 8
  %95 = getelementptr inbounds %struct.super_block, %struct.super_block* %94, i32 0, i32 3
  store i32* %93, i32** %95, align 8
  %96 = load %struct.super_block*, %struct.super_block** %5, align 8
  %97 = getelementptr inbounds %struct.super_block, %struct.super_block* %96, i32 0, i32 3
  %98 = load i32*, i32** %97, align 8
  %99 = icmp eq i32* %98, null
  br i1 %99, label %100, label %101

100:                                              ; preds = %89
  br label %105

101:                                              ; preds = %89
  store i32 0, i32* %4, align 4
  br label %107

102:                                              ; preds = %87, %76, %63
  %103 = load %struct.inode*, %struct.inode** %8, align 8
  %104 = call i32 @iput(%struct.inode* %103)
  br label %105

105:                                              ; preds = %102, %100, %56, %46
  %106 = load i32, i32* %11, align 4
  store i32 %106, i32* %4, align 4
  br label %107

107:                                              ; preds = %105, %101
  %108 = load i32, i32* %4, align 4
  ret i32 %108
}

declare dso_local i8* @kmalloc(i64, i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*, i8*) #1

declare dso_local %struct.inode* @new_inode(%struct.super_block*) #1

declare dso_local i32 @read_name(%struct.inode*, i8*) #1

declare dso_local i64 @S_ISLNK(i32) #1

declare dso_local i8* @follow_link(i8*) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32* @d_make_root(%struct.inode*) #1

declare dso_local i32 @iput(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
