; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_amp.c_amp_physical_cfm.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_amp.c_amp_physical_cfm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_conn = type { %struct.TYPE_4__*, i32, %struct.amp_mgr* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.amp_mgr = type { %struct.l2cap_chan* }
%struct.l2cap_chan = type { %struct.TYPE_3__*, %struct.hci_conn*, i32, i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.hci_dev = type { i32 }

@.str = private unnamed_addr constant [32 x i8] c"bredr_hcon %p hs_hcon %p mgr %p\00", align 1
@FLAG_EFS_ENABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @amp_physical_cfm(%struct.hci_conn* %0, %struct.hci_conn* %1) #0 {
  %3 = alloca %struct.hci_conn*, align 8
  %4 = alloca %struct.hci_conn*, align 8
  %5 = alloca %struct.hci_dev*, align 8
  %6 = alloca %struct.amp_mgr*, align 8
  %7 = alloca %struct.l2cap_chan*, align 8
  store %struct.hci_conn* %0, %struct.hci_conn** %3, align 8
  store %struct.hci_conn* %1, %struct.hci_conn** %4, align 8
  %8 = load %struct.hci_conn*, %struct.hci_conn** %3, align 8
  %9 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %8, i32 0, i32 0
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = call %struct.hci_dev* @hci_dev_hold(%struct.TYPE_4__* %10)
  store %struct.hci_dev* %11, %struct.hci_dev** %5, align 8
  %12 = load %struct.hci_conn*, %struct.hci_conn** %4, align 8
  %13 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %12, i32 0, i32 2
  %14 = load %struct.amp_mgr*, %struct.amp_mgr** %13, align 8
  store %struct.amp_mgr* %14, %struct.amp_mgr** %6, align 8
  %15 = load %struct.hci_conn*, %struct.hci_conn** %3, align 8
  %16 = load %struct.hci_conn*, %struct.hci_conn** %4, align 8
  %17 = load %struct.amp_mgr*, %struct.amp_mgr** %6, align 8
  %18 = call i32 @BT_DBG(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), %struct.hci_conn* %15, %struct.hci_conn* %16, %struct.amp_mgr* %17)
  %19 = load %struct.hci_dev*, %struct.hci_dev** %5, align 8
  %20 = icmp ne %struct.hci_dev* %19, null
  br i1 %20, label %21, label %29

21:                                               ; preds = %2
  %22 = load %struct.amp_mgr*, %struct.amp_mgr** %6, align 8
  %23 = icmp ne %struct.amp_mgr* %22, null
  br i1 %23, label %24, label %29

24:                                               ; preds = %21
  %25 = load %struct.amp_mgr*, %struct.amp_mgr** %6, align 8
  %26 = getelementptr inbounds %struct.amp_mgr, %struct.amp_mgr* %25, i32 0, i32 0
  %27 = load %struct.l2cap_chan*, %struct.l2cap_chan** %26, align 8
  %28 = icmp ne %struct.l2cap_chan* %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %24, %21, %2
  br label %70

30:                                               ; preds = %24
  %31 = load %struct.amp_mgr*, %struct.amp_mgr** %6, align 8
  %32 = getelementptr inbounds %struct.amp_mgr, %struct.amp_mgr* %31, i32 0, i32 0
  %33 = load %struct.l2cap_chan*, %struct.l2cap_chan** %32, align 8
  store %struct.l2cap_chan* %33, %struct.l2cap_chan** %7, align 8
  %34 = load %struct.l2cap_chan*, %struct.l2cap_chan** %7, align 8
  %35 = call i32 @l2cap_chan_lock(%struct.l2cap_chan* %34)
  %36 = load i32, i32* @FLAG_EFS_ENABLE, align 4
  %37 = load %struct.l2cap_chan*, %struct.l2cap_chan** %7, align 8
  %38 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %37, i32 0, i32 4
  %39 = call i32 @set_bit(i32 %36, i32* %38)
  %40 = load %struct.hci_conn*, %struct.hci_conn** %4, align 8
  %41 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.l2cap_chan*, %struct.l2cap_chan** %7, align 8
  %44 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %43, i32 0, i32 3
  store i32 %42, i32* %44, align 4
  %45 = load %struct.hci_conn*, %struct.hci_conn** %4, align 8
  %46 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %45, i32 0, i32 0
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.l2cap_chan*, %struct.l2cap_chan** %7, align 8
  %51 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %50, i32 0, i32 2
  store i32 %49, i32* %51, align 8
  %52 = load %struct.hci_conn*, %struct.hci_conn** %4, align 8
  %53 = load %struct.l2cap_chan*, %struct.l2cap_chan** %7, align 8
  %54 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %53, i32 0, i32 1
  store %struct.hci_conn* %52, %struct.hci_conn** %54, align 8
  %55 = load %struct.hci_conn*, %struct.hci_conn** %4, align 8
  %56 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %55, i32 0, i32 0
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.l2cap_chan*, %struct.l2cap_chan** %7, align 8
  %61 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %60, i32 0, i32 0
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  store i32 %59, i32* %63, align 4
  %64 = load %struct.l2cap_chan*, %struct.l2cap_chan** %7, align 8
  %65 = call i32 @__l2cap_physical_cfm(%struct.l2cap_chan* %64, i32 0)
  %66 = load %struct.l2cap_chan*, %struct.l2cap_chan** %7, align 8
  %67 = call i32 @l2cap_chan_unlock(%struct.l2cap_chan* %66)
  %68 = load %struct.hci_dev*, %struct.hci_dev** %5, align 8
  %69 = call i32 @hci_dev_put(%struct.hci_dev* %68)
  br label %70

70:                                               ; preds = %30, %29
  ret void
}

declare dso_local %struct.hci_dev* @hci_dev_hold(%struct.TYPE_4__*) #1

declare dso_local i32 @BT_DBG(i8*, %struct.hci_conn*, %struct.hci_conn*, %struct.amp_mgr*) #1

declare dso_local i32 @l2cap_chan_lock(%struct.l2cap_chan*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @__l2cap_physical_cfm(%struct.l2cap_chan*, i32) #1

declare dso_local i32 @l2cap_chan_unlock(%struct.l2cap_chan*) #1

declare dso_local i32 @hci_dev_put(%struct.hci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
