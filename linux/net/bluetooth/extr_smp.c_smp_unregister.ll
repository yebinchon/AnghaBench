; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_smp.c_smp_unregister.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_smp.c_smp_unregister.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_dev = type { %struct.l2cap_chan*, %struct.l2cap_chan* }
%struct.l2cap_chan = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @smp_unregister(%struct.hci_dev* %0) #0 {
  %2 = alloca %struct.hci_dev*, align 8
  %3 = alloca %struct.l2cap_chan*, align 8
  store %struct.hci_dev* %0, %struct.hci_dev** %2, align 8
  %4 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %5 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %4, i32 0, i32 1
  %6 = load %struct.l2cap_chan*, %struct.l2cap_chan** %5, align 8
  %7 = icmp ne %struct.l2cap_chan* %6, null
  br i1 %7, label %8, label %16

8:                                                ; preds = %1
  %9 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %10 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %9, i32 0, i32 1
  %11 = load %struct.l2cap_chan*, %struct.l2cap_chan** %10, align 8
  store %struct.l2cap_chan* %11, %struct.l2cap_chan** %3, align 8
  %12 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %13 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %12, i32 0, i32 1
  store %struct.l2cap_chan* null, %struct.l2cap_chan** %13, align 8
  %14 = load %struct.l2cap_chan*, %struct.l2cap_chan** %3, align 8
  %15 = call i32 @smp_del_chan(%struct.l2cap_chan* %14)
  br label %16

16:                                               ; preds = %8, %1
  %17 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %18 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %17, i32 0, i32 0
  %19 = load %struct.l2cap_chan*, %struct.l2cap_chan** %18, align 8
  %20 = icmp ne %struct.l2cap_chan* %19, null
  br i1 %20, label %21, label %29

21:                                               ; preds = %16
  %22 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %23 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %22, i32 0, i32 0
  %24 = load %struct.l2cap_chan*, %struct.l2cap_chan** %23, align 8
  store %struct.l2cap_chan* %24, %struct.l2cap_chan** %3, align 8
  %25 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %26 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %25, i32 0, i32 0
  store %struct.l2cap_chan* null, %struct.l2cap_chan** %26, align 8
  %27 = load %struct.l2cap_chan*, %struct.l2cap_chan** %3, align 8
  %28 = call i32 @smp_del_chan(%struct.l2cap_chan* %27)
  br label %29

29:                                               ; preds = %21, %16
  ret void
}

declare dso_local i32 @smp_del_chan(%struct.l2cap_chan*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
