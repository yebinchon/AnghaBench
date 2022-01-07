; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_ioctl.c_ioctl_file_clone.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_ioctl.c_ioctl_file_clone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }
%struct.fd = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

@EBADF = common dso_local global i64 0, align 8
@EXDEV = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.file*, i64, i32, i32, i32)* @ioctl_file_clone to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ioctl_file_clone(%struct.file* %0, i64 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.file*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.fd, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %7, align 8
  store i64 %1, i64* %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %15 = load i64, i64* %8, align 8
  %16 = call %struct.TYPE_6__* @fdget(i64 %15)
  %17 = getelementptr inbounds %struct.fd, %struct.fd* %12, i32 0, i32 0
  store %struct.TYPE_6__* %16, %struct.TYPE_6__** %17, align 8
  %18 = getelementptr inbounds %struct.fd, %struct.fd* %12, i32 0, i32 0
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %20 = icmp ne %struct.TYPE_6__* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %5
  %22 = load i64, i64* @EBADF, align 8
  %23 = sub nsw i64 0, %22
  store i64 %23, i64* %6, align 8
  br label %69

24:                                               ; preds = %5
  %25 = load i32, i32* @EXDEV, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %14, align 4
  %27 = getelementptr inbounds %struct.fd, %struct.fd* %12, i32 0, i32 0
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.file*, %struct.file** %7, align 8
  %33 = getelementptr inbounds %struct.file, %struct.file* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %31, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %24
  br label %63

38:                                               ; preds = %24
  %39 = getelementptr inbounds %struct.fd, %struct.fd* %12, i32 0, i32 0
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %39, align 8
  %41 = load i32, i32* %9, align 4
  %42 = load %struct.file*, %struct.file** %7, align 8
  %43 = load i32, i32* %11, align 4
  %44 = load i32, i32* %10, align 4
  %45 = call i32 @vfs_clone_file_range(%struct.TYPE_6__* %40, i32 %41, %struct.file* %42, i32 %43, i32 %44, i32 0)
  store i32 %45, i32* %13, align 4
  %46 = load i32, i32* %13, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %38
  %49 = load i32, i32* %13, align 4
  store i32 %49, i32* %14, align 4
  br label %62

50:                                               ; preds = %38
  %51 = load i32, i32* %10, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %60

53:                                               ; preds = %50
  %54 = load i32, i32* %13, align 4
  %55 = load i32, i32* %10, align 4
  %56 = icmp ne i32 %54, %55
  br i1 %56, label %57, label %60

57:                                               ; preds = %53
  %58 = load i32, i32* @EINVAL, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %14, align 4
  br label %61

60:                                               ; preds = %53, %50
  store i32 0, i32* %14, align 4
  br label %61

61:                                               ; preds = %60, %57
  br label %62

62:                                               ; preds = %61, %48
  br label %63

63:                                               ; preds = %62, %37
  %64 = getelementptr inbounds %struct.fd, %struct.fd* %12, i32 0, i32 0
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %64, align 8
  %66 = call i32 @fdput(%struct.TYPE_6__* %65)
  %67 = load i32, i32* %14, align 4
  %68 = sext i32 %67 to i64
  store i64 %68, i64* %6, align 8
  br label %69

69:                                               ; preds = %63, %21
  %70 = load i64, i64* %6, align 8
  ret i64 %70
}

declare dso_local %struct.TYPE_6__* @fdget(i64) #1

declare dso_local i32 @vfs_clone_file_range(%struct.TYPE_6__*, i32, %struct.file*, i32, i32, i32) #1

declare dso_local i32 @fdput(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
