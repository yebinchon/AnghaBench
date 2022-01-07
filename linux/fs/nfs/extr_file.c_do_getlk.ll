; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_file.c_do_getlk.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_file.c_do_getlk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.inode* }
%struct.inode = type { i32 }
%struct.file_lock = type { i32 }
%struct.TYPE_4__ = type { i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.inode*, i32)* }

@F_UNLCK = common dso_local global i32 0, align 4
@FMODE_READ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i32, %struct.file_lock*, i32)* @do_getlk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_getlk(%struct.file* %0, i32 %1, %struct.file_lock* %2, i32 %3) #0 {
  %5 = alloca %struct.file*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.file_lock*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.inode*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.file_lock* %2, %struct.file_lock** %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = load %struct.file*, %struct.file** %5, align 8
  %13 = getelementptr inbounds %struct.file, %struct.file* %12, i32 0, i32 0
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load %struct.inode*, %struct.inode** %15, align 8
  store %struct.inode* %16, %struct.inode** %9, align 8
  store i32 0, i32* %10, align 4
  %17 = load %struct.file_lock*, %struct.file_lock** %7, align 8
  %18 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %11, align 4
  %20 = load %struct.file*, %struct.file** %5, align 8
  %21 = load %struct.file_lock*, %struct.file_lock** %7, align 8
  %22 = call i32 @posix_test_lock(%struct.file* %20, %struct.file_lock* %21)
  %23 = load %struct.file_lock*, %struct.file_lock** %7, align 8
  %24 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @F_UNLCK, align 4
  %27 = icmp ne i32 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %4
  br label %55

29:                                               ; preds = %4
  %30 = load i32, i32* %11, align 4
  %31 = load %struct.file_lock*, %struct.file_lock** %7, align 8
  %32 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 4
  %33 = load %struct.inode*, %struct.inode** %9, align 8
  %34 = call %struct.TYPE_4__* @NFS_PROTO(%struct.inode* %33)
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 1
  %36 = load i64 (%struct.inode*, i32)*, i64 (%struct.inode*, i32)** %35, align 8
  %37 = load %struct.inode*, %struct.inode** %9, align 8
  %38 = load i32, i32* @FMODE_READ, align 4
  %39 = call i64 %36(%struct.inode* %37, i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %29
  br label %57

42:                                               ; preds = %29
  %43 = load i32, i32* %8, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %42
  br label %57

46:                                               ; preds = %42
  %47 = load %struct.inode*, %struct.inode** %9, align 8
  %48 = call %struct.TYPE_4__* @NFS_PROTO(%struct.inode* %47)
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i32 (%struct.file*, i32, %struct.file_lock*)*, i32 (%struct.file*, i32, %struct.file_lock*)** %49, align 8
  %51 = load %struct.file*, %struct.file** %5, align 8
  %52 = load i32, i32* %6, align 4
  %53 = load %struct.file_lock*, %struct.file_lock** %7, align 8
  %54 = call i32 %50(%struct.file* %51, i32 %52, %struct.file_lock* %53)
  store i32 %54, i32* %10, align 4
  br label %55

55:                                               ; preds = %57, %46, %28
  %56 = load i32, i32* %10, align 4
  ret i32 %56

57:                                               ; preds = %45, %41
  %58 = load i32, i32* @F_UNLCK, align 4
  %59 = load %struct.file_lock*, %struct.file_lock** %7, align 8
  %60 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 4
  br label %55
}

declare dso_local i32 @posix_test_lock(%struct.file*, %struct.file_lock*) #1

declare dso_local %struct.TYPE_4__* @NFS_PROTO(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
