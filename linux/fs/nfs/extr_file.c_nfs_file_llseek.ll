; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_file.c_nfs_file_llseek.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_file.c_nfs_file_llseek.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.inode* }
%struct.inode = type { i32 }

@.str = private unnamed_addr constant [34 x i8] c"NFS: llseek file(%pD2, %lld, %d)\0A\00", align 1
@SEEK_SET = common dso_local global i32 0, align 4
@SEEK_CUR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfs_file_llseek(%struct.file* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.inode*, align 8
  %9 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load %struct.file*, %struct.file** %5, align 8
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* %7, align 4
  %13 = call i32 @dprintk(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), %struct.file* %10, i32 %11, i32 %12)
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* @SEEK_SET, align 4
  %16 = icmp ne i32 %14, %15
  br i1 %16, label %17, label %35

17:                                               ; preds = %3
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* @SEEK_CUR, align 4
  %20 = icmp ne i32 %18, %19
  br i1 %20, label %21, label %35

21:                                               ; preds = %17
  %22 = load %struct.file*, %struct.file** %5, align 8
  %23 = getelementptr inbounds %struct.file, %struct.file* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load %struct.inode*, %struct.inode** %25, align 8
  store %struct.inode* %26, %struct.inode** %8, align 8
  %27 = load %struct.inode*, %struct.inode** %8, align 8
  %28 = load %struct.file*, %struct.file** %5, align 8
  %29 = call i32 @nfs_revalidate_file_size(%struct.inode* %27, %struct.file* %28)
  store i32 %29, i32* %9, align 4
  %30 = load i32, i32* %9, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %21
  %33 = load i32, i32* %9, align 4
  store i32 %33, i32* %4, align 4
  br label %40

34:                                               ; preds = %21
  br label %35

35:                                               ; preds = %34, %17, %3
  %36 = load %struct.file*, %struct.file** %5, align 8
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* %7, align 4
  %39 = call i32 @generic_file_llseek(%struct.file* %36, i32 %37, i32 %38)
  store i32 %39, i32* %4, align 4
  br label %40

40:                                               ; preds = %35, %32
  %41 = load i32, i32* %4, align 4
  ret i32 %41
}

declare dso_local i32 @dprintk(i8*, %struct.file*, i32, i32) #1

declare dso_local i32 @nfs_revalidate_file_size(%struct.inode*, %struct.file*) #1

declare dso_local i32 @generic_file_llseek(%struct.file*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
