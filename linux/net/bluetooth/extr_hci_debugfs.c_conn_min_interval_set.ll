; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_debugfs.c_conn_min_interval_set.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_debugfs.c_conn_min_interval_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_dev = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32)* @conn_min_interval_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @conn_min_interval_set(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.hci_dev*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.hci_dev*
  store %struct.hci_dev* %8, %struct.hci_dev** %6, align 8
  %9 = load i32, i32* %5, align 4
  %10 = icmp slt i32 %9, 6
  br i1 %10, label %20, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* %5, align 4
  %13 = icmp sgt i32 %12, 3200
  br i1 %13, label %20, label %14

14:                                               ; preds = %11
  %15 = load i32, i32* %5, align 4
  %16 = load %struct.hci_dev*, %struct.hci_dev** %6, align 8
  %17 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp sgt i32 %15, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %14, %11, %2
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %31

23:                                               ; preds = %14
  %24 = load %struct.hci_dev*, %struct.hci_dev** %6, align 8
  %25 = call i32 @hci_dev_lock(%struct.hci_dev* %24)
  %26 = load i32, i32* %5, align 4
  %27 = load %struct.hci_dev*, %struct.hci_dev** %6, align 8
  %28 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 4
  %29 = load %struct.hci_dev*, %struct.hci_dev** %6, align 8
  %30 = call i32 @hci_dev_unlock(%struct.hci_dev* %29)
  store i32 0, i32* %3, align 4
  br label %31

31:                                               ; preds = %23, %20
  %32 = load i32, i32* %3, align 4
  ret i32 %32
}

declare dso_local i32 @hci_dev_lock(%struct.hci_dev*) #1

declare dso_local i32 @hci_dev_unlock(%struct.hci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
