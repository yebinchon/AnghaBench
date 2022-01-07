; ModuleID = '/home/carl/AnghaBench/linux/fs/overlayfs/extr_file.c_ovl_real_fdget_meta.c'
source_filename = "/home/carl/AnghaBench/linux/fs/overlayfs/extr_file.c_ovl_real_fdget_meta.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32, %struct.file* }
%struct.fd = type { %struct.file*, i64 }
%struct.inode = type { i32 }

@FDPUT_FPUT = common dso_local global i64 0, align 8
@O_NOATIME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.fd*, i32)* @ovl_real_fdget_meta to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ovl_real_fdget_meta(%struct.file* %0, %struct.fd* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.fd*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.inode*, align 8
  %9 = alloca %struct.inode*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store %struct.fd* %1, %struct.fd** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.file*, %struct.file** %5, align 8
  %11 = call %struct.inode* @file_inode(%struct.file* %10)
  store %struct.inode* %11, %struct.inode** %8, align 8
  %12 = load %struct.fd*, %struct.fd** %6, align 8
  %13 = getelementptr inbounds %struct.fd, %struct.fd* %12, i32 0, i32 1
  store i64 0, i64* %13, align 8
  %14 = load %struct.file*, %struct.file** %5, align 8
  %15 = getelementptr inbounds %struct.file, %struct.file* %14, i32 0, i32 1
  %16 = load %struct.file*, %struct.file** %15, align 8
  %17 = load %struct.fd*, %struct.fd** %6, align 8
  %18 = getelementptr inbounds %struct.fd, %struct.fd* %17, i32 0, i32 0
  store %struct.file* %16, %struct.file** %18, align 8
  %19 = load i32, i32* %7, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %3
  %22 = load %struct.inode*, %struct.inode** %8, align 8
  %23 = call %struct.inode* @ovl_inode_real(%struct.inode* %22)
  store %struct.inode* %23, %struct.inode** %9, align 8
  br label %27

24:                                               ; preds = %3
  %25 = load %struct.inode*, %struct.inode** %8, align 8
  %26 = call %struct.inode* @ovl_inode_realdata(%struct.inode* %25)
  store %struct.inode* %26, %struct.inode** %9, align 8
  br label %27

27:                                               ; preds = %24, %21
  %28 = load %struct.fd*, %struct.fd** %6, align 8
  %29 = getelementptr inbounds %struct.fd, %struct.fd* %28, i32 0, i32 0
  %30 = load %struct.file*, %struct.file** %29, align 8
  %31 = call %struct.inode* @file_inode(%struct.file* %30)
  %32 = load %struct.inode*, %struct.inode** %9, align 8
  %33 = icmp ne %struct.inode* %31, %32
  %34 = zext i1 %33 to i32
  %35 = call i64 @unlikely(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %50

37:                                               ; preds = %27
  %38 = load i64, i64* @FDPUT_FPUT, align 8
  %39 = load %struct.fd*, %struct.fd** %6, align 8
  %40 = getelementptr inbounds %struct.fd, %struct.fd* %39, i32 0, i32 1
  store i64 %38, i64* %40, align 8
  %41 = load %struct.file*, %struct.file** %5, align 8
  %42 = load %struct.inode*, %struct.inode** %9, align 8
  %43 = call %struct.file* @ovl_open_realfile(%struct.file* %41, %struct.inode* %42)
  %44 = load %struct.fd*, %struct.fd** %6, align 8
  %45 = getelementptr inbounds %struct.fd, %struct.fd* %44, i32 0, i32 0
  store %struct.file* %43, %struct.file** %45, align 8
  %46 = load %struct.fd*, %struct.fd** %6, align 8
  %47 = getelementptr inbounds %struct.fd, %struct.fd* %46, i32 0, i32 0
  %48 = load %struct.file*, %struct.file** %47, align 8
  %49 = call i32 @PTR_ERR_OR_ZERO(%struct.file* %48)
  store i32 %49, i32* %4, align 4
  br label %74

50:                                               ; preds = %27
  %51 = load %struct.file*, %struct.file** %5, align 8
  %52 = getelementptr inbounds %struct.file, %struct.file* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.fd*, %struct.fd** %6, align 8
  %55 = getelementptr inbounds %struct.fd, %struct.fd* %54, i32 0, i32 0
  %56 = load %struct.file*, %struct.file** %55, align 8
  %57 = getelementptr inbounds %struct.file, %struct.file* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = xor i32 %53, %58
  %60 = load i32, i32* @O_NOATIME, align 4
  %61 = xor i32 %60, -1
  %62 = and i32 %59, %61
  %63 = call i64 @unlikely(i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %73

65:                                               ; preds = %50
  %66 = load %struct.fd*, %struct.fd** %6, align 8
  %67 = getelementptr inbounds %struct.fd, %struct.fd* %66, i32 0, i32 0
  %68 = load %struct.file*, %struct.file** %67, align 8
  %69 = load %struct.file*, %struct.file** %5, align 8
  %70 = getelementptr inbounds %struct.file, %struct.file* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @ovl_change_flags(%struct.file* %68, i32 %71)
  store i32 %72, i32* %4, align 4
  br label %74

73:                                               ; preds = %50
  store i32 0, i32* %4, align 4
  br label %74

74:                                               ; preds = %73, %65, %37
  %75 = load i32, i32* %4, align 4
  ret i32 %75
}

declare dso_local %struct.inode* @file_inode(%struct.file*) #1

declare dso_local %struct.inode* @ovl_inode_real(%struct.inode*) #1

declare dso_local %struct.inode* @ovl_inode_realdata(%struct.inode*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.file* @ovl_open_realfile(%struct.file*, %struct.inode*) #1

declare dso_local i32 @PTR_ERR_OR_ZERO(%struct.file*) #1

declare dso_local i32 @ovl_change_flags(%struct.file*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
