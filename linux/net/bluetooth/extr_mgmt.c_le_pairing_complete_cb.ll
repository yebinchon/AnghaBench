; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_mgmt.c_le_pairing_complete_cb.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_mgmt.c_le_pairing_complete_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_conn = type { i32 }
%struct.mgmt_pending_cmd = type { i32 (%struct.mgmt_pending_cmd*, i32)* }

@.str = private unnamed_addr constant [10 x i8] c"status %u\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"Unable to find a pending command\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hci_conn*, i32)* @le_pairing_complete_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @le_pairing_complete_cb(%struct.hci_conn* %0, i32 %1) #0 {
  %3 = alloca %struct.hci_conn*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mgmt_pending_cmd*, align 8
  store %struct.hci_conn* %0, %struct.hci_conn** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = call i32 (i8*, ...) @BT_DBG(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %6)
  %8 = load i32, i32* %4, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  br label %28

11:                                               ; preds = %2
  %12 = load %struct.hci_conn*, %struct.hci_conn** %3, align 8
  %13 = call %struct.mgmt_pending_cmd* @find_pairing(%struct.hci_conn* %12)
  store %struct.mgmt_pending_cmd* %13, %struct.mgmt_pending_cmd** %5, align 8
  %14 = load %struct.mgmt_pending_cmd*, %struct.mgmt_pending_cmd** %5, align 8
  %15 = icmp ne %struct.mgmt_pending_cmd* %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %11
  %17 = call i32 (i8*, ...) @BT_DBG(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  br label %28

18:                                               ; preds = %11
  %19 = load %struct.mgmt_pending_cmd*, %struct.mgmt_pending_cmd** %5, align 8
  %20 = getelementptr inbounds %struct.mgmt_pending_cmd, %struct.mgmt_pending_cmd* %19, i32 0, i32 0
  %21 = load i32 (%struct.mgmt_pending_cmd*, i32)*, i32 (%struct.mgmt_pending_cmd*, i32)** %20, align 8
  %22 = load %struct.mgmt_pending_cmd*, %struct.mgmt_pending_cmd** %5, align 8
  %23 = load i32, i32* %4, align 4
  %24 = call i32 @mgmt_status(i32 %23)
  %25 = call i32 %21(%struct.mgmt_pending_cmd* %22, i32 %24)
  %26 = load %struct.mgmt_pending_cmd*, %struct.mgmt_pending_cmd** %5, align 8
  %27 = call i32 @mgmt_pending_remove(%struct.mgmt_pending_cmd* %26)
  br label %28

28:                                               ; preds = %18, %16, %10
  ret void
}

declare dso_local i32 @BT_DBG(i8*, ...) #1

declare dso_local %struct.mgmt_pending_cmd* @find_pairing(%struct.hci_conn*) #1

declare dso_local i32 @mgmt_status(i32) #1

declare dso_local i32 @mgmt_pending_remove(%struct.mgmt_pending_cmd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
