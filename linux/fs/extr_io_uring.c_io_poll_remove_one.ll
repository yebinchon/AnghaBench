; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_io_uring.c_io_poll_remove_one.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_io_uring.c_io_poll_remove_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.io_kiocb = type { i32, i32, %struct.io_poll_iocb }
%struct.io_poll_iocb = type { %struct.TYPE_4__*, %struct.TYPE_3__, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.io_kiocb*)* @io_poll_remove_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @io_poll_remove_one(%struct.io_kiocb* %0) #0 {
  %2 = alloca %struct.io_kiocb*, align 8
  %3 = alloca %struct.io_poll_iocb*, align 8
  store %struct.io_kiocb* %0, %struct.io_kiocb** %2, align 8
  %4 = load %struct.io_kiocb*, %struct.io_kiocb** %2, align 8
  %5 = getelementptr inbounds %struct.io_kiocb, %struct.io_kiocb* %4, i32 0, i32 2
  store %struct.io_poll_iocb* %5, %struct.io_poll_iocb** %3, align 8
  %6 = load %struct.io_poll_iocb*, %struct.io_poll_iocb** %3, align 8
  %7 = getelementptr inbounds %struct.io_poll_iocb, %struct.io_poll_iocb* %6, i32 0, i32 0
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = call i32 @spin_lock(i32* %9)
  %11 = load %struct.io_poll_iocb*, %struct.io_poll_iocb** %3, align 8
  %12 = getelementptr inbounds %struct.io_poll_iocb, %struct.io_poll_iocb* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @WRITE_ONCE(i32 %13, i32 1)
  %15 = load %struct.io_poll_iocb*, %struct.io_poll_iocb** %3, align 8
  %16 = getelementptr inbounds %struct.io_poll_iocb, %struct.io_poll_iocb* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = call i32 @list_empty(i32* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %30, label %20

20:                                               ; preds = %1
  %21 = load %struct.io_poll_iocb*, %struct.io_poll_iocb** %3, align 8
  %22 = getelementptr inbounds %struct.io_poll_iocb, %struct.io_poll_iocb* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = call i32 @list_del_init(i32* %23)
  %25 = load %struct.io_kiocb*, %struct.io_kiocb** %2, align 8
  %26 = getelementptr inbounds %struct.io_kiocb, %struct.io_kiocb* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.io_kiocb*, %struct.io_kiocb** %2, align 8
  %29 = call i32 @io_queue_async_work(i32 %27, %struct.io_kiocb* %28)
  br label %30

30:                                               ; preds = %20, %1
  %31 = load %struct.io_poll_iocb*, %struct.io_poll_iocb** %3, align 8
  %32 = getelementptr inbounds %struct.io_poll_iocb, %struct.io_poll_iocb* %31, i32 0, i32 0
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = call i32 @spin_unlock(i32* %34)
  %36 = load %struct.io_kiocb*, %struct.io_kiocb** %2, align 8
  %37 = getelementptr inbounds %struct.io_kiocb, %struct.io_kiocb* %36, i32 0, i32 0
  %38 = call i32 @list_del_init(i32* %37)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @WRITE_ONCE(i32, i32) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @io_queue_async_work(i32, %struct.io_kiocb*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
