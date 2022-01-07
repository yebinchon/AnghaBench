; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_dir.c_nfs_llseek_dir.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_dir.c_nfs_llseek_dir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i64, %struct.nfs_open_dir_context* }
%struct.nfs_open_dir_context = type { i64, i64 }
%struct.inode = type { i32 }

@FILE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"NFS: llseek dir(%pD2, %lld, %d)\0A\00", align 1
@EINVAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.file*, i64, i32)* @nfs_llseek_dir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @nfs_llseek_dir(%struct.file* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.inode*, align 8
  %9 = alloca %struct.nfs_open_dir_context*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.file*, %struct.file** %5, align 8
  %11 = call %struct.inode* @file_inode(%struct.file* %10)
  store %struct.inode* %11, %struct.inode** %8, align 8
  %12 = load %struct.file*, %struct.file** %5, align 8
  %13 = getelementptr inbounds %struct.file, %struct.file* %12, i32 0, i32 1
  %14 = load %struct.nfs_open_dir_context*, %struct.nfs_open_dir_context** %13, align 8
  store %struct.nfs_open_dir_context* %14, %struct.nfs_open_dir_context** %9, align 8
  %15 = load i32, i32* @FILE, align 4
  %16 = load %struct.file*, %struct.file** %5, align 8
  %17 = load i64, i64* %6, align 8
  %18 = load i32, i32* %7, align 4
  %19 = call i32 @dfprintk(i32 %15, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), %struct.file* %16, i64 %17, i32 %18)
  %20 = load i32, i32* %7, align 4
  switch i32 %20, label %21 [
    i32 128, label %24
    i32 129, label %33
  ]

21:                                               ; preds = %3
  %22 = load i64, i64* @EINVAL, align 8
  %23 = sub nsw i64 0, %22
  store i64 %23, i64* %4, align 8
  br label %74

24:                                               ; preds = %3
  %25 = load i64, i64* %6, align 8
  %26 = icmp slt i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %24
  %28 = load i64, i64* @EINVAL, align 8
  %29 = sub nsw i64 0, %28
  store i64 %29, i64* %4, align 8
  br label %74

30:                                               ; preds = %24
  %31 = load %struct.inode*, %struct.inode** %8, align 8
  %32 = call i32 @inode_lock(%struct.inode* %31)
  br label %56

33:                                               ; preds = %3
  %34 = load i64, i64* %6, align 8
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %33
  %37 = load %struct.file*, %struct.file** %5, align 8
  %38 = getelementptr inbounds %struct.file, %struct.file* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  store i64 %39, i64* %4, align 8
  br label %74

40:                                               ; preds = %33
  %41 = load %struct.inode*, %struct.inode** %8, align 8
  %42 = call i32 @inode_lock(%struct.inode* %41)
  %43 = load %struct.file*, %struct.file** %5, align 8
  %44 = getelementptr inbounds %struct.file, %struct.file* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* %6, align 8
  %47 = add nsw i64 %46, %45
  store i64 %47, i64* %6, align 8
  %48 = load i64, i64* %6, align 8
  %49 = icmp slt i64 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %40
  %51 = load %struct.inode*, %struct.inode** %8, align 8
  %52 = call i32 @inode_unlock(%struct.inode* %51)
  %53 = load i64, i64* @EINVAL, align 8
  %54 = sub nsw i64 0, %53
  store i64 %54, i64* %4, align 8
  br label %74

55:                                               ; preds = %40
  br label %56

56:                                               ; preds = %55, %30
  %57 = load i64, i64* %6, align 8
  %58 = load %struct.file*, %struct.file** %5, align 8
  %59 = getelementptr inbounds %struct.file, %struct.file* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %57, %60
  br i1 %61, label %62, label %70

62:                                               ; preds = %56
  %63 = load i64, i64* %6, align 8
  %64 = load %struct.file*, %struct.file** %5, align 8
  %65 = getelementptr inbounds %struct.file, %struct.file* %64, i32 0, i32 0
  store i64 %63, i64* %65, align 8
  %66 = load %struct.nfs_open_dir_context*, %struct.nfs_open_dir_context** %9, align 8
  %67 = getelementptr inbounds %struct.nfs_open_dir_context, %struct.nfs_open_dir_context* %66, i32 0, i32 1
  store i64 0, i64* %67, align 8
  %68 = load %struct.nfs_open_dir_context*, %struct.nfs_open_dir_context** %9, align 8
  %69 = getelementptr inbounds %struct.nfs_open_dir_context, %struct.nfs_open_dir_context* %68, i32 0, i32 0
  store i64 0, i64* %69, align 8
  br label %70

70:                                               ; preds = %62, %56
  %71 = load %struct.inode*, %struct.inode** %8, align 8
  %72 = call i32 @inode_unlock(%struct.inode* %71)
  %73 = load i64, i64* %6, align 8
  store i64 %73, i64* %4, align 8
  br label %74

74:                                               ; preds = %70, %50, %36, %27, %21
  %75 = load i64, i64* %4, align 8
  ret i64 %75
}

declare dso_local %struct.inode* @file_inode(%struct.file*) #1

declare dso_local i32 @dfprintk(i32, i8*, %struct.file*, i64, i32) #1

declare dso_local i32 @inode_lock(%struct.inode*) #1

declare dso_local i32 @inode_unlock(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
