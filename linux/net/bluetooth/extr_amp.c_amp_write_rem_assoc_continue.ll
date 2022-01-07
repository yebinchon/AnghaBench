; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_amp.c_amp_write_rem_assoc_continue.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_amp.c_amp_write_rem_assoc_continue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_dev = type { i32 }
%struct.hci_conn = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"%s phy handle 0x%2.2x\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @amp_write_rem_assoc_continue(%struct.hci_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.hci_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.hci_conn*, align 8
  store %struct.hci_dev* %0, %struct.hci_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %7 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* %4, align 4
  %10 = call i32 @BT_DBG(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %8, i32 %9)
  %11 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %12 = load i32, i32* %4, align 4
  %13 = call %struct.hci_conn* @hci_conn_hash_lookup_handle(%struct.hci_dev* %11, i32 %12)
  store %struct.hci_conn* %13, %struct.hci_conn** %5, align 8
  %14 = load %struct.hci_conn*, %struct.hci_conn** %5, align 8
  %15 = icmp ne %struct.hci_conn* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  br label %25

17:                                               ; preds = %2
  %18 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %19 = load %struct.hci_conn*, %struct.hci_conn** %5, align 8
  %20 = call i64 @amp_write_rem_assoc_frag(%struct.hci_dev* %18, %struct.hci_conn* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %17
  %23 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %24 = call i32 @a2mp_send_create_phy_link_rsp(%struct.hci_dev* %23, i32 0)
  br label %25

25:                                               ; preds = %16, %22, %17
  ret void
}

declare dso_local i32 @BT_DBG(i8*, i32, i32) #1

declare dso_local %struct.hci_conn* @hci_conn_hash_lookup_handle(%struct.hci_dev*, i32) #1

declare dso_local i64 @amp_write_rem_assoc_frag(%struct.hci_dev*, %struct.hci_conn*) #1

declare dso_local i32 @a2mp_send_create_phy_link_rsp(%struct.hci_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
