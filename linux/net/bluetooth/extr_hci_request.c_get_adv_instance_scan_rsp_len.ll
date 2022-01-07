; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_request.c_get_adv_instance_scan_rsp_len.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_request.c_get_adv_instance_scan_rsp_len.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_dev = type { i32 }
%struct.adv_info = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hci_dev*, i32)* @get_adv_instance_scan_rsp_len to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_adv_instance_scan_rsp_len(%struct.hci_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hci_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.adv_info*, align 8
  store %struct.hci_dev* %0, %struct.hci_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  store i32 0, i32* %3, align 4
  br label %21

10:                                               ; preds = %2
  %11 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %12 = load i32, i32* %5, align 4
  %13 = call %struct.adv_info* @hci_find_adv_instance(%struct.hci_dev* %11, i32 %12)
  store %struct.adv_info* %13, %struct.adv_info** %6, align 8
  %14 = load %struct.adv_info*, %struct.adv_info** %6, align 8
  %15 = icmp ne %struct.adv_info* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %10
  store i32 0, i32* %3, align 4
  br label %21

17:                                               ; preds = %10
  %18 = load %struct.adv_info*, %struct.adv_info** %6, align 8
  %19 = getelementptr inbounds %struct.adv_info, %struct.adv_info* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %3, align 4
  br label %21

21:                                               ; preds = %17, %16, %9
  %22 = load i32, i32* %3, align 4
  ret i32 %22
}

declare dso_local %struct.adv_info* @hci_find_adv_instance(%struct.hci_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
