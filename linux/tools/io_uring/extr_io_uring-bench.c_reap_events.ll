; ModuleID = '/home/carl/AnghaBench/linux/tools/io_uring/extr_io_uring-bench.c_reap_events.c'
source_filename = "/home/carl/AnghaBench/linux/tools/io_uring/extr_io_uring-bench.c_reap_events.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.submitter = type { i32, %struct.io_cq_ring }
%struct.io_cq_ring = type { i32*, i32*, %struct.io_uring_cqe* }
%struct.io_uring_cqe = type { i32, i64 }
%struct.file = type { i32 }

@cq_ring_mask = common dso_local global i32 0, align 4
@do_nop = common dso_local global i32 0, align 4
@BS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"io: unexpected ret=%d\0A\00", align 1
@polled = common dso_local global i64 0, align 8
@EOPNOTSUPP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"Your filesystem doesn't support poll\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.submitter*)* @reap_events to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @reap_events(%struct.submitter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.submitter*, align 8
  %4 = alloca %struct.io_cq_ring*, align 8
  %5 = alloca %struct.io_uring_cqe*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.file*, align 8
  store %struct.submitter* %0, %struct.submitter** %3, align 8
  %9 = load %struct.submitter*, %struct.submitter** %3, align 8
  %10 = getelementptr inbounds %struct.submitter, %struct.submitter* %9, i32 0, i32 1
  store %struct.io_cq_ring* %10, %struct.io_cq_ring** %4, align 8
  store i32 0, i32* %7, align 4
  %11 = load %struct.io_cq_ring*, %struct.io_cq_ring** %4, align 8
  %12 = getelementptr inbounds %struct.io_cq_ring, %struct.io_cq_ring* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %6, align 4
  br label %15

15:                                               ; preds = %72, %1
  %16 = call i32 (...) @read_barrier()
  %17 = load i32, i32* %6, align 4
  %18 = load %struct.io_cq_ring*, %struct.io_cq_ring** %4, align 8
  %19 = getelementptr inbounds %struct.io_cq_ring, %struct.io_cq_ring* %18, i32 0, i32 1
  %20 = load i32*, i32** %19, align 8
  %21 = load i32, i32* %20, align 4
  %22 = icmp eq i32 %17, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %15
  br label %73

24:                                               ; preds = %15
  %25 = load %struct.io_cq_ring*, %struct.io_cq_ring** %4, align 8
  %26 = getelementptr inbounds %struct.io_cq_ring, %struct.io_cq_ring* %25, i32 0, i32 2
  %27 = load %struct.io_uring_cqe*, %struct.io_uring_cqe** %26, align 8
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* @cq_ring_mask, align 4
  %30 = and i32 %28, %29
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds %struct.io_uring_cqe, %struct.io_uring_cqe* %27, i64 %31
  store %struct.io_uring_cqe* %32, %struct.io_uring_cqe** %5, align 8
  %33 = load i32, i32* @do_nop, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %67, label %35

35:                                               ; preds = %24
  %36 = load %struct.io_uring_cqe*, %struct.io_uring_cqe** %5, align 8
  %37 = getelementptr inbounds %struct.io_uring_cqe, %struct.io_uring_cqe* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = inttoptr i64 %38 to %struct.file*
  store %struct.file* %39, %struct.file** %8, align 8
  %40 = load %struct.file*, %struct.file** %8, align 8
  %41 = getelementptr inbounds %struct.file, %struct.file* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = add nsw i32 %42, -1
  store i32 %43, i32* %41, align 4
  %44 = load %struct.io_uring_cqe*, %struct.io_uring_cqe** %5, align 8
  %45 = getelementptr inbounds %struct.io_uring_cqe, %struct.io_uring_cqe* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @BS, align 4
  %48 = icmp ne i32 %46, %47
  br i1 %48, label %49, label %66

49:                                               ; preds = %35
  %50 = load %struct.io_uring_cqe*, %struct.io_uring_cqe** %5, align 8
  %51 = getelementptr inbounds %struct.io_uring_cqe, %struct.io_uring_cqe* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %52)
  %54 = load i64, i64* @polled, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %65

56:                                               ; preds = %49
  %57 = load %struct.io_uring_cqe*, %struct.io_uring_cqe** %5, align 8
  %58 = getelementptr inbounds %struct.io_uring_cqe, %struct.io_uring_cqe* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @EOPNOTSUPP, align 4
  %61 = sub nsw i32 0, %60
  %62 = icmp eq i32 %59, %61
  br i1 %62, label %63, label %65

63:                                               ; preds = %56
  %64 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  br label %65

65:                                               ; preds = %63, %56, %49
  store i32 -1, i32* %2, align 4
  br label %85

66:                                               ; preds = %35
  br label %67

67:                                               ; preds = %66, %24
  %68 = load i32, i32* %7, align 4
  %69 = add i32 %68, 1
  store i32 %69, i32* %7, align 4
  %70 = load i32, i32* %6, align 4
  %71 = add i32 %70, 1
  store i32 %71, i32* %6, align 4
  br label %72

72:                                               ; preds = %67
  br i1 true, label %15, label %73

73:                                               ; preds = %72, %23
  %74 = load i32, i32* %7, align 4
  %75 = load %struct.submitter*, %struct.submitter** %3, align 8
  %76 = getelementptr inbounds %struct.submitter, %struct.submitter* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = sub i32 %77, %74
  store i32 %78, i32* %76, align 8
  %79 = load i32, i32* %6, align 4
  %80 = load %struct.io_cq_ring*, %struct.io_cq_ring** %4, align 8
  %81 = getelementptr inbounds %struct.io_cq_ring, %struct.io_cq_ring* %80, i32 0, i32 0
  %82 = load i32*, i32** %81, align 8
  store i32 %79, i32* %82, align 4
  %83 = call i32 (...) @write_barrier()
  %84 = load i32, i32* %7, align 4
  store i32 %84, i32* %2, align 4
  br label %85

85:                                               ; preds = %73, %65
  %86 = load i32, i32* %2, align 4
  ret i32 %86
}

declare dso_local i32 @read_barrier(...) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @write_barrier(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
