; ModuleID = '/home/carl/AnghaBench/linux/net/nfc/nci/extr_data.c_nci_conn_max_data_pkt_payload_size.c'
source_filename = "/home/carl/AnghaBench/linux/net/nfc/nci/extr_data.c_nci_conn_max_data_pkt_payload_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nci_dev = type { i32 }
%struct.nci_conn_info = type { i32 }

@EPROTO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nci_conn_max_data_pkt_payload_size(%struct.nci_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nci_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.nci_conn_info*, align 8
  store %struct.nci_dev* %0, %struct.nci_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.nci_dev*, %struct.nci_dev** %4, align 8
  %8 = load i32, i32* %5, align 4
  %9 = call %struct.nci_conn_info* @nci_get_conn_info_by_conn_id(%struct.nci_dev* %7, i32 %8)
  store %struct.nci_conn_info* %9, %struct.nci_conn_info** %6, align 8
  %10 = load %struct.nci_conn_info*, %struct.nci_conn_info** %6, align 8
  %11 = icmp ne %struct.nci_conn_info* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @EPROTO, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %19

15:                                               ; preds = %2
  %16 = load %struct.nci_conn_info*, %struct.nci_conn_info** %6, align 8
  %17 = getelementptr inbounds %struct.nci_conn_info, %struct.nci_conn_info* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %3, align 4
  br label %19

19:                                               ; preds = %15, %12
  %20 = load i32, i32* %3, align 4
  ret i32 %20
}

declare dso_local %struct.nci_conn_info* @nci_get_conn_info_by_conn_id(%struct.nci_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
