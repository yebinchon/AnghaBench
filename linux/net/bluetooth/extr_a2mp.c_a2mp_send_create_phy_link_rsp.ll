; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_a2mp.c_a2mp_send_create_phy_link_rsp.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_a2mp.c_a2mp_send_create_phy_link_rsp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_dev = type { i32, i32 }
%struct.amp_mgr = type { i32 }
%struct.a2mp_physlink_rsp = type { i32, i32, i32 }
%struct.hci_conn = type { i32 }

@WRITE_REMOTE_AMP_ASSOC = common dso_local global i32 0, align 4
@AMP_LINK = common dso_local global i32 0, align 4
@BT_CONNECT = common dso_local global i32 0, align 4
@A2MP_STATUS_UNABLE_START_LINK_CREATION = common dso_local global i32 0, align 4
@A2MP_STATUS_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"%s mgr %p hs_hcon %p status %u\00", align 1
@A2MP_CREATEPHYSLINK_RSP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @a2mp_send_create_phy_link_rsp(%struct.hci_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.hci_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.amp_mgr*, align 8
  %6 = alloca %struct.a2mp_physlink_rsp, align 4
  %7 = alloca %struct.hci_conn*, align 8
  store %struct.hci_dev* %0, %struct.hci_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* @WRITE_REMOTE_AMP_ASSOC, align 4
  %9 = call %struct.amp_mgr* @amp_mgr_lookup_by_state(i32 %8)
  store %struct.amp_mgr* %9, %struct.amp_mgr** %5, align 8
  %10 = load %struct.amp_mgr*, %struct.amp_mgr** %5, align 8
  %11 = icmp ne %struct.amp_mgr* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  br label %50

13:                                               ; preds = %2
  %14 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %15 = load i32, i32* @AMP_LINK, align 4
  %16 = load i32, i32* @BT_CONNECT, align 4
  %17 = call %struct.hci_conn* @hci_conn_hash_lookup_state(%struct.hci_dev* %14, i32 %15, i32 %16)
  store %struct.hci_conn* %17, %struct.hci_conn** %7, align 8
  %18 = load %struct.hci_conn*, %struct.hci_conn** %7, align 8
  %19 = icmp ne %struct.hci_conn* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %13
  %21 = load i32, i32* @A2MP_STATUS_UNABLE_START_LINK_CREATION, align 4
  %22 = getelementptr inbounds %struct.a2mp_physlink_rsp, %struct.a2mp_physlink_rsp* %6, i32 0, i32 1
  store i32 %21, i32* %22, align 4
  br label %30

23:                                               ; preds = %13
  %24 = load %struct.hci_conn*, %struct.hci_conn** %7, align 8
  %25 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = getelementptr inbounds %struct.a2mp_physlink_rsp, %struct.a2mp_physlink_rsp* %6, i32 0, i32 2
  store i32 %26, i32* %27, align 4
  %28 = load i32, i32* @A2MP_STATUS_SUCCESS, align 4
  %29 = getelementptr inbounds %struct.a2mp_physlink_rsp, %struct.a2mp_physlink_rsp* %6, i32 0, i32 1
  store i32 %28, i32* %29, align 4
  br label %30

30:                                               ; preds = %23, %20
  %31 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %32 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.amp_mgr*, %struct.amp_mgr** %5, align 8
  %35 = load %struct.hci_conn*, %struct.hci_conn** %7, align 8
  %36 = load i32, i32* %4, align 4
  %37 = call i32 @BT_DBG(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %33, %struct.amp_mgr* %34, %struct.hci_conn* %35, i32 %36)
  %38 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %39 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = getelementptr inbounds %struct.a2mp_physlink_rsp, %struct.a2mp_physlink_rsp* %6, i32 0, i32 0
  store i32 %40, i32* %41, align 4
  %42 = load %struct.amp_mgr*, %struct.amp_mgr** %5, align 8
  %43 = load i32, i32* @A2MP_CREATEPHYSLINK_RSP, align 4
  %44 = load %struct.amp_mgr*, %struct.amp_mgr** %5, align 8
  %45 = getelementptr inbounds %struct.amp_mgr, %struct.amp_mgr* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @a2mp_send(%struct.amp_mgr* %42, i32 %43, i32 %46, i32 12, %struct.a2mp_physlink_rsp* %6)
  %48 = load %struct.amp_mgr*, %struct.amp_mgr** %5, align 8
  %49 = call i32 @amp_mgr_put(%struct.amp_mgr* %48)
  br label %50

50:                                               ; preds = %30, %12
  ret void
}

declare dso_local %struct.amp_mgr* @amp_mgr_lookup_by_state(i32) #1

declare dso_local %struct.hci_conn* @hci_conn_hash_lookup_state(%struct.hci_dev*, i32, i32) #1

declare dso_local i32 @BT_DBG(i8*, i32, %struct.amp_mgr*, %struct.hci_conn*, i32) #1

declare dso_local i32 @a2mp_send(%struct.amp_mgr*, i32, i32, i32, %struct.a2mp_physlink_rsp*) #1

declare dso_local i32 @amp_mgr_put(%struct.amp_mgr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
