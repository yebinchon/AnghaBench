; ModuleID = '/home/carl/AnghaBench/linux/net/tipc/extr_subscr.c_tipc_sub_unsubscribe.c'
source_filename = "/home/carl/AnghaBench/linux/net/tipc/extr_subscr.c_tipc_sub_unsubscribe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tipc_subscription = type { i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@TIPC_WAIT_FOREVER = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tipc_sub_unsubscribe(%struct.tipc_subscription* %0) #0 {
  %2 = alloca %struct.tipc_subscription*, align 8
  store %struct.tipc_subscription* %0, %struct.tipc_subscription** %2, align 8
  %3 = load %struct.tipc_subscription*, %struct.tipc_subscription** %2, align 8
  %4 = call i32 @tipc_nametbl_unsubscribe(%struct.tipc_subscription* %3)
  %5 = load %struct.tipc_subscription*, %struct.tipc_subscription** %2, align 8
  %6 = getelementptr inbounds %struct.tipc_subscription, %struct.tipc_subscription* %5, i32 0, i32 2
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @TIPC_WAIT_FOREVER, align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %12, label %16

12:                                               ; preds = %1
  %13 = load %struct.tipc_subscription*, %struct.tipc_subscription** %2, align 8
  %14 = getelementptr inbounds %struct.tipc_subscription, %struct.tipc_subscription* %13, i32 0, i32 1
  %15 = call i32 @del_timer_sync(i32* %14)
  br label %16

16:                                               ; preds = %12, %1
  %17 = load %struct.tipc_subscription*, %struct.tipc_subscription** %2, align 8
  %18 = getelementptr inbounds %struct.tipc_subscription, %struct.tipc_subscription* %17, i32 0, i32 0
  %19 = call i32 @list_del(i32* %18)
  %20 = load %struct.tipc_subscription*, %struct.tipc_subscription** %2, align 8
  %21 = call i32 @tipc_sub_put(%struct.tipc_subscription* %20)
  ret void
}

declare dso_local i32 @tipc_nametbl_unsubscribe(%struct.tipc_subscription*) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @tipc_sub_put(%struct.tipc_subscription*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
