; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_mgmt.c_mgmt_class_complete.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_mgmt.c_mgmt_class_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_dev = type { i32 }
%struct.mgmt_pending_cmd = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hci_dev*, i32, i32)* @mgmt_class_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mgmt_class_complete(%struct.hci_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.hci_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.mgmt_pending_cmd*, align 8
  store %struct.hci_dev* %0, %struct.hci_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %9 = call i32 @hci_dev_lock(%struct.hci_dev* %8)
  %10 = load i32, i32* %5, align 4
  %11 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %12 = call %struct.mgmt_pending_cmd* @pending_find(i32 %10, %struct.hci_dev* %11)
  store %struct.mgmt_pending_cmd* %12, %struct.mgmt_pending_cmd** %7, align 8
  %13 = load %struct.mgmt_pending_cmd*, %struct.mgmt_pending_cmd** %7, align 8
  %14 = icmp ne %struct.mgmt_pending_cmd* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %3
  br label %34

16:                                               ; preds = %3
  %17 = load %struct.mgmt_pending_cmd*, %struct.mgmt_pending_cmd** %7, align 8
  %18 = getelementptr inbounds %struct.mgmt_pending_cmd, %struct.mgmt_pending_cmd* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.mgmt_pending_cmd*, %struct.mgmt_pending_cmd** %7, align 8
  %21 = getelementptr inbounds %struct.mgmt_pending_cmd, %struct.mgmt_pending_cmd* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.mgmt_pending_cmd*, %struct.mgmt_pending_cmd** %7, align 8
  %24 = getelementptr inbounds %struct.mgmt_pending_cmd, %struct.mgmt_pending_cmd* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @mgmt_status(i32 %26)
  %28 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %29 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @mgmt_cmd_complete(i32 %19, i32 %22, i32 %25, i32 %27, i32 %30, i32 3)
  %32 = load %struct.mgmt_pending_cmd*, %struct.mgmt_pending_cmd** %7, align 8
  %33 = call i32 @mgmt_pending_remove(%struct.mgmt_pending_cmd* %32)
  br label %34

34:                                               ; preds = %16, %15
  %35 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %36 = call i32 @hci_dev_unlock(%struct.hci_dev* %35)
  ret void
}

declare dso_local i32 @hci_dev_lock(%struct.hci_dev*) #1

declare dso_local %struct.mgmt_pending_cmd* @pending_find(i32, %struct.hci_dev*) #1

declare dso_local i32 @mgmt_cmd_complete(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @mgmt_status(i32) #1

declare dso_local i32 @mgmt_pending_remove(%struct.mgmt_pending_cmd*) #1

declare dso_local i32 @hci_dev_unlock(%struct.hci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
