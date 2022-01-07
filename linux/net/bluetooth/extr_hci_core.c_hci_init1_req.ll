; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_core.c_hci_init1_req.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_core.c_hci_init1_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_request = type { %struct.hci_dev* }
%struct.hci_dev = type { i32, i32, i32 }

@.str = private unnamed_addr constant [7 x i8] c"%s %ld\00", align 1
@HCI_QUIRK_RESET_ON_CLOSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"Unknown device type %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hci_request*, i64)* @hci_init1_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hci_init1_req(%struct.hci_request* %0, i64 %1) #0 {
  %3 = alloca %struct.hci_request*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.hci_dev*, align 8
  store %struct.hci_request* %0, %struct.hci_request** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load %struct.hci_request*, %struct.hci_request** %3, align 8
  %7 = getelementptr inbounds %struct.hci_request, %struct.hci_request* %6, i32 0, i32 0
  %8 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  store %struct.hci_dev* %8, %struct.hci_dev** %5, align 8
  %9 = load %struct.hci_dev*, %struct.hci_dev** %5, align 8
  %10 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = load i64, i64* %4, align 8
  %13 = call i32 @BT_DBG(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %11, i64 %12)
  %14 = load i32, i32* @HCI_QUIRK_RESET_ON_CLOSE, align 4
  %15 = load %struct.hci_dev*, %struct.hci_dev** %5, align 8
  %16 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %15, i32 0, i32 1
  %17 = call i32 @test_bit(i32 %14, i32* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %2
  %20 = load %struct.hci_request*, %struct.hci_request** %3, align 8
  %21 = call i32 @hci_reset_req(%struct.hci_request* %20, i32 0)
  br label %22

22:                                               ; preds = %19, %2
  %23 = load %struct.hci_dev*, %struct.hci_dev** %5, align 8
  %24 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  switch i32 %25, label %32 [
    i32 128, label %26
    i32 129, label %29
  ]

26:                                               ; preds = %22
  %27 = load %struct.hci_request*, %struct.hci_request** %3, align 8
  %28 = call i32 @bredr_init(%struct.hci_request* %27)
  br label %38

29:                                               ; preds = %22
  %30 = load %struct.hci_request*, %struct.hci_request** %3, align 8
  %31 = call i32 @amp_init1(%struct.hci_request* %30)
  br label %38

32:                                               ; preds = %22
  %33 = load %struct.hci_dev*, %struct.hci_dev** %5, align 8
  %34 = load %struct.hci_dev*, %struct.hci_dev** %5, align 8
  %35 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @bt_dev_err(%struct.hci_dev* %33, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %36)
  br label %38

38:                                               ; preds = %32, %29, %26
  ret i32 0
}

declare dso_local i32 @BT_DBG(i8*, i32, i64) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @hci_reset_req(%struct.hci_request*, i32) #1

declare dso_local i32 @bredr_init(%struct.hci_request*) #1

declare dso_local i32 @amp_init1(%struct.hci_request*) #1

declare dso_local i32 @bt_dev_err(%struct.hci_dev*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
