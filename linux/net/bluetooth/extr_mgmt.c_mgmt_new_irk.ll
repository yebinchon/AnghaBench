; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_mgmt.c_mgmt_new_irk.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_mgmt.c_mgmt_new_irk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_dev = type { i32 }
%struct.smp_irk = type { i32, i32, i32, i32 }
%struct.mgmt_ev_new_irk = type { i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

@LE_LINK = common dso_local global i32 0, align 4
@MGMT_EV_NEW_IRK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mgmt_new_irk(%struct.hci_dev* %0, %struct.smp_irk* %1, i32 %2) #0 {
  %4 = alloca %struct.hci_dev*, align 8
  %5 = alloca %struct.smp_irk*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.mgmt_ev_new_irk, align 4
  store %struct.hci_dev* %0, %struct.hci_dev** %4, align 8
  store %struct.smp_irk* %1, %struct.smp_irk** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = call i32 @memset(%struct.mgmt_ev_new_irk* %7, i32 0, i32 20)
  %9 = load i32, i32* %6, align 4
  %10 = getelementptr inbounds %struct.mgmt_ev_new_irk, %struct.mgmt_ev_new_irk* %7, i32 0, i32 0
  store i32 %9, i32* %10, align 4
  %11 = getelementptr inbounds %struct.mgmt_ev_new_irk, %struct.mgmt_ev_new_irk* %7, i32 0, i32 2
  %12 = load %struct.smp_irk*, %struct.smp_irk** %5, align 8
  %13 = getelementptr inbounds %struct.smp_irk, %struct.smp_irk* %12, i32 0, i32 3
  %14 = call i32 @bacpy(i32* %11, i32* %13)
  %15 = getelementptr inbounds %struct.mgmt_ev_new_irk, %struct.mgmt_ev_new_irk* %7, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 1
  %18 = load %struct.smp_irk*, %struct.smp_irk** %5, align 8
  %19 = getelementptr inbounds %struct.smp_irk, %struct.smp_irk* %18, i32 0, i32 2
  %20 = call i32 @bacpy(i32* %17, i32* %19)
  %21 = load i32, i32* @LE_LINK, align 4
  %22 = load %struct.smp_irk*, %struct.smp_irk** %5, align 8
  %23 = getelementptr inbounds %struct.smp_irk, %struct.smp_irk* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @link_to_bdaddr(i32 %21, i32 %24)
  %26 = getelementptr inbounds %struct.mgmt_ev_new_irk, %struct.mgmt_ev_new_irk* %7, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  store i32 %25, i32* %28, align 4
  %29 = getelementptr inbounds %struct.mgmt_ev_new_irk, %struct.mgmt_ev_new_irk* %7, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.smp_irk*, %struct.smp_irk** %5, align 8
  %33 = getelementptr inbounds %struct.smp_irk, %struct.smp_irk* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @memcpy(i32 %31, i32 %34, i32 4)
  %36 = load i32, i32* @MGMT_EV_NEW_IRK, align 4
  %37 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %38 = call i32 @mgmt_event(i32 %36, %struct.hci_dev* %37, %struct.mgmt_ev_new_irk* %7, i32 20, i32* null)
  ret void
}

declare dso_local i32 @memset(%struct.mgmt_ev_new_irk*, i32, i32) #1

declare dso_local i32 @bacpy(i32*, i32*) #1

declare dso_local i32 @link_to_bdaddr(i32, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @mgmt_event(i32, %struct.hci_dev*, %struct.mgmt_ev_new_irk*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
