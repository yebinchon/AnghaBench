; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_mgmt.c_mgmt_new_ltk.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_mgmt.c_mgmt_new_ltk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_dev = type { i32 }
%struct.smp_ltk = type { i64, i32, i64, i32, i32, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32* }
%struct.mgmt_ev_new_long_term_key = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, %struct.mgmt_ev_new_long_term_key*, i32, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }

@ADDR_LE_DEV_RANDOM = common dso_local global i64 0, align 8
@LE_LINK = common dso_local global i32 0, align 4
@SMP_LTK = common dso_local global i64 0, align 8
@MGMT_EV_NEW_LONG_TERM_KEY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mgmt_new_ltk(%struct.hci_dev* %0, %struct.smp_ltk* %1, i32 %2) #0 {
  %4 = alloca %struct.hci_dev*, align 8
  %5 = alloca %struct.smp_ltk*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.mgmt_ev_new_long_term_key, align 8
  store %struct.hci_dev* %0, %struct.hci_dev** %4, align 8
  store %struct.smp_ltk* %1, %struct.smp_ltk** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = call i32 @memset(%struct.mgmt_ev_new_long_term_key* %7, i32 0, i32 48)
  %9 = load %struct.smp_ltk*, %struct.smp_ltk** %5, align 8
  %10 = getelementptr inbounds %struct.smp_ltk, %struct.smp_ltk* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @ADDR_LE_DEV_RANDOM, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %25

14:                                               ; preds = %3
  %15 = load %struct.smp_ltk*, %struct.smp_ltk** %5, align 8
  %16 = getelementptr inbounds %struct.smp_ltk, %struct.smp_ltk* %15, i32 0, i32 6
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 5
  %20 = load i32, i32* %19, align 4
  %21 = and i32 %20, 192
  %22 = icmp ne i32 %21, 192
  br i1 %22, label %23, label %25

23:                                               ; preds = %14
  %24 = getelementptr inbounds %struct.mgmt_ev_new_long_term_key, %struct.mgmt_ev_new_long_term_key* %7, i32 0, i32 0
  store i32 0, i32* %24, align 8
  br label %28

25:                                               ; preds = %14, %3
  %26 = load i32, i32* %6, align 4
  %27 = getelementptr inbounds %struct.mgmt_ev_new_long_term_key, %struct.mgmt_ev_new_long_term_key* %7, i32 0, i32 0
  store i32 %26, i32* %27, align 8
  br label %28

28:                                               ; preds = %25, %23
  %29 = getelementptr inbounds %struct.mgmt_ev_new_long_term_key, %struct.mgmt_ev_new_long_term_key* %7, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 6
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 1
  %32 = load %struct.smp_ltk*, %struct.smp_ltk** %5, align 8
  %33 = getelementptr inbounds %struct.smp_ltk, %struct.smp_ltk* %32, i32 0, i32 6
  %34 = call i32 @bacpy(i32* %31, %struct.TYPE_6__* %33)
  %35 = load i32, i32* @LE_LINK, align 4
  %36 = load %struct.smp_ltk*, %struct.smp_ltk** %5, align 8
  %37 = getelementptr inbounds %struct.smp_ltk, %struct.smp_ltk* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = call i32 @link_to_bdaddr(i32 %35, i64 %38)
  %40 = getelementptr inbounds %struct.mgmt_ev_new_long_term_key, %struct.mgmt_ev_new_long_term_key* %7, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 6
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  store i32 %39, i32* %42, align 4
  %43 = load %struct.smp_ltk*, %struct.smp_ltk** %5, align 8
  %44 = call i32 @mgmt_ltk_type(%struct.smp_ltk* %43)
  %45 = getelementptr inbounds %struct.mgmt_ev_new_long_term_key, %struct.mgmt_ev_new_long_term_key* %7, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 5
  store i32 %44, i32* %46, align 8
  %47 = load %struct.smp_ltk*, %struct.smp_ltk** %5, align 8
  %48 = getelementptr inbounds %struct.smp_ltk, %struct.smp_ltk* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = getelementptr inbounds %struct.mgmt_ev_new_long_term_key, %struct.mgmt_ev_new_long_term_key* %7, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 8
  %52 = load %struct.smp_ltk*, %struct.smp_ltk** %5, align 8
  %53 = getelementptr inbounds %struct.smp_ltk, %struct.smp_ltk* %52, i32 0, i32 5
  %54 = load i32, i32* %53, align 8
  %55 = getelementptr inbounds %struct.mgmt_ev_new_long_term_key, %struct.mgmt_ev_new_long_term_key* %7, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 4
  store i32 %54, i32* %56, align 4
  %57 = load %struct.smp_ltk*, %struct.smp_ltk** %5, align 8
  %58 = getelementptr inbounds %struct.smp_ltk, %struct.smp_ltk* %57, i32 0, i32 4
  %59 = load i32, i32* %58, align 4
  %60 = getelementptr inbounds %struct.mgmt_ev_new_long_term_key, %struct.mgmt_ev_new_long_term_key* %7, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 3
  store i32 %59, i32* %61, align 8
  %62 = load %struct.smp_ltk*, %struct.smp_ltk** %5, align 8
  %63 = getelementptr inbounds %struct.smp_ltk, %struct.smp_ltk* %62, i32 0, i32 2
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @SMP_LTK, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %70

67:                                               ; preds = %28
  %68 = getelementptr inbounds %struct.mgmt_ev_new_long_term_key, %struct.mgmt_ev_new_long_term_key* %7, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 1
  store i32 1, i32* %69, align 4
  br label %70

70:                                               ; preds = %67, %28
  %71 = getelementptr inbounds %struct.mgmt_ev_new_long_term_key, %struct.mgmt_ev_new_long_term_key* %7, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 2
  %73 = load %struct.mgmt_ev_new_long_term_key*, %struct.mgmt_ev_new_long_term_key** %72, align 8
  %74 = load %struct.smp_ltk*, %struct.smp_ltk** %5, align 8
  %75 = getelementptr inbounds %struct.smp_ltk, %struct.smp_ltk* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.smp_ltk*, %struct.smp_ltk** %5, align 8
  %78 = getelementptr inbounds %struct.smp_ltk, %struct.smp_ltk* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @memcpy(%struct.mgmt_ev_new_long_term_key* %73, i32 %76, i32 %79)
  %81 = getelementptr inbounds %struct.mgmt_ev_new_long_term_key, %struct.mgmt_ev_new_long_term_key* %7, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 2
  %83 = load %struct.mgmt_ev_new_long_term_key*, %struct.mgmt_ev_new_long_term_key** %82, align 8
  %84 = load %struct.smp_ltk*, %struct.smp_ltk** %5, align 8
  %85 = getelementptr inbounds %struct.smp_ltk, %struct.smp_ltk* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.mgmt_ev_new_long_term_key, %struct.mgmt_ev_new_long_term_key* %83, i64 %87
  %89 = load %struct.smp_ltk*, %struct.smp_ltk** %5, align 8
  %90 = getelementptr inbounds %struct.smp_ltk, %struct.smp_ltk* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = sext i32 %91 to i64
  %93 = sub i64 8, %92
  %94 = trunc i64 %93 to i32
  %95 = call i32 @memset(%struct.mgmt_ev_new_long_term_key* %88, i32 0, i32 %94)
  %96 = load i32, i32* @MGMT_EV_NEW_LONG_TERM_KEY, align 4
  %97 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %98 = call i32 @mgmt_event(i32 %96, %struct.hci_dev* %97, %struct.mgmt_ev_new_long_term_key* %7, i32 48, i32* null)
  ret void
}

declare dso_local i32 @memset(%struct.mgmt_ev_new_long_term_key*, i32, i32) #1

declare dso_local i32 @bacpy(i32*, %struct.TYPE_6__*) #1

declare dso_local i32 @link_to_bdaddr(i32, i64) #1

declare dso_local i32 @mgmt_ltk_type(%struct.smp_ltk*) #1

declare dso_local i32 @memcpy(%struct.mgmt_ev_new_long_term_key*, i32, i32) #1

declare dso_local i32 @mgmt_event(i32, %struct.hci_dev*, %struct.mgmt_ev_new_long_term_key*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
