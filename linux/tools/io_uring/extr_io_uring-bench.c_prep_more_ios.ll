; ModuleID = '/home/carl/AnghaBench/linux/tools/io_uring/extr_io_uring-bench.c_prep_more_ios.c'
source_filename = "/home/carl/AnghaBench/linux/tools/io_uring/extr_io_uring-bench.c_prep_more_ios.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.submitter = type { %struct.io_sq_ring }
%struct.io_sq_ring = type { i32*, i32*, i32* }

@sq_ring_mask = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.submitter*, i32)* @prep_more_ios to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @prep_more_ios(%struct.submitter* %0, i32 %1) #0 {
  %3 = alloca %struct.submitter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.io_sq_ring*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.submitter* %0, %struct.submitter** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.submitter*, %struct.submitter** %3, align 8
  %11 = getelementptr inbounds %struct.submitter, %struct.submitter* %10, i32 0, i32 0
  store %struct.io_sq_ring* %11, %struct.io_sq_ring** %5, align 8
  store i32 0, i32* %9, align 4
  %12 = load %struct.io_sq_ring*, %struct.io_sq_ring** %5, align 8
  %13 = getelementptr inbounds %struct.io_sq_ring, %struct.io_sq_ring* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %7, align 4
  store i32 %15, i32* %8, align 4
  br label %16

16:                                               ; preds = %44, %2
  %17 = load i32, i32* %8, align 4
  %18 = add i32 %17, 1
  store i32 %18, i32* %8, align 4
  %19 = call i32 (...) @read_barrier()
  %20 = load i32, i32* %8, align 4
  %21 = load %struct.io_sq_ring*, %struct.io_sq_ring** %5, align 8
  %22 = getelementptr inbounds %struct.io_sq_ring, %struct.io_sq_ring* %21, i32 0, i32 1
  %23 = load i32*, i32** %22, align 8
  %24 = load i32, i32* %23, align 4
  %25 = icmp eq i32 %20, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %16
  br label %48

27:                                               ; preds = %16
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* @sq_ring_mask, align 4
  %30 = and i32 %28, %29
  store i32 %30, i32* %6, align 4
  %31 = load %struct.submitter*, %struct.submitter** %3, align 8
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @init_io(%struct.submitter* %31, i32 %32)
  %34 = load i32, i32* %6, align 4
  %35 = load %struct.io_sq_ring*, %struct.io_sq_ring** %5, align 8
  %36 = getelementptr inbounds %struct.io_sq_ring, %struct.io_sq_ring* %35, i32 0, i32 2
  %37 = load i32*, i32** %36, align 8
  %38 = load i32, i32* %6, align 4
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  store i32 %34, i32* %40, align 4
  %41 = load i32, i32* %9, align 4
  %42 = add i32 %41, 1
  store i32 %42, i32* %9, align 4
  %43 = load i32, i32* %8, align 4
  store i32 %43, i32* %7, align 4
  br label %44

44:                                               ; preds = %27
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* %4, align 4
  %47 = icmp ult i32 %45, %46
  br i1 %47, label %16, label %48

48:                                               ; preds = %44, %26
  %49 = load %struct.io_sq_ring*, %struct.io_sq_ring** %5, align 8
  %50 = getelementptr inbounds %struct.io_sq_ring, %struct.io_sq_ring* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %7, align 4
  %54 = icmp ne i32 %52, %53
  br i1 %54, label %55, label %62

55:                                               ; preds = %48
  %56 = call i32 (...) @write_barrier()
  %57 = load i32, i32* %7, align 4
  %58 = load %struct.io_sq_ring*, %struct.io_sq_ring** %5, align 8
  %59 = getelementptr inbounds %struct.io_sq_ring, %struct.io_sq_ring* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  store i32 %57, i32* %60, align 4
  %61 = call i32 (...) @write_barrier()
  br label %62

62:                                               ; preds = %55, %48
  %63 = load i32, i32* %9, align 4
  ret i32 %63
}

declare dso_local i32 @read_barrier(...) #1

declare dso_local i32 @init_io(%struct.submitter*, i32) #1

declare dso_local i32 @write_barrier(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
