; ModuleID = '/home/carl/AnghaBench/linux/fs/sysv/extr_namei.c_sysv_symlink.c'
source_filename = "/home/carl/AnghaBench/linux/fs/sysv/extr_namei.c_sysv_symlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.dentry = type { i32 }

@ENAMETOOLONG = common dso_local global i32 0, align 4
@S_IFLNK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*, i8*)* @sysv_symlink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sysv_symlink(%struct.inode* %0, %struct.dentry* %1, i8* %2) #0 {
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.inode*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.dentry* %1, %struct.dentry** %5, align 8
  store i8* %2, i8** %6, align 8
  %10 = load i32, i32* @ENAMETOOLONG, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %7, align 4
  %12 = load i8*, i8** %6, align 8
  %13 = call i32 @strlen(i8* %12)
  %14 = add nsw i32 %13, 1
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %8, align 4
  %16 = load %struct.inode*, %struct.inode** %4, align 8
  %17 = getelementptr inbounds %struct.inode, %struct.inode* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp sgt i32 %15, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %3
  br label %50

23:                                               ; preds = %3
  %24 = load %struct.inode*, %struct.inode** %4, align 8
  %25 = load i32, i32* @S_IFLNK, align 4
  %26 = or i32 %25, 511
  %27 = call %struct.inode* @sysv_new_inode(%struct.inode* %24, i32 %26)
  store %struct.inode* %27, %struct.inode** %9, align 8
  %28 = load %struct.inode*, %struct.inode** %9, align 8
  %29 = call i32 @PTR_ERR(%struct.inode* %28)
  store i32 %29, i32* %7, align 4
  %30 = load %struct.inode*, %struct.inode** %9, align 8
  %31 = call i64 @IS_ERR(%struct.inode* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %23
  br label %50

34:                                               ; preds = %23
  %35 = load %struct.inode*, %struct.inode** %9, align 8
  %36 = call i32 @sysv_set_inode(%struct.inode* %35, i32 0)
  %37 = load %struct.inode*, %struct.inode** %9, align 8
  %38 = load i8*, i8** %6, align 8
  %39 = load i32, i32* %8, align 4
  %40 = call i32 @page_symlink(%struct.inode* %37, i8* %38, i32 %39)
  store i32 %40, i32* %7, align 4
  %41 = load i32, i32* %7, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %34
  br label %52

44:                                               ; preds = %34
  %45 = load %struct.inode*, %struct.inode** %9, align 8
  %46 = call i32 @mark_inode_dirty(%struct.inode* %45)
  %47 = load %struct.dentry*, %struct.dentry** %5, align 8
  %48 = load %struct.inode*, %struct.inode** %9, align 8
  %49 = call i32 @add_nondir(%struct.dentry* %47, %struct.inode* %48)
  store i32 %49, i32* %7, align 4
  br label %50

50:                                               ; preds = %52, %44, %33, %22
  %51 = load i32, i32* %7, align 4
  ret i32 %51

52:                                               ; preds = %43
  %53 = load %struct.inode*, %struct.inode** %9, align 8
  %54 = call i32 @inode_dec_link_count(%struct.inode* %53)
  %55 = load %struct.inode*, %struct.inode** %9, align 8
  %56 = call i32 @iput(%struct.inode* %55)
  br label %50
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local %struct.inode* @sysv_new_inode(%struct.inode*, i32) #1

declare dso_local i32 @PTR_ERR(%struct.inode*) #1

declare dso_local i64 @IS_ERR(%struct.inode*) #1

declare dso_local i32 @sysv_set_inode(%struct.inode*, i32) #1

declare dso_local i32 @page_symlink(%struct.inode*, i8*, i32) #1

declare dso_local i32 @mark_inode_dirty(%struct.inode*) #1

declare dso_local i32 @add_nondir(%struct.dentry*, %struct.inode*) #1

declare dso_local i32 @inode_dec_link_count(%struct.inode*) #1

declare dso_local i32 @iput(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
