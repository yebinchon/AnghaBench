; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_read_write.c_do_iter_read.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_read_write.c_do_iter_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.iov_iter = type { i32 }

@FMODE_READ = common dso_local global i32 0, align 4
@EBADF = common dso_local global i64 0, align 8
@FMODE_CAN_READ = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i64 0, align 8
@READ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.file*, %struct.iov_iter*, i32*, i32)* @do_iter_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @do_iter_read(%struct.file* %0, %struct.iov_iter* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.file*, align 8
  %7 = alloca %struct.iov_iter*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.file* %0, %struct.file** %6, align 8
  store %struct.iov_iter* %1, %struct.iov_iter** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store i64 0, i64* %11, align 8
  %12 = load %struct.file*, %struct.file** %6, align 8
  %13 = getelementptr inbounds %struct.file, %struct.file* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @FMODE_READ, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %4
  %19 = load i64, i64* @EBADF, align 8
  %20 = sub nsw i64 0, %19
  store i64 %20, i64* %5, align 8
  br label %77

21:                                               ; preds = %4
  %22 = load %struct.file*, %struct.file** %6, align 8
  %23 = getelementptr inbounds %struct.file, %struct.file* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @FMODE_CAN_READ, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %21
  %29 = load i64, i64* @EINVAL, align 8
  %30 = sub nsw i64 0, %29
  store i64 %30, i64* %5, align 8
  br label %77

31:                                               ; preds = %21
  %32 = load %struct.iov_iter*, %struct.iov_iter** %7, align 8
  %33 = call i64 @iov_iter_count(%struct.iov_iter* %32)
  store i64 %33, i64* %10, align 8
  %34 = load i64, i64* %10, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %31
  br label %69

37:                                               ; preds = %31
  %38 = load i32, i32* @READ, align 4
  %39 = load %struct.file*, %struct.file** %6, align 8
  %40 = load i32*, i32** %8, align 8
  %41 = load i64, i64* %10, align 8
  %42 = call i64 @rw_verify_area(i32 %38, %struct.file* %39, i32* %40, i64 %41)
  store i64 %42, i64* %11, align 8
  %43 = load i64, i64* %11, align 8
  %44 = icmp slt i64 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %37
  %46 = load i64, i64* %11, align 8
  store i64 %46, i64* %5, align 8
  br label %77

47:                                               ; preds = %37
  %48 = load %struct.file*, %struct.file** %6, align 8
  %49 = getelementptr inbounds %struct.file, %struct.file* %48, i32 0, i32 1
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %61

54:                                               ; preds = %47
  %55 = load %struct.file*, %struct.file** %6, align 8
  %56 = load %struct.iov_iter*, %struct.iov_iter** %7, align 8
  %57 = load i32*, i32** %8, align 8
  %58 = load i32, i32* @READ, align 4
  %59 = load i32, i32* %9, align 4
  %60 = call i64 @do_iter_readv_writev(%struct.file* %55, %struct.iov_iter* %56, i32* %57, i32 %58, i32 %59)
  store i64 %60, i64* %11, align 8
  br label %68

61:                                               ; preds = %47
  %62 = load %struct.file*, %struct.file** %6, align 8
  %63 = load %struct.iov_iter*, %struct.iov_iter** %7, align 8
  %64 = load i32*, i32** %8, align 8
  %65 = load i32, i32* @READ, align 4
  %66 = load i32, i32* %9, align 4
  %67 = call i64 @do_loop_readv_writev(%struct.file* %62, %struct.iov_iter* %63, i32* %64, i32 %65, i32 %66)
  store i64 %67, i64* %11, align 8
  br label %68

68:                                               ; preds = %61, %54
  br label %69

69:                                               ; preds = %68, %36
  %70 = load i64, i64* %11, align 8
  %71 = icmp sge i64 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %69
  %73 = load %struct.file*, %struct.file** %6, align 8
  %74 = call i32 @fsnotify_access(%struct.file* %73)
  br label %75

75:                                               ; preds = %72, %69
  %76 = load i64, i64* %11, align 8
  store i64 %76, i64* %5, align 8
  br label %77

77:                                               ; preds = %75, %45, %28, %18
  %78 = load i64, i64* %5, align 8
  ret i64 %78
}

declare dso_local i64 @iov_iter_count(%struct.iov_iter*) #1

declare dso_local i64 @rw_verify_area(i32, %struct.file*, i32*, i64) #1

declare dso_local i64 @do_iter_readv_writev(%struct.file*, %struct.iov_iter*, i32*, i32, i32) #1

declare dso_local i64 @do_loop_readv_writev(%struct.file*, %struct.iov_iter*, i32*, i32, i32) #1

declare dso_local i32 @fsnotify_access(%struct.file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
