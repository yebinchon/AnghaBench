; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_iov_iter.c_iov_iter_init.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_iov_iter.c_iov_iter_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iov_iter = type { i32, i64, i64, i64, %struct.iovec*, %struct.kvec* }
%struct.kvec = type { i32 }
%struct.iovec = type { i32 }

@READ = common dso_local global i32 0, align 4
@WRITE = common dso_local global i32 0, align 4
@ITER_KVEC = common dso_local global i32 0, align 4
@ITER_IOVEC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iov_iter_init(%struct.iov_iter* %0, i32 %1, %struct.iovec* %2, i64 %3, i64 %4) #0 {
  %6 = alloca %struct.iov_iter*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.iovec*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.iov_iter* %0, %struct.iov_iter** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.iovec* %2, %struct.iovec** %8, align 8
  store i64 %3, i64* %9, align 8
  store i64 %4, i64* %10, align 8
  %11 = load i32, i32* %7, align 4
  %12 = load i32, i32* @READ, align 4
  %13 = load i32, i32* @WRITE, align 4
  %14 = or i32 %12, %13
  %15 = xor i32 %14, -1
  %16 = and i32 %11, %15
  %17 = call i32 @WARN_ON(i32 %16)
  %18 = load i32, i32* @READ, align 4
  %19 = load i32, i32* @WRITE, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* %7, align 4
  %22 = and i32 %21, %20
  store i32 %22, i32* %7, align 4
  %23 = call i64 (...) @uaccess_kernel()
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %35

25:                                               ; preds = %5
  %26 = load i32, i32* @ITER_KVEC, align 4
  %27 = load i32, i32* %7, align 4
  %28 = or i32 %26, %27
  %29 = load %struct.iov_iter*, %struct.iov_iter** %6, align 8
  %30 = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 8
  %31 = load %struct.iovec*, %struct.iovec** %8, align 8
  %32 = bitcast %struct.iovec* %31 to %struct.kvec*
  %33 = load %struct.iov_iter*, %struct.iov_iter** %6, align 8
  %34 = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %33, i32 0, i32 5
  store %struct.kvec* %32, %struct.kvec** %34, align 8
  br label %44

35:                                               ; preds = %5
  %36 = load i32, i32* @ITER_IOVEC, align 4
  %37 = load i32, i32* %7, align 4
  %38 = or i32 %36, %37
  %39 = load %struct.iov_iter*, %struct.iov_iter** %6, align 8
  %40 = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 8
  %41 = load %struct.iovec*, %struct.iovec** %8, align 8
  %42 = load %struct.iov_iter*, %struct.iov_iter** %6, align 8
  %43 = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %42, i32 0, i32 4
  store %struct.iovec* %41, %struct.iovec** %43, align 8
  br label %44

44:                                               ; preds = %35, %25
  %45 = load i64, i64* %9, align 8
  %46 = load %struct.iov_iter*, %struct.iov_iter** %6, align 8
  %47 = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %46, i32 0, i32 1
  store i64 %45, i64* %47, align 8
  %48 = load %struct.iov_iter*, %struct.iov_iter** %6, align 8
  %49 = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %48, i32 0, i32 3
  store i64 0, i64* %49, align 8
  %50 = load i64, i64* %10, align 8
  %51 = load %struct.iov_iter*, %struct.iov_iter** %6, align 8
  %52 = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %51, i32 0, i32 2
  store i64 %50, i64* %52, align 8
  ret void
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i64 @uaccess_kernel(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
