; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_fhandle.c_do_handle_to_path.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_fhandle.c_do_handle_to_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file_handle = type { i32, i32, i64 }
%struct.path = type { i32, i32 }
%struct.fid = type { i32 }

@vfs_dentry_acceptable = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.file_handle*, %struct.path*)* @do_handle_to_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_handle_to_path(i32 %0, %struct.file_handle* %1, %struct.path* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.file_handle*, align 8
  %7 = alloca %struct.path*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store %struct.file_handle* %1, %struct.file_handle** %6, align 8
  store %struct.path* %2, %struct.path** %7, align 8
  store i32 0, i32* %8, align 4
  %10 = load i32, i32* %5, align 4
  %11 = call i32 @get_vfsmount_from_fd(i32 %10)
  %12 = load %struct.path*, %struct.path** %7, align 8
  %13 = getelementptr inbounds %struct.path, %struct.path* %12, i32 0, i32 0
  store i32 %11, i32* %13, align 4
  %14 = load %struct.path*, %struct.path** %7, align 8
  %15 = getelementptr inbounds %struct.path, %struct.path* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i64 @IS_ERR(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %3
  %20 = load %struct.path*, %struct.path** %7, align 8
  %21 = getelementptr inbounds %struct.path, %struct.path* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @PTR_ERR(i32 %22)
  store i32 %23, i32* %8, align 4
  br label %60

24:                                               ; preds = %3
  %25 = load %struct.file_handle*, %struct.file_handle** %6, align 8
  %26 = getelementptr inbounds %struct.file_handle, %struct.file_handle* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = ashr i32 %27, 2
  store i32 %28, i32* %9, align 4
  %29 = load %struct.path*, %struct.path** %7, align 8
  %30 = getelementptr inbounds %struct.path, %struct.path* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.file_handle*, %struct.file_handle** %6, align 8
  %33 = getelementptr inbounds %struct.file_handle, %struct.file_handle* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = inttoptr i64 %34 to %struct.fid*
  %36 = load i32, i32* %9, align 4
  %37 = load %struct.file_handle*, %struct.file_handle** %6, align 8
  %38 = getelementptr inbounds %struct.file_handle, %struct.file_handle* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @vfs_dentry_acceptable, align 4
  %41 = call i32 @exportfs_decode_fh(i32 %31, %struct.fid* %35, i32 %36, i32 %39, i32 %40, i32* null)
  %42 = load %struct.path*, %struct.path** %7, align 8
  %43 = getelementptr inbounds %struct.path, %struct.path* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 4
  %44 = load %struct.path*, %struct.path** %7, align 8
  %45 = getelementptr inbounds %struct.path, %struct.path* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i64 @IS_ERR(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %24
  %50 = load %struct.path*, %struct.path** %7, align 8
  %51 = getelementptr inbounds %struct.path, %struct.path* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @PTR_ERR(i32 %52)
  store i32 %53, i32* %8, align 4
  br label %55

54:                                               ; preds = %24
  store i32 0, i32* %4, align 4
  br label %62

55:                                               ; preds = %49
  %56 = load %struct.path*, %struct.path** %7, align 8
  %57 = getelementptr inbounds %struct.path, %struct.path* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @mntput(i32 %58)
  br label %60

60:                                               ; preds = %55, %19
  %61 = load i32, i32* %8, align 4
  store i32 %61, i32* %4, align 4
  br label %62

62:                                               ; preds = %60, %54
  %63 = load i32, i32* %4, align 4
  ret i32 %63
}

declare dso_local i32 @get_vfsmount_from_fd(i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @exportfs_decode_fh(i32, %struct.fid*, i32, i32, i32, i32*) #1

declare dso_local i32 @mntput(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
