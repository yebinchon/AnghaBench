; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_event.c_hci_cs_switch_role.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_event.c_hci_cs_switch_role.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_dev = type { i32 }
%struct.hci_cp_switch_role = type { i32 }
%struct.hci_conn = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"%s status 0x%2.2x\00", align 1
@HCI_OP_SWITCH_ROLE = common dso_local global i32 0, align 4
@ACL_LINK = common dso_local global i32 0, align 4
@HCI_CONN_RSWITCH_PEND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hci_dev*, i32)* @hci_cs_switch_role to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hci_cs_switch_role(%struct.hci_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.hci_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.hci_cp_switch_role*, align 8
  %6 = alloca %struct.hci_conn*, align 8
  store %struct.hci_dev* %0, %struct.hci_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %8 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* %4, align 4
  %11 = call i32 @BT_DBG(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %9, i32 %10)
  %12 = load i32, i32* %4, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  br label %40

15:                                               ; preds = %2
  %16 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %17 = load i32, i32* @HCI_OP_SWITCH_ROLE, align 4
  %18 = call %struct.hci_cp_switch_role* @hci_sent_cmd_data(%struct.hci_dev* %16, i32 %17)
  store %struct.hci_cp_switch_role* %18, %struct.hci_cp_switch_role** %5, align 8
  %19 = load %struct.hci_cp_switch_role*, %struct.hci_cp_switch_role** %5, align 8
  %20 = icmp ne %struct.hci_cp_switch_role* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %15
  br label %40

22:                                               ; preds = %15
  %23 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %24 = call i32 @hci_dev_lock(%struct.hci_dev* %23)
  %25 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %26 = load i32, i32* @ACL_LINK, align 4
  %27 = load %struct.hci_cp_switch_role*, %struct.hci_cp_switch_role** %5, align 8
  %28 = getelementptr inbounds %struct.hci_cp_switch_role, %struct.hci_cp_switch_role* %27, i32 0, i32 0
  %29 = call %struct.hci_conn* @hci_conn_hash_lookup_ba(%struct.hci_dev* %25, i32 %26, i32* %28)
  store %struct.hci_conn* %29, %struct.hci_conn** %6, align 8
  %30 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %31 = icmp ne %struct.hci_conn* %30, null
  br i1 %31, label %32, label %37

32:                                               ; preds = %22
  %33 = load i32, i32* @HCI_CONN_RSWITCH_PEND, align 4
  %34 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %35 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %34, i32 0, i32 0
  %36 = call i32 @clear_bit(i32 %33, i32* %35)
  br label %37

37:                                               ; preds = %32, %22
  %38 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %39 = call i32 @hci_dev_unlock(%struct.hci_dev* %38)
  br label %40

40:                                               ; preds = %37, %21, %14
  ret void
}

declare dso_local i32 @BT_DBG(i8*, i32, i32) #1

declare dso_local %struct.hci_cp_switch_role* @hci_sent_cmd_data(%struct.hci_dev*, i32) #1

declare dso_local i32 @hci_dev_lock(%struct.hci_dev*) #1

declare dso_local %struct.hci_conn* @hci_conn_hash_lookup_ba(%struct.hci_dev*, i32, i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @hci_dev_unlock(%struct.hci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
