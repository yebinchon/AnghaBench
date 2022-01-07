; ModuleID = '/home/carl/AnghaBench/linux/fs/kernfs/extr_file.c_kernfs_fop_release.c'
source_filename = "/home/carl/AnghaBench/linux/fs/kernfs/extr_file.c_kernfs_fop_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.kernfs_node* }
%struct.kernfs_node = type { i32 }
%struct.file = type { i32 }
%struct.kernfs_open_file = type { %struct.kernfs_open_file* }

@KERNFS_HAS_RELEASE = common dso_local global i32 0, align 4
@kernfs_open_file_mutex = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @kernfs_fop_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kernfs_fop_release(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.kernfs_node*, align 8
  %6 = alloca %struct.kernfs_open_file*, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.file* %1, %struct.file** %4, align 8
  %7 = load %struct.inode*, %struct.inode** %3, align 8
  %8 = getelementptr inbounds %struct.inode, %struct.inode* %7, i32 0, i32 0
  %9 = load %struct.kernfs_node*, %struct.kernfs_node** %8, align 8
  store %struct.kernfs_node* %9, %struct.kernfs_node** %5, align 8
  %10 = load %struct.file*, %struct.file** %4, align 8
  %11 = call %struct.kernfs_open_file* @kernfs_of(%struct.file* %10)
  store %struct.kernfs_open_file* %11, %struct.kernfs_open_file** %6, align 8
  %12 = load %struct.kernfs_node*, %struct.kernfs_node** %5, align 8
  %13 = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @KERNFS_HAS_RELEASE, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %2
  %19 = call i32 @mutex_lock(i32* @kernfs_open_file_mutex)
  %20 = load %struct.kernfs_node*, %struct.kernfs_node** %5, align 8
  %21 = load %struct.kernfs_open_file*, %struct.kernfs_open_file** %6, align 8
  %22 = call i32 @kernfs_release_file(%struct.kernfs_node* %20, %struct.kernfs_open_file* %21)
  %23 = call i32 @mutex_unlock(i32* @kernfs_open_file_mutex)
  br label %24

24:                                               ; preds = %18, %2
  %25 = load %struct.kernfs_node*, %struct.kernfs_node** %5, align 8
  %26 = load %struct.kernfs_open_file*, %struct.kernfs_open_file** %6, align 8
  %27 = call i32 @kernfs_put_open_node(%struct.kernfs_node* %25, %struct.kernfs_open_file* %26)
  %28 = load %struct.inode*, %struct.inode** %3, align 8
  %29 = load %struct.file*, %struct.file** %4, align 8
  %30 = call i32 @seq_release(%struct.inode* %28, %struct.file* %29)
  %31 = load %struct.kernfs_open_file*, %struct.kernfs_open_file** %6, align 8
  %32 = getelementptr inbounds %struct.kernfs_open_file, %struct.kernfs_open_file* %31, i32 0, i32 0
  %33 = load %struct.kernfs_open_file*, %struct.kernfs_open_file** %32, align 8
  %34 = call i32 @kfree(%struct.kernfs_open_file* %33)
  %35 = load %struct.kernfs_open_file*, %struct.kernfs_open_file** %6, align 8
  %36 = call i32 @kfree(%struct.kernfs_open_file* %35)
  ret i32 0
}

declare dso_local %struct.kernfs_open_file* @kernfs_of(%struct.file*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @kernfs_release_file(%struct.kernfs_node*, %struct.kernfs_open_file*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @kernfs_put_open_node(%struct.kernfs_node*, %struct.kernfs_open_file*) #1

declare dso_local i32 @seq_release(%struct.inode*, %struct.file*) #1

declare dso_local i32 @kfree(%struct.kernfs_open_file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
