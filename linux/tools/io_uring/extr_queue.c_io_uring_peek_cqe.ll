; ModuleID = '/home/carl/AnghaBench/linux/tools/io_uring/extr_queue.c_io_uring_peek_cqe.c'
source_filename = "/home/carl/AnghaBench/linux/tools/io_uring/extr_queue.c_io_uring_peek_cqe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.io_uring = type { i32 }
%struct.io_uring_cqe = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @io_uring_peek_cqe(%struct.io_uring* %0, %struct.io_uring_cqe** %1) #0 {
  %3 = alloca %struct.io_uring*, align 8
  %4 = alloca %struct.io_uring_cqe**, align 8
  store %struct.io_uring* %0, %struct.io_uring** %3, align 8
  store %struct.io_uring_cqe** %1, %struct.io_uring_cqe*** %4, align 8
  %5 = load %struct.io_uring*, %struct.io_uring** %3, align 8
  %6 = load %struct.io_uring_cqe**, %struct.io_uring_cqe*** %4, align 8
  %7 = call i32 @__io_uring_get_cqe(%struct.io_uring* %5, %struct.io_uring_cqe** %6, i32 0)
  ret i32 %7
}

declare dso_local i32 @__io_uring_get_cqe(%struct.io_uring*, %struct.io_uring_cqe**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
