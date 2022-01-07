; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_sock.c_hci_sock_cmsg.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_sock.c_hci_sock_cmsg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.msghdr = type { i32 }
%struct.sk_buff = type { i32 }
%struct.__kernel_old_timeval = type { i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@HCI_CMSG_DIR = common dso_local global i32 0, align 4
@SOL_HCI = common dso_local global i32 0, align 4
@HCI_CMSG_TSTAMP = common dso_local global i32 0, align 4
@COMPAT_USE_64BIT_TIME = common dso_local global i32 0, align 4
@MSG_CMSG_COMPAT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*, %struct.msghdr*, %struct.sk_buff*)* @hci_sock_cmsg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hci_sock_cmsg(%struct.sock* %0, %struct.msghdr* %1, %struct.sk_buff* %2) #0 {
  %4 = alloca %struct.sock*, align 8
  %5 = alloca %struct.msghdr*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.__kernel_old_timeval, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %4, align 8
  store %struct.msghdr* %1, %struct.msghdr** %5, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %6, align 8
  %12 = load %struct.sock*, %struct.sock** %4, align 8
  %13 = call %struct.TYPE_3__* @hci_pi(%struct.sock* %12)
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* @HCI_CMSG_DIR, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %30

20:                                               ; preds = %3
  %21 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %22 = call %struct.TYPE_4__* @bt_cb(%struct.sk_buff* %21)
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %8, align 4
  %25 = load %struct.msghdr*, %struct.msghdr** %5, align 8
  %26 = load i32, i32* @SOL_HCI, align 4
  %27 = load i32, i32* @HCI_CMSG_DIR, align 4
  %28 = bitcast i32* %8 to i8*
  %29 = call i32 @put_cmsg(%struct.msghdr* %25, i32 %26, i32 %27, i32 4, i8* %28)
  br label %30

30:                                               ; preds = %20, %3
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* @HCI_CMSG_TSTAMP, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %45

35:                                               ; preds = %30
  %36 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %37 = call i32 @skb_get_timestamp(%struct.sk_buff* %36, %struct.__kernel_old_timeval* %9)
  %38 = bitcast %struct.__kernel_old_timeval* %9 to i8*
  store i8* %38, i8** %10, align 8
  store i32 8, i32* %11, align 4
  %39 = load %struct.msghdr*, %struct.msghdr** %5, align 8
  %40 = load i32, i32* @SOL_HCI, align 4
  %41 = load i32, i32* @HCI_CMSG_TSTAMP, align 4
  %42 = load i32, i32* %11, align 4
  %43 = load i8*, i8** %10, align 8
  %44 = call i32 @put_cmsg(%struct.msghdr* %39, i32 %40, i32 %41, i32 %42, i8* %43)
  br label %45

45:                                               ; preds = %35, %30
  ret void
}

declare dso_local %struct.TYPE_3__* @hci_pi(%struct.sock*) #1

declare dso_local %struct.TYPE_4__* @bt_cb(%struct.sk_buff*) #1

declare dso_local i32 @put_cmsg(%struct.msghdr*, i32, i32, i32, i8*) #1

declare dso_local i32 @skb_get_timestamp(%struct.sk_buff*, %struct.__kernel_old_timeval*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
