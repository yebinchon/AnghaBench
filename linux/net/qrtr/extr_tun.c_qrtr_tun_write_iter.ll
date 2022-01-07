; ModuleID = '/home/carl/AnghaBench/linux/net/qrtr/extr_tun.c_qrtr_tun_write_iter.c'
source_filename = "/home/carl/AnghaBench/linux/net/qrtr/extr_tun.c_qrtr_tun_write_iter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kiocb = type { %struct.file* }
%struct.file = type { %struct.qrtr_tun* }
%struct.qrtr_tun = type { i32 }
%struct.iov_iter = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i64 0, align 8
@EFAULT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.kiocb*, %struct.iov_iter*)* @qrtr_tun_write_iter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @qrtr_tun_write_iter(%struct.kiocb* %0, %struct.iov_iter* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.kiocb*, align 8
  %5 = alloca %struct.iov_iter*, align 8
  %6 = alloca %struct.file*, align 8
  %7 = alloca %struct.qrtr_tun*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  store %struct.kiocb* %0, %struct.kiocb** %4, align 8
  store %struct.iov_iter* %1, %struct.iov_iter** %5, align 8
  %11 = load %struct.kiocb*, %struct.kiocb** %4, align 8
  %12 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %11, i32 0, i32 0
  %13 = load %struct.file*, %struct.file** %12, align 8
  store %struct.file* %13, %struct.file** %6, align 8
  %14 = load %struct.file*, %struct.file** %6, align 8
  %15 = getelementptr inbounds %struct.file, %struct.file* %14, i32 0, i32 0
  %16 = load %struct.qrtr_tun*, %struct.qrtr_tun** %15, align 8
  store %struct.qrtr_tun* %16, %struct.qrtr_tun** %7, align 8
  %17 = load %struct.iov_iter*, %struct.iov_iter** %5, align 8
  %18 = call i64 @iov_iter_count(%struct.iov_iter* %17)
  store i64 %18, i64* %8, align 8
  %19 = load i64, i64* %8, align 8
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call i8* @kzalloc(i64 %19, i32 %20)
  store i8* %21, i8** %10, align 8
  %22 = load i8*, i8** %10, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %2
  %25 = load i64, i64* @ENOMEM, align 8
  %26 = sub nsw i64 0, %25
  store i64 %26, i64* %3, align 8
  br label %54

27:                                               ; preds = %2
  %28 = load i8*, i8** %10, align 8
  %29 = load i64, i64* %8, align 8
  %30 = load %struct.iov_iter*, %struct.iov_iter** %5, align 8
  %31 = call i32 @copy_from_iter_full(i8* %28, i64 %29, %struct.iov_iter* %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %38, label %33

33:                                               ; preds = %27
  %34 = load i8*, i8** %10, align 8
  %35 = call i32 @kfree(i8* %34)
  %36 = load i64, i64* @EFAULT, align 8
  %37 = sub nsw i64 0, %36
  store i64 %37, i64* %3, align 8
  br label %54

38:                                               ; preds = %27
  %39 = load %struct.qrtr_tun*, %struct.qrtr_tun** %7, align 8
  %40 = getelementptr inbounds %struct.qrtr_tun, %struct.qrtr_tun* %39, i32 0, i32 0
  %41 = load i8*, i8** %10, align 8
  %42 = load i64, i64* %8, align 8
  %43 = call i64 @qrtr_endpoint_post(i32* %40, i8* %41, i64 %42)
  store i64 %43, i64* %9, align 8
  %44 = load i8*, i8** %10, align 8
  %45 = call i32 @kfree(i8* %44)
  %46 = load i64, i64* %9, align 8
  %47 = icmp slt i64 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %38
  %49 = load i64, i64* %9, align 8
  br label %52

50:                                               ; preds = %38
  %51 = load i64, i64* %8, align 8
  br label %52

52:                                               ; preds = %50, %48
  %53 = phi i64 [ %49, %48 ], [ %51, %50 ]
  store i64 %53, i64* %3, align 8
  br label %54

54:                                               ; preds = %52, %33, %24
  %55 = load i64, i64* %3, align 8
  ret i64 %55
}

declare dso_local i64 @iov_iter_count(%struct.iov_iter*) #1

declare dso_local i8* @kzalloc(i64, i32) #1

declare dso_local i32 @copy_from_iter_full(i8*, i64, %struct.iov_iter*) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i64 @qrtr_endpoint_post(i32*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
