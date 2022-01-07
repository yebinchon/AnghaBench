; ModuleID = '/home/carl/AnghaBench/linux/fs/overlayfs/extr_readdir.c_ovl_dir_release.c'
source_filename = "/home/carl/AnghaBench/linux/fs/overlayfs/extr_readdir.c_ovl_dir_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { %struct.TYPE_2__, %struct.ovl_dir_file* }
%struct.TYPE_2__ = type { i32 }
%struct.ovl_dir_file = type { i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @ovl_dir_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ovl_dir_release(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.ovl_dir_file*, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.file* %1, %struct.file** %4, align 8
  %6 = load %struct.file*, %struct.file** %4, align 8
  %7 = getelementptr inbounds %struct.file, %struct.file* %6, i32 0, i32 1
  %8 = load %struct.ovl_dir_file*, %struct.ovl_dir_file** %7, align 8
  store %struct.ovl_dir_file* %8, %struct.ovl_dir_file** %5, align 8
  %9 = load %struct.ovl_dir_file*, %struct.ovl_dir_file** %5, align 8
  %10 = getelementptr inbounds %struct.ovl_dir_file, %struct.ovl_dir_file* %9, i32 0, i32 2
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %24

13:                                               ; preds = %2
  %14 = load %struct.inode*, %struct.inode** %3, align 8
  %15 = call i32 @inode_lock(%struct.inode* %14)
  %16 = load %struct.ovl_dir_file*, %struct.ovl_dir_file** %5, align 8
  %17 = load %struct.file*, %struct.file** %4, align 8
  %18 = getelementptr inbounds %struct.file, %struct.file* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @ovl_cache_put(%struct.ovl_dir_file* %16, i32 %20)
  %22 = load %struct.inode*, %struct.inode** %3, align 8
  %23 = call i32 @inode_unlock(%struct.inode* %22)
  br label %24

24:                                               ; preds = %13, %2
  %25 = load %struct.ovl_dir_file*, %struct.ovl_dir_file** %5, align 8
  %26 = getelementptr inbounds %struct.ovl_dir_file, %struct.ovl_dir_file* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = call i32 @fput(i64 %27)
  %29 = load %struct.ovl_dir_file*, %struct.ovl_dir_file** %5, align 8
  %30 = getelementptr inbounds %struct.ovl_dir_file, %struct.ovl_dir_file* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %24
  %34 = load %struct.ovl_dir_file*, %struct.ovl_dir_file** %5, align 8
  %35 = getelementptr inbounds %struct.ovl_dir_file, %struct.ovl_dir_file* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = call i32 @fput(i64 %36)
  br label %38

38:                                               ; preds = %33, %24
  %39 = load %struct.ovl_dir_file*, %struct.ovl_dir_file** %5, align 8
  %40 = call i32 @kfree(%struct.ovl_dir_file* %39)
  ret i32 0
}

declare dso_local i32 @inode_lock(%struct.inode*) #1

declare dso_local i32 @ovl_cache_put(%struct.ovl_dir_file*, i32) #1

declare dso_local i32 @inode_unlock(%struct.inode*) #1

declare dso_local i32 @fput(i64) #1

declare dso_local i32 @kfree(%struct.ovl_dir_file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
