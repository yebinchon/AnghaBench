; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_mgmt.c_mgmt_smp_complete.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_mgmt.c_mgmt_smp_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_conn = type { i32 }
%struct.mgmt_pending_cmd = type { i32 (%struct.mgmt_pending_cmd*, i32)* }

@MGMT_STATUS_SUCCESS = common dso_local global i32 0, align 4
@MGMT_STATUS_FAILED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mgmt_smp_complete(%struct.hci_conn* %0, i32 %1) #0 {
  %3 = alloca %struct.hci_conn*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.mgmt_pending_cmd*, align 8
  store %struct.hci_conn* %0, %struct.hci_conn** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %2
  %10 = load i32, i32* @MGMT_STATUS_SUCCESS, align 4
  br label %13

11:                                               ; preds = %2
  %12 = load i32, i32* @MGMT_STATUS_FAILED, align 4
  br label %13

13:                                               ; preds = %11, %9
  %14 = phi i32 [ %10, %9 ], [ %12, %11 ]
  store i32 %14, i32* %5, align 4
  %15 = load %struct.hci_conn*, %struct.hci_conn** %3, align 8
  %16 = call %struct.mgmt_pending_cmd* @find_pairing(%struct.hci_conn* %15)
  store %struct.mgmt_pending_cmd* %16, %struct.mgmt_pending_cmd** %6, align 8
  %17 = load %struct.mgmt_pending_cmd*, %struct.mgmt_pending_cmd** %6, align 8
  %18 = icmp ne %struct.mgmt_pending_cmd* %17, null
  br i1 %18, label %19, label %28

19:                                               ; preds = %13
  %20 = load %struct.mgmt_pending_cmd*, %struct.mgmt_pending_cmd** %6, align 8
  %21 = getelementptr inbounds %struct.mgmt_pending_cmd, %struct.mgmt_pending_cmd* %20, i32 0, i32 0
  %22 = load i32 (%struct.mgmt_pending_cmd*, i32)*, i32 (%struct.mgmt_pending_cmd*, i32)** %21, align 8
  %23 = load %struct.mgmt_pending_cmd*, %struct.mgmt_pending_cmd** %6, align 8
  %24 = load i32, i32* %5, align 4
  %25 = call i32 %22(%struct.mgmt_pending_cmd* %23, i32 %24)
  %26 = load %struct.mgmt_pending_cmd*, %struct.mgmt_pending_cmd** %6, align 8
  %27 = call i32 @mgmt_pending_remove(%struct.mgmt_pending_cmd* %26)
  br label %28

28:                                               ; preds = %19, %13
  ret void
}

declare dso_local %struct.mgmt_pending_cmd* @find_pairing(%struct.hci_conn*) #1

declare dso_local i32 @mgmt_pending_remove(%struct.mgmt_pending_cmd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
