; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_amp.c_amp_accept_phylink.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_amp.c_amp_accept_phylink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_dev = type { i32 }
%struct.amp_mgr = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.hci_conn = type { i32 }
%struct.hci_cp_accept_phy_link = type { i32, i32, i32, i32 }
%struct.hci_request = type { i32 }

@.str = private unnamed_addr constant [30 x i8] c"%s hcon %p phy handle 0x%2.2x\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"Cannot create link key\00", align 1
@HCI_OP_ACCEPT_PHY_LINK = common dso_local global i32 0, align 4
@accept_phylink_complete = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @amp_accept_phylink(%struct.hci_dev* %0, %struct.amp_mgr* %1, %struct.hci_conn* %2) #0 {
  %4 = alloca %struct.hci_dev*, align 8
  %5 = alloca %struct.amp_mgr*, align 8
  %6 = alloca %struct.hci_conn*, align 8
  %7 = alloca %struct.hci_cp_accept_phy_link, align 4
  %8 = alloca %struct.hci_request, align 4
  store %struct.hci_dev* %0, %struct.hci_dev** %4, align 8
  store %struct.amp_mgr* %1, %struct.amp_mgr** %5, align 8
  store %struct.hci_conn* %2, %struct.hci_conn** %6, align 8
  %9 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %10 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = getelementptr inbounds %struct.hci_cp_accept_phy_link, %struct.hci_cp_accept_phy_link* %7, i32 0, i32 3
  store i32 %11, i32* %12, align 4
  %13 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %14 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %17 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %18 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 (i8*, ...) @BT_DBG(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %15, %struct.hci_conn* %16, i32 %19)
  %21 = load %struct.amp_mgr*, %struct.amp_mgr** %5, align 8
  %22 = getelementptr inbounds %struct.amp_mgr, %struct.amp_mgr* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = getelementptr inbounds %struct.hci_cp_accept_phy_link, %struct.hci_cp_accept_phy_link* %7, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = getelementptr inbounds %struct.hci_cp_accept_phy_link, %struct.hci_cp_accept_phy_link* %7, i32 0, i32 1
  %29 = getelementptr inbounds %struct.hci_cp_accept_phy_link, %struct.hci_cp_accept_phy_link* %7, i32 0, i32 0
  %30 = call i64 @phylink_gen_key(i32 %25, i32 %27, i32* %28, i32* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %3
  %33 = call i32 (i8*, ...) @BT_DBG(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  br label %41

34:                                               ; preds = %3
  %35 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %36 = call i32 @hci_req_init(%struct.hci_request* %8, %struct.hci_dev* %35)
  %37 = load i32, i32* @HCI_OP_ACCEPT_PHY_LINK, align 4
  %38 = call i32 @hci_req_add(%struct.hci_request* %8, i32 %37, i32 16, %struct.hci_cp_accept_phy_link* %7)
  %39 = load i32, i32* @accept_phylink_complete, align 4
  %40 = call i32 @hci_req_run(%struct.hci_request* %8, i32 %39)
  br label %41

41:                                               ; preds = %34, %32
  ret void
}

declare dso_local i32 @BT_DBG(i8*, ...) #1

declare dso_local i64 @phylink_gen_key(i32, i32, i32*, i32*) #1

declare dso_local i32 @hci_req_init(%struct.hci_request*, %struct.hci_dev*) #1

declare dso_local i32 @hci_req_add(%struct.hci_request*, i32, i32, %struct.hci_cp_accept_phy_link*) #1

declare dso_local i32 @hci_req_run(%struct.hci_request*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
