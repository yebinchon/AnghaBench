; ModuleID = '/home/carl/AnghaBench/linux/tools/io_uring/extr_liburing.h_io_uring_cqe_seen.c'
source_filename = "/home/carl/AnghaBench/linux/tools/io_uring/extr_liburing.h_io_uring_cqe_seen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.io_uring = type { %struct.io_uring_cq }
%struct.io_uring_cq = type { i32* }
%struct.io_uring_cqe = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.io_uring*, %struct.io_uring_cqe*)* @io_uring_cqe_seen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @io_uring_cqe_seen(%struct.io_uring* %0, %struct.io_uring_cqe* %1) #0 {
  %3 = alloca %struct.io_uring*, align 8
  %4 = alloca %struct.io_uring_cqe*, align 8
  %5 = alloca %struct.io_uring_cq*, align 8
  store %struct.io_uring* %0, %struct.io_uring** %3, align 8
  store %struct.io_uring_cqe* %1, %struct.io_uring_cqe** %4, align 8
  %6 = load %struct.io_uring_cqe*, %struct.io_uring_cqe** %4, align 8
  %7 = icmp ne %struct.io_uring_cqe* %6, null
  br i1 %7, label %8, label %17

8:                                                ; preds = %2
  %9 = load %struct.io_uring*, %struct.io_uring** %3, align 8
  %10 = getelementptr inbounds %struct.io_uring, %struct.io_uring* %9, i32 0, i32 0
  store %struct.io_uring_cq* %10, %struct.io_uring_cq** %5, align 8
  %11 = load %struct.io_uring_cq*, %struct.io_uring_cq** %5, align 8
  %12 = getelementptr inbounds %struct.io_uring_cq, %struct.io_uring_cq* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = load i32, i32* %13, align 4
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* %13, align 4
  %16 = call i32 (...) @write_barrier()
  br label %17

17:                                               ; preds = %8, %2
  ret void
}

declare dso_local i32 @write_barrier(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
