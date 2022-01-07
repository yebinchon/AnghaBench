; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_event.c_hci_cc_read_stored_link_key.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_event.c_hci_cc_read_stored_link_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_dev = type { i32, i32, i32 }
%struct.sk_buff = type { i64 }
%struct.hci_rp_read_stored_link_key = type { i32, i32, i32 }
%struct.hci_cp_read_stored_link_key = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"%s status 0x%2.2x\00", align 1
@HCI_OP_READ_STORED_LINK_KEY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hci_dev*, %struct.sk_buff*)* @hci_cc_read_stored_link_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hci_cc_read_stored_link_key(%struct.hci_dev* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.hci_dev*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.hci_rp_read_stored_link_key*, align 8
  %6 = alloca %struct.hci_cp_read_stored_link_key*, align 8
  store %struct.hci_dev* %0, %struct.hci_dev** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %7 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %8 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = inttoptr i64 %9 to i8*
  %11 = bitcast i8* %10 to %struct.hci_rp_read_stored_link_key*
  store %struct.hci_rp_read_stored_link_key* %11, %struct.hci_rp_read_stored_link_key** %5, align 8
  %12 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %13 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.hci_rp_read_stored_link_key*, %struct.hci_rp_read_stored_link_key** %5, align 8
  %16 = getelementptr inbounds %struct.hci_rp_read_stored_link_key, %struct.hci_rp_read_stored_link_key* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @BT_DBG(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %14, i32 %17)
  %19 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %20 = load i32, i32* @HCI_OP_READ_STORED_LINK_KEY, align 4
  %21 = call %struct.hci_cp_read_stored_link_key* @hci_sent_cmd_data(%struct.hci_dev* %19, i32 %20)
  store %struct.hci_cp_read_stored_link_key* %21, %struct.hci_cp_read_stored_link_key** %6, align 8
  %22 = load %struct.hci_cp_read_stored_link_key*, %struct.hci_cp_read_stored_link_key** %6, align 8
  %23 = icmp ne %struct.hci_cp_read_stored_link_key* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %2
  br label %46

25:                                               ; preds = %2
  %26 = load %struct.hci_rp_read_stored_link_key*, %struct.hci_rp_read_stored_link_key** %5, align 8
  %27 = getelementptr inbounds %struct.hci_rp_read_stored_link_key, %struct.hci_rp_read_stored_link_key* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %46, label %30

30:                                               ; preds = %25
  %31 = load %struct.hci_cp_read_stored_link_key*, %struct.hci_cp_read_stored_link_key** %6, align 8
  %32 = getelementptr inbounds %struct.hci_cp_read_stored_link_key, %struct.hci_cp_read_stored_link_key* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp eq i32 %33, 1
  br i1 %34, label %35, label %46

35:                                               ; preds = %30
  %36 = load %struct.hci_rp_read_stored_link_key*, %struct.hci_rp_read_stored_link_key** %5, align 8
  %37 = getelementptr inbounds %struct.hci_rp_read_stored_link_key, %struct.hci_rp_read_stored_link_key* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %40 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 4
  %41 = load %struct.hci_rp_read_stored_link_key*, %struct.hci_rp_read_stored_link_key** %5, align 8
  %42 = getelementptr inbounds %struct.hci_rp_read_stored_link_key, %struct.hci_rp_read_stored_link_key* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %45 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 4
  br label %46

46:                                               ; preds = %24, %35, %30, %25
  ret void
}

declare dso_local i32 @BT_DBG(i8*, i32, i32) #1

declare dso_local %struct.hci_cp_read_stored_link_key* @hci_sent_cmd_data(%struct.hci_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
