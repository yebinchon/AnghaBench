; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_io_uring.c_loop_rw_iter.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_io_uring.c_loop_rw_iter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 (%struct.file*, i32, i64, i32*)*, i64 (%struct.file*, i32, i64, i32*)* }
%struct.kiocb = type { i32, i32 }
%struct.iov_iter = type { i32 }
%struct.iovec = type { i64, i32 }

@IOCB_HIPRI = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i64 0, align 8
@IOCB_NOWAIT = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i64 0, align 8
@READ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, %struct.file*, %struct.kiocb*, %struct.iov_iter*)* @loop_rw_iter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @loop_rw_iter(i32 %0, %struct.file* %1, %struct.kiocb* %2, %struct.iov_iter* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.file*, align 8
  %8 = alloca %struct.kiocb*, align 8
  %9 = alloca %struct.iov_iter*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.iovec, align 8
  %12 = alloca i64, align 8
  store i32 %0, i32* %6, align 4
  store %struct.file* %1, %struct.file** %7, align 8
  store %struct.kiocb* %2, %struct.kiocb** %8, align 8
  store %struct.iov_iter* %3, %struct.iov_iter** %9, align 8
  store i64 0, i64* %10, align 8
  %13 = load %struct.kiocb*, %struct.kiocb** %8, align 8
  %14 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @IOCB_HIPRI, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %4
  %20 = load i64, i64* @EOPNOTSUPP, align 8
  %21 = sub nsw i64 0, %20
  store i64 %21, i64* %5, align 8
  br label %100

22:                                               ; preds = %4
  %23 = load %struct.kiocb*, %struct.kiocb** %8, align 8
  %24 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @IOCB_NOWAIT, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %22
  %30 = load i64, i64* @EAGAIN, align 8
  %31 = sub nsw i64 0, %30
  store i64 %31, i64* %5, align 8
  br label %100

32:                                               ; preds = %22
  br label %33

33:                                               ; preds = %94, %32
  %34 = load %struct.iov_iter*, %struct.iov_iter** %9, align 8
  %35 = call i64 @iov_iter_count(%struct.iov_iter* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %98

37:                                               ; preds = %33
  %38 = load %struct.iov_iter*, %struct.iov_iter** %9, align 8
  %39 = call { i64, i32 } @iov_iter_iovec(%struct.iov_iter* %38)
  %40 = bitcast %struct.iovec* %11 to { i64, i32 }*
  %41 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %40, i32 0, i32 0
  %42 = extractvalue { i64, i32 } %39, 0
  store i64 %42, i64* %41, align 8
  %43 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %40, i32 0, i32 1
  %44 = extractvalue { i64, i32 } %39, 1
  store i32 %44, i32* %43, align 8
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* @READ, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %62

48:                                               ; preds = %37
  %49 = load %struct.file*, %struct.file** %7, align 8
  %50 = getelementptr inbounds %struct.file, %struct.file* %49, i32 0, i32 0
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i64 (%struct.file*, i32, i64, i32*)*, i64 (%struct.file*, i32, i64, i32*)** %52, align 8
  %54 = load %struct.file*, %struct.file** %7, align 8
  %55 = getelementptr inbounds %struct.iovec, %struct.iovec* %11, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = getelementptr inbounds %struct.iovec, %struct.iovec* %11, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.kiocb*, %struct.kiocb** %8, align 8
  %60 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %59, i32 0, i32 1
  %61 = call i64 %53(%struct.file* %54, i32 %56, i64 %58, i32* %60)
  store i64 %61, i64* %12, align 8
  br label %76

62:                                               ; preds = %37
  %63 = load %struct.file*, %struct.file** %7, align 8
  %64 = getelementptr inbounds %struct.file, %struct.file* %63, i32 0, i32 0
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 1
  %67 = load i64 (%struct.file*, i32, i64, i32*)*, i64 (%struct.file*, i32, i64, i32*)** %66, align 8
  %68 = load %struct.file*, %struct.file** %7, align 8
  %69 = getelementptr inbounds %struct.iovec, %struct.iovec* %11, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = getelementptr inbounds %struct.iovec, %struct.iovec* %11, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.kiocb*, %struct.kiocb** %8, align 8
  %74 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %73, i32 0, i32 1
  %75 = call i64 %67(%struct.file* %68, i32 %70, i64 %72, i32* %74)
  store i64 %75, i64* %12, align 8
  br label %76

76:                                               ; preds = %62, %48
  %77 = load i64, i64* %12, align 8
  %78 = icmp slt i64 %77, 0
  br i1 %78, label %79, label %85

79:                                               ; preds = %76
  %80 = load i64, i64* %10, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %84, label %82

82:                                               ; preds = %79
  %83 = load i64, i64* %12, align 8
  store i64 %83, i64* %10, align 8
  br label %84

84:                                               ; preds = %82, %79
  br label %98

85:                                               ; preds = %76
  %86 = load i64, i64* %12, align 8
  %87 = load i64, i64* %10, align 8
  %88 = add nsw i64 %87, %86
  store i64 %88, i64* %10, align 8
  %89 = load i64, i64* %12, align 8
  %90 = getelementptr inbounds %struct.iovec, %struct.iovec* %11, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %89, %91
  br i1 %92, label %93, label %94

93:                                               ; preds = %85
  br label %98

94:                                               ; preds = %85
  %95 = load %struct.iov_iter*, %struct.iov_iter** %9, align 8
  %96 = load i64, i64* %12, align 8
  %97 = call i32 @iov_iter_advance(%struct.iov_iter* %95, i64 %96)
  br label %33

98:                                               ; preds = %93, %84, %33
  %99 = load i64, i64* %10, align 8
  store i64 %99, i64* %5, align 8
  br label %100

100:                                              ; preds = %98, %29, %19
  %101 = load i64, i64* %5, align 8
  ret i64 %101
}

declare dso_local i64 @iov_iter_count(%struct.iov_iter*) #1

declare dso_local { i64, i32 } @iov_iter_iovec(%struct.iov_iter*) #1

declare dso_local i32 @iov_iter_advance(%struct.iov_iter*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
