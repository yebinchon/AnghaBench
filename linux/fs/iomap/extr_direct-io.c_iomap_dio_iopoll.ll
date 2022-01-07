; ModuleID = '/home/carl/AnghaBench/linux/fs/iomap/extr_direct-io.c_iomap_dio_iopoll.c'
source_filename = "/home/carl/AnghaBench/linux/fs/iomap/extr_direct-io.c_iomap_dio_iopoll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kiocb = type { i32, i32 }
%struct.request_queue = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iomap_dio_iopoll(%struct.kiocb* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.kiocb*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.request_queue*, align 8
  store %struct.kiocb* %0, %struct.kiocb** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.kiocb*, %struct.kiocb** %4, align 8
  %8 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.request_queue* @READ_ONCE(i32 %9)
  store %struct.request_queue* %10, %struct.request_queue** %6, align 8
  %11 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %12 = icmp ne %struct.request_queue* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %22

14:                                               ; preds = %2
  %15 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %16 = load %struct.kiocb*, %struct.kiocb** %4, align 8
  %17 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.request_queue* @READ_ONCE(i32 %18)
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @blk_poll(%struct.request_queue* %15, %struct.request_queue* %19, i32 %20)
  store i32 %21, i32* %3, align 4
  br label %22

22:                                               ; preds = %14, %13
  %23 = load i32, i32* %3, align 4
  ret i32 %23
}

declare dso_local %struct.request_queue* @READ_ONCE(i32) #1

declare dso_local i32 @blk_poll(%struct.request_queue*, %struct.request_queue*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
