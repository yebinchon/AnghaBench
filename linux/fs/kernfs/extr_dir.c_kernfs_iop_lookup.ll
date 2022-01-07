; ModuleID = '/home/carl/AnghaBench/linux/fs/kernfs/extr_dir.c_kernfs_iop_lookup.c'
source_filename = "/home/carl/AnghaBench/linux/fs/kernfs/extr_dir.c_kernfs_iop_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, %struct.kernfs_node* }
%struct.kernfs_node = type { i32 }
%struct.dentry = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i8* }

@kernfs_mutex = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dentry* (%struct.inode*, %struct.dentry*, i32)* @kernfs_iop_lookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dentry* @kernfs_iop_lookup(%struct.inode* %0, %struct.dentry* %1, i32 %2) #0 {
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.dentry*, align 8
  %8 = alloca %struct.kernfs_node*, align 8
  %9 = alloca %struct.kernfs_node*, align 8
  %10 = alloca %struct.inode*, align 8
  %11 = alloca i8*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.dentry* %1, %struct.dentry** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load %struct.inode*, %struct.inode** %4, align 8
  %13 = getelementptr inbounds %struct.inode, %struct.inode* %12, i32 0, i32 1
  %14 = load %struct.kernfs_node*, %struct.kernfs_node** %13, align 8
  store %struct.kernfs_node* %14, %struct.kernfs_node** %8, align 8
  store i8* null, i8** %11, align 8
  %15 = call i32 @mutex_lock(i32* @kernfs_mutex)
  %16 = load %struct.kernfs_node*, %struct.kernfs_node** %8, align 8
  %17 = call i64 @kernfs_ns_enabled(%struct.kernfs_node* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %3
  %20 = load %struct.inode*, %struct.inode** %4, align 8
  %21 = getelementptr inbounds %struct.inode, %struct.inode* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call %struct.TYPE_4__* @kernfs_info(i32 %22)
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  store i8* %25, i8** %11, align 8
  br label %26

26:                                               ; preds = %19, %3
  %27 = load %struct.kernfs_node*, %struct.kernfs_node** %8, align 8
  %28 = load %struct.dentry*, %struct.dentry** %5, align 8
  %29 = getelementptr inbounds %struct.dentry, %struct.dentry* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i8*, i8** %11, align 8
  %33 = call %struct.kernfs_node* @kernfs_find_ns(%struct.kernfs_node* %27, i32 %31, i8* %32)
  store %struct.kernfs_node* %33, %struct.kernfs_node** %9, align 8
  %34 = load %struct.kernfs_node*, %struct.kernfs_node** %9, align 8
  %35 = icmp ne %struct.kernfs_node* %34, null
  br i1 %35, label %36, label %40

36:                                               ; preds = %26
  %37 = load %struct.kernfs_node*, %struct.kernfs_node** %9, align 8
  %38 = call i32 @kernfs_active(%struct.kernfs_node* %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %36, %26
  store %struct.dentry* null, %struct.dentry** %7, align 8
  br label %57

41:                                               ; preds = %36
  %42 = load %struct.inode*, %struct.inode** %4, align 8
  %43 = getelementptr inbounds %struct.inode, %struct.inode* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.kernfs_node*, %struct.kernfs_node** %9, align 8
  %46 = call %struct.inode* @kernfs_get_inode(i32 %44, %struct.kernfs_node* %45)
  store %struct.inode* %46, %struct.inode** %10, align 8
  %47 = load %struct.inode*, %struct.inode** %10, align 8
  %48 = icmp ne %struct.inode* %47, null
  br i1 %48, label %53, label %49

49:                                               ; preds = %41
  %50 = load i32, i32* @ENOMEM, align 4
  %51 = sub nsw i32 0, %50
  %52 = call %struct.dentry* @ERR_PTR(i32 %51)
  store %struct.dentry* %52, %struct.dentry** %7, align 8
  br label %57

53:                                               ; preds = %41
  %54 = load %struct.inode*, %struct.inode** %10, align 8
  %55 = load %struct.dentry*, %struct.dentry** %5, align 8
  %56 = call %struct.dentry* @d_splice_alias(%struct.inode* %54, %struct.dentry* %55)
  store %struct.dentry* %56, %struct.dentry** %7, align 8
  br label %57

57:                                               ; preds = %53, %49, %40
  %58 = call i32 @mutex_unlock(i32* @kernfs_mutex)
  %59 = load %struct.dentry*, %struct.dentry** %7, align 8
  ret %struct.dentry* %59
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @kernfs_ns_enabled(%struct.kernfs_node*) #1

declare dso_local %struct.TYPE_4__* @kernfs_info(i32) #1

declare dso_local %struct.kernfs_node* @kernfs_find_ns(%struct.kernfs_node*, i32, i8*) #1

declare dso_local i32 @kernfs_active(%struct.kernfs_node*) #1

declare dso_local %struct.inode* @kernfs_get_inode(i32, %struct.kernfs_node*) #1

declare dso_local %struct.dentry* @ERR_PTR(i32) #1

declare dso_local %struct.dentry* @d_splice_alias(%struct.inode*, %struct.dentry*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
