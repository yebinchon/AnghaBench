; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_core.c_hci_setup_link_policy.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_core.c_hci_setup_link_policy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_request = type { %struct.hci_dev* }
%struct.hci_dev = type { i32 }
%struct.hci_cp_write_def_link_policy = type { i32 }

@HCI_LP_RSWITCH = common dso_local global i32 0, align 4
@HCI_LP_HOLD = common dso_local global i32 0, align 4
@HCI_LP_SNIFF = common dso_local global i32 0, align 4
@HCI_LP_PARK = common dso_local global i32 0, align 4
@HCI_OP_WRITE_DEF_LINK_POLICY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hci_request*)* @hci_setup_link_policy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hci_setup_link_policy(%struct.hci_request* %0) #0 {
  %2 = alloca %struct.hci_request*, align 8
  %3 = alloca %struct.hci_dev*, align 8
  %4 = alloca %struct.hci_cp_write_def_link_policy, align 4
  %5 = alloca i32, align 4
  store %struct.hci_request* %0, %struct.hci_request** %2, align 8
  %6 = load %struct.hci_request*, %struct.hci_request** %2, align 8
  %7 = getelementptr inbounds %struct.hci_request, %struct.hci_request* %6, i32 0, i32 0
  %8 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  store %struct.hci_dev* %8, %struct.hci_dev** %3, align 8
  store i32 0, i32* %5, align 4
  %9 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %10 = call i64 @lmp_rswitch_capable(%struct.hci_dev* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %1
  %13 = load i32, i32* @HCI_LP_RSWITCH, align 4
  %14 = load i32, i32* %5, align 4
  %15 = or i32 %14, %13
  store i32 %15, i32* %5, align 4
  br label %16

16:                                               ; preds = %12, %1
  %17 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %18 = call i64 @lmp_hold_capable(%struct.hci_dev* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %16
  %21 = load i32, i32* @HCI_LP_HOLD, align 4
  %22 = load i32, i32* %5, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %5, align 4
  br label %24

24:                                               ; preds = %20, %16
  %25 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %26 = call i64 @lmp_sniff_capable(%struct.hci_dev* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %24
  %29 = load i32, i32* @HCI_LP_SNIFF, align 4
  %30 = load i32, i32* %5, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %5, align 4
  br label %32

32:                                               ; preds = %28, %24
  %33 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %34 = call i64 @lmp_park_capable(%struct.hci_dev* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %32
  %37 = load i32, i32* @HCI_LP_PARK, align 4
  %38 = load i32, i32* %5, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %5, align 4
  br label %40

40:                                               ; preds = %36, %32
  %41 = load i32, i32* %5, align 4
  %42 = call i32 @cpu_to_le16(i32 %41)
  %43 = getelementptr inbounds %struct.hci_cp_write_def_link_policy, %struct.hci_cp_write_def_link_policy* %4, i32 0, i32 0
  store i32 %42, i32* %43, align 4
  %44 = load %struct.hci_request*, %struct.hci_request** %2, align 8
  %45 = load i32, i32* @HCI_OP_WRITE_DEF_LINK_POLICY, align 4
  %46 = call i32 @hci_req_add(%struct.hci_request* %44, i32 %45, i32 4, %struct.hci_cp_write_def_link_policy* %4)
  ret void
}

declare dso_local i64 @lmp_rswitch_capable(%struct.hci_dev*) #1

declare dso_local i64 @lmp_hold_capable(%struct.hci_dev*) #1

declare dso_local i64 @lmp_sniff_capable(%struct.hci_dev*) #1

declare dso_local i64 @lmp_park_capable(%struct.hci_dev*) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @hci_req_add(%struct.hci_request*, i32, i32, %struct.hci_cp_write_def_link_policy*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
