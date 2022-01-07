; ModuleID = '/home/carl/AnghaBench/linux/net/tipc/extr_discover.c_tipc_disc_msg_xmit.c'
source_filename = "/home/carl/AnghaBench/linux/net/tipc/extr_discover.c_tipc_disc_msg_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.tipc_media_addr = type { i32 }
%struct.tipc_bearer = type { i32 }
%struct.tipc_msg = type { i32 }
%struct.sk_buff = type { i32 }

@MAX_H_SIZE = common dso_local global i64 0, align 8
@NODE_ID_LEN = common dso_local global i64 0, align 8
@GFP_ATOMIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net*, i32, i32, i32, i32, %struct.tipc_media_addr*, %struct.tipc_bearer*)* @tipc_disc_msg_xmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tipc_disc_msg_xmit(%struct.net* %0, i32 %1, i32 %2, i32 %3, i32 %4, %struct.tipc_media_addr* %5, %struct.tipc_bearer* %6) #0 {
  %8 = alloca %struct.net*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.tipc_media_addr*, align 8
  %14 = alloca %struct.tipc_bearer*, align 8
  %15 = alloca %struct.tipc_msg*, align 8
  %16 = alloca %struct.sk_buff*, align 8
  store %struct.net* %0, %struct.net** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store %struct.tipc_media_addr* %5, %struct.tipc_media_addr** %13, align 8
  store %struct.tipc_bearer* %6, %struct.tipc_bearer** %14, align 8
  %17 = load i64, i64* @MAX_H_SIZE, align 8
  %18 = load i64, i64* @NODE_ID_LEN, align 8
  %19 = add nsw i64 %17, %18
  %20 = load i32, i32* @GFP_ATOMIC, align 4
  %21 = call %struct.sk_buff* @tipc_buf_acquire(i64 %19, i32 %20)
  store %struct.sk_buff* %21, %struct.sk_buff** %16, align 8
  %22 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %23 = icmp ne %struct.sk_buff* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %7
  br label %46

25:                                               ; preds = %7
  %26 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %27 = call %struct.tipc_msg* @buf_msg(%struct.sk_buff* %26)
  store %struct.tipc_msg* %27, %struct.tipc_msg** %15, align 8
  %28 = load %struct.net*, %struct.net** %8, align 8
  %29 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %30 = load i32, i32* %9, align 4
  %31 = load %struct.tipc_bearer*, %struct.tipc_bearer** %14, align 8
  %32 = call i32 @tipc_disc_init_msg(%struct.net* %28, %struct.sk_buff* %29, i32 %30, %struct.tipc_bearer* %31)
  %33 = load %struct.tipc_msg*, %struct.tipc_msg** %15, align 8
  %34 = load i32, i32* %12, align 4
  %35 = call i32 @msg_set_sugg_node_addr(%struct.tipc_msg* %33, i32 %34)
  %36 = load %struct.tipc_msg*, %struct.tipc_msg** %15, align 8
  %37 = load i32, i32* %10, align 4
  %38 = call i32 @msg_set_dest_domain(%struct.tipc_msg* %36, i32 %37)
  %39 = load %struct.net*, %struct.net** %8, align 8
  %40 = load %struct.tipc_bearer*, %struct.tipc_bearer** %14, align 8
  %41 = getelementptr inbounds %struct.tipc_bearer, %struct.tipc_bearer* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %44 = load %struct.tipc_media_addr*, %struct.tipc_media_addr** %13, align 8
  %45 = call i32 @tipc_bearer_xmit_skb(%struct.net* %39, i32 %42, %struct.sk_buff* %43, %struct.tipc_media_addr* %44)
  br label %46

46:                                               ; preds = %25, %24
  ret void
}

declare dso_local %struct.sk_buff* @tipc_buf_acquire(i64, i32) #1

declare dso_local %struct.tipc_msg* @buf_msg(%struct.sk_buff*) #1

declare dso_local i32 @tipc_disc_init_msg(%struct.net*, %struct.sk_buff*, i32, %struct.tipc_bearer*) #1

declare dso_local i32 @msg_set_sugg_node_addr(%struct.tipc_msg*, i32) #1

declare dso_local i32 @msg_set_dest_domain(%struct.tipc_msg*, i32) #1

declare dso_local i32 @tipc_bearer_xmit_skb(%struct.net*, i32, %struct.sk_buff*, %struct.tipc_media_addr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
