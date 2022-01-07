; ModuleID = '/home/carl/AnghaBench/linux/tools/io_uring/extr_io_uring-bench.c_io_uring_register_files.c'
source_filename = "/home/carl/AnghaBench/linux/tools/io_uring/extr_io_uring-bench.c_io_uring_register_files.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.submitter = type { i32, i32*, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@do_nop = common dso_local global i64 0, align 8
@IORING_REGISTER_FILES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.submitter*)* @io_uring_register_files to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @io_uring_register_files(%struct.submitter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.submitter*, align 8
  %4 = alloca i32, align 4
  store %struct.submitter* %0, %struct.submitter** %3, align 8
  %5 = load i64, i64* @do_nop, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %59

8:                                                ; preds = %1
  %9 = load %struct.submitter*, %struct.submitter** %3, align 8
  %10 = getelementptr inbounds %struct.submitter, %struct.submitter* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = call i32* @calloc(i32 %11, i32 4)
  %13 = load %struct.submitter*, %struct.submitter** %3, align 8
  %14 = getelementptr inbounds %struct.submitter, %struct.submitter* %13, i32 0, i32 1
  store i32* %12, i32** %14, align 8
  store i32 0, i32* %4, align 4
  br label %15

15:                                               ; preds = %44, %8
  %16 = load i32, i32* %4, align 4
  %17 = load %struct.submitter*, %struct.submitter** %3, align 8
  %18 = getelementptr inbounds %struct.submitter, %struct.submitter* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp ult i32 %16, %19
  br i1 %20, label %21, label %47

21:                                               ; preds = %15
  %22 = load %struct.submitter*, %struct.submitter** %3, align 8
  %23 = getelementptr inbounds %struct.submitter, %struct.submitter* %22, i32 0, i32 3
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = load i32, i32* %4, align 4
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.submitter*, %struct.submitter** %3, align 8
  %31 = getelementptr inbounds %struct.submitter, %struct.submitter* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  %33 = load i32, i32* %4, align 4
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  store i32 %29, i32* %35, align 4
  %36 = load i32, i32* %4, align 4
  %37 = load %struct.submitter*, %struct.submitter** %3, align 8
  %38 = getelementptr inbounds %struct.submitter, %struct.submitter* %37, i32 0, i32 3
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = load i32, i32* %4, align 4
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  store i32 %36, i32* %43, align 4
  br label %44

44:                                               ; preds = %21
  %45 = load i32, i32* %4, align 4
  %46 = add i32 %45, 1
  store i32 %46, i32* %4, align 4
  br label %15

47:                                               ; preds = %15
  %48 = load %struct.submitter*, %struct.submitter** %3, align 8
  %49 = getelementptr inbounds %struct.submitter, %struct.submitter* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @IORING_REGISTER_FILES, align 4
  %52 = load %struct.submitter*, %struct.submitter** %3, align 8
  %53 = getelementptr inbounds %struct.submitter, %struct.submitter* %52, i32 0, i32 1
  %54 = load i32*, i32** %53, align 8
  %55 = load %struct.submitter*, %struct.submitter** %3, align 8
  %56 = getelementptr inbounds %struct.submitter, %struct.submitter* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @io_uring_register(i32 %50, i32 %51, i32* %54, i32 %57)
  store i32 %58, i32* %2, align 4
  br label %59

59:                                               ; preds = %47, %7
  %60 = load i32, i32* %2, align 4
  ret i32 %60
}

declare dso_local i32* @calloc(i32, i32) #1

declare dso_local i32 @io_uring_register(i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
