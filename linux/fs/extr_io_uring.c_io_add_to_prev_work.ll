; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_io_uring.c_io_add_to_prev_work.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_io_uring.c_io_add_to_prev_work.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.async_list = type { i32, i32, i32 }
%struct.io_kiocb = type { i32, i32 }

@REQ_F_SEQ_PREV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.async_list*, %struct.io_kiocb*)* @io_add_to_prev_work to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @io_add_to_prev_work(%struct.async_list* %0, %struct.io_kiocb* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.async_list*, align 8
  %5 = alloca %struct.io_kiocb*, align 8
  %6 = alloca i32, align 4
  store %struct.async_list* %0, %struct.async_list** %4, align 8
  store %struct.io_kiocb* %1, %struct.io_kiocb** %5, align 8
  %7 = load %struct.async_list*, %struct.async_list** %4, align 8
  %8 = icmp ne %struct.async_list* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  store i32 0, i32* %3, align 4
  br label %47

10:                                               ; preds = %2
  %11 = load %struct.io_kiocb*, %struct.io_kiocb** %5, align 8
  %12 = getelementptr inbounds %struct.io_kiocb, %struct.io_kiocb* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @REQ_F_SEQ_PREV, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %10
  store i32 0, i32* %3, align 4
  br label %47

18:                                               ; preds = %10
  %19 = load %struct.async_list*, %struct.async_list** %4, align 8
  %20 = getelementptr inbounds %struct.async_list, %struct.async_list* %19, i32 0, i32 1
  %21 = call i32 @atomic_read(i32* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %18
  store i32 0, i32* %3, align 4
  br label %47

24:                                               ; preds = %18
  store i32 1, i32* %6, align 4
  %25 = load %struct.async_list*, %struct.async_list** %4, align 8
  %26 = getelementptr inbounds %struct.async_list, %struct.async_list* %25, i32 0, i32 0
  %27 = call i32 @spin_lock(i32* %26)
  %28 = load %struct.io_kiocb*, %struct.io_kiocb** %5, align 8
  %29 = getelementptr inbounds %struct.io_kiocb, %struct.io_kiocb* %28, i32 0, i32 1
  %30 = load %struct.async_list*, %struct.async_list** %4, align 8
  %31 = getelementptr inbounds %struct.async_list, %struct.async_list* %30, i32 0, i32 2
  %32 = call i32 @list_add_tail(i32* %29, i32* %31)
  %33 = call i32 (...) @smp_mb()
  %34 = load %struct.async_list*, %struct.async_list** %4, align 8
  %35 = getelementptr inbounds %struct.async_list, %struct.async_list* %34, i32 0, i32 1
  %36 = call i32 @atomic_read(i32* %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %42, label %38

38:                                               ; preds = %24
  %39 = load %struct.io_kiocb*, %struct.io_kiocb** %5, align 8
  %40 = getelementptr inbounds %struct.io_kiocb, %struct.io_kiocb* %39, i32 0, i32 1
  %41 = call i32 @list_del_init(i32* %40)
  store i32 0, i32* %6, align 4
  br label %42

42:                                               ; preds = %38, %24
  %43 = load %struct.async_list*, %struct.async_list** %4, align 8
  %44 = getelementptr inbounds %struct.async_list, %struct.async_list* %43, i32 0, i32 0
  %45 = call i32 @spin_unlock(i32* %44)
  %46 = load i32, i32* %6, align 4
  store i32 %46, i32* %3, align 4
  br label %47

47:                                               ; preds = %42, %23, %17, %9
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @smp_mb(...) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
