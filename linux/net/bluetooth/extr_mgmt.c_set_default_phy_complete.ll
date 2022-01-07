; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_mgmt.c_set_default_phy_complete.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_mgmt.c_set_default_phy_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_dev = type { i32 }
%struct.sk_buff = type { i32 }
%struct.mgmt_pending_cmd = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"status 0x%02x\00", align 1
@MGMT_OP_SET_PHY_CONFIGURATION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hci_dev*, i64, i32, %struct.sk_buff*)* @set_default_phy_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_default_phy_complete(%struct.hci_dev* %0, i64 %1, i32 %2, %struct.sk_buff* %3) #0 {
  %5 = alloca %struct.hci_dev*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.mgmt_pending_cmd*, align 8
  store %struct.hci_dev* %0, %struct.hci_dev** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.sk_buff* %3, %struct.sk_buff** %8, align 8
  %10 = load i64, i64* %6, align 8
  %11 = call i32 @BT_DBG(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i64 %10)
  %12 = load %struct.hci_dev*, %struct.hci_dev** %5, align 8
  %13 = call i32 @hci_dev_lock(%struct.hci_dev* %12)
  %14 = load i32, i32* @MGMT_OP_SET_PHY_CONFIGURATION, align 4
  %15 = load %struct.hci_dev*, %struct.hci_dev** %5, align 8
  %16 = call %struct.mgmt_pending_cmd* @pending_find(i32 %14, %struct.hci_dev* %15)
  store %struct.mgmt_pending_cmd* %16, %struct.mgmt_pending_cmd** %9, align 8
  %17 = load %struct.mgmt_pending_cmd*, %struct.mgmt_pending_cmd** %9, align 8
  %18 = icmp ne %struct.mgmt_pending_cmd* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %4
  br label %51

20:                                               ; preds = %4
  %21 = load i64, i64* %6, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %34

23:                                               ; preds = %20
  %24 = load %struct.mgmt_pending_cmd*, %struct.mgmt_pending_cmd** %9, align 8
  %25 = getelementptr inbounds %struct.mgmt_pending_cmd, %struct.mgmt_pending_cmd* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.hci_dev*, %struct.hci_dev** %5, align 8
  %28 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @MGMT_OP_SET_PHY_CONFIGURATION, align 4
  %31 = load i64, i64* %6, align 8
  %32 = call i32 @mgmt_status(i64 %31)
  %33 = call i32 @mgmt_cmd_status(i32 %26, i32 %29, i32 %30, i32 %32)
  br label %48

34:                                               ; preds = %20
  %35 = load %struct.mgmt_pending_cmd*, %struct.mgmt_pending_cmd** %9, align 8
  %36 = getelementptr inbounds %struct.mgmt_pending_cmd, %struct.mgmt_pending_cmd* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.hci_dev*, %struct.hci_dev** %5, align 8
  %39 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @MGMT_OP_SET_PHY_CONFIGURATION, align 4
  %42 = call i32 @mgmt_cmd_complete(i32 %37, i32 %40, i32 %41, i32 0, i32* null, i32 0)
  %43 = load %struct.hci_dev*, %struct.hci_dev** %5, align 8
  %44 = load %struct.mgmt_pending_cmd*, %struct.mgmt_pending_cmd** %9, align 8
  %45 = getelementptr inbounds %struct.mgmt_pending_cmd, %struct.mgmt_pending_cmd* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @mgmt_phy_configuration_changed(%struct.hci_dev* %43, i32 %46)
  br label %48

48:                                               ; preds = %34, %23
  %49 = load %struct.mgmt_pending_cmd*, %struct.mgmt_pending_cmd** %9, align 8
  %50 = call i32 @mgmt_pending_remove(%struct.mgmt_pending_cmd* %49)
  br label %51

51:                                               ; preds = %48, %19
  %52 = load %struct.hci_dev*, %struct.hci_dev** %5, align 8
  %53 = call i32 @hci_dev_unlock(%struct.hci_dev* %52)
  ret void
}

declare dso_local i32 @BT_DBG(i8*, i64) #1

declare dso_local i32 @hci_dev_lock(%struct.hci_dev*) #1

declare dso_local %struct.mgmt_pending_cmd* @pending_find(i32, %struct.hci_dev*) #1

declare dso_local i32 @mgmt_cmd_status(i32, i32, i32, i32) #1

declare dso_local i32 @mgmt_status(i64) #1

declare dso_local i32 @mgmt_cmd_complete(i32, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @mgmt_phy_configuration_changed(%struct.hci_dev*, i32) #1

declare dso_local i32 @mgmt_pending_remove(%struct.mgmt_pending_cmd*) #1

declare dso_local i32 @hci_dev_unlock(%struct.hci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
