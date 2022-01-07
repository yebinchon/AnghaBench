; ModuleID = '/home/carl/AnghaBench/linux/fs/nilfs2/extr_namei.c_nilfs_get_parent.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nilfs2/extr_namei.c_nilfs_get_parent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.inode = type { i32 }
%struct.qstr = type { i32 }
%struct.nilfs_root = type { i32 }
%struct.TYPE_2__ = type { %struct.nilfs_root* }

@.str = private unnamed_addr constant [3 x i8] c"..\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dentry* (%struct.dentry*)* @nilfs_get_parent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dentry* @nilfs_get_parent(%struct.dentry* %0) #0 {
  %2 = alloca %struct.dentry*, align 8
  %3 = alloca %struct.dentry*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.qstr, align 4
  %7 = alloca %struct.nilfs_root*, align 8
  store %struct.dentry* %0, %struct.dentry** %3, align 8
  %8 = call i32 @QSTR_INIT(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 2)
  %9 = getelementptr inbounds %struct.qstr, %struct.qstr* %6, i32 0, i32 0
  store i32 %8, i32* %9, align 4
  %10 = load %struct.dentry*, %struct.dentry** %3, align 8
  %11 = call i32 @d_inode(%struct.dentry* %10)
  %12 = call i64 @nilfs_inode_by_name(i32 %11, %struct.qstr* %6)
  store i64 %12, i64* %4, align 8
  %13 = load i64, i64* %4, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @ENOENT, align 4
  %17 = sub nsw i32 0, %16
  %18 = call %struct.dentry* @ERR_PTR(i32 %17)
  store %struct.dentry* %18, %struct.dentry** %2, align 8
  br label %40

19:                                               ; preds = %1
  %20 = load %struct.dentry*, %struct.dentry** %3, align 8
  %21 = call i32 @d_inode(%struct.dentry* %20)
  %22 = call %struct.TYPE_2__* @NILFS_I(i32 %21)
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load %struct.nilfs_root*, %struct.nilfs_root** %23, align 8
  store %struct.nilfs_root* %24, %struct.nilfs_root** %7, align 8
  %25 = load %struct.dentry*, %struct.dentry** %3, align 8
  %26 = getelementptr inbounds %struct.dentry, %struct.dentry* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.nilfs_root*, %struct.nilfs_root** %7, align 8
  %29 = load i64, i64* %4, align 8
  %30 = call %struct.inode* @nilfs_iget(i32 %27, %struct.nilfs_root* %28, i64 %29)
  store %struct.inode* %30, %struct.inode** %5, align 8
  %31 = load %struct.inode*, %struct.inode** %5, align 8
  %32 = call i64 @IS_ERR(%struct.inode* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %19
  %35 = load %struct.inode*, %struct.inode** %5, align 8
  %36 = call %struct.dentry* @ERR_CAST(%struct.inode* %35)
  store %struct.dentry* %36, %struct.dentry** %2, align 8
  br label %40

37:                                               ; preds = %19
  %38 = load %struct.inode*, %struct.inode** %5, align 8
  %39 = call %struct.dentry* @d_obtain_alias(%struct.inode* %38)
  store %struct.dentry* %39, %struct.dentry** %2, align 8
  br label %40

40:                                               ; preds = %37, %34, %15
  %41 = load %struct.dentry*, %struct.dentry** %2, align 8
  ret %struct.dentry* %41
}

declare dso_local i32 @QSTR_INIT(i8*, i32) #1

declare dso_local i64 @nilfs_inode_by_name(i32, %struct.qstr*) #1

declare dso_local i32 @d_inode(%struct.dentry*) #1

declare dso_local %struct.dentry* @ERR_PTR(i32) #1

declare dso_local %struct.TYPE_2__* @NILFS_I(i32) #1

declare dso_local %struct.inode* @nilfs_iget(i32, %struct.nilfs_root*, i64) #1

declare dso_local i64 @IS_ERR(%struct.inode*) #1

declare dso_local %struct.dentry* @ERR_CAST(%struct.inode*) #1

declare dso_local %struct.dentry* @d_obtain_alias(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
