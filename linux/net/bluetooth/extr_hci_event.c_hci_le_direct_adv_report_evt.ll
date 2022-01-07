; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_event.c_hci_le_direct_adv_report_evt.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_event.c_hci_le_direct_adv_report_evt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_dev = type { i32 }
%struct.sk_buff = type { i32* }
%struct.hci_ev_le_direct_adv_info = type { i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hci_dev*, %struct.sk_buff*)* @hci_le_direct_adv_report_evt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hci_le_direct_adv_report_evt(%struct.hci_dev* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.hci_dev*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.hci_ev_le_direct_adv_info*, align 8
  store %struct.hci_dev* %0, %struct.hci_dev** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %8 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %9 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  %11 = getelementptr inbounds i32, i32* %10, i64 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %5, align 4
  %13 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %14 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 1
  %17 = bitcast i32* %16 to i8*
  store i8* %17, i8** %6, align 8
  %18 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %19 = call i32 @hci_dev_lock(%struct.hci_dev* %18)
  br label %20

20:                                               ; preds = %24, %2
  %21 = load i32, i32* %5, align 4
  %22 = add nsw i32 %21, -1
  store i32 %22, i32* %5, align 4
  %23 = icmp ne i32 %21, 0
  br i1 %23, label %24, label %47

24:                                               ; preds = %20
  %25 = load i8*, i8** %6, align 8
  %26 = bitcast i8* %25 to %struct.hci_ev_le_direct_adv_info*
  store %struct.hci_ev_le_direct_adv_info* %26, %struct.hci_ev_le_direct_adv_info** %7, align 8
  %27 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %28 = load %struct.hci_ev_le_direct_adv_info*, %struct.hci_ev_le_direct_adv_info** %7, align 8
  %29 = getelementptr inbounds %struct.hci_ev_le_direct_adv_info, %struct.hci_ev_le_direct_adv_info* %28, i32 0, i32 5
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.hci_ev_le_direct_adv_info*, %struct.hci_ev_le_direct_adv_info** %7, align 8
  %32 = getelementptr inbounds %struct.hci_ev_le_direct_adv_info, %struct.hci_ev_le_direct_adv_info* %31, i32 0, i32 4
  %33 = load %struct.hci_ev_le_direct_adv_info*, %struct.hci_ev_le_direct_adv_info** %7, align 8
  %34 = getelementptr inbounds %struct.hci_ev_le_direct_adv_info, %struct.hci_ev_le_direct_adv_info* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.hci_ev_le_direct_adv_info*, %struct.hci_ev_le_direct_adv_info** %7, align 8
  %37 = getelementptr inbounds %struct.hci_ev_le_direct_adv_info, %struct.hci_ev_le_direct_adv_info* %36, i32 0, i32 2
  %38 = load %struct.hci_ev_le_direct_adv_info*, %struct.hci_ev_le_direct_adv_info** %7, align 8
  %39 = getelementptr inbounds %struct.hci_ev_le_direct_adv_info, %struct.hci_ev_le_direct_adv_info* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.hci_ev_le_direct_adv_info*, %struct.hci_ev_le_direct_adv_info** %7, align 8
  %42 = getelementptr inbounds %struct.hci_ev_le_direct_adv_info, %struct.hci_ev_le_direct_adv_info* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @process_adv_report(%struct.hci_dev* %27, i32 %30, i32* %32, i32 %35, i32* %37, i32 %40, i32 %43, i32* null, i32 0)
  %45 = load i8*, i8** %6, align 8
  %46 = getelementptr i8, i8* %45, i64 24
  store i8* %46, i8** %6, align 8
  br label %20

47:                                               ; preds = %20
  %48 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %49 = call i32 @hci_dev_unlock(%struct.hci_dev* %48)
  ret void
}

declare dso_local i32 @hci_dev_lock(%struct.hci_dev*) #1

declare dso_local i32 @process_adv_report(%struct.hci_dev*, i32, i32*, i32, i32*, i32, i32, i32*, i32) #1

declare dso_local i32 @hci_dev_unlock(%struct.hci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
