; ModuleID = '/home/carl/AnghaBench/linux/kernel/gcov/extr_gcc_4_7.c_gcov_iter_write.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/gcov/extr_gcc_4_7.c_gcov_iter_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gcov_iterator = type { i64, i64, i64 }
%struct.seq_file = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@ITER_STRIDE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gcov_iter_write(%struct.gcov_iterator* %0, %struct.seq_file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gcov_iterator*, align 8
  %5 = alloca %struct.seq_file*, align 8
  %6 = alloca i64, align 8
  store %struct.gcov_iterator* %0, %struct.gcov_iterator** %4, align 8
  store %struct.seq_file* %1, %struct.seq_file** %5, align 8
  %7 = load %struct.gcov_iterator*, %struct.gcov_iterator** %4, align 8
  %8 = getelementptr inbounds %struct.gcov_iterator, %struct.gcov_iterator* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load %struct.gcov_iterator*, %struct.gcov_iterator** %4, align 8
  %11 = getelementptr inbounds %struct.gcov_iterator, %struct.gcov_iterator* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = icmp sge i64 %9, %12
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %47

17:                                               ; preds = %2
  %18 = load i64, i64* @ITER_STRIDE, align 8
  store i64 %18, i64* %6, align 8
  %19 = load %struct.gcov_iterator*, %struct.gcov_iterator** %4, align 8
  %20 = getelementptr inbounds %struct.gcov_iterator, %struct.gcov_iterator* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* %6, align 8
  %23 = add i64 %21, %22
  %24 = load %struct.gcov_iterator*, %struct.gcov_iterator** %4, align 8
  %25 = getelementptr inbounds %struct.gcov_iterator, %struct.gcov_iterator* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp ugt i64 %23, %26
  br i1 %27, label %28, label %36

28:                                               ; preds = %17
  %29 = load %struct.gcov_iterator*, %struct.gcov_iterator** %4, align 8
  %30 = getelementptr inbounds %struct.gcov_iterator, %struct.gcov_iterator* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.gcov_iterator*, %struct.gcov_iterator** %4, align 8
  %33 = getelementptr inbounds %struct.gcov_iterator, %struct.gcov_iterator* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = sub nsw i64 %31, %34
  store i64 %35, i64* %6, align 8
  br label %36

36:                                               ; preds = %28, %17
  %37 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %38 = load %struct.gcov_iterator*, %struct.gcov_iterator** %4, align 8
  %39 = getelementptr inbounds %struct.gcov_iterator, %struct.gcov_iterator* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.gcov_iterator*, %struct.gcov_iterator** %4, align 8
  %42 = getelementptr inbounds %struct.gcov_iterator, %struct.gcov_iterator* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = add i64 %40, %43
  %45 = load i64, i64* %6, align 8
  %46 = call i32 @seq_write(%struct.seq_file* %37, i64 %44, i64 %45)
  store i32 0, i32* %3, align 4
  br label %47

47:                                               ; preds = %36, %14
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local i32 @seq_write(%struct.seq_file*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
