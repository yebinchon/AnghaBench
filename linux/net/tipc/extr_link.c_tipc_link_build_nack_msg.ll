; ModuleID = '/home/carl/AnghaBench/linux/net/tipc/extr_link.c_tipc_link_build_nack_msg.c'
source_filename = "/home/carl/AnghaBench/linux/net/tipc/extr_link.c_tipc_link_build_nack_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tipc_link = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.sk_buff_head = type { i32 }

@TIPC_LINK_SND_STATE = common dso_local global i32 0, align 4
@STATE_MSG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tipc_link*, %struct.sk_buff_head*)* @tipc_link_build_nack_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tipc_link_build_nack_msg(%struct.tipc_link* %0, %struct.sk_buff_head* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tipc_link*, align 8
  %5 = alloca %struct.sk_buff_head*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.tipc_link* %0, %struct.tipc_link** %4, align 8
  store %struct.sk_buff_head* %1, %struct.sk_buff_head** %5, align 8
  %10 = load %struct.tipc_link*, %struct.tipc_link** %4, align 8
  %11 = getelementptr inbounds %struct.tipc_link, %struct.tipc_link* %10, i32 0, i32 2
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = add nsw i32 %13, 1
  store i32 %14, i32* %12, align 4
  store i32 %14, i32* %6, align 4
  %15 = load %struct.tipc_link*, %struct.tipc_link** %4, align 8
  %16 = getelementptr inbounds %struct.tipc_link, %struct.tipc_link* %15, i32 0, i32 1
  %17 = call i32 @skb_queue_len(i32* %16)
  store i32 %17, i32* %7, align 4
  %18 = load %struct.tipc_link*, %struct.tipc_link** %4, align 8
  %19 = call i64 @link_is_bc_rcvlink(%struct.tipc_link* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %35

21:                                               ; preds = %2
  %22 = load i32, i32* %6, align 4
  %23 = and i32 %22, 15
  store i32 %23, i32* %8, align 4
  %24 = load %struct.tipc_link*, %struct.tipc_link** %4, align 8
  %25 = getelementptr inbounds %struct.tipc_link, %struct.tipc_link* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @tipc_own_addr(i32 %26)
  %28 = and i32 %27, 15
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* %9, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %21
  %33 = load i32, i32* @TIPC_LINK_SND_STATE, align 4
  store i32 %33, i32* %3, align 4
  br label %49

34:                                               ; preds = %21
  store i32 0, i32* %3, align 4
  br label %49

35:                                               ; preds = %2
  %36 = load i32, i32* %7, align 4
  %37 = icmp sge i32 %36, 3
  br i1 %37, label %38, label %48

38:                                               ; preds = %35
  %39 = load i32, i32* %7, align 4
  %40 = sub nsw i32 %39, 3
  %41 = srem i32 %40, 16
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %48, label %43

43:                                               ; preds = %38
  %44 = load %struct.tipc_link*, %struct.tipc_link** %4, align 8
  %45 = load i32, i32* @STATE_MSG, align 4
  %46 = load %struct.sk_buff_head*, %struct.sk_buff_head** %5, align 8
  %47 = call i32 @tipc_link_build_proto_msg(%struct.tipc_link* %44, i32 %45, i32 0, i32 0, i32 0, i32 0, i32 0, %struct.sk_buff_head* %46)
  br label %48

48:                                               ; preds = %43, %38, %35
  store i32 0, i32* %3, align 4
  br label %49

49:                                               ; preds = %48, %34, %32
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local i32 @skb_queue_len(i32*) #1

declare dso_local i64 @link_is_bc_rcvlink(%struct.tipc_link*) #1

declare dso_local i32 @tipc_own_addr(i32) #1

declare dso_local i32 @tipc_link_build_proto_msg(%struct.tipc_link*, i32, i32, i32, i32, i32, i32, %struct.sk_buff_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
