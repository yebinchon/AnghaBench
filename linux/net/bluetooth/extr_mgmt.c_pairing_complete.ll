; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_mgmt.c_pairing_complete.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_mgmt.c_pairing_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mgmt_pending_cmd = type { i32, i32, %struct.hci_conn* }
%struct.hci_conn = type { i32, i32*, i32*, i32*, i32, i32, i32 }
%struct.mgmt_rp_pair_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@MGMT_OP_PAIR_DEVICE = common dso_local global i32 0, align 4
@HCI_CONN_PARAM_REMOVAL_PEND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mgmt_pending_cmd*, i32)* @pairing_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pairing_complete(%struct.mgmt_pending_cmd* %0, i32 %1) #0 {
  %3 = alloca %struct.mgmt_pending_cmd*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mgmt_rp_pair_device, align 4
  %6 = alloca %struct.hci_conn*, align 8
  %7 = alloca i32, align 4
  store %struct.mgmt_pending_cmd* %0, %struct.mgmt_pending_cmd** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.mgmt_pending_cmd*, %struct.mgmt_pending_cmd** %3, align 8
  %9 = getelementptr inbounds %struct.mgmt_pending_cmd, %struct.mgmt_pending_cmd* %8, i32 0, i32 2
  %10 = load %struct.hci_conn*, %struct.hci_conn** %9, align 8
  store %struct.hci_conn* %10, %struct.hci_conn** %6, align 8
  %11 = getelementptr inbounds %struct.mgmt_rp_pair_device, %struct.mgmt_rp_pair_device* %5, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 1
  %13 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %14 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %13, i32 0, i32 6
  %15 = call i32 @bacpy(i32* %12, i32* %14)
  %16 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %17 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %16, i32 0, i32 5
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %20 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %19, i32 0, i32 4
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @link_to_bdaddr(i32 %18, i32 %21)
  %23 = getelementptr inbounds %struct.mgmt_rp_pair_device, %struct.mgmt_rp_pair_device* %5, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 4
  %25 = load %struct.mgmt_pending_cmd*, %struct.mgmt_pending_cmd** %3, align 8
  %26 = getelementptr inbounds %struct.mgmt_pending_cmd, %struct.mgmt_pending_cmd* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.mgmt_pending_cmd*, %struct.mgmt_pending_cmd** %3, align 8
  %29 = getelementptr inbounds %struct.mgmt_pending_cmd, %struct.mgmt_pending_cmd* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @MGMT_OP_PAIR_DEVICE, align 4
  %32 = load i32, i32* %4, align 4
  %33 = call i32 @mgmt_cmd_complete(i32 %27, i32 %30, i32 %31, i32 %32, %struct.mgmt_rp_pair_device* %5, i32 8)
  store i32 %33, i32* %7, align 4
  %34 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %35 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %34, i32 0, i32 3
  store i32* null, i32** %35, align 8
  %36 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %37 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %36, i32 0, i32 2
  store i32* null, i32** %37, align 8
  %38 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %39 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %38, i32 0, i32 1
  store i32* null, i32** %39, align 8
  %40 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %41 = call i32 @hci_conn_drop(%struct.hci_conn* %40)
  %42 = load i32, i32* @HCI_CONN_PARAM_REMOVAL_PEND, align 4
  %43 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %44 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %43, i32 0, i32 0
  %45 = call i32 @clear_bit(i32 %42, i32* %44)
  %46 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %47 = call i32 @hci_conn_put(%struct.hci_conn* %46)
  %48 = load i32, i32* %7, align 4
  ret i32 %48
}

declare dso_local i32 @bacpy(i32*, i32*) #1

declare dso_local i32 @link_to_bdaddr(i32, i32) #1

declare dso_local i32 @mgmt_cmd_complete(i32, i32, i32, i32, %struct.mgmt_rp_pair_device*, i32) #1

declare dso_local i32 @hci_conn_drop(%struct.hci_conn*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @hci_conn_put(%struct.hci_conn*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
