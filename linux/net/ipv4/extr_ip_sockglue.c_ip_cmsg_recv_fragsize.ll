; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_ip_sockglue.c_ip_cmsg_recv_fragsize.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_ip_sockglue.c_ip_cmsg_recv_fragsize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msghdr = type { i32 }
%struct.sk_buff = type { i32 }
%struct.TYPE_2__ = type { i32 }

@SOL_IP = common dso_local global i32 0, align 4
@IP_RECVFRAGSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.msghdr*, %struct.sk_buff*)* @ip_cmsg_recv_fragsize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ip_cmsg_recv_fragsize(%struct.msghdr* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.msghdr*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca i32, align 4
  store %struct.msghdr* %0, %struct.msghdr** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %6 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %7 = call %struct.TYPE_2__* @IPCB(%struct.sk_buff* %6)
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  br label %21

12:                                               ; preds = %2
  %13 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %14 = call %struct.TYPE_2__* @IPCB(%struct.sk_buff* %13)
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %5, align 4
  %17 = load %struct.msghdr*, %struct.msghdr** %3, align 8
  %18 = load i32, i32* @SOL_IP, align 4
  %19 = load i32, i32* @IP_RECVFRAGSIZE, align 4
  %20 = call i32 @put_cmsg(%struct.msghdr* %17, i32 %18, i32 %19, i32 4, i32* %5)
  br label %21

21:                                               ; preds = %12, %11
  ret void
}

declare dso_local %struct.TYPE_2__* @IPCB(%struct.sk_buff*) #1

declare dso_local i32 @put_cmsg(%struct.msghdr*, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
