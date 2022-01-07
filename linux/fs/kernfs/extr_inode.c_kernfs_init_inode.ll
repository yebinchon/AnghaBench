; ModuleID = '/home/carl/AnghaBench/linux/fs/kernfs/extr_inode.c_kernfs_init_inode.c'
source_filename = "/home/carl/AnghaBench/linux/fs/kernfs/extr_inode.c_kernfs_init_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kernfs_node = type { i32, %struct.TYPE_6__, i32, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.inode = type { i32*, i32*, i32, i32, %struct.TYPE_4__*, %struct.kernfs_node* }
%struct.TYPE_4__ = type { i32* }

@kernfs_aops = common dso_local global i32 0, align 4
@kernfs_iops = common dso_local global i32 0, align 4
@kernfs_dir_iops = common dso_local global i32 0, align 4
@kernfs_dir_fops = common dso_local global i32 0, align 4
@KERNFS_EMPTY_DIR = common dso_local global i32 0, align 4
@kernfs_file_fops = common dso_local global i32 0, align 4
@kernfs_symlink_iops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kernfs_node*, %struct.inode*)* @kernfs_init_inode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kernfs_init_inode(%struct.kernfs_node* %0, %struct.inode* %1) #0 {
  %3 = alloca %struct.kernfs_node*, align 8
  %4 = alloca %struct.inode*, align 8
  store %struct.kernfs_node* %0, %struct.kernfs_node** %3, align 8
  store %struct.inode* %1, %struct.inode** %4, align 8
  %5 = load %struct.kernfs_node*, %struct.kernfs_node** %3, align 8
  %6 = call i32 @kernfs_get(%struct.kernfs_node* %5)
  %7 = load %struct.kernfs_node*, %struct.kernfs_node** %3, align 8
  %8 = load %struct.inode*, %struct.inode** %4, align 8
  %9 = getelementptr inbounds %struct.inode, %struct.inode* %8, i32 0, i32 5
  store %struct.kernfs_node* %7, %struct.kernfs_node** %9, align 8
  %10 = load %struct.inode*, %struct.inode** %4, align 8
  %11 = getelementptr inbounds %struct.inode, %struct.inode* %10, i32 0, i32 4
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  store i32* @kernfs_aops, i32** %13, align 8
  %14 = load %struct.inode*, %struct.inode** %4, align 8
  %15 = getelementptr inbounds %struct.inode, %struct.inode* %14, i32 0, i32 0
  store i32* @kernfs_iops, i32** %15, align 8
  %16 = load %struct.kernfs_node*, %struct.kernfs_node** %3, align 8
  %17 = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %16, i32 0, i32 3
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.inode*, %struct.inode** %4, align 8
  %21 = getelementptr inbounds %struct.inode, %struct.inode* %20, i32 0, i32 3
  store i32 %19, i32* %21, align 4
  %22 = load %struct.inode*, %struct.inode** %4, align 8
  %23 = load %struct.kernfs_node*, %struct.kernfs_node** %3, align 8
  %24 = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @set_default_inode_attr(%struct.inode* %22, i32 %25)
  %27 = load %struct.kernfs_node*, %struct.kernfs_node** %3, align 8
  %28 = load %struct.inode*, %struct.inode** %4, align 8
  %29 = call i32 @kernfs_refresh_inode(%struct.kernfs_node* %27, %struct.inode* %28)
  %30 = load %struct.kernfs_node*, %struct.kernfs_node** %3, align 8
  %31 = call i32 @kernfs_type(%struct.kernfs_node* %30)
  switch i32 %31, label %59 [
    i32 130, label %32
    i32 129, label %47
    i32 128, label %56
  ]

32:                                               ; preds = %2
  %33 = load %struct.inode*, %struct.inode** %4, align 8
  %34 = getelementptr inbounds %struct.inode, %struct.inode* %33, i32 0, i32 0
  store i32* @kernfs_dir_iops, i32** %34, align 8
  %35 = load %struct.inode*, %struct.inode** %4, align 8
  %36 = getelementptr inbounds %struct.inode, %struct.inode* %35, i32 0, i32 1
  store i32* @kernfs_dir_fops, i32** %36, align 8
  %37 = load %struct.kernfs_node*, %struct.kernfs_node** %3, align 8
  %38 = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @KERNFS_EMPTY_DIR, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %32
  %44 = load %struct.inode*, %struct.inode** %4, align 8
  %45 = call i32 @make_empty_dir_inode(%struct.inode* %44)
  br label %46

46:                                               ; preds = %43, %32
  br label %61

47:                                               ; preds = %2
  %48 = load %struct.kernfs_node*, %struct.kernfs_node** %3, align 8
  %49 = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.inode*, %struct.inode** %4, align 8
  %53 = getelementptr inbounds %struct.inode, %struct.inode* %52, i32 0, i32 2
  store i32 %51, i32* %53, align 8
  %54 = load %struct.inode*, %struct.inode** %4, align 8
  %55 = getelementptr inbounds %struct.inode, %struct.inode* %54, i32 0, i32 1
  store i32* @kernfs_file_fops, i32** %55, align 8
  br label %61

56:                                               ; preds = %2
  %57 = load %struct.inode*, %struct.inode** %4, align 8
  %58 = getelementptr inbounds %struct.inode, %struct.inode* %57, i32 0, i32 0
  store i32* @kernfs_symlink_iops, i32** %58, align 8
  br label %61

59:                                               ; preds = %2
  %60 = call i32 (...) @BUG()
  br label %61

61:                                               ; preds = %59, %56, %47, %46
  %62 = load %struct.inode*, %struct.inode** %4, align 8
  %63 = call i32 @unlock_new_inode(%struct.inode* %62)
  ret void
}

declare dso_local i32 @kernfs_get(%struct.kernfs_node*) #1

declare dso_local i32 @set_default_inode_attr(%struct.inode*, i32) #1

declare dso_local i32 @kernfs_refresh_inode(%struct.kernfs_node*, %struct.inode*) #1

declare dso_local i32 @kernfs_type(%struct.kernfs_node*) #1

declare dso_local i32 @make_empty_dir_inode(%struct.inode*) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @unlock_new_inode(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
