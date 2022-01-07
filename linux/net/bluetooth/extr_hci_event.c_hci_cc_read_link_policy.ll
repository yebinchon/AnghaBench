; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_event.c_hci_cc_read_link_policy.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_event.c_hci_cc_read_link_policy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_dev = type { i32 }
%struct.sk_buff = type { i64 }
%struct.hci_rp_read_link_policy = type { i32, i32, i64 }
%struct.hci_conn = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"%s status 0x%2.2x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hci_dev*, %struct.sk_buff*)* @hci_cc_read_link_policy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hci_cc_read_link_policy(%struct.hci_dev* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.hci_dev*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.hci_rp_read_link_policy*, align 8
  %6 = alloca %struct.hci_conn*, align 8
  store %struct.hci_dev* %0, %struct.hci_dev** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %7 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %8 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = inttoptr i64 %9 to i8*
  %11 = bitcast i8* %10 to %struct.hci_rp_read_link_policy*
  store %struct.hci_rp_read_link_policy* %11, %struct.hci_rp_read_link_policy** %5, align 8
  %12 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %13 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.hci_rp_read_link_policy*, %struct.hci_rp_read_link_policy** %5, align 8
  %16 = getelementptr inbounds %struct.hci_rp_read_link_policy, %struct.hci_rp_read_link_policy* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = call i32 @BT_DBG(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %14, i64 %17)
  %19 = load %struct.hci_rp_read_link_policy*, %struct.hci_rp_read_link_policy** %5, align 8
  %20 = getelementptr inbounds %struct.hci_rp_read_link_policy, %struct.hci_rp_read_link_policy* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %2
  br label %45

24:                                               ; preds = %2
  %25 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %26 = call i32 @hci_dev_lock(%struct.hci_dev* %25)
  %27 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %28 = load %struct.hci_rp_read_link_policy*, %struct.hci_rp_read_link_policy** %5, align 8
  %29 = getelementptr inbounds %struct.hci_rp_read_link_policy, %struct.hci_rp_read_link_policy* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @__le16_to_cpu(i32 %30)
  %32 = call %struct.hci_conn* @hci_conn_hash_lookup_handle(%struct.hci_dev* %27, i32 %31)
  store %struct.hci_conn* %32, %struct.hci_conn** %6, align 8
  %33 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %34 = icmp ne %struct.hci_conn* %33, null
  br i1 %34, label %35, label %42

35:                                               ; preds = %24
  %36 = load %struct.hci_rp_read_link_policy*, %struct.hci_rp_read_link_policy** %5, align 8
  %37 = getelementptr inbounds %struct.hci_rp_read_link_policy, %struct.hci_rp_read_link_policy* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @__le16_to_cpu(i32 %38)
  %40 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %41 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 4
  br label %42

42:                                               ; preds = %35, %24
  %43 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %44 = call i32 @hci_dev_unlock(%struct.hci_dev* %43)
  br label %45

45:                                               ; preds = %42, %23
  ret void
}

declare dso_local i32 @BT_DBG(i8*, i32, i64) #1

declare dso_local i32 @hci_dev_lock(%struct.hci_dev*) #1

declare dso_local %struct.hci_conn* @hci_conn_hash_lookup_handle(%struct.hci_dev*, i32) #1

declare dso_local i32 @__le16_to_cpu(i32) #1

declare dso_local i32 @hci_dev_unlock(%struct.hci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
