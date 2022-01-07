; ModuleID = '/home/carl/AnghaBench/linux/net/appletalk/extr_ddp.c_atalk_destroy_timer.c'
source_filename = "/home/carl/AnghaBench/linux/net/appletalk/extr_ddp.c_atalk_destroy_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.timer_list = type { i32 }

@sk_timer = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@SOCK_DESTROY_TIME = common dso_local global i64 0, align 8
@sk = common dso_local global %struct.sock* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @atalk_destroy_timer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atalk_destroy_timer(%struct.timer_list* %0) #0 {
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
  %10 = call i64 @sk_has_allocations(%struct.sock* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %22

12:                                               ; preds = %1
  %13 = load i64, i64* @jiffies, align 8
  %14 = load i64, i64* @SOCK_DESTROY_TIME, align 8
  %15 = add nsw i64 %13, %14
  %16 = load %struct.sock*, %struct.sock** %3, align 8
  %17 = getelementptr inbounds %struct.sock, %struct.sock* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  store i64 %15, i64* %18, align 8
  %19 = load %struct.sock*, %struct.sock** %3, align 8
  %20 = getelementptr inbounds %struct.sock, %struct.sock* %19, i32 0, i32 0
  %21 = call i32 @add_timer(%struct.TYPE_2__* %20)
  br label %25

22:                                               ; preds = %1
  %23 = load %struct.sock*, %struct.sock** %3, align 8
  %24 = call i32 @sock_put(%struct.sock* %23)
  br label %25

25:                                               ; preds = %22, %12
  ret void
}

declare dso_local %struct.sock* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local i64 @sk_has_allocations(%struct.sock*) #1

declare dso_local i32 @add_timer(%struct.TYPE_2__*) #1

declare dso_local i32 @sock_put(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
