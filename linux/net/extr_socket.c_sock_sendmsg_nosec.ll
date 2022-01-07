; ModuleID = '/home/carl/AnghaBench/linux/net/extr_socket.c_sock_sendmsg_nosec.c'
source_filename = "/home/carl/AnghaBench/linux/net/extr_socket.c_sock_sendmsg_nosec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.msghdr = type { i32 }

@inet6_sendmsg = common dso_local global i32 0, align 4
@inet_sendmsg = common dso_local global i32 0, align 4
@EIOCBQUEUED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, %struct.msghdr*)* @sock_sendmsg_nosec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sock_sendmsg_nosec(%struct.socket* %0, %struct.msghdr* %1) #0 {
  %3 = alloca %struct.socket*, align 8
  %4 = alloca %struct.msghdr*, align 8
  %5 = alloca i32, align 4
  store %struct.socket* %0, %struct.socket** %3, align 8
  store %struct.msghdr* %1, %struct.msghdr** %4, align 8
  %6 = load %struct.socket*, %struct.socket** %3, align 8
  %7 = getelementptr inbounds %struct.socket, %struct.socket* %6, i32 0, i32 0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @inet6_sendmsg, align 4
  %12 = load i32, i32* @inet_sendmsg, align 4
  %13 = load %struct.socket*, %struct.socket** %3, align 8
  %14 = load %struct.msghdr*, %struct.msghdr** %4, align 8
  %15 = load %struct.msghdr*, %struct.msghdr** %4, align 8
  %16 = call i32 @msg_data_left(%struct.msghdr* %15)
  %17 = call i32 @INDIRECT_CALL_INET(i32 %10, i32 %11, i32 %12, %struct.socket* %13, %struct.msghdr* %14, i32 %16)
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @EIOCBQUEUED, align 4
  %20 = sub nsw i32 0, %19
  %21 = icmp eq i32 %18, %20
  %22 = zext i1 %21 to i32
  %23 = call i32 @BUG_ON(i32 %22)
  %24 = load i32, i32* %5, align 4
  ret i32 %24
}

declare dso_local i32 @INDIRECT_CALL_INET(i32, i32, i32, %struct.socket*, %struct.msghdr*, i32) #1

declare dso_local i32 @msg_data_left(%struct.msghdr*) #1

declare dso_local i32 @BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
