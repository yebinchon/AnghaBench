; ModuleID = '/home/carl/AnghaBench/linux/net/rose/extr_rose_timer.c_rose_idletimer_expiry.c'
source_filename = "/home/carl/AnghaBench/linux/net/rose/extr_rose_timer.c_rose_idletimer_expiry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rose_sock = type { %struct.sock }
%struct.sock = type { i32 (%struct.sock*)*, i32, i64, i32 }
%struct.timer_list = type { i32 }
%struct.TYPE_2__ = type { i32 }

@idletimer = common dso_local global i32 0, align 4
@ROSE_CLEAR_REQUEST = common dso_local global i32 0, align 4
@ROSE_STATE_2 = common dso_local global i32 0, align 4
@TCP_CLOSE = common dso_local global i32 0, align 4
@SEND_SHUTDOWN = common dso_local global i32 0, align 4
@SOCK_DEAD = common dso_local global i32 0, align 4
@rose = common dso_local global %struct.rose_sock* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @rose_idletimer_expiry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rose_idletimer_expiry(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.rose_sock*, align 8
  %4 = alloca %struct.sock*, align 8
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %5 = load %struct.rose_sock*, %struct.rose_sock** %3, align 8
  %6 = ptrtoint %struct.rose_sock* %5 to i32
  %7 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %8 = load i32, i32* @idletimer, align 4
  %9 = call %struct.rose_sock* @from_timer(i32 %6, %struct.timer_list* %7, i32 %8)
  store %struct.rose_sock* %9, %struct.rose_sock** %3, align 8
  %10 = load %struct.rose_sock*, %struct.rose_sock** %3, align 8
  %11 = getelementptr inbounds %struct.rose_sock, %struct.rose_sock* %10, i32 0, i32 0
  store %struct.sock* %11, %struct.sock** %4, align 8
  %12 = load %struct.sock*, %struct.sock** %4, align 8
  %13 = call i32 @bh_lock_sock(%struct.sock* %12)
  %14 = load %struct.sock*, %struct.sock** %4, align 8
  %15 = call i32 @rose_clear_queues(%struct.sock* %14)
  %16 = load %struct.sock*, %struct.sock** %4, align 8
  %17 = load i32, i32* @ROSE_CLEAR_REQUEST, align 4
  %18 = call i32 @rose_write_internal(%struct.sock* %16, i32 %17)
  %19 = load i32, i32* @ROSE_STATE_2, align 4
  %20 = load %struct.sock*, %struct.sock** %4, align 8
  %21 = call %struct.TYPE_2__* @rose_sk(%struct.sock* %20)
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  store i32 %19, i32* %22, align 4
  %23 = load %struct.sock*, %struct.sock** %4, align 8
  %24 = call i32 @rose_start_t3timer(%struct.sock* %23)
  %25 = load i32, i32* @TCP_CLOSE, align 4
  %26 = load %struct.sock*, %struct.sock** %4, align 8
  %27 = getelementptr inbounds %struct.sock, %struct.sock* %26, i32 0, i32 3
  store i32 %25, i32* %27, align 8
  %28 = load %struct.sock*, %struct.sock** %4, align 8
  %29 = getelementptr inbounds %struct.sock, %struct.sock* %28, i32 0, i32 2
  store i64 0, i64* %29, align 8
  %30 = load i32, i32* @SEND_SHUTDOWN, align 4
  %31 = load %struct.sock*, %struct.sock** %4, align 8
  %32 = getelementptr inbounds %struct.sock, %struct.sock* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = or i32 %33, %30
  store i32 %34, i32* %32, align 8
  %35 = load %struct.sock*, %struct.sock** %4, align 8
  %36 = load i32, i32* @SOCK_DEAD, align 4
  %37 = call i32 @sock_flag(%struct.sock* %35, i32 %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %48, label %39

39:                                               ; preds = %1
  %40 = load %struct.sock*, %struct.sock** %4, align 8
  %41 = getelementptr inbounds %struct.sock, %struct.sock* %40, i32 0, i32 0
  %42 = load i32 (%struct.sock*)*, i32 (%struct.sock*)** %41, align 8
  %43 = load %struct.sock*, %struct.sock** %4, align 8
  %44 = call i32 %42(%struct.sock* %43)
  %45 = load %struct.sock*, %struct.sock** %4, align 8
  %46 = load i32, i32* @SOCK_DEAD, align 4
  %47 = call i32 @sock_set_flag(%struct.sock* %45, i32 %46)
  br label %48

48:                                               ; preds = %39, %1
  %49 = load %struct.sock*, %struct.sock** %4, align 8
  %50 = call i32 @bh_unlock_sock(%struct.sock* %49)
  ret void
}

declare dso_local %struct.rose_sock* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local i32 @bh_lock_sock(%struct.sock*) #1

declare dso_local i32 @rose_clear_queues(%struct.sock*) #1

declare dso_local i32 @rose_write_internal(%struct.sock*, i32) #1

declare dso_local %struct.TYPE_2__* @rose_sk(%struct.sock*) #1

declare dso_local i32 @rose_start_t3timer(%struct.sock*) #1

declare dso_local i32 @sock_flag(%struct.sock*, i32) #1

declare dso_local i32 @sock_set_flag(%struct.sock*, i32) #1

declare dso_local i32 @bh_unlock_sock(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
