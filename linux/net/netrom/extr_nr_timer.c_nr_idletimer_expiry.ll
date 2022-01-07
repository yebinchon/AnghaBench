; ModuleID = '/home/carl/AnghaBench/linux/net/netrom/extr_nr_timer.c_nr_idletimer_expiry.c'
source_filename = "/home/carl/AnghaBench/linux/net/netrom/extr_nr_timer.c_nr_idletimer_expiry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nr_sock = type { i32, i64, %struct.sock }
%struct.sock = type { i32 (%struct.sock*)*, i32, i64, i32 }
%struct.timer_list = type { i32 }

@idletimer = common dso_local global i32 0, align 4
@NR_DISCREQ = common dso_local global i32 0, align 4
@NR_STATE_2 = common dso_local global i32 0, align 4
@TCP_CLOSE = common dso_local global i32 0, align 4
@SEND_SHUTDOWN = common dso_local global i32 0, align 4
@SOCK_DEAD = common dso_local global i32 0, align 4
@nr = common dso_local global %struct.nr_sock* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @nr_idletimer_expiry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nr_idletimer_expiry(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.nr_sock*, align 8
  %4 = alloca %struct.sock*, align 8
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %5 = load %struct.nr_sock*, %struct.nr_sock** %3, align 8
  %6 = ptrtoint %struct.nr_sock* %5 to i32
  %7 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %8 = load i32, i32* @idletimer, align 4
  %9 = call %struct.nr_sock* @from_timer(i32 %6, %struct.timer_list* %7, i32 %8)
  store %struct.nr_sock* %9, %struct.nr_sock** %3, align 8
  %10 = load %struct.nr_sock*, %struct.nr_sock** %3, align 8
  %11 = getelementptr inbounds %struct.nr_sock, %struct.nr_sock* %10, i32 0, i32 2
  store %struct.sock* %11, %struct.sock** %4, align 8
  %12 = load %struct.sock*, %struct.sock** %4, align 8
  %13 = call i32 @bh_lock_sock(%struct.sock* %12)
  %14 = load %struct.sock*, %struct.sock** %4, align 8
  %15 = call i32 @nr_clear_queues(%struct.sock* %14)
  %16 = load %struct.nr_sock*, %struct.nr_sock** %3, align 8
  %17 = getelementptr inbounds %struct.nr_sock, %struct.nr_sock* %16, i32 0, i32 1
  store i64 0, i64* %17, align 8
  %18 = load %struct.sock*, %struct.sock** %4, align 8
  %19 = load i32, i32* @NR_DISCREQ, align 4
  %20 = call i32 @nr_write_internal(%struct.sock* %18, i32 %19)
  %21 = load i32, i32* @NR_STATE_2, align 4
  %22 = load %struct.nr_sock*, %struct.nr_sock** %3, align 8
  %23 = getelementptr inbounds %struct.nr_sock, %struct.nr_sock* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 8
  %24 = load %struct.sock*, %struct.sock** %4, align 8
  %25 = call i32 @nr_start_t1timer(%struct.sock* %24)
  %26 = load %struct.sock*, %struct.sock** %4, align 8
  %27 = call i32 @nr_stop_t2timer(%struct.sock* %26)
  %28 = load %struct.sock*, %struct.sock** %4, align 8
  %29 = call i32 @nr_stop_t4timer(%struct.sock* %28)
  %30 = load i32, i32* @TCP_CLOSE, align 4
  %31 = load %struct.sock*, %struct.sock** %4, align 8
  %32 = getelementptr inbounds %struct.sock, %struct.sock* %31, i32 0, i32 3
  store i32 %30, i32* %32, align 8
  %33 = load %struct.sock*, %struct.sock** %4, align 8
  %34 = getelementptr inbounds %struct.sock, %struct.sock* %33, i32 0, i32 2
  store i64 0, i64* %34, align 8
  %35 = load i32, i32* @SEND_SHUTDOWN, align 4
  %36 = load %struct.sock*, %struct.sock** %4, align 8
  %37 = getelementptr inbounds %struct.sock, %struct.sock* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = or i32 %38, %35
  store i32 %39, i32* %37, align 8
  %40 = load %struct.sock*, %struct.sock** %4, align 8
  %41 = load i32, i32* @SOCK_DEAD, align 4
  %42 = call i32 @sock_flag(%struct.sock* %40, i32 %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %53, label %44

44:                                               ; preds = %1
  %45 = load %struct.sock*, %struct.sock** %4, align 8
  %46 = getelementptr inbounds %struct.sock, %struct.sock* %45, i32 0, i32 0
  %47 = load i32 (%struct.sock*)*, i32 (%struct.sock*)** %46, align 8
  %48 = load %struct.sock*, %struct.sock** %4, align 8
  %49 = call i32 %47(%struct.sock* %48)
  %50 = load %struct.sock*, %struct.sock** %4, align 8
  %51 = load i32, i32* @SOCK_DEAD, align 4
  %52 = call i32 @sock_set_flag(%struct.sock* %50, i32 %51)
  br label %53

53:                                               ; preds = %44, %1
  %54 = load %struct.sock*, %struct.sock** %4, align 8
  %55 = call i32 @bh_unlock_sock(%struct.sock* %54)
  ret void
}

declare dso_local %struct.nr_sock* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local i32 @bh_lock_sock(%struct.sock*) #1

declare dso_local i32 @nr_clear_queues(%struct.sock*) #1

declare dso_local i32 @nr_write_internal(%struct.sock*, i32) #1

declare dso_local i32 @nr_start_t1timer(%struct.sock*) #1

declare dso_local i32 @nr_stop_t2timer(%struct.sock*) #1

declare dso_local i32 @nr_stop_t4timer(%struct.sock*) #1

declare dso_local i32 @sock_flag(%struct.sock*, i32) #1

declare dso_local i32 @sock_set_flag(%struct.sock*, i32) #1

declare dso_local i32 @bh_unlock_sock(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
