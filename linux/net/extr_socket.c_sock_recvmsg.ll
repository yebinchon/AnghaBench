; ModuleID = '/home/carl/AnghaBench/linux/net/extr_socket.c_sock_recvmsg.c'
source_filename = "/home/carl/AnghaBench/linux/net/extr_socket.c_sock_recvmsg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i32 }
%struct.msghdr = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sock_recvmsg(%struct.socket* %0, %struct.msghdr* %1, i32 %2) #0 {
  %4 = alloca %struct.socket*, align 8
  %5 = alloca %struct.msghdr*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.socket* %0, %struct.socket** %4, align 8
  store %struct.msghdr* %1, %struct.msghdr** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.socket*, %struct.socket** %4, align 8
  %9 = load %struct.msghdr*, %struct.msghdr** %5, align 8
  %10 = load %struct.msghdr*, %struct.msghdr** %5, align 8
  %11 = call i32 @msg_data_left(%struct.msghdr* %10)
  %12 = load i32, i32* %6, align 4
  %13 = call i32 @security_socket_recvmsg(%struct.socket* %8, %struct.msghdr* %9, i32 %11, i32 %12)
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %7, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  br label %22

17:                                               ; preds = %3
  %18 = load %struct.socket*, %struct.socket** %4, align 8
  %19 = load %struct.msghdr*, %struct.msghdr** %5, align 8
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @sock_recvmsg_nosec(%struct.socket* %18, %struct.msghdr* %19, i32 %20)
  br label %22

22:                                               ; preds = %17, %16
  %23 = phi i32 [ %14, %16 ], [ %21, %17 ]
  ret i32 %23
}

declare dso_local i32 @security_socket_recvmsg(%struct.socket*, %struct.msghdr*, i32, i32) #1

declare dso_local i32 @msg_data_left(%struct.msghdr*) #1

declare dso_local i32 @sock_recvmsg_nosec(%struct.socket*, %struct.msghdr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
