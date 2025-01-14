; ModuleID = '/home/carl/AnghaBench/linux/tools/io_uring/extr_setup.c_io_uring_queue_init.c'
source_filename = "/home/carl/AnghaBench/linux/tools/io_uring/extr_setup.c_io_uring_queue_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.io_uring = type { i32 }
%struct.io_uring_params = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @io_uring_queue_init(i32 %0, %struct.io_uring* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.io_uring*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.io_uring_params, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store %struct.io_uring* %1, %struct.io_uring** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = call i32 @memset(%struct.io_uring_params* %8, i32 0, i32 4)
  %12 = load i32, i32* %7, align 4
  %13 = getelementptr inbounds %struct.io_uring_params, %struct.io_uring_params* %8, i32 0, i32 0
  store i32 %12, i32* %13, align 4
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @io_uring_setup(i32 %14, %struct.io_uring_params* %8)
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* %9, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %3
  %19 = load i32, i32* %9, align 4
  store i32 %19, i32* %4, align 4
  br label %31

20:                                               ; preds = %3
  %21 = load i32, i32* %9, align 4
  %22 = load %struct.io_uring*, %struct.io_uring** %6, align 8
  %23 = call i32 @io_uring_queue_mmap(i32 %21, %struct.io_uring_params* %8, %struct.io_uring* %22)
  store i32 %23, i32* %10, align 4
  %24 = load i32, i32* %10, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %20
  %27 = load i32, i32* %9, align 4
  %28 = call i32 @close(i32 %27)
  br label %29

29:                                               ; preds = %26, %20
  %30 = load i32, i32* %10, align 4
  store i32 %30, i32* %4, align 4
  br label %31

31:                                               ; preds = %29, %18
  %32 = load i32, i32* %4, align 4
  ret i32 %32
}

declare dso_local i32 @memset(%struct.io_uring_params*, i32, i32) #1

declare dso_local i32 @io_uring_setup(i32, %struct.io_uring_params*) #1

declare dso_local i32 @io_uring_queue_mmap(i32, %struct.io_uring_params*, %struct.io_uring*) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
