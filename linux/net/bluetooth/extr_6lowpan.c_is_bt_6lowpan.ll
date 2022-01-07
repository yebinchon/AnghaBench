; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_6lowpan.c_is_bt_6lowpan.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_6lowpan.c_is_bt_6lowpan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_conn = type { i64 }

@LE_LINK = common dso_local global i64 0, align 8
@enable_6lowpan = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hci_conn*)* @is_bt_6lowpan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_bt_6lowpan(%struct.hci_conn* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hci_conn*, align 8
  store %struct.hci_conn* %0, %struct.hci_conn** %3, align 8
  %4 = load %struct.hci_conn*, %struct.hci_conn** %3, align 8
  %5 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @LE_LINK, align 8
  %8 = icmp ne i64 %6, %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %15

10:                                               ; preds = %1
  %11 = load i32, i32* @enable_6lowpan, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %10
  store i32 0, i32* %2, align 4
  br label %15

14:                                               ; preds = %10
  store i32 1, i32* %2, align 4
  br label %15

15:                                               ; preds = %14, %13, %9
  %16 = load i32, i32* %2, align 4
  ret i32 %16
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
