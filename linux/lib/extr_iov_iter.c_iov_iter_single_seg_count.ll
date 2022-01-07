; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_iov_iter.c_iov_iter_single_seg_count.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_iov_iter.c_iov_iter_single_seg_count.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iov_iter = type { i64, i32, i64, %struct.TYPE_3__*, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i64 }
%struct.TYPE_4__ = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @iov_iter_single_seg_count(%struct.iov_iter* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.iov_iter*, align 8
  store %struct.iov_iter* %0, %struct.iov_iter** %3, align 8
  %4 = load %struct.iov_iter*, %struct.iov_iter** %3, align 8
  %5 = call i32 @iov_iter_is_pipe(%struct.iov_iter* %4)
  %6 = call i64 @unlikely(i32 %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = load %struct.iov_iter*, %struct.iov_iter** %3, align 8
  %10 = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  store i64 %11, i64* %2, align 8
  br label %62

12:                                               ; preds = %1
  %13 = load %struct.iov_iter*, %struct.iov_iter** %3, align 8
  %14 = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = icmp eq i32 %15, 1
  br i1 %16, label %17, label %21

17:                                               ; preds = %12
  %18 = load %struct.iov_iter*, %struct.iov_iter** %3, align 8
  %19 = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %2, align 8
  br label %62

21:                                               ; preds = %12
  %22 = load %struct.iov_iter*, %struct.iov_iter** %3, align 8
  %23 = call i32 @iov_iter_is_discard(%struct.iov_iter* %22)
  %24 = call i64 @unlikely(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %21
  %27 = load %struct.iov_iter*, %struct.iov_iter** %3, align 8
  %28 = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  store i64 %29, i64* %2, align 8
  br label %62

30:                                               ; preds = %21
  %31 = load %struct.iov_iter*, %struct.iov_iter** %3, align 8
  %32 = call i64 @iov_iter_is_bvec(%struct.iov_iter* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %48

34:                                               ; preds = %30
  %35 = load %struct.iov_iter*, %struct.iov_iter** %3, align 8
  %36 = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.iov_iter*, %struct.iov_iter** %3, align 8
  %39 = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %38, i32 0, i32 4
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.iov_iter*, %struct.iov_iter** %3, align 8
  %44 = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = sub nsw i64 %42, %45
  %47 = call i64 @min(i64 %37, i64 %46)
  store i64 %47, i64* %2, align 8
  br label %62

48:                                               ; preds = %30
  %49 = load %struct.iov_iter*, %struct.iov_iter** %3, align 8
  %50 = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.iov_iter*, %struct.iov_iter** %3, align 8
  %53 = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %52, i32 0, i32 3
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.iov_iter*, %struct.iov_iter** %3, align 8
  %58 = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %57, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  %60 = sub nsw i64 %56, %59
  %61 = call i64 @min(i64 %51, i64 %60)
  store i64 %61, i64* %2, align 8
  br label %62

62:                                               ; preds = %48, %34, %26, %17, %8
  %63 = load i64, i64* %2, align 8
  ret i64 %63
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @iov_iter_is_pipe(%struct.iov_iter*) #1

declare dso_local i32 @iov_iter_is_discard(%struct.iov_iter*) #1

declare dso_local i64 @iov_iter_is_bvec(%struct.iov_iter*) #1

declare dso_local i64 @min(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
