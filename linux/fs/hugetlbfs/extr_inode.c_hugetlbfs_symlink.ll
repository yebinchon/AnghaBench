; ModuleID = '/home/carl/AnghaBench/linux/fs/hugetlbfs/extr_inode.c_hugetlbfs_symlink.c'
source_filename = "/home/carl/AnghaBench/linux/fs/hugetlbfs/extr_inode.c_hugetlbfs_symlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32, i32 }
%struct.dentry = type { i32 }

@ENOSPC = common dso_local global i32 0, align 4
@S_IFLNK = common dso_local global i32 0, align 4
@S_IRWXUGO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*, i8*)* @hugetlbfs_symlink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hugetlbfs_symlink(%struct.inode* %0, %struct.dentry* %1, i8* %2) #0 {
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.inode*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.dentry* %1, %struct.dentry** %5, align 8
  store i8* %2, i8** %6, align 8
  %10 = load i32, i32* @ENOSPC, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %8, align 4
  %12 = load %struct.inode*, %struct.inode** %4, align 8
  %13 = getelementptr inbounds %struct.inode, %struct.inode* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.inode*, %struct.inode** %4, align 8
  %16 = load i32, i32* @S_IFLNK, align 4
  %17 = load i32, i32* @S_IRWXUGO, align 4
  %18 = or i32 %16, %17
  %19 = call %struct.inode* @hugetlbfs_get_inode(i32 %14, %struct.inode* %15, i32 %18, i32 0)
  store %struct.inode* %19, %struct.inode** %7, align 8
  %20 = load %struct.inode*, %struct.inode** %7, align 8
  %21 = icmp ne %struct.inode* %20, null
  br i1 %21, label %22, label %42

22:                                               ; preds = %3
  %23 = load i8*, i8** %6, align 8
  %24 = call i32 @strlen(i8* %23)
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %9, align 4
  %26 = load %struct.inode*, %struct.inode** %7, align 8
  %27 = load i8*, i8** %6, align 8
  %28 = load i32, i32* %9, align 4
  %29 = call i32 @page_symlink(%struct.inode* %26, i8* %27, i32 %28)
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %8, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %38, label %32

32:                                               ; preds = %22
  %33 = load %struct.dentry*, %struct.dentry** %5, align 8
  %34 = load %struct.inode*, %struct.inode** %7, align 8
  %35 = call i32 @d_instantiate(%struct.dentry* %33, %struct.inode* %34)
  %36 = load %struct.dentry*, %struct.dentry** %5, align 8
  %37 = call i32 @dget(%struct.dentry* %36)
  br label %41

38:                                               ; preds = %22
  %39 = load %struct.inode*, %struct.inode** %7, align 8
  %40 = call i32 @iput(%struct.inode* %39)
  br label %41

41:                                               ; preds = %38, %32
  br label %42

42:                                               ; preds = %41, %3
  %43 = load %struct.inode*, %struct.inode** %4, align 8
  %44 = call i32 @current_time(%struct.inode* %43)
  %45 = load %struct.inode*, %struct.inode** %4, align 8
  %46 = getelementptr inbounds %struct.inode, %struct.inode* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 4
  %47 = load %struct.inode*, %struct.inode** %4, align 8
  %48 = getelementptr inbounds %struct.inode, %struct.inode* %47, i32 0, i32 1
  store i32 %44, i32* %48, align 4
  %49 = load i32, i32* %8, align 4
  ret i32 %49
}

declare dso_local %struct.inode* @hugetlbfs_get_inode(i32, %struct.inode*, i32, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @page_symlink(%struct.inode*, i8*, i32) #1

declare dso_local i32 @d_instantiate(%struct.dentry*, %struct.inode*) #1

declare dso_local i32 @dget(%struct.dentry*) #1

declare dso_local i32 @iput(%struct.inode*) #1

declare dso_local i32 @current_time(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
