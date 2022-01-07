; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_a2mp.c_a2mp_send_getinfo_rsp.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_a2mp.c_a2mp_send_getinfo_rsp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_dev = type { i64, i32, i32, i32, i32, i32, i32, i32 }
%struct.amp_mgr = type { i32 }
%struct.a2mp_info_rsp = type { i8*, i8*, i8*, i8*, i8*, i64, i32 }

@READ_LOC_AMP_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"%s mgr %p\00", align 1
@A2MP_STATUS_INVALID_CTRL_ID = common dso_local global i64 0, align 8
@AMP_TYPE_BREDR = common dso_local global i64 0, align 8
@A2MP_GETINFO_RSP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @a2mp_send_getinfo_rsp(%struct.hci_dev* %0) #0 {
  %2 = alloca %struct.hci_dev*, align 8
  %3 = alloca %struct.amp_mgr*, align 8
  %4 = alloca %struct.a2mp_info_rsp, align 8
  store %struct.hci_dev* %0, %struct.hci_dev** %2, align 8
  %5 = load i32, i32* @READ_LOC_AMP_INFO, align 4
  %6 = call %struct.amp_mgr* @amp_mgr_lookup_by_state(i32 %5)
  store %struct.amp_mgr* %6, %struct.amp_mgr** %3, align 8
  %7 = load %struct.amp_mgr*, %struct.amp_mgr** %3, align 8
  %8 = icmp ne %struct.amp_mgr* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %63

10:                                               ; preds = %1
  %11 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %12 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %11, i32 0, i32 7
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.amp_mgr*, %struct.amp_mgr** %3, align 8
  %15 = call i32 @BT_DBG(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %13, %struct.amp_mgr* %14)
  %16 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %17 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %16, i32 0, i32 6
  %18 = load i32, i32* %17, align 4
  %19 = getelementptr inbounds %struct.a2mp_info_rsp, %struct.a2mp_info_rsp* %4, i32 0, i32 6
  store i32 %18, i32* %19, align 8
  %20 = load i64, i64* @A2MP_STATUS_INVALID_CTRL_ID, align 8
  %21 = getelementptr inbounds %struct.a2mp_info_rsp, %struct.a2mp_info_rsp* %4, i32 0, i32 5
  store i64 %20, i64* %21, align 8
  %22 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %23 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @AMP_TYPE_BREDR, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %54

27:                                               ; preds = %10
  %28 = getelementptr inbounds %struct.a2mp_info_rsp, %struct.a2mp_info_rsp* %4, i32 0, i32 5
  store i64 0, i64* %28, align 8
  %29 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %30 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %29, i32 0, i32 5
  %31 = load i32, i32* %30, align 8
  %32 = call i8* @cpu_to_le32(i32 %31)
  %33 = getelementptr inbounds %struct.a2mp_info_rsp, %struct.a2mp_info_rsp* %4, i32 0, i32 4
  store i8* %32, i8** %33, align 8
  %34 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %35 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %34, i32 0, i32 4
  %36 = load i32, i32* %35, align 4
  %37 = call i8* @cpu_to_le32(i32 %36)
  %38 = getelementptr inbounds %struct.a2mp_info_rsp, %struct.a2mp_info_rsp* %4, i32 0, i32 3
  store i8* %37, i8** %38, align 8
  %39 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %40 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 8
  %42 = call i8* @cpu_to_le32(i32 %41)
  %43 = getelementptr inbounds %struct.a2mp_info_rsp, %struct.a2mp_info_rsp* %4, i32 0, i32 2
  store i8* %42, i8** %43, align 8
  %44 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %45 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = call i8* @cpu_to_le16(i32 %46)
  %48 = getelementptr inbounds %struct.a2mp_info_rsp, %struct.a2mp_info_rsp* %4, i32 0, i32 1
  store i8* %47, i8** %48, align 8
  %49 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %50 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = call i8* @cpu_to_le16(i32 %51)
  %53 = getelementptr inbounds %struct.a2mp_info_rsp, %struct.a2mp_info_rsp* %4, i32 0, i32 0
  store i8* %52, i8** %53, align 8
  br label %54

54:                                               ; preds = %27, %10
  %55 = load %struct.amp_mgr*, %struct.amp_mgr** %3, align 8
  %56 = load i32, i32* @A2MP_GETINFO_RSP, align 4
  %57 = load %struct.amp_mgr*, %struct.amp_mgr** %3, align 8
  %58 = getelementptr inbounds %struct.amp_mgr, %struct.amp_mgr* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @a2mp_send(%struct.amp_mgr* %55, i32 %56, i32 %59, i32 56, %struct.a2mp_info_rsp* %4)
  %61 = load %struct.amp_mgr*, %struct.amp_mgr** %3, align 8
  %62 = call i32 @amp_mgr_put(%struct.amp_mgr* %61)
  br label %63

63:                                               ; preds = %54, %9
  ret void
}

declare dso_local %struct.amp_mgr* @amp_mgr_lookup_by_state(i32) #1

declare dso_local i32 @BT_DBG(i8*, i32, %struct.amp_mgr*) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @a2mp_send(%struct.amp_mgr*, i32, i32, i32, %struct.a2mp_info_rsp*) #1

declare dso_local i32 @amp_mgr_put(%struct.amp_mgr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
