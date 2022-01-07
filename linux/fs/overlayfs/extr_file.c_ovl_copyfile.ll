; ModuleID = '/home/carl/AnghaBench/linux/fs/overlayfs/extr_file.c_ovl_copyfile.c'
source_filename = "/home/carl/AnghaBench/linux/fs/overlayfs/extr_file.c_ovl_copyfile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.inode = type { i32 }
%struct.fd = type { i32 }
%struct.cred = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.file*, i64, %struct.file*, i64, i64, i32, i32)* @ovl_copyfile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ovl_copyfile(%struct.file* %0, i64 %1, %struct.file* %2, i64 %3, i64 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i64, align 8
  %9 = alloca %struct.file*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.file*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.inode*, align 8
  %17 = alloca %struct.fd, align 4
  %18 = alloca %struct.fd, align 4
  %19 = alloca %struct.cred*, align 8
  %20 = alloca i64, align 8
  store %struct.file* %0, %struct.file** %9, align 8
  store i64 %1, i64* %10, align 8
  store %struct.file* %2, %struct.file** %11, align 8
  store i64 %3, i64* %12, align 8
  store i64 %4, i64* %13, align 8
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %21 = load %struct.file*, %struct.file** %11, align 8
  %22 = call %struct.inode* @file_inode(%struct.file* %21)
  store %struct.inode* %22, %struct.inode** %16, align 8
  %23 = load %struct.file*, %struct.file** %11, align 8
  %24 = call i64 @ovl_real_fdget(%struct.file* %23, %struct.fd* %18)
  store i64 %24, i64* %20, align 8
  %25 = load i64, i64* %20, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %7
  %28 = load i64, i64* %20, align 8
  store i64 %28, i64* %8, align 8
  br label %90

29:                                               ; preds = %7
  %30 = load %struct.file*, %struct.file** %9, align 8
  %31 = call i64 @ovl_real_fdget(%struct.file* %30, %struct.fd* %17)
  store i64 %31, i64* %20, align 8
  %32 = load i64, i64* %20, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.fd, %struct.fd* %18, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @fdput(i32 %36)
  %38 = load i64, i64* %20, align 8
  store i64 %38, i64* %8, align 8
  br label %90

39:                                               ; preds = %29
  %40 = load %struct.file*, %struct.file** %11, align 8
  %41 = call %struct.inode* @file_inode(%struct.file* %40)
  %42 = getelementptr inbounds %struct.inode, %struct.inode* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call %struct.cred* @ovl_override_creds(i32 %43)
  store %struct.cred* %44, %struct.cred** %19, align 8
  %45 = load i32, i32* %15, align 4
  switch i32 %45, label %76 [
    i32 129, label %46
    i32 130, label %56
    i32 128, label %66
  ]

46:                                               ; preds = %39
  %47 = getelementptr inbounds %struct.fd, %struct.fd* %17, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i64, i64* %10, align 8
  %50 = getelementptr inbounds %struct.fd, %struct.fd* %18, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i64, i64* %12, align 8
  %53 = load i64, i64* %13, align 8
  %54 = load i32, i32* %14, align 4
  %55 = call i64 @vfs_copy_file_range(i32 %48, i64 %49, i32 %51, i64 %52, i64 %53, i32 %54)
  store i64 %55, i64* %20, align 8
  br label %76

56:                                               ; preds = %39
  %57 = getelementptr inbounds %struct.fd, %struct.fd* %17, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i64, i64* %10, align 8
  %60 = getelementptr inbounds %struct.fd, %struct.fd* %18, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i64, i64* %12, align 8
  %63 = load i64, i64* %13, align 8
  %64 = load i32, i32* %14, align 4
  %65 = call i64 @vfs_clone_file_range(i32 %58, i64 %59, i32 %61, i64 %62, i64 %63, i32 %64)
  store i64 %65, i64* %20, align 8
  br label %76

66:                                               ; preds = %39
  %67 = getelementptr inbounds %struct.fd, %struct.fd* %17, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i64, i64* %10, align 8
  %70 = getelementptr inbounds %struct.fd, %struct.fd* %18, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i64, i64* %12, align 8
  %73 = load i64, i64* %13, align 8
  %74 = load i32, i32* %14, align 4
  %75 = call i64 @vfs_dedupe_file_range_one(i32 %68, i64 %69, i32 %71, i64 %72, i64 %73, i32 %74)
  store i64 %75, i64* %20, align 8
  br label %76

76:                                               ; preds = %39, %66, %56, %46
  %77 = load %struct.cred*, %struct.cred** %19, align 8
  %78 = call i32 @revert_creds(%struct.cred* %77)
  %79 = load %struct.inode*, %struct.inode** %16, align 8
  %80 = call i32 @ovl_inode_real(%struct.inode* %79)
  %81 = load %struct.inode*, %struct.inode** %16, align 8
  %82 = call i32 @ovl_copyattr(i32 %80, %struct.inode* %81)
  %83 = getelementptr inbounds %struct.fd, %struct.fd* %17, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @fdput(i32 %84)
  %86 = getelementptr inbounds %struct.fd, %struct.fd* %18, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @fdput(i32 %87)
  %89 = load i64, i64* %20, align 8
  store i64 %89, i64* %8, align 8
  br label %90

90:                                               ; preds = %76, %34, %27
  %91 = load i64, i64* %8, align 8
  ret i64 %91
}

declare dso_local %struct.inode* @file_inode(%struct.file*) #1

declare dso_local i64 @ovl_real_fdget(%struct.file*, %struct.fd*) #1

declare dso_local i32 @fdput(i32) #1

declare dso_local %struct.cred* @ovl_override_creds(i32) #1

declare dso_local i64 @vfs_copy_file_range(i32, i64, i32, i64, i64, i32) #1

declare dso_local i64 @vfs_clone_file_range(i32, i64, i32, i64, i64, i32) #1

declare dso_local i64 @vfs_dedupe_file_range_one(i32, i64, i32, i64, i64, i32) #1

declare dso_local i32 @revert_creds(%struct.cred*) #1

declare dso_local i32 @ovl_copyattr(i32, %struct.inode*) #1

declare dso_local i32 @ovl_inode_real(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
