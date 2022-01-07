; ModuleID = '/home/carl/AnghaBench/linux/net/tipc/extr_link.c_link_schedule_user.c'
source_filename = "/home/carl/AnghaBench/linux/net/tipc/extr_link.c_link_schedule_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tipc_link = type { %struct.TYPE_3__, i32, i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.tipc_msg = type { i32 }
%struct.sk_buff = type { i32 }
%struct.TYPE_4__ = type { i32 }

@SOCK_WAKEUP = common dso_local global i32 0, align 4
@INT_H_SIZE = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@TIPC_DUMP_ALL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"wakeup scheduled!\00", align 1
@ELINKCONG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tipc_link*, %struct.tipc_msg*)* @link_schedule_user to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @link_schedule_user(%struct.tipc_link* %0, %struct.tipc_msg* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tipc_link*, align 8
  %5 = alloca %struct.tipc_msg*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.sk_buff*, align 8
  store %struct.tipc_link* %0, %struct.tipc_link** %4, align 8
  store %struct.tipc_msg* %1, %struct.tipc_msg** %5, align 8
  %9 = load %struct.tipc_link*, %struct.tipc_link** %4, align 8
  %10 = getelementptr inbounds %struct.tipc_link, %struct.tipc_link* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @tipc_own_addr(i32 %11)
  store i32 %12, i32* %6, align 4
  %13 = load %struct.tipc_msg*, %struct.tipc_msg** %5, align 8
  %14 = call i32 @msg_origport(%struct.tipc_msg* %13)
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* @SOCK_WAKEUP, align 4
  %16 = load i32, i32* @INT_H_SIZE, align 4
  %17 = load i32, i32* %6, align 4
  %18 = load %struct.tipc_link*, %struct.tipc_link** %4, align 8
  %19 = getelementptr inbounds %struct.tipc_link, %struct.tipc_link* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* %7, align 4
  %22 = call %struct.sk_buff* @tipc_msg_create(i32 %15, i32 0, i32 %16, i32 0, i32 %17, i32 %20, i32 %21, i32 0, i32 0)
  store %struct.sk_buff* %22, %struct.sk_buff** %8, align 8
  %23 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %24 = icmp ne %struct.sk_buff* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %2
  %26 = load i32, i32* @ENOBUFS, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %51

28:                                               ; preds = %2
  %29 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %30 = call i32 @buf_msg(%struct.sk_buff* %29)
  %31 = call i32 @msg_set_dest_droppable(i32 %30, i32 1)
  %32 = load %struct.tipc_msg*, %struct.tipc_msg** %5, align 8
  %33 = call i32 @msg_importance(%struct.tipc_msg* %32)
  %34 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %35 = call %struct.TYPE_4__* @TIPC_SKB_CB(%struct.sk_buff* %34)
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  store i32 %33, i32* %36, align 4
  %37 = load %struct.tipc_link*, %struct.tipc_link** %4, align 8
  %38 = getelementptr inbounds %struct.tipc_link, %struct.tipc_link* %37, i32 0, i32 1
  %39 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %40 = call i32 @skb_queue_tail(i32* %38, %struct.sk_buff* %39)
  %41 = load %struct.tipc_link*, %struct.tipc_link** %4, align 8
  %42 = getelementptr inbounds %struct.tipc_link, %struct.tipc_link* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %43, align 4
  %46 = load %struct.tipc_link*, %struct.tipc_link** %4, align 8
  %47 = load i32, i32* @TIPC_DUMP_ALL, align 4
  %48 = call i32 @trace_tipc_link_conges(%struct.tipc_link* %46, i32 %47, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %49 = load i32, i32* @ELINKCONG, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %3, align 4
  br label %51

51:                                               ; preds = %28, %25
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local i32 @tipc_own_addr(i32) #1

declare dso_local i32 @msg_origport(%struct.tipc_msg*) #1

declare dso_local %struct.sk_buff* @tipc_msg_create(i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @msg_set_dest_droppable(i32, i32) #1

declare dso_local i32 @buf_msg(%struct.sk_buff*) #1

declare dso_local i32 @msg_importance(%struct.tipc_msg*) #1

declare dso_local %struct.TYPE_4__* @TIPC_SKB_CB(%struct.sk_buff*) #1

declare dso_local i32 @skb_queue_tail(i32*, %struct.sk_buff*) #1

declare dso_local i32 @trace_tipc_link_conges(%struct.tipc_link*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
