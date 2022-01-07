; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_mgmt.c_mgmt_new_csrk.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_mgmt.c_mgmt_new_csrk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_dev = type { i32 }
%struct.smp_csrk = type { i64, i32, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32* }
%struct.mgmt_ev_new_csrk = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }

@ADDR_LE_DEV_RANDOM = common dso_local global i64 0, align 8
@LE_LINK = common dso_local global i32 0, align 4
@MGMT_EV_NEW_CSRK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mgmt_new_csrk(%struct.hci_dev* %0, %struct.smp_csrk* %1, i32 %2) #0 {
  %4 = alloca %struct.hci_dev*, align 8
  %5 = alloca %struct.smp_csrk*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.mgmt_ev_new_csrk, align 4
  store %struct.hci_dev* %0, %struct.hci_dev** %4, align 8
  store %struct.smp_csrk* %1, %struct.smp_csrk** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = call i32 @memset(%struct.mgmt_ev_new_csrk* %7, i32 0, i32 20)
  %9 = load %struct.smp_csrk*, %struct.smp_csrk** %5, align 8
  %10 = getelementptr inbounds %struct.smp_csrk, %struct.smp_csrk* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @ADDR_LE_DEV_RANDOM, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %25

14:                                               ; preds = %3
  %15 = load %struct.smp_csrk*, %struct.smp_csrk** %5, align 8
  %16 = getelementptr inbounds %struct.smp_csrk, %struct.smp_csrk* %15, i32 0, i32 3
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 5
  %20 = load i32, i32* %19, align 4
  %21 = and i32 %20, 192
  %22 = icmp ne i32 %21, 192
  br i1 %22, label %23, label %25

23:                                               ; preds = %14
  %24 = getelementptr inbounds %struct.mgmt_ev_new_csrk, %struct.mgmt_ev_new_csrk* %7, i32 0, i32 0
  store i32 0, i32* %24, align 4
  br label %28

25:                                               ; preds = %14, %3
  %26 = load i32, i32* %6, align 4
  %27 = getelementptr inbounds %struct.mgmt_ev_new_csrk, %struct.mgmt_ev_new_csrk* %7, i32 0, i32 0
  store i32 %26, i32* %27, align 4
  br label %28

28:                                               ; preds = %25, %23
  %29 = getelementptr inbounds %struct.mgmt_ev_new_csrk, %struct.mgmt_ev_new_csrk* %7, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 1
  %32 = load %struct.smp_csrk*, %struct.smp_csrk** %5, align 8
  %33 = getelementptr inbounds %struct.smp_csrk, %struct.smp_csrk* %32, i32 0, i32 3
  %34 = call i32 @bacpy(i32* %31, %struct.TYPE_6__* %33)
  %35 = load i32, i32* @LE_LINK, align 4
  %36 = load %struct.smp_csrk*, %struct.smp_csrk** %5, align 8
  %37 = getelementptr inbounds %struct.smp_csrk, %struct.smp_csrk* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = call i32 @link_to_bdaddr(i32 %35, i64 %38)
  %40 = getelementptr inbounds %struct.mgmt_ev_new_csrk, %struct.mgmt_ev_new_csrk* %7, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  store i32 %39, i32* %42, align 4
  %43 = load %struct.smp_csrk*, %struct.smp_csrk** %5, align 8
  %44 = getelementptr inbounds %struct.smp_csrk, %struct.smp_csrk* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = getelementptr inbounds %struct.mgmt_ev_new_csrk, %struct.mgmt_ev_new_csrk* %7, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 1
  store i32 %45, i32* %47, align 4
  %48 = getelementptr inbounds %struct.mgmt_ev_new_csrk, %struct.mgmt_ev_new_csrk* %7, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.smp_csrk*, %struct.smp_csrk** %5, align 8
  %52 = getelementptr inbounds %struct.smp_csrk, %struct.smp_csrk* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @memcpy(i32 %50, i32 %53, i32 4)
  %55 = load i32, i32* @MGMT_EV_NEW_CSRK, align 4
  %56 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %57 = call i32 @mgmt_event(i32 %55, %struct.hci_dev* %56, %struct.mgmt_ev_new_csrk* %7, i32 20, i32* null)
  ret void
}

declare dso_local i32 @memset(%struct.mgmt_ev_new_csrk*, i32, i32) #1

declare dso_local i32 @bacpy(i32*, %struct.TYPE_6__*) #1

declare dso_local i32 @link_to_bdaddr(i32, i64) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @mgmt_event(i32, %struct.hci_dev*, %struct.mgmt_ev_new_csrk*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
