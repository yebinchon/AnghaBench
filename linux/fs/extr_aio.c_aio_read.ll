; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_aio.c_aio_read.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_aio.c_aio_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kiocb = type { i32, %struct.file* }
%struct.file = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.iocb = type { i32 }
%struct.iovec = type { i32 }
%struct.iov_iter = type { i32 }

@UIO_FASTIOV = common dso_local global i32 0, align 4
@FMODE_READ = common dso_local global i32 0, align 4
@EBADF = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@READ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kiocb*, %struct.iocb*, i32, i32)* @aio_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aio_read(%struct.kiocb* %0, %struct.iocb* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.kiocb*, align 8
  %7 = alloca %struct.iocb*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.iovec*, align 8
  %13 = alloca %struct.iov_iter, align 4
  %14 = alloca %struct.file*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.kiocb* %0, %struct.kiocb** %6, align 8
  store %struct.iocb* %1, %struct.iocb** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %17 = load i32, i32* @UIO_FASTIOV, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %10, align 8
  %20 = alloca %struct.iovec, i64 %18, align 16
  store i64 %18, i64* %11, align 8
  store %struct.iovec* %20, %struct.iovec** %12, align 8
  %21 = load %struct.kiocb*, %struct.kiocb** %6, align 8
  %22 = load %struct.iocb*, %struct.iocb** %7, align 8
  %23 = call i32 @aio_prep_rw(%struct.kiocb* %21, %struct.iocb* %22)
  store i32 %23, i32* %15, align 4
  %24 = load i32, i32* %15, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %4
  %27 = load i32, i32* %15, align 4
  store i32 %27, i32* %5, align 4
  store i32 1, i32* %16, align 4
  br label %90

28:                                               ; preds = %4
  %29 = load %struct.kiocb*, %struct.kiocb** %6, align 8
  %30 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %29, i32 0, i32 1
  %31 = load %struct.file*, %struct.file** %30, align 8
  store %struct.file* %31, %struct.file** %14, align 8
  %32 = load %struct.file*, %struct.file** %14, align 8
  %33 = getelementptr inbounds %struct.file, %struct.file* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @FMODE_READ, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  %38 = xor i1 %37, true
  %39 = zext i1 %38 to i32
  %40 = call i64 @unlikely(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %28
  %43 = load i32, i32* @EBADF, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %5, align 4
  store i32 1, i32* %16, align 4
  br label %90

45:                                               ; preds = %28
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %15, align 4
  %48 = load %struct.file*, %struct.file** %14, align 8
  %49 = getelementptr inbounds %struct.file, %struct.file* %48, i32 0, i32 1
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = icmp ne i32 %52, 0
  %54 = xor i1 %53, true
  %55 = zext i1 %54 to i32
  %56 = call i64 @unlikely(i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %45
  %59 = load i32, i32* @EINVAL, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %5, align 4
  store i32 1, i32* %16, align 4
  br label %90

61:                                               ; preds = %45
  %62 = load i32, i32* @READ, align 4
  %63 = load %struct.iocb*, %struct.iocb** %7, align 8
  %64 = load i32, i32* %8, align 4
  %65 = load i32, i32* %9, align 4
  %66 = call i32 @aio_setup_rw(i32 %62, %struct.iocb* %63, %struct.iovec** %12, i32 %64, i32 %65, %struct.iov_iter* %13)
  store i32 %66, i32* %15, align 4
  %67 = load i32, i32* %15, align 4
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %61
  %70 = load i32, i32* %15, align 4
  store i32 %70, i32* %5, align 4
  store i32 1, i32* %16, align 4
  br label %90

71:                                               ; preds = %61
  %72 = load i32, i32* @READ, align 4
  %73 = load %struct.file*, %struct.file** %14, align 8
  %74 = load %struct.kiocb*, %struct.kiocb** %6, align 8
  %75 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %74, i32 0, i32 0
  %76 = call i32 @iov_iter_count(%struct.iov_iter* %13)
  %77 = call i32 @rw_verify_area(i32 %72, %struct.file* %73, i32* %75, i32 %76)
  store i32 %77, i32* %15, align 4
  %78 = load i32, i32* %15, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %86, label %80

80:                                               ; preds = %71
  %81 = load %struct.kiocb*, %struct.kiocb** %6, align 8
  %82 = load %struct.file*, %struct.file** %14, align 8
  %83 = load %struct.kiocb*, %struct.kiocb** %6, align 8
  %84 = call i32 @call_read_iter(%struct.file* %82, %struct.kiocb* %83, %struct.iov_iter* %13)
  %85 = call i32 @aio_rw_done(%struct.kiocb* %81, i32 %84)
  br label %86

86:                                               ; preds = %80, %71
  %87 = load %struct.iovec*, %struct.iovec** %12, align 8
  %88 = call i32 @kfree(%struct.iovec* %87)
  %89 = load i32, i32* %15, align 4
  store i32 %89, i32* %5, align 4
  store i32 1, i32* %16, align 4
  br label %90

90:                                               ; preds = %86, %69, %58, %42, %26
  %91 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %91)
  %92 = load i32, i32* %5, align 4
  ret i32 %92
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @aio_prep_rw(%struct.kiocb*, %struct.iocb*) #2

declare dso_local i64 @unlikely(i32) #2

declare dso_local i32 @aio_setup_rw(i32, %struct.iocb*, %struct.iovec**, i32, i32, %struct.iov_iter*) #2

declare dso_local i32 @rw_verify_area(i32, %struct.file*, i32*, i32) #2

declare dso_local i32 @iov_iter_count(%struct.iov_iter*) #2

declare dso_local i32 @aio_rw_done(%struct.kiocb*, i32) #2

declare dso_local i32 @call_read_iter(%struct.file*, %struct.kiocb*, %struct.iov_iter*) #2

declare dso_local i32 @kfree(%struct.iovec*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
