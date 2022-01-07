; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_l2cap_core.c_l2cap_logical_cfm.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_l2cap_core.c_l2cap_logical_cfm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.l2cap_chan = type { i64, i64 }
%struct.hci_chan = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"chan %p, hchan %p, status %d\00", align 1
@BT_CONNECTED = common dso_local global i64 0, align 8
@AMP_ID_BREDR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @l2cap_logical_cfm(%struct.l2cap_chan* %0, %struct.hci_chan* %1, i64 %2) #0 {
  %4 = alloca %struct.l2cap_chan*, align 8
  %5 = alloca %struct.hci_chan*, align 8
  %6 = alloca i64, align 8
  store %struct.l2cap_chan* %0, %struct.l2cap_chan** %4, align 8
  store %struct.hci_chan* %1, %struct.hci_chan** %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load %struct.l2cap_chan*, %struct.l2cap_chan** %4, align 8
  %8 = load %struct.hci_chan*, %struct.hci_chan** %5, align 8
  %9 = load i64, i64* %6, align 8
  %10 = call i32 @BT_DBG(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), %struct.l2cap_chan* %7, %struct.hci_chan* %8, i64 %9)
  %11 = load i64, i64* %6, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %3
  %14 = load %struct.l2cap_chan*, %struct.l2cap_chan** %4, align 8
  %15 = call i32 @l2cap_logical_fail(%struct.l2cap_chan* %14)
  %16 = load %struct.l2cap_chan*, %struct.l2cap_chan** %4, align 8
  %17 = call i32 @__release_logical_link(%struct.l2cap_chan* %16)
  br label %39

18:                                               ; preds = %3
  %19 = load %struct.l2cap_chan*, %struct.l2cap_chan** %4, align 8
  %20 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @BT_CONNECTED, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %35

24:                                               ; preds = %18
  %25 = load %struct.l2cap_chan*, %struct.l2cap_chan** %4, align 8
  %26 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @AMP_ID_BREDR, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %24
  %31 = load %struct.l2cap_chan*, %struct.l2cap_chan** %4, align 8
  %32 = load %struct.hci_chan*, %struct.hci_chan** %5, align 8
  %33 = call i32 @l2cap_logical_finish_create(%struct.l2cap_chan* %31, %struct.hci_chan* %32)
  br label %34

34:                                               ; preds = %30, %24
  br label %39

35:                                               ; preds = %18
  %36 = load %struct.l2cap_chan*, %struct.l2cap_chan** %4, align 8
  %37 = load %struct.hci_chan*, %struct.hci_chan** %5, align 8
  %38 = call i32 @l2cap_logical_finish_move(%struct.l2cap_chan* %36, %struct.hci_chan* %37)
  br label %39

39:                                               ; preds = %13, %35, %34
  ret void
}

declare dso_local i32 @BT_DBG(i8*, %struct.l2cap_chan*, %struct.hci_chan*, i64) #1

declare dso_local i32 @l2cap_logical_fail(%struct.l2cap_chan*) #1

declare dso_local i32 @__release_logical_link(%struct.l2cap_chan*) #1

declare dso_local i32 @l2cap_logical_finish_create(%struct.l2cap_chan*, %struct.hci_chan*) #1

declare dso_local i32 @l2cap_logical_finish_move(%struct.l2cap_chan*, %struct.hci_chan*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
