; ModuleID = '/home/carl/AnghaBench/linux/net/tipc/extr_socket.c_rcvbuf_limit.c'
source_filename = "/home/carl/AnghaBench/linux/net/tipc/extr_socket.c_rcvbuf_limit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.sk_buff = type { i32 }
%struct.tipc_sock = type { i32 }
%struct.tipc_msg = type { i32 }

@TIPC_BLOCK_FLOWCTL = common dso_local global i32 0, align 4
@FLOWCTL_MSG_LIM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, %struct.sk_buff*)* @rcvbuf_limit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rcvbuf_limit(%struct.sock* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sock*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.tipc_sock*, align 8
  %7 = alloca %struct.tipc_msg*, align 8
  store %struct.sock* %0, %struct.sock** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %8 = load %struct.sock*, %struct.sock** %4, align 8
  %9 = call %struct.tipc_sock* @tipc_sk(%struct.sock* %8)
  store %struct.tipc_sock* %9, %struct.tipc_sock** %6, align 8
  %10 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %11 = call %struct.tipc_msg* @buf_msg(%struct.sk_buff* %10)
  store %struct.tipc_msg* %11, %struct.tipc_msg** %7, align 8
  %12 = load %struct.tipc_msg*, %struct.tipc_msg** %7, align 8
  %13 = call i32 @msg_in_group(%struct.tipc_msg* %12)
  %14 = call i64 @unlikely(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %2
  %17 = load %struct.sock*, %struct.sock** %4, align 8
  %18 = getelementptr inbounds %struct.sock, %struct.sock* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @READ_ONCE(i32 %19)
  store i32 %20, i32* %3, align 4
  br label %52

21:                                               ; preds = %2
  %22 = load %struct.tipc_msg*, %struct.tipc_msg** %7, align 8
  %23 = call i32 @msg_connected(%struct.tipc_msg* %22)
  %24 = icmp ne i32 %23, 0
  %25 = xor i1 %24, true
  %26 = zext i1 %25 to i32
  %27 = call i64 @unlikely(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %37

29:                                               ; preds = %21
  %30 = load %struct.sock*, %struct.sock** %4, align 8
  %31 = getelementptr inbounds %struct.sock, %struct.sock* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @READ_ONCE(i32 %32)
  %34 = load %struct.tipc_msg*, %struct.tipc_msg** %7, align 8
  %35 = call i32 @msg_importance(%struct.tipc_msg* %34)
  %36 = shl i32 %33, %35
  store i32 %36, i32* %3, align 4
  br label %52

37:                                               ; preds = %21
  %38 = load %struct.tipc_sock*, %struct.tipc_sock** %6, align 8
  %39 = getelementptr inbounds %struct.tipc_sock, %struct.tipc_sock* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @TIPC_BLOCK_FLOWCTL, align 4
  %42 = and i32 %40, %41
  %43 = call i64 @likely(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %37
  %46 = load %struct.sock*, %struct.sock** %4, align 8
  %47 = getelementptr inbounds %struct.sock, %struct.sock* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @READ_ONCE(i32 %48)
  store i32 %49, i32* %3, align 4
  br label %52

50:                                               ; preds = %37
  %51 = load i32, i32* @FLOWCTL_MSG_LIM, align 4
  store i32 %51, i32* %3, align 4
  br label %52

52:                                               ; preds = %50, %45, %29, %16
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local %struct.tipc_sock* @tipc_sk(%struct.sock*) #1

declare dso_local %struct.tipc_msg* @buf_msg(%struct.sk_buff*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @msg_in_group(%struct.tipc_msg*) #1

declare dso_local i32 @READ_ONCE(i32) #1

declare dso_local i32 @msg_connected(%struct.tipc_msg*) #1

declare dso_local i32 @msg_importance(%struct.tipc_msg*) #1

declare dso_local i64 @likely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
