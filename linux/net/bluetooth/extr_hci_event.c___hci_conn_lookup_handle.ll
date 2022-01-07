; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_event.c___hci_conn_lookup_handle.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_event.c___hci_conn_lookup_handle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_conn = type { i32 }
%struct.hci_dev = type { i32 }
%struct.hci_chan = type { %struct.hci_conn* }

@.str = private unnamed_addr constant [20 x i8] c"unknown dev_type %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.hci_conn* (%struct.hci_dev*, i32)* @__hci_conn_lookup_handle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.hci_conn* @__hci_conn_lookup_handle(%struct.hci_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.hci_conn*, align 8
  %4 = alloca %struct.hci_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.hci_chan*, align 8
  store %struct.hci_dev* %0, %struct.hci_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %8 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  switch i32 %9, label %25 [
    i32 128, label %10
    i32 129, label %14
  ]

10:                                               ; preds = %2
  %11 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %12 = load i32, i32* %5, align 4
  %13 = call %struct.hci_conn* @hci_conn_hash_lookup_handle(%struct.hci_dev* %11, i32 %12)
  store %struct.hci_conn* %13, %struct.hci_conn** %3, align 8
  br label %32

14:                                               ; preds = %2
  %15 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %16 = load i32, i32* %5, align 4
  %17 = call %struct.hci_chan* @hci_chan_lookup_handle(%struct.hci_dev* %15, i32 %16)
  store %struct.hci_chan* %17, %struct.hci_chan** %6, align 8
  %18 = load %struct.hci_chan*, %struct.hci_chan** %6, align 8
  %19 = icmp ne %struct.hci_chan* %18, null
  br i1 %19, label %20, label %24

20:                                               ; preds = %14
  %21 = load %struct.hci_chan*, %struct.hci_chan** %6, align 8
  %22 = getelementptr inbounds %struct.hci_chan, %struct.hci_chan* %21, i32 0, i32 0
  %23 = load %struct.hci_conn*, %struct.hci_conn** %22, align 8
  store %struct.hci_conn* %23, %struct.hci_conn** %3, align 8
  br label %32

24:                                               ; preds = %14
  br label %31

25:                                               ; preds = %2
  %26 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %27 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %28 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @bt_dev_err(%struct.hci_dev* %26, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %29)
  br label %31

31:                                               ; preds = %25, %24
  store %struct.hci_conn* null, %struct.hci_conn** %3, align 8
  br label %32

32:                                               ; preds = %31, %20, %10
  %33 = load %struct.hci_conn*, %struct.hci_conn** %3, align 8
  ret %struct.hci_conn* %33
}

declare dso_local %struct.hci_conn* @hci_conn_hash_lookup_handle(%struct.hci_dev*, i32) #1

declare dso_local %struct.hci_chan* @hci_chan_lookup_handle(%struct.hci_dev*, i32) #1

declare dso_local i32 @bt_dev_err(%struct.hci_dev*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
