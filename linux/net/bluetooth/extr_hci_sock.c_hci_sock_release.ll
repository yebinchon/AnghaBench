; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_sock.c_hci_sock_release.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_sock.c_hci_sock_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { %struct.sock* }
%struct.sock = type { i32, i32 }
%struct.hci_dev = type { i32 }
%struct.sk_buff = type { i32 }
%struct.TYPE_2__ = type { i32, %struct.hci_dev* }

@.str = private unnamed_addr constant [14 x i8] c"sock %p sk %p\00", align 1
@monitor_promisc = common dso_local global i32 0, align 4
@HCI_SOCK_TRUSTED = common dso_local global i32 0, align 4
@hci_sk_list = common dso_local global i32 0, align 4
@HCI_USER_CHANNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*)* @hci_sock_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hci_sock_release(%struct.socket* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.socket*, align 8
  %4 = alloca %struct.sock*, align 8
  %5 = alloca %struct.hci_dev*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  store %struct.socket* %0, %struct.socket** %3, align 8
  %7 = load %struct.socket*, %struct.socket** %3, align 8
  %8 = getelementptr inbounds %struct.socket, %struct.socket* %7, i32 0, i32 0
  %9 = load %struct.sock*, %struct.sock** %8, align 8
  store %struct.sock* %9, %struct.sock** %4, align 8
  %10 = load %struct.socket*, %struct.socket** %3, align 8
  %11 = load %struct.sock*, %struct.sock** %4, align 8
  %12 = call i32 @BT_DBG(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), %struct.socket* %10, %struct.sock* %11)
  %13 = load %struct.sock*, %struct.sock** %4, align 8
  %14 = icmp ne %struct.sock* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %77

16:                                               ; preds = %1
  %17 = load %struct.sock*, %struct.sock** %4, align 8
  %18 = call %struct.TYPE_2__* @hci_pi(%struct.sock* %17)
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  switch i32 %20, label %37 [
    i32 130, label %21
    i32 129, label %23
    i32 128, label %23
    i32 131, label %23
  ]

21:                                               ; preds = %16
  %22 = call i32 @atomic_dec(i32* @monitor_promisc)
  br label %37

23:                                               ; preds = %16, %16, %16
  %24 = load %struct.sock*, %struct.sock** %4, align 8
  %25 = call %struct.sk_buff* @create_monitor_ctrl_close(%struct.sock* %24)
  store %struct.sk_buff* %25, %struct.sk_buff** %6, align 8
  %26 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %27 = icmp ne %struct.sk_buff* %26, null
  br i1 %27, label %28, label %34

28:                                               ; preds = %23
  %29 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %30 = load i32, i32* @HCI_SOCK_TRUSTED, align 4
  %31 = call i32 @hci_send_to_channel(i32 130, %struct.sk_buff* %29, i32 %30, i32* null)
  %32 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %33 = call i32 @kfree_skb(%struct.sk_buff* %32)
  br label %34

34:                                               ; preds = %28, %23
  %35 = load %struct.sock*, %struct.sock** %4, align 8
  %36 = call i32 @hci_sock_free_cookie(%struct.sock* %35)
  br label %37

37:                                               ; preds = %16, %34, %21
  %38 = load %struct.sock*, %struct.sock** %4, align 8
  %39 = call i32 @bt_sock_unlink(i32* @hci_sk_list, %struct.sock* %38)
  %40 = load %struct.sock*, %struct.sock** %4, align 8
  %41 = call %struct.TYPE_2__* @hci_pi(%struct.sock* %40)
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 1
  %43 = load %struct.hci_dev*, %struct.hci_dev** %42, align 8
  store %struct.hci_dev* %43, %struct.hci_dev** %5, align 8
  %44 = load %struct.hci_dev*, %struct.hci_dev** %5, align 8
  %45 = icmp ne %struct.hci_dev* %44, null
  br i1 %45, label %46, label %66

46:                                               ; preds = %37
  %47 = load %struct.sock*, %struct.sock** %4, align 8
  %48 = call %struct.TYPE_2__* @hci_pi(%struct.sock* %47)
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = icmp eq i32 %50, 128
  br i1 %51, label %52, label %60

52:                                               ; preds = %46
  %53 = load %struct.hci_dev*, %struct.hci_dev** %5, align 8
  %54 = call i32 @hci_dev_do_close(%struct.hci_dev* %53)
  %55 = load %struct.hci_dev*, %struct.hci_dev** %5, align 8
  %56 = load i32, i32* @HCI_USER_CHANNEL, align 4
  %57 = call i32 @hci_dev_clear_flag(%struct.hci_dev* %55, i32 %56)
  %58 = load %struct.hci_dev*, %struct.hci_dev** %5, align 8
  %59 = call i32 @mgmt_index_added(%struct.hci_dev* %58)
  br label %60

60:                                               ; preds = %52, %46
  %61 = load %struct.hci_dev*, %struct.hci_dev** %5, align 8
  %62 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %61, i32 0, i32 0
  %63 = call i32 @atomic_dec(i32* %62)
  %64 = load %struct.hci_dev*, %struct.hci_dev** %5, align 8
  %65 = call i32 @hci_dev_put(%struct.hci_dev* %64)
  br label %66

66:                                               ; preds = %60, %37
  %67 = load %struct.sock*, %struct.sock** %4, align 8
  %68 = call i32 @sock_orphan(%struct.sock* %67)
  %69 = load %struct.sock*, %struct.sock** %4, align 8
  %70 = getelementptr inbounds %struct.sock, %struct.sock* %69, i32 0, i32 1
  %71 = call i32 @skb_queue_purge(i32* %70)
  %72 = load %struct.sock*, %struct.sock** %4, align 8
  %73 = getelementptr inbounds %struct.sock, %struct.sock* %72, i32 0, i32 0
  %74 = call i32 @skb_queue_purge(i32* %73)
  %75 = load %struct.sock*, %struct.sock** %4, align 8
  %76 = call i32 @sock_put(%struct.sock* %75)
  store i32 0, i32* %2, align 4
  br label %77

77:                                               ; preds = %66, %15
  %78 = load i32, i32* %2, align 4
  ret i32 %78
}

declare dso_local i32 @BT_DBG(i8*, %struct.socket*, %struct.sock*) #1

declare dso_local %struct.TYPE_2__* @hci_pi(%struct.sock*) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local %struct.sk_buff* @create_monitor_ctrl_close(%struct.sock*) #1

declare dso_local i32 @hci_send_to_channel(i32, %struct.sk_buff*, i32, i32*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @hci_sock_free_cookie(%struct.sock*) #1

declare dso_local i32 @bt_sock_unlink(i32*, %struct.sock*) #1

declare dso_local i32 @hci_dev_do_close(%struct.hci_dev*) #1

declare dso_local i32 @hci_dev_clear_flag(%struct.hci_dev*, i32) #1

declare dso_local i32 @mgmt_index_added(%struct.hci_dev*) #1

declare dso_local i32 @hci_dev_put(%struct.hci_dev*) #1

declare dso_local i32 @sock_orphan(%struct.sock*) #1

declare dso_local i32 @skb_queue_purge(i32*) #1

declare dso_local i32 @sock_put(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
