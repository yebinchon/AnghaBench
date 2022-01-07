; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_io_uring.c_io_sequence_defer.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_io_uring.c_io_sequence_defer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.io_ring_ctx = type { i32 }
%struct.io_kiocb = type { i32 }

@REQ_F_IO_DRAIN = common dso_local global i32 0, align 4
@REQ_F_IO_DRAINED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.io_ring_ctx*, %struct.io_kiocb*)* @io_sequence_defer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @io_sequence_defer(%struct.io_ring_ctx* %0, %struct.io_kiocb* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.io_ring_ctx*, align 8
  %5 = alloca %struct.io_kiocb*, align 8
  store %struct.io_ring_ctx* %0, %struct.io_ring_ctx** %4, align 8
  store %struct.io_kiocb* %1, %struct.io_kiocb** %5, align 8
  %6 = load %struct.io_kiocb*, %struct.io_kiocb** %5, align 8
  %7 = getelementptr inbounds %struct.io_kiocb, %struct.io_kiocb* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @REQ_F_IO_DRAIN, align 4
  %10 = load i32, i32* @REQ_F_IO_DRAINED, align 4
  %11 = or i32 %9, %10
  %12 = and i32 %8, %11
  %13 = load i32, i32* @REQ_F_IO_DRAIN, align 4
  %14 = icmp ne i32 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %20

16:                                               ; preds = %2
  %17 = load %struct.io_ring_ctx*, %struct.io_ring_ctx** %4, align 8
  %18 = load %struct.io_kiocb*, %struct.io_kiocb** %5, align 8
  %19 = call i32 @__io_sequence_defer(%struct.io_ring_ctx* %17, %struct.io_kiocb* %18)
  store i32 %19, i32* %3, align 4
  br label %20

20:                                               ; preds = %16, %15
  %21 = load i32, i32* %3, align 4
  ret i32 %21
}

declare dso_local i32 @__io_sequence_defer(%struct.io_ring_ctx*, %struct.io_kiocb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
