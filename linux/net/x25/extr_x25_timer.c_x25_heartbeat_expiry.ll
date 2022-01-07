; ModuleID = '/home/carl/AnghaBench/linux/net/x25/extr_x25_timer.c_x25_heartbeat_expiry.c'
source_filename = "/home/carl/AnghaBench/linux/net/x25/extr_x25_timer.c_x25_heartbeat_expiry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.timer_list = type { i32 }
%struct.TYPE_2__ = type { i32 }

@sk_timer = common dso_local global i32 0, align 4
@SOCK_DESTROY = common dso_local global i32 0, align 4
@TCP_LISTEN = common dso_local global i32 0, align 4
@SOCK_DEAD = common dso_local global i32 0, align 4
@sk = common dso_local global %struct.sock* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @x25_heartbeat_expiry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @x25_heartbeat_expiry(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.sock*, align 8
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %4 = load %struct.sock*, %struct.sock** %3, align 8
  %5 = ptrtoint %struct.sock* %4 to i32
  %6 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %7 = load i32, i32* @sk_timer, align 4
  %8 = call %struct.sock* @from_timer(i32 %5, %struct.timer_list* %6, i32 %7)
  store %struct.sock* %8, %struct.sock** %3, align 8
  %9 = load %struct.sock*, %struct.sock** %3, align 8
  %10 = call i32 @bh_lock_sock(%struct.sock* %9)
  %11 = load %struct.sock*, %struct.sock** %3, align 8
  %12 = call i64 @sock_owned_by_user(%struct.sock* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  br label %46

15:                                               ; preds = %1
  %16 = load %struct.sock*, %struct.sock** %3, align 8
  %17 = call %struct.TYPE_2__* @x25_sk(%struct.sock* %16)
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  switch i32 %19, label %45 [
    i32 129, label %20
    i32 128, label %42
  ]

20:                                               ; preds = %15
  %21 = load %struct.sock*, %struct.sock** %3, align 8
  %22 = load i32, i32* @SOCK_DESTROY, align 4
  %23 = call i32 @sock_flag(%struct.sock* %21, i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %36, label %25

25:                                               ; preds = %20
  %26 = load %struct.sock*, %struct.sock** %3, align 8
  %27 = getelementptr inbounds %struct.sock, %struct.sock* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @TCP_LISTEN, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %41

31:                                               ; preds = %25
  %32 = load %struct.sock*, %struct.sock** %3, align 8
  %33 = load i32, i32* @SOCK_DEAD, align 4
  %34 = call i32 @sock_flag(%struct.sock* %32, i32 %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %31, %20
  %37 = load %struct.sock*, %struct.sock** %3, align 8
  %38 = call i32 @bh_unlock_sock(%struct.sock* %37)
  %39 = load %struct.sock*, %struct.sock** %3, align 8
  %40 = call i32 @x25_destroy_socket_from_timer(%struct.sock* %39)
  br label %51

41:                                               ; preds = %31, %25
  br label %45

42:                                               ; preds = %15
  %43 = load %struct.sock*, %struct.sock** %3, align 8
  %44 = call i32 @x25_check_rbuf(%struct.sock* %43)
  br label %45

45:                                               ; preds = %15, %42, %41
  br label %46

46:                                               ; preds = %45, %14
  %47 = load %struct.sock*, %struct.sock** %3, align 8
  %48 = call i32 @x25_start_heartbeat(%struct.sock* %47)
  %49 = load %struct.sock*, %struct.sock** %3, align 8
  %50 = call i32 @bh_unlock_sock(%struct.sock* %49)
  br label %51

51:                                               ; preds = %46, %36
  ret void
}

declare dso_local %struct.sock* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local i32 @bh_lock_sock(%struct.sock*) #1

declare dso_local i64 @sock_owned_by_user(%struct.sock*) #1

declare dso_local %struct.TYPE_2__* @x25_sk(%struct.sock*) #1

declare dso_local i32 @sock_flag(%struct.sock*, i32) #1

declare dso_local i32 @bh_unlock_sock(%struct.sock*) #1

declare dso_local i32 @x25_destroy_socket_from_timer(%struct.sock*) #1

declare dso_local i32 @x25_check_rbuf(%struct.sock*) #1

declare dso_local i32 @x25_start_heartbeat(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
