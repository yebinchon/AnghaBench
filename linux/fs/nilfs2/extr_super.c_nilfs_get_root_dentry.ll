; ModuleID = '/home/carl/AnghaBench/linux/fs/nilfs2/extr_super.c_nilfs_get_root_dentry.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nilfs2/extr_super.c_nilfs_get_root_dentry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.nilfs_root = type { i64 }
%struct.dentry = type { i32, i32, i32 }
%struct.inode = type { i32, i32, i32 }

@NILFS_ROOT_INO = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"error %d getting root inode\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"corrupt root inode\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@NILFS_CPTREE_CURRENT_CNO = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"error %d getting root dentry\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, %struct.nilfs_root*, %struct.dentry**)* @nilfs_get_root_dentry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nilfs_get_root_dentry(%struct.super_block* %0, %struct.nilfs_root* %1, %struct.dentry** %2) #0 {
  %4 = alloca %struct.super_block*, align 8
  %5 = alloca %struct.nilfs_root*, align 8
  %6 = alloca %struct.dentry**, align 8
  %7 = alloca %struct.inode*, align 8
  %8 = alloca %struct.dentry*, align 8
  %9 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %4, align 8
  store %struct.nilfs_root* %1, %struct.nilfs_root** %5, align 8
  store %struct.dentry** %2, %struct.dentry*** %6, align 8
  store i32 0, i32* %9, align 4
  %10 = load %struct.super_block*, %struct.super_block** %4, align 8
  %11 = load %struct.nilfs_root*, %struct.nilfs_root** %5, align 8
  %12 = load i32, i32* @NILFS_ROOT_INO, align 4
  %13 = call %struct.inode* @nilfs_iget(%struct.super_block* %10, %struct.nilfs_root* %11, i32 %12)
  store %struct.inode* %13, %struct.inode** %7, align 8
  %14 = load %struct.inode*, %struct.inode** %7, align 8
  %15 = call i64 @IS_ERR(%struct.inode* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %24

17:                                               ; preds = %3
  %18 = load %struct.inode*, %struct.inode** %7, align 8
  %19 = call i32 @PTR_ERR(%struct.inode* %18)
  store i32 %19, i32* %9, align 4
  %20 = load %struct.super_block*, %struct.super_block** %4, align 8
  %21 = load i32, i32* @KERN_ERR, align 4
  %22 = load i32, i32* %9, align 4
  %23 = call i32 (%struct.super_block*, i32, i8*, ...) @nilfs_msg(%struct.super_block* %20, i32 %21, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %22)
  br label %90

24:                                               ; preds = %3
  %25 = load %struct.inode*, %struct.inode** %7, align 8
  %26 = getelementptr inbounds %struct.inode, %struct.inode* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @S_ISDIR(i32 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %40

30:                                               ; preds = %24
  %31 = load %struct.inode*, %struct.inode** %7, align 8
  %32 = getelementptr inbounds %struct.inode, %struct.inode* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %30
  %36 = load %struct.inode*, %struct.inode** %7, align 8
  %37 = getelementptr inbounds %struct.inode, %struct.inode* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %48, label %40

40:                                               ; preds = %35, %30, %24
  %41 = load %struct.inode*, %struct.inode** %7, align 8
  %42 = call i32 @iput(%struct.inode* %41)
  %43 = load %struct.super_block*, %struct.super_block** %4, align 8
  %44 = load i32, i32* @KERN_ERR, align 4
  %45 = call i32 (%struct.super_block*, i32, i8*, ...) @nilfs_msg(%struct.super_block* %43, i32 %44, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %9, align 4
  br label %90

48:                                               ; preds = %35
  %49 = load %struct.nilfs_root*, %struct.nilfs_root** %5, align 8
  %50 = getelementptr inbounds %struct.nilfs_root, %struct.nilfs_root* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @NILFS_CPTREE_CURRENT_CNO, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %74

54:                                               ; preds = %48
  %55 = load %struct.inode*, %struct.inode** %7, align 8
  %56 = call %struct.inode* @d_find_alias(%struct.inode* %55)
  %57 = bitcast %struct.inode* %56 to %struct.dentry*
  store %struct.dentry* %57, %struct.dentry** %8, align 8
  %58 = load %struct.dentry*, %struct.dentry** %8, align 8
  %59 = icmp ne %struct.dentry* %58, null
  br i1 %59, label %70, label %60

60:                                               ; preds = %54
  %61 = load %struct.inode*, %struct.inode** %7, align 8
  %62 = call %struct.inode* @d_make_root(%struct.inode* %61)
  %63 = bitcast %struct.inode* %62 to %struct.dentry*
  store %struct.dentry* %63, %struct.dentry** %8, align 8
  %64 = load %struct.dentry*, %struct.dentry** %8, align 8
  %65 = icmp ne %struct.dentry* %64, null
  br i1 %65, label %69, label %66

66:                                               ; preds = %60
  %67 = load i32, i32* @ENOMEM, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %9, align 4
  br label %92

69:                                               ; preds = %60
  br label %73

70:                                               ; preds = %54
  %71 = load %struct.inode*, %struct.inode** %7, align 8
  %72 = call i32 @iput(%struct.inode* %71)
  br label %73

73:                                               ; preds = %70, %69
  br label %87

74:                                               ; preds = %48
  %75 = load %struct.inode*, %struct.inode** %7, align 8
  %76 = call %struct.inode* @d_obtain_root(%struct.inode* %75)
  %77 = bitcast %struct.inode* %76 to %struct.dentry*
  store %struct.dentry* %77, %struct.dentry** %8, align 8
  %78 = load %struct.dentry*, %struct.dentry** %8, align 8
  %79 = bitcast %struct.dentry* %78 to %struct.inode*
  %80 = call i64 @IS_ERR(%struct.inode* %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %74
  %83 = load %struct.dentry*, %struct.dentry** %8, align 8
  %84 = bitcast %struct.dentry* %83 to %struct.inode*
  %85 = call i32 @PTR_ERR(%struct.inode* %84)
  store i32 %85, i32* %9, align 4
  br label %92

86:                                               ; preds = %74
  br label %87

87:                                               ; preds = %86, %73
  %88 = load %struct.dentry*, %struct.dentry** %8, align 8
  %89 = load %struct.dentry**, %struct.dentry*** %6, align 8
  store %struct.dentry* %88, %struct.dentry** %89, align 8
  br label %90

90:                                               ; preds = %92, %87, %40, %17
  %91 = load i32, i32* %9, align 4
  ret i32 %91

92:                                               ; preds = %82, %66
  %93 = load %struct.super_block*, %struct.super_block** %4, align 8
  %94 = load i32, i32* @KERN_ERR, align 4
  %95 = load i32, i32* %9, align 4
  %96 = call i32 (%struct.super_block*, i32, i8*, ...) @nilfs_msg(%struct.super_block* %93, i32 %94, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %95)
  br label %90
}

declare dso_local %struct.inode* @nilfs_iget(%struct.super_block*, %struct.nilfs_root*, i32) #1

declare dso_local i64 @IS_ERR(%struct.inode*) #1

declare dso_local i32 @PTR_ERR(%struct.inode*) #1

declare dso_local i32 @nilfs_msg(%struct.super_block*, i32, i8*, ...) #1

declare dso_local i32 @S_ISDIR(i32) #1

declare dso_local i32 @iput(%struct.inode*) #1

declare dso_local %struct.inode* @d_find_alias(%struct.inode*) #1

declare dso_local %struct.inode* @d_make_root(%struct.inode*) #1

declare dso_local %struct.inode* @d_obtain_root(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
