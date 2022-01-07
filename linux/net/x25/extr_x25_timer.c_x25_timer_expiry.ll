; ModuleID = '/home/carl/AnghaBench/linux/net/x25/extr_x25_timer.c_x25_timer_expiry.c'
source_filename = "/home/carl/AnghaBench/linux/net/x25/extr_x25_timer.c_x25_timer_expiry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.x25_sock = type { %struct.sock }
%struct.sock = type { i32 }
%struct.timer_list = type { i32 }
%struct.TYPE_2__ = type { i64 }

@timer = common dso_local global i32 0, align 4
@X25_STATE_3 = common dso_local global i64 0, align 8
@x25 = common dso_local global %struct.x25_sock* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @x25_timer_expiry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @x25_timer_expiry(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.x25_sock*, align 8
  %4 = alloca %struct.sock*, align 8
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %5 = load %struct.x25_sock*, %struct.x25_sock** %3, align 8
  %6 = ptrtoint %struct.x25_sock* %5 to i32
  %7 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %8 = load i32, i32* @timer, align 4
  %9 = call %struct.x25_sock* @from_timer(i32 %6, %struct.timer_list* %7, i32 %8)
  store %struct.x25_sock* %9, %struct.x25_sock** %3, align 8
  %10 = load %struct.x25_sock*, %struct.x25_sock** %3, align 8
  %11 = getelementptr inbounds %struct.x25_sock, %struct.x25_sock* %10, i32 0, i32 0
  store %struct.sock* %11, %struct.sock** %4, align 8
  %12 = load %struct.sock*, %struct.sock** %4, align 8
  %13 = call i32 @bh_lock_sock(%struct.sock* %12)
  %14 = load %struct.sock*, %struct.sock** %4, align 8
  %15 = call i64 @sock_owned_by_user(%struct.sock* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %28

17:                                               ; preds = %1
  %18 = load %struct.sock*, %struct.sock** %4, align 8
  %19 = call %struct.TYPE_2__* @x25_sk(%struct.sock* %18)
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @X25_STATE_3, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %17
  %25 = load %struct.sock*, %struct.sock** %4, align 8
  %26 = call i32 @x25_start_t2timer(%struct.sock* %25)
  br label %27

27:                                               ; preds = %24, %17
  br label %31

28:                                               ; preds = %1
  %29 = load %struct.sock*, %struct.sock** %4, align 8
  %30 = call i32 @x25_do_timer_expiry(%struct.sock* %29)
  br label %31

31:                                               ; preds = %28, %27
  %32 = load %struct.sock*, %struct.sock** %4, align 8
  %33 = call i32 @bh_unlock_sock(%struct.sock* %32)
  ret void
}

declare dso_local %struct.x25_sock* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local i32 @bh_lock_sock(%struct.sock*) #1

declare dso_local i64 @sock_owned_by_user(%struct.sock*) #1

declare dso_local %struct.TYPE_2__* @x25_sk(%struct.sock*) #1

declare dso_local i32 @x25_start_t2timer(%struct.sock*) #1

declare dso_local i32 @x25_do_timer_expiry(%struct.sock*) #1

declare dso_local i32 @bh_unlock_sock(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
