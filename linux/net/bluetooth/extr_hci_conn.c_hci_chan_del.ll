; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_conn.c_hci_chan_del.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_conn.c_hci_chan_del.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_chan = type { i32, i32, %struct.hci_conn* }
%struct.hci_conn = type { i32, %struct.hci_dev* }
%struct.hci_dev = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"%s hcon %p chan %p\00", align 1
@HCI_CONN_DROP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hci_chan_del(%struct.hci_chan* %0) #0 {
  %2 = alloca %struct.hci_chan*, align 8
  %3 = alloca %struct.hci_conn*, align 8
  %4 = alloca %struct.hci_dev*, align 8
  store %struct.hci_chan* %0, %struct.hci_chan** %2, align 8
  %5 = load %struct.hci_chan*, %struct.hci_chan** %2, align 8
  %6 = getelementptr inbounds %struct.hci_chan, %struct.hci_chan* %5, i32 0, i32 2
  %7 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  store %struct.hci_conn* %7, %struct.hci_conn** %3, align 8
  %8 = load %struct.hci_conn*, %struct.hci_conn** %3, align 8
  %9 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %8, i32 0, i32 1
  %10 = load %struct.hci_dev*, %struct.hci_dev** %9, align 8
  store %struct.hci_dev* %10, %struct.hci_dev** %4, align 8
  %11 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %12 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.hci_conn*, %struct.hci_conn** %3, align 8
  %15 = load %struct.hci_chan*, %struct.hci_chan** %2, align 8
  %16 = call i32 @BT_DBG(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %13, %struct.hci_conn* %14, %struct.hci_chan* %15)
  %17 = load %struct.hci_chan*, %struct.hci_chan** %2, align 8
  %18 = getelementptr inbounds %struct.hci_chan, %struct.hci_chan* %17, i32 0, i32 1
  %19 = call i32 @list_del_rcu(i32* %18)
  %20 = call i32 (...) @synchronize_rcu()
  %21 = load i32, i32* @HCI_CONN_DROP, align 4
  %22 = load %struct.hci_conn*, %struct.hci_conn** %3, align 8
  %23 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %22, i32 0, i32 0
  %24 = call i32 @set_bit(i32 %21, i32* %23)
  %25 = load %struct.hci_conn*, %struct.hci_conn** %3, align 8
  %26 = call i32 @hci_conn_put(%struct.hci_conn* %25)
  %27 = load %struct.hci_chan*, %struct.hci_chan** %2, align 8
  %28 = getelementptr inbounds %struct.hci_chan, %struct.hci_chan* %27, i32 0, i32 0
  %29 = call i32 @skb_queue_purge(i32* %28)
  %30 = load %struct.hci_chan*, %struct.hci_chan** %2, align 8
  %31 = call i32 @kfree(%struct.hci_chan* %30)
  ret void
}

declare dso_local i32 @BT_DBG(i8*, i32, %struct.hci_conn*, %struct.hci_chan*) #1

declare dso_local i32 @list_del_rcu(i32*) #1

declare dso_local i32 @synchronize_rcu(...) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @hci_conn_put(%struct.hci_conn*) #1

declare dso_local i32 @skb_queue_purge(i32*) #1

declare dso_local i32 @kfree(%struct.hci_chan*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
