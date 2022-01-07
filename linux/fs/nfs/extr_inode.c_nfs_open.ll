; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_inode.c_nfs_open.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_inode.c_nfs_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { i32 }
%struct.nfs_open_context = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfs_open(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.nfs_open_context*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  %7 = load %struct.file*, %struct.file** %5, align 8
  %8 = call i32 @file_dentry(%struct.file* %7)
  %9 = load %struct.file*, %struct.file** %5, align 8
  %10 = getelementptr inbounds %struct.file, %struct.file* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.file*, %struct.file** %5, align 8
  %13 = call %struct.nfs_open_context* @alloc_nfs_open_context(i32 %8, i32 %11, %struct.file* %12)
  store %struct.nfs_open_context* %13, %struct.nfs_open_context** %6, align 8
  %14 = load %struct.nfs_open_context*, %struct.nfs_open_context** %6, align 8
  %15 = call i64 @IS_ERR(%struct.nfs_open_context* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load %struct.nfs_open_context*, %struct.nfs_open_context** %6, align 8
  %19 = call i32 @PTR_ERR(%struct.nfs_open_context* %18)
  store i32 %19, i32* %3, align 4
  br label %29

20:                                               ; preds = %2
  %21 = load %struct.file*, %struct.file** %5, align 8
  %22 = load %struct.nfs_open_context*, %struct.nfs_open_context** %6, align 8
  %23 = call i32 @nfs_file_set_open_context(%struct.file* %21, %struct.nfs_open_context* %22)
  %24 = load %struct.nfs_open_context*, %struct.nfs_open_context** %6, align 8
  %25 = call i32 @put_nfs_open_context(%struct.nfs_open_context* %24)
  %26 = load %struct.inode*, %struct.inode** %4, align 8
  %27 = load %struct.file*, %struct.file** %5, align 8
  %28 = call i32 @nfs_fscache_open_file(%struct.inode* %26, %struct.file* %27)
  store i32 0, i32* %3, align 4
  br label %29

29:                                               ; preds = %20, %17
  %30 = load i32, i32* %3, align 4
  ret i32 %30
}

declare dso_local %struct.nfs_open_context* @alloc_nfs_open_context(i32, i32, %struct.file*) #1

declare dso_local i32 @file_dentry(%struct.file*) #1

declare dso_local i64 @IS_ERR(%struct.nfs_open_context*) #1

declare dso_local i32 @PTR_ERR(%struct.nfs_open_context*) #1

declare dso_local i32 @nfs_file_set_open_context(%struct.file*, %struct.nfs_open_context*) #1

declare dso_local i32 @put_nfs_open_context(%struct.nfs_open_context*) #1

declare dso_local i32 @nfs_fscache_open_file(%struct.inode*, %struct.file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
