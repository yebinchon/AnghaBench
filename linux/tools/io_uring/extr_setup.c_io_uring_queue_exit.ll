; ModuleID = '/home/carl/AnghaBench/linux/tools/io_uring/extr_setup.c_io_uring_queue_exit.c'
source_filename = "/home/carl/AnghaBench/linux/tools/io_uring/extr_setup.c_io_uring_queue_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.io_uring = type { i32, %struct.io_uring_cq, %struct.io_uring_sq }
%struct.io_uring_cq = type { i32, i32 }
%struct.io_uring_sq = type { i32*, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @io_uring_queue_exit(%struct.io_uring* %0) #0 {
  %2 = alloca %struct.io_uring*, align 8
  %3 = alloca %struct.io_uring_sq*, align 8
  %4 = alloca %struct.io_uring_cq*, align 8
  store %struct.io_uring* %0, %struct.io_uring** %2, align 8
  %5 = load %struct.io_uring*, %struct.io_uring** %2, align 8
  %6 = getelementptr inbounds %struct.io_uring, %struct.io_uring* %5, i32 0, i32 2
  store %struct.io_uring_sq* %6, %struct.io_uring_sq** %3, align 8
  %7 = load %struct.io_uring*, %struct.io_uring** %2, align 8
  %8 = getelementptr inbounds %struct.io_uring, %struct.io_uring* %7, i32 0, i32 1
  store %struct.io_uring_cq* %8, %struct.io_uring_cq** %4, align 8
  %9 = load %struct.io_uring_sq*, %struct.io_uring_sq** %3, align 8
  %10 = getelementptr inbounds %struct.io_uring_sq, %struct.io_uring_sq* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 8
  %12 = load %struct.io_uring_sq*, %struct.io_uring_sq** %3, align 8
  %13 = getelementptr inbounds %struct.io_uring_sq, %struct.io_uring_sq* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = load i32, i32* %14, align 4
  %16 = sext i32 %15 to i64
  %17 = mul i64 %16, 4
  %18 = trunc i64 %17 to i32
  %19 = call i32 @munmap(i32 %11, i32 %18)
  %20 = load %struct.io_uring_sq*, %struct.io_uring_sq** %3, align 8
  %21 = getelementptr inbounds %struct.io_uring_sq, %struct.io_uring_sq* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.io_uring_sq*, %struct.io_uring_sq** %3, align 8
  %24 = getelementptr inbounds %struct.io_uring_sq, %struct.io_uring_sq* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @munmap(i32 %22, i32 %25)
  %27 = load %struct.io_uring_cq*, %struct.io_uring_cq** %4, align 8
  %28 = getelementptr inbounds %struct.io_uring_cq, %struct.io_uring_cq* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.io_uring_cq*, %struct.io_uring_cq** %4, align 8
  %31 = getelementptr inbounds %struct.io_uring_cq, %struct.io_uring_cq* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @munmap(i32 %29, i32 %32)
  %34 = load %struct.io_uring*, %struct.io_uring** %2, align 8
  %35 = getelementptr inbounds %struct.io_uring, %struct.io_uring* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @close(i32 %36)
  ret void
}

declare dso_local i32 @munmap(i32, i32) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
