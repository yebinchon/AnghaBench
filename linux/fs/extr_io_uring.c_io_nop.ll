; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_io_uring.c_io_nop.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_io_uring.c_io_nop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.io_kiocb = type { %struct.io_ring_ctx* }
%struct.io_ring_ctx = type { i32 }

@IORING_SETUP_IOPOLL = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.io_kiocb*, i32)* @io_nop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @io_nop(%struct.io_kiocb* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.io_kiocb*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.io_ring_ctx*, align 8
  %7 = alloca i64, align 8
  store %struct.io_kiocb* %0, %struct.io_kiocb** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.io_kiocb*, %struct.io_kiocb** %4, align 8
  %9 = getelementptr inbounds %struct.io_kiocb, %struct.io_kiocb* %8, i32 0, i32 0
  %10 = load %struct.io_ring_ctx*, %struct.io_ring_ctx** %9, align 8
  store %struct.io_ring_ctx* %10, %struct.io_ring_ctx** %6, align 8
  store i64 0, i64* %7, align 8
  %11 = load %struct.io_ring_ctx*, %struct.io_ring_ctx** %6, align 8
  %12 = getelementptr inbounds %struct.io_ring_ctx, %struct.io_ring_ctx* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @IORING_SETUP_IOPOLL, align 4
  %15 = and i32 %13, %14
  %16 = call i64 @unlikely(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %28

21:                                               ; preds = %2
  %22 = load %struct.io_ring_ctx*, %struct.io_ring_ctx** %6, align 8
  %23 = load i32, i32* %5, align 4
  %24 = load i64, i64* %7, align 8
  %25 = call i32 @io_cqring_add_event(%struct.io_ring_ctx* %22, i32 %23, i64 %24)
  %26 = load %struct.io_kiocb*, %struct.io_kiocb** %4, align 8
  %27 = call i32 @io_put_req(%struct.io_kiocb* %26)
  store i32 0, i32* %3, align 4
  br label %28

28:                                               ; preds = %21, %18
  %29 = load i32, i32* %3, align 4
  ret i32 %29
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @io_cqring_add_event(%struct.io_ring_ctx*, i32, i64) #1

declare dso_local i32 @io_put_req(%struct.io_kiocb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
