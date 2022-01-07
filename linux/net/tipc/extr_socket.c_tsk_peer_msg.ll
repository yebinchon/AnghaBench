; ModuleID = '/home/carl/AnghaBench/linux/net/tipc/extr_socket.c_tsk_peer_msg.c'
source_filename = "/home/carl/AnghaBench/linux/net/tipc/extr_socket.c_tsk_peer_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tipc_sock = type { %struct.sock }
%struct.sock = type { i32 }
%struct.tipc_msg = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tipc_sock*, %struct.tipc_msg*)* @tsk_peer_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tsk_peer_msg(%struct.tipc_sock* %0, %struct.tipc_msg* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tipc_sock*, align 8
  %5 = alloca %struct.tipc_msg*, align 8
  %6 = alloca %struct.sock*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.tipc_sock* %0, %struct.tipc_sock** %4, align 8
  store %struct.tipc_msg* %1, %struct.tipc_msg** %5, align 8
  %11 = load %struct.tipc_sock*, %struct.tipc_sock** %4, align 8
  %12 = getelementptr inbounds %struct.tipc_sock, %struct.tipc_sock* %11, i32 0, i32 0
  store %struct.sock* %12, %struct.sock** %6, align 8
  %13 = load %struct.sock*, %struct.sock** %6, align 8
  %14 = call i32 @sock_net(%struct.sock* %13)
  %15 = call i64 @tipc_own_addr(i32 %14)
  store i64 %15, i64* %7, align 8
  %16 = load %struct.tipc_sock*, %struct.tipc_sock** %4, align 8
  %17 = call i64 @tsk_peer_port(%struct.tipc_sock* %16)
  store i64 %17, i64* %8, align 8
  %18 = load %struct.sock*, %struct.sock** %6, align 8
  %19 = call i32 @tipc_sk_connected(%struct.sock* %18)
  %20 = icmp ne i32 %19, 0
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  %23 = call i64 @unlikely(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %64

26:                                               ; preds = %2
  %27 = load %struct.tipc_msg*, %struct.tipc_msg** %5, align 8
  %28 = call i64 @msg_origport(%struct.tipc_msg* %27)
  %29 = load i64, i64* %8, align 8
  %30 = icmp ne i64 %28, %29
  %31 = zext i1 %30 to i32
  %32 = call i64 @unlikely(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %26
  store i32 0, i32* %3, align 4
  br label %64

35:                                               ; preds = %26
  %36 = load %struct.tipc_msg*, %struct.tipc_msg** %5, align 8
  %37 = call i64 @msg_orignode(%struct.tipc_msg* %36)
  store i64 %37, i64* %9, align 8
  %38 = load %struct.tipc_sock*, %struct.tipc_sock** %4, align 8
  %39 = call i64 @tsk_peer_node(%struct.tipc_sock* %38)
  store i64 %39, i64* %10, align 8
  %40 = load i64, i64* %9, align 8
  %41 = load i64, i64* %10, align 8
  %42 = icmp eq i64 %40, %41
  %43 = zext i1 %42 to i32
  %44 = call i64 @likely(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %35
  store i32 1, i32* %3, align 4
  br label %64

47:                                               ; preds = %35
  %48 = load i64, i64* %9, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %55, label %50

50:                                               ; preds = %47
  %51 = load i64, i64* %10, align 8
  %52 = load i64, i64* %7, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %50
  store i32 1, i32* %3, align 4
  br label %64

55:                                               ; preds = %50, %47
  %56 = load i64, i64* %10, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %63, label %58

58:                                               ; preds = %55
  %59 = load i64, i64* %9, align 8
  %60 = load i64, i64* %7, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %58
  store i32 1, i32* %3, align 4
  br label %64

63:                                               ; preds = %58, %55
  store i32 0, i32* %3, align 4
  br label %64

64:                                               ; preds = %63, %62, %54, %46, %34, %25
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

declare dso_local i64 @tipc_own_addr(i32) #1

declare dso_local i32 @sock_net(%struct.sock*) #1

declare dso_local i64 @tsk_peer_port(%struct.tipc_sock*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @tipc_sk_connected(%struct.sock*) #1

declare dso_local i64 @msg_origport(%struct.tipc_msg*) #1

declare dso_local i64 @msg_orignode(%struct.tipc_msg*) #1

declare dso_local i64 @tsk_peer_node(%struct.tipc_sock*) #1

declare dso_local i64 @likely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
