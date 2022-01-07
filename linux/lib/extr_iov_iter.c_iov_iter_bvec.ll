; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_iov_iter.c_iov_iter_bvec.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_iov_iter.c_iov_iter_bvec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iov_iter = type { i32, i64, i64, i64, %struct.bio_vec* }
%struct.bio_vec = type { i32 }

@READ = common dso_local global i32 0, align 4
@WRITE = common dso_local global i32 0, align 4
@ITER_BVEC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iov_iter_bvec(%struct.iov_iter* %0, i32 %1, %struct.bio_vec* %2, i64 %3, i64 %4) #0 {
  %6 = alloca %struct.iov_iter*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.bio_vec*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.iov_iter* %0, %struct.iov_iter** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.bio_vec* %2, %struct.bio_vec** %8, align 8
  store i64 %3, i64* %9, align 8
  store i64 %4, i64* %10, align 8
  %11 = load i32, i32* %7, align 4
  %12 = load i32, i32* @READ, align 4
  %13 = load i32, i32* @WRITE, align 4
  %14 = or i32 %12, %13
  %15 = xor i32 %14, -1
  %16 = and i32 %11, %15
  %17 = call i32 @WARN_ON(i32 %16)
  %18 = load i32, i32* @ITER_BVEC, align 4
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* @READ, align 4
  %21 = load i32, i32* @WRITE, align 4
  %22 = or i32 %20, %21
  %23 = and i32 %19, %22
  %24 = or i32 %18, %23
  %25 = load %struct.iov_iter*, %struct.iov_iter** %6, align 8
  %26 = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 8
  %27 = load %struct.bio_vec*, %struct.bio_vec** %8, align 8
  %28 = load %struct.iov_iter*, %struct.iov_iter** %6, align 8
  %29 = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %28, i32 0, i32 4
  store %struct.bio_vec* %27, %struct.bio_vec** %29, align 8
  %30 = load i64, i64* %9, align 8
  %31 = load %struct.iov_iter*, %struct.iov_iter** %6, align 8
  %32 = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %31, i32 0, i32 1
  store i64 %30, i64* %32, align 8
  %33 = load %struct.iov_iter*, %struct.iov_iter** %6, align 8
  %34 = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %33, i32 0, i32 3
  store i64 0, i64* %34, align 8
  %35 = load i64, i64* %10, align 8
  %36 = load %struct.iov_iter*, %struct.iov_iter** %6, align 8
  %37 = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %36, i32 0, i32 2
  store i64 %35, i64* %37, align 8
  ret void
}

declare dso_local i32 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
