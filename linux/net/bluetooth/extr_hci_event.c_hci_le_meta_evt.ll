; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_event.c_hci_le_meta_evt.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_event.c_hci_le_meta_evt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_dev = type { i32 }
%struct.sk_buff = type { i64 }
%struct.hci_ev_le_meta = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hci_dev*, %struct.sk_buff*)* @hci_le_meta_evt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hci_le_meta_evt(%struct.hci_dev* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.hci_dev*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.hci_ev_le_meta*, align 8
  store %struct.hci_dev* %0, %struct.hci_dev** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %6 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %7 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = inttoptr i64 %8 to i8*
  %10 = bitcast i8* %9 to %struct.hci_ev_le_meta*
  store %struct.hci_ev_le_meta* %10, %struct.hci_ev_le_meta** %5, align 8
  %11 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %12 = call i32 @skb_pull(%struct.sk_buff* %11, i32 4)
  %13 = load %struct.hci_ev_le_meta*, %struct.hci_ev_le_meta** %5, align 8
  %14 = getelementptr inbounds %struct.hci_ev_le_meta, %struct.hci_ev_le_meta* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  switch i32 %15, label %56 [
    i32 136, label %16
    i32 135, label %20
    i32 137, label %24
    i32 128, label %28
    i32 130, label %32
    i32 129, label %36
    i32 134, label %40
    i32 132, label %44
    i32 133, label %48
    i32 131, label %52
  ]

16:                                               ; preds = %2
  %17 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %18 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %19 = call i32 @hci_le_conn_complete_evt(%struct.hci_dev* %17, %struct.sk_buff* %18)
  br label %57

20:                                               ; preds = %2
  %21 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %22 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %23 = call i32 @hci_le_conn_update_complete_evt(%struct.hci_dev* %21, %struct.sk_buff* %22)
  br label %57

24:                                               ; preds = %2
  %25 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %26 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %27 = call i32 @hci_le_adv_report_evt(%struct.hci_dev* %25, %struct.sk_buff* %26)
  br label %57

28:                                               ; preds = %2
  %29 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %30 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %31 = call i32 @hci_le_remote_feat_complete_evt(%struct.hci_dev* %29, %struct.sk_buff* %30)
  br label %57

32:                                               ; preds = %2
  %33 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %34 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %35 = call i32 @hci_le_ltk_request_evt(%struct.hci_dev* %33, %struct.sk_buff* %34)
  br label %57

36:                                               ; preds = %2
  %37 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %38 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %39 = call i32 @hci_le_remote_conn_param_req_evt(%struct.hci_dev* %37, %struct.sk_buff* %38)
  br label %57

40:                                               ; preds = %2
  %41 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %42 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %43 = call i32 @hci_le_direct_adv_report_evt(%struct.hci_dev* %41, %struct.sk_buff* %42)
  br label %57

44:                                               ; preds = %2
  %45 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %46 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %47 = call i32 @hci_le_ext_adv_report_evt(%struct.hci_dev* %45, %struct.sk_buff* %46)
  br label %57

48:                                               ; preds = %2
  %49 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %50 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %51 = call i32 @hci_le_enh_conn_complete_evt(%struct.hci_dev* %49, %struct.sk_buff* %50)
  br label %57

52:                                               ; preds = %2
  %53 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %54 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %55 = call i32 @hci_le_ext_adv_term_evt(%struct.hci_dev* %53, %struct.sk_buff* %54)
  br label %57

56:                                               ; preds = %2
  br label %57

57:                                               ; preds = %56, %52, %48, %44, %40, %36, %32, %28, %24, %20, %16
  ret void
}

declare dso_local i32 @skb_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @hci_le_conn_complete_evt(%struct.hci_dev*, %struct.sk_buff*) #1

declare dso_local i32 @hci_le_conn_update_complete_evt(%struct.hci_dev*, %struct.sk_buff*) #1

declare dso_local i32 @hci_le_adv_report_evt(%struct.hci_dev*, %struct.sk_buff*) #1

declare dso_local i32 @hci_le_remote_feat_complete_evt(%struct.hci_dev*, %struct.sk_buff*) #1

declare dso_local i32 @hci_le_ltk_request_evt(%struct.hci_dev*, %struct.sk_buff*) #1

declare dso_local i32 @hci_le_remote_conn_param_req_evt(%struct.hci_dev*, %struct.sk_buff*) #1

declare dso_local i32 @hci_le_direct_adv_report_evt(%struct.hci_dev*, %struct.sk_buff*) #1

declare dso_local i32 @hci_le_ext_adv_report_evt(%struct.hci_dev*, %struct.sk_buff*) #1

declare dso_local i32 @hci_le_enh_conn_complete_evt(%struct.hci_dev*, %struct.sk_buff*) #1

declare dso_local i32 @hci_le_ext_adv_term_evt(%struct.hci_dev*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
