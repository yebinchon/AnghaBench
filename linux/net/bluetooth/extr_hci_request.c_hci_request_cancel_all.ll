; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_request.c_hci_request_cancel_all.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_request.c_hci_request_cancel_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_dev = type { i64, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@ENODEV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hci_request_cancel_all(%struct.hci_dev* %0) #0 {
  %2 = alloca %struct.hci_dev*, align 8
  store %struct.hci_dev* %0, %struct.hci_dev** %2, align 8
  %3 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %4 = load i32, i32* @ENODEV, align 4
  %5 = call i32 @hci_req_sync_cancel(%struct.hci_dev* %3, i32 %4)
  %6 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %7 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %6, i32 0, i32 9
  %8 = call i32 @cancel_work_sync(i32* %7)
  %9 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %10 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %9, i32 0, i32 8
  %11 = call i32 @cancel_work_sync(i32* %10)
  %12 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %13 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %12, i32 0, i32 7
  %14 = call i32 @cancel_work_sync(i32* %13)
  %15 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %16 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %15, i32 0, i32 6
  %17 = call i32 @cancel_work_sync(i32* %16)
  %18 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %19 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %18, i32 0, i32 5
  %20 = call i32 @cancel_work_sync(i32* %19)
  %21 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %22 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %21, i32 0, i32 4
  %23 = call i32 @cancel_delayed_work_sync(i32* %22)
  %24 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %25 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %24, i32 0, i32 3
  %26 = call i32 @cancel_delayed_work_sync(i32* %25)
  %27 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %28 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %27, i32 0, i32 2
  %29 = call i32 @cancel_delayed_work_sync(i32* %28)
  %30 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %31 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %1
  %35 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %36 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %35, i32 0, i32 1
  %37 = call i32 @cancel_delayed_work_sync(i32* %36)
  %38 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %39 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %38, i32 0, i32 0
  store i64 0, i64* %39, align 8
  br label %40

40:                                               ; preds = %34, %1
  ret void
}

declare dso_local i32 @hci_req_sync_cancel(%struct.hci_dev*, i32) #1

declare dso_local i32 @cancel_work_sync(i32*) #1

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
