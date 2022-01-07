; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_event.c_hci_le_adv_report_evt.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_event.c_hci_le_adv_report_evt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_dev = type { i32 }
%struct.sk_buff = type { i32* }
%struct.hci_ev_le_advertising_info = type { i64, i32*, i32, i32, i32 }

@HCI_MAX_AD_LENGTH = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [34 x i8] c"Dropping invalid advertising data\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hci_dev*, %struct.sk_buff*)* @hci_le_adv_report_evt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hci_le_adv_report_evt(%struct.hci_dev* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.hci_dev*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.hci_ev_le_advertising_info*, align 8
  %8 = alloca i32, align 4
  store %struct.hci_dev* %0, %struct.hci_dev** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %9 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %10 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %5, align 4
  %14 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %15 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 1
  %18 = bitcast i32* %17 to i8*
  store i8* %18, i8** %6, align 8
  %19 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %20 = call i32 @hci_dev_lock(%struct.hci_dev* %19)
  br label %21

21:                                               ; preds = %62, %2
  %22 = load i32, i32* %5, align 4
  %23 = add nsw i32 %22, -1
  store i32 %23, i32* %5, align 4
  %24 = icmp ne i32 %22, 0
  br i1 %24, label %25, label %70

25:                                               ; preds = %21
  %26 = load i8*, i8** %6, align 8
  %27 = bitcast i8* %26 to %struct.hci_ev_le_advertising_info*
  store %struct.hci_ev_le_advertising_info* %27, %struct.hci_ev_le_advertising_info** %7, align 8
  %28 = load %struct.hci_ev_le_advertising_info*, %struct.hci_ev_le_advertising_info** %7, align 8
  %29 = getelementptr inbounds %struct.hci_ev_le_advertising_info, %struct.hci_ev_le_advertising_info* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @HCI_MAX_AD_LENGTH, align 8
  %32 = icmp ule i64 %30, %31
  br i1 %32, label %33, label %59

33:                                               ; preds = %25
  %34 = load %struct.hci_ev_le_advertising_info*, %struct.hci_ev_le_advertising_info** %7, align 8
  %35 = getelementptr inbounds %struct.hci_ev_le_advertising_info, %struct.hci_ev_le_advertising_info* %34, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  %37 = load %struct.hci_ev_le_advertising_info*, %struct.hci_ev_le_advertising_info** %7, align 8
  %38 = getelementptr inbounds %struct.hci_ev_le_advertising_info, %struct.hci_ev_le_advertising_info* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = getelementptr inbounds i32, i32* %36, i64 %39
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %8, align 4
  %42 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %43 = load %struct.hci_ev_le_advertising_info*, %struct.hci_ev_le_advertising_info** %7, align 8
  %44 = getelementptr inbounds %struct.hci_ev_le_advertising_info, %struct.hci_ev_le_advertising_info* %43, i32 0, i32 4
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.hci_ev_le_advertising_info*, %struct.hci_ev_le_advertising_info** %7, align 8
  %47 = getelementptr inbounds %struct.hci_ev_le_advertising_info, %struct.hci_ev_le_advertising_info* %46, i32 0, i32 3
  %48 = load %struct.hci_ev_le_advertising_info*, %struct.hci_ev_le_advertising_info** %7, align 8
  %49 = getelementptr inbounds %struct.hci_ev_le_advertising_info, %struct.hci_ev_le_advertising_info* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* %8, align 4
  %52 = load %struct.hci_ev_le_advertising_info*, %struct.hci_ev_le_advertising_info** %7, align 8
  %53 = getelementptr inbounds %struct.hci_ev_le_advertising_info, %struct.hci_ev_le_advertising_info* %52, i32 0, i32 1
  %54 = load i32*, i32** %53, align 8
  %55 = load %struct.hci_ev_le_advertising_info*, %struct.hci_ev_le_advertising_info** %7, align 8
  %56 = getelementptr inbounds %struct.hci_ev_le_advertising_info, %struct.hci_ev_le_advertising_info* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = call i32 @process_adv_report(%struct.hci_dev* %42, i32 %45, i32* %47, i32 %50, i32* null, i32 0, i32 %51, i32* %54, i64 %57)
  br label %62

59:                                               ; preds = %25
  %60 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %61 = call i32 @bt_dev_err(%struct.hci_dev* %60, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %62

62:                                               ; preds = %59, %33
  %63 = load %struct.hci_ev_le_advertising_info*, %struct.hci_ev_le_advertising_info** %7, align 8
  %64 = getelementptr inbounds %struct.hci_ev_le_advertising_info, %struct.hci_ev_le_advertising_info* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = add i64 32, %65
  %67 = add i64 %66, 1
  %68 = load i8*, i8** %6, align 8
  %69 = getelementptr i8, i8* %68, i64 %67
  store i8* %69, i8** %6, align 8
  br label %21

70:                                               ; preds = %21
  %71 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %72 = call i32 @hci_dev_unlock(%struct.hci_dev* %71)
  ret void
}

declare dso_local i32 @hci_dev_lock(%struct.hci_dev*) #1

declare dso_local i32 @process_adv_report(%struct.hci_dev*, i32, i32*, i32, i32*, i32, i32, i32*, i64) #1

declare dso_local i32 @bt_dev_err(%struct.hci_dev*, i8*) #1

declare dso_local i32 @hci_dev_unlock(%struct.hci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
