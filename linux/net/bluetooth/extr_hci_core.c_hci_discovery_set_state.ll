; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_core.c_hci_discovery_set_state.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_core.c_hci_discovery_set_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_dev = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"%s state %u -> %u\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hci_discovery_set_state(%struct.hci_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.hci_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.hci_dev* %0, %struct.hci_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %7 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  store i32 %9, i32* %5, align 4
  %10 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %11 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %14 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @BT_DBG(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %12, i32 %16, i32 %17)
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* %4, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %2
  br label %44

23:                                               ; preds = %2
  %24 = load i32, i32* %4, align 4
  %25 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %26 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  store i32 %24, i32* %27, align 4
  %28 = load i32, i32* %4, align 4
  switch i32 %28, label %44 [
    i32 129, label %29
    i32 130, label %38
    i32 132, label %39
    i32 131, label %42
    i32 128, label %43
  ]

29:                                               ; preds = %23
  %30 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %31 = call i32 @hci_update_background_scan(%struct.hci_dev* %30)
  %32 = load i32, i32* %5, align 4
  %33 = icmp ne i32 %32, 130
  br i1 %33, label %34, label %37

34:                                               ; preds = %29
  %35 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %36 = call i32 @mgmt_discovering(%struct.hci_dev* %35, i32 0)
  br label %37

37:                                               ; preds = %34, %29
  br label %44

38:                                               ; preds = %23
  br label %44

39:                                               ; preds = %23
  %40 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %41 = call i32 @mgmt_discovering(%struct.hci_dev* %40, i32 1)
  br label %44

42:                                               ; preds = %23
  br label %44

43:                                               ; preds = %23
  br label %44

44:                                               ; preds = %22, %23, %43, %42, %39, %38, %37
  ret void
}

declare dso_local i32 @BT_DBG(i8*, i32, i32, i32) #1

declare dso_local i32 @hci_update_background_scan(%struct.hci_dev*) #1

declare dso_local i32 @mgmt_discovering(%struct.hci_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
