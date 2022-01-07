; ModuleID = '/home/carl/AnghaBench/linux/fs/overlayfs/extr_readdir.c_ovl_dir_open.c'
source_filename = "/home/carl/AnghaBench/linux/fs/overlayfs/extr_readdir.c_ovl_dir_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { %struct.ovl_dir_file*, %struct.TYPE_2__, i32 }
%struct.ovl_dir_file = type { i32, i32, %struct.file* }
%struct.TYPE_2__ = type { i32 }
%struct.path = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @ovl_dir_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ovl_dir_open(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.path, align 4
  %7 = alloca %struct.file*, align 8
  %8 = alloca %struct.ovl_dir_file*, align 8
  %9 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.ovl_dir_file* @kzalloc(i32 16, i32 %10)
  store %struct.ovl_dir_file* %11, %struct.ovl_dir_file** %8, align 8
  %12 = load %struct.ovl_dir_file*, %struct.ovl_dir_file** %8, align 8
  %13 = icmp ne %struct.ovl_dir_file* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %53

17:                                               ; preds = %2
  %18 = load %struct.file*, %struct.file** %5, align 8
  %19 = getelementptr inbounds %struct.file, %struct.file* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @ovl_path_real(i32 %21, %struct.path* %6)
  store i32 %22, i32* %9, align 4
  %23 = load %struct.file*, %struct.file** %5, align 8
  %24 = getelementptr inbounds %struct.file, %struct.file* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = call %struct.file* @ovl_path_open(%struct.path* %6, i32 %25)
  store %struct.file* %26, %struct.file** %7, align 8
  %27 = load %struct.file*, %struct.file** %7, align 8
  %28 = call i64 @IS_ERR(%struct.file* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %17
  %31 = load %struct.ovl_dir_file*, %struct.ovl_dir_file** %8, align 8
  %32 = call i32 @kfree(%struct.ovl_dir_file* %31)
  %33 = load %struct.file*, %struct.file** %7, align 8
  %34 = call i32 @PTR_ERR(%struct.file* %33)
  store i32 %34, i32* %3, align 4
  br label %53

35:                                               ; preds = %17
  %36 = load %struct.file*, %struct.file** %7, align 8
  %37 = load %struct.ovl_dir_file*, %struct.ovl_dir_file** %8, align 8
  %38 = getelementptr inbounds %struct.ovl_dir_file, %struct.ovl_dir_file* %37, i32 0, i32 2
  store %struct.file* %36, %struct.file** %38, align 8
  %39 = load %struct.file*, %struct.file** %5, align 8
  %40 = getelementptr inbounds %struct.file, %struct.file* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @ovl_dir_is_real(i32 %42)
  %44 = load %struct.ovl_dir_file*, %struct.ovl_dir_file** %8, align 8
  %45 = getelementptr inbounds %struct.ovl_dir_file, %struct.ovl_dir_file* %44, i32 0, i32 1
  store i32 %43, i32* %45, align 4
  %46 = load i32, i32* %9, align 4
  %47 = call i32 @OVL_TYPE_UPPER(i32 %46)
  %48 = load %struct.ovl_dir_file*, %struct.ovl_dir_file** %8, align 8
  %49 = getelementptr inbounds %struct.ovl_dir_file, %struct.ovl_dir_file* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 8
  %50 = load %struct.ovl_dir_file*, %struct.ovl_dir_file** %8, align 8
  %51 = load %struct.file*, %struct.file** %5, align 8
  %52 = getelementptr inbounds %struct.file, %struct.file* %51, i32 0, i32 0
  store %struct.ovl_dir_file* %50, %struct.ovl_dir_file** %52, align 8
  store i32 0, i32* %3, align 4
  br label %53

53:                                               ; preds = %35, %30, %14
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local %struct.ovl_dir_file* @kzalloc(i32, i32) #1

declare dso_local i32 @ovl_path_real(i32, %struct.path*) #1

declare dso_local %struct.file* @ovl_path_open(%struct.path*, i32) #1

declare dso_local i64 @IS_ERR(%struct.file*) #1

declare dso_local i32 @kfree(%struct.ovl_dir_file*) #1

declare dso_local i32 @PTR_ERR(%struct.file*) #1

declare dso_local i32 @ovl_dir_is_real(i32) #1

declare dso_local i32 @OVL_TYPE_UPPER(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
