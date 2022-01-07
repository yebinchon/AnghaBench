; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_amp.c_create_phylink_complete.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_amp.c_create_phylink_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_dev = type { i32 }
%struct.hci_cp_create_phy_link = type { i32 }
%struct.hci_conn = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"%s status 0x%2.2x\00", align 1
@HCI_OP_CREATE_PHY_LINK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hci_dev*, i32, i32)* @create_phylink_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @create_phylink_complete(%struct.hci_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.hci_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.hci_cp_create_phy_link*, align 8
  %8 = alloca %struct.hci_conn*, align 8
  store %struct.hci_dev* %0, %struct.hci_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %10 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* %5, align 4
  %13 = call i32 @BT_DBG(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %11, i32 %12)
  %14 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %15 = load i32, i32* @HCI_OP_CREATE_PHY_LINK, align 4
  %16 = call %struct.hci_cp_create_phy_link* @hci_sent_cmd_data(%struct.hci_dev* %14, i32 %15)
  store %struct.hci_cp_create_phy_link* %16, %struct.hci_cp_create_phy_link** %7, align 8
  %17 = load %struct.hci_cp_create_phy_link*, %struct.hci_cp_create_phy_link** %7, align 8
  %18 = icmp ne %struct.hci_cp_create_phy_link* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %3
  br label %46

20:                                               ; preds = %3
  %21 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %22 = call i32 @hci_dev_lock(%struct.hci_dev* %21)
  %23 = load i32, i32* %5, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %37

25:                                               ; preds = %20
  %26 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %27 = load %struct.hci_cp_create_phy_link*, %struct.hci_cp_create_phy_link** %7, align 8
  %28 = getelementptr inbounds %struct.hci_cp_create_phy_link, %struct.hci_cp_create_phy_link* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call %struct.hci_conn* @hci_conn_hash_lookup_handle(%struct.hci_dev* %26, i32 %29)
  store %struct.hci_conn* %30, %struct.hci_conn** %8, align 8
  %31 = load %struct.hci_conn*, %struct.hci_conn** %8, align 8
  %32 = icmp ne %struct.hci_conn* %31, null
  br i1 %32, label %33, label %36

33:                                               ; preds = %25
  %34 = load %struct.hci_conn*, %struct.hci_conn** %8, align 8
  %35 = call i32 @hci_conn_del(%struct.hci_conn* %34)
  br label %36

36:                                               ; preds = %33, %25
  br label %43

37:                                               ; preds = %20
  %38 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %39 = load %struct.hci_cp_create_phy_link*, %struct.hci_cp_create_phy_link** %7, align 8
  %40 = getelementptr inbounds %struct.hci_cp_create_phy_link, %struct.hci_cp_create_phy_link* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @amp_write_remote_assoc(%struct.hci_dev* %38, i32 %41)
  br label %43

43:                                               ; preds = %37, %36
  %44 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %45 = call i32 @hci_dev_unlock(%struct.hci_dev* %44)
  br label %46

46:                                               ; preds = %43, %19
  ret void
}

declare dso_local i32 @BT_DBG(i8*, i32, i32) #1

declare dso_local %struct.hci_cp_create_phy_link* @hci_sent_cmd_data(%struct.hci_dev*, i32) #1

declare dso_local i32 @hci_dev_lock(%struct.hci_dev*) #1

declare dso_local %struct.hci_conn* @hci_conn_hash_lookup_handle(%struct.hci_dev*, i32) #1

declare dso_local i32 @hci_conn_del(%struct.hci_conn*) #1

declare dso_local i32 @amp_write_remote_assoc(%struct.hci_dev*, i32) #1

declare dso_local i32 @hci_dev_unlock(%struct.hci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
