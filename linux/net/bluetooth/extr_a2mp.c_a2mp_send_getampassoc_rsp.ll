; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_a2mp.c_a2mp_send_getampassoc_rsp.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_a2mp.c_a2mp_send_getampassoc_rsp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_dev = type { i32, i32, %struct.amp_assoc }
%struct.amp_assoc = type { i32, i32 }
%struct.amp_mgr = type { i32 }
%struct.a2mp_amp_assoc_rsp = type { i32, i32, i32 }

@READ_LOC_AMP_ASSOC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"%s mgr %p\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@A2MP_STATUS_INVALID_CTRL_ID = common dso_local global i32 0, align 4
@A2MP_STATUS_SUCCESS = common dso_local global i32 0, align 4
@A2MP_GETAMPASSOC_RSP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @a2mp_send_getampassoc_rsp(%struct.hci_dev* %0, i64 %1) #0 {
  %3 = alloca %struct.hci_dev*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.amp_mgr*, align 8
  %6 = alloca %struct.amp_assoc*, align 8
  %7 = alloca %struct.a2mp_amp_assoc_rsp*, align 8
  %8 = alloca i64, align 8
  store %struct.hci_dev* %0, %struct.hci_dev** %3, align 8
  store i64 %1, i64* %4, align 8
  %9 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %10 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %9, i32 0, i32 2
  store %struct.amp_assoc* %10, %struct.amp_assoc** %6, align 8
  %11 = load i32, i32* @READ_LOC_AMP_ASSOC, align 4
  %12 = call %struct.amp_mgr* @amp_mgr_lookup_by_state(i32 %11)
  store %struct.amp_mgr* %12, %struct.amp_mgr** %5, align 8
  %13 = load %struct.amp_mgr*, %struct.amp_mgr** %5, align 8
  %14 = icmp ne %struct.amp_mgr* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  br label %74

16:                                               ; preds = %2
  %17 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %18 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.amp_mgr*, %struct.amp_mgr** %5, align 8
  %21 = call i32 @BT_DBG(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %19, %struct.amp_mgr* %20)
  %22 = load %struct.amp_assoc*, %struct.amp_assoc** %6, align 8
  %23 = getelementptr inbounds %struct.amp_assoc, %struct.amp_assoc* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = sext i32 %24 to i64
  %26 = add i64 12, %25
  store i64 %26, i64* %8, align 8
  %27 = load i64, i64* %8, align 8
  %28 = load i32, i32* @GFP_KERNEL, align 4
  %29 = call %struct.a2mp_amp_assoc_rsp* @kzalloc(i64 %27, i32 %28)
  store %struct.a2mp_amp_assoc_rsp* %29, %struct.a2mp_amp_assoc_rsp** %7, align 8
  %30 = load %struct.a2mp_amp_assoc_rsp*, %struct.a2mp_amp_assoc_rsp** %7, align 8
  %31 = icmp ne %struct.a2mp_amp_assoc_rsp* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %16
  %33 = load %struct.amp_mgr*, %struct.amp_mgr** %5, align 8
  %34 = call i32 @amp_mgr_put(%struct.amp_mgr* %33)
  br label %74

35:                                               ; preds = %16
  %36 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %37 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.a2mp_amp_assoc_rsp*, %struct.a2mp_amp_assoc_rsp** %7, align 8
  %40 = getelementptr inbounds %struct.a2mp_amp_assoc_rsp, %struct.a2mp_amp_assoc_rsp* %39, i32 0, i32 2
  store i32 %38, i32* %40, align 4
  %41 = load i64, i64* %4, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %35
  %44 = load i32, i32* @A2MP_STATUS_INVALID_CTRL_ID, align 4
  %45 = load %struct.a2mp_amp_assoc_rsp*, %struct.a2mp_amp_assoc_rsp** %7, align 8
  %46 = getelementptr inbounds %struct.a2mp_amp_assoc_rsp, %struct.a2mp_amp_assoc_rsp* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 4
  br label %61

47:                                               ; preds = %35
  %48 = load i32, i32* @A2MP_STATUS_SUCCESS, align 4
  %49 = load %struct.a2mp_amp_assoc_rsp*, %struct.a2mp_amp_assoc_rsp** %7, align 8
  %50 = getelementptr inbounds %struct.a2mp_amp_assoc_rsp, %struct.a2mp_amp_assoc_rsp* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 4
  %51 = load %struct.a2mp_amp_assoc_rsp*, %struct.a2mp_amp_assoc_rsp** %7, align 8
  %52 = getelementptr inbounds %struct.a2mp_amp_assoc_rsp, %struct.a2mp_amp_assoc_rsp* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.amp_assoc*, %struct.amp_assoc** %6, align 8
  %55 = getelementptr inbounds %struct.amp_assoc, %struct.amp_assoc* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.amp_assoc*, %struct.amp_assoc** %6, align 8
  %58 = getelementptr inbounds %struct.amp_assoc, %struct.amp_assoc* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @memcpy(i32 %53, i32 %56, i32 %59)
  br label %61

61:                                               ; preds = %47, %43
  %62 = load %struct.amp_mgr*, %struct.amp_mgr** %5, align 8
  %63 = load i32, i32* @A2MP_GETAMPASSOC_RSP, align 4
  %64 = load %struct.amp_mgr*, %struct.amp_mgr** %5, align 8
  %65 = getelementptr inbounds %struct.amp_mgr, %struct.amp_mgr* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i64, i64* %8, align 8
  %68 = load %struct.a2mp_amp_assoc_rsp*, %struct.a2mp_amp_assoc_rsp** %7, align 8
  %69 = call i32 @a2mp_send(%struct.amp_mgr* %62, i32 %63, i32 %66, i64 %67, %struct.a2mp_amp_assoc_rsp* %68)
  %70 = load %struct.amp_mgr*, %struct.amp_mgr** %5, align 8
  %71 = call i32 @amp_mgr_put(%struct.amp_mgr* %70)
  %72 = load %struct.a2mp_amp_assoc_rsp*, %struct.a2mp_amp_assoc_rsp** %7, align 8
  %73 = call i32 @kfree(%struct.a2mp_amp_assoc_rsp* %72)
  br label %74

74:                                               ; preds = %61, %32, %15
  ret void
}

declare dso_local %struct.amp_mgr* @amp_mgr_lookup_by_state(i32) #1

declare dso_local i32 @BT_DBG(i8*, i32, %struct.amp_mgr*) #1

declare dso_local %struct.a2mp_amp_assoc_rsp* @kzalloc(i64, i32) #1

declare dso_local i32 @amp_mgr_put(%struct.amp_mgr*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @a2mp_send(%struct.amp_mgr*, i32, i32, i64, %struct.a2mp_amp_assoc_rsp*) #1

declare dso_local i32 @kfree(%struct.a2mp_amp_assoc_rsp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
