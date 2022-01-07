; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_conn.c_create_le_conn_complete.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_conn.c_create_le_conn_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_dev = type { i32 }
%struct.hci_conn = type { i32 }

@.str = private unnamed_addr constant [55 x i8] c"request failed to create LE connection: status 0x%2.2x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hci_dev*, i32, i32)* @create_le_conn_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @create_le_conn_complete(%struct.hci_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.hci_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.hci_conn*, align 8
  store %struct.hci_dev* %0, %struct.hci_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %9 = call i32 @hci_dev_lock(%struct.hci_dev* %8)
  %10 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %11 = call %struct.hci_conn* @hci_lookup_le_connect(%struct.hci_dev* %10)
  store %struct.hci_conn* %11, %struct.hci_conn** %7, align 8
  %12 = load i32, i32* %5, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %3
  %15 = load %struct.hci_conn*, %struct.hci_conn** %7, align 8
  %16 = call i32 @hci_connect_le_scan_cleanup(%struct.hci_conn* %15)
  br label %28

17:                                               ; preds = %3
  %18 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @bt_dev_err(%struct.hci_dev* %18, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = load %struct.hci_conn*, %struct.hci_conn** %7, align 8
  %22 = icmp ne %struct.hci_conn* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %17
  br label %28

24:                                               ; preds = %17
  %25 = load %struct.hci_conn*, %struct.hci_conn** %7, align 8
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @hci_le_conn_failed(%struct.hci_conn* %25, i32 %26)
  br label %28

28:                                               ; preds = %24, %23, %14
  %29 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %30 = call i32 @hci_dev_unlock(%struct.hci_dev* %29)
  ret void
}

declare dso_local i32 @hci_dev_lock(%struct.hci_dev*) #1

declare dso_local %struct.hci_conn* @hci_lookup_le_connect(%struct.hci_dev*) #1

declare dso_local i32 @hci_connect_le_scan_cleanup(%struct.hci_conn*) #1

declare dso_local i32 @bt_dev_err(%struct.hci_dev*, i8*, i32) #1

declare dso_local i32 @hci_le_conn_failed(%struct.hci_conn*, i32) #1

declare dso_local i32 @hci_dev_unlock(%struct.hci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
