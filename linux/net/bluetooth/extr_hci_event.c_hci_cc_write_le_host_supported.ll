; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_event.c_hci_cc_write_le_host_supported.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_event.c_hci_cc_write_le_host_supported.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_dev = type { i32**, i32 }
%struct.sk_buff = type { i64 }
%struct.hci_cp_write_le_host_supported = type { i64, i64 }

@.str = private unnamed_addr constant [18 x i8] c"%s status 0x%2.2x\00", align 1
@HCI_OP_WRITE_LE_HOST_SUPPORTED = common dso_local global i32 0, align 4
@LMP_HOST_LE = common dso_local global i32 0, align 4
@HCI_LE_ENABLED = common dso_local global i32 0, align 4
@HCI_ADVERTISING = common dso_local global i32 0, align 4
@LMP_HOST_LE_BREDR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hci_dev*, %struct.sk_buff*)* @hci_cc_write_le_host_supported to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hci_cc_write_le_host_supported(%struct.hci_dev* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.hci_dev*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.hci_cp_write_le_host_supported*, align 8
  %6 = alloca i64, align 8
  store %struct.hci_dev* %0, %struct.hci_dev** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %7 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %8 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = inttoptr i64 %9 to i64*
  %11 = load i64, i64* %10, align 8
  store i64 %11, i64* %6, align 8
  %12 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %13 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = load i64, i64* %6, align 8
  %16 = call i32 @BT_DBG(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %14, i64 %15)
  %17 = load i64, i64* %6, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  br label %93

20:                                               ; preds = %2
  %21 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %22 = load i32, i32* @HCI_OP_WRITE_LE_HOST_SUPPORTED, align 4
  %23 = call %struct.hci_cp_write_le_host_supported* @hci_sent_cmd_data(%struct.hci_dev* %21, i32 %22)
  store %struct.hci_cp_write_le_host_supported* %23, %struct.hci_cp_write_le_host_supported** %5, align 8
  %24 = load %struct.hci_cp_write_le_host_supported*, %struct.hci_cp_write_le_host_supported** %5, align 8
  %25 = icmp ne %struct.hci_cp_write_le_host_supported* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %20
  br label %93

27:                                               ; preds = %20
  %28 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %29 = call i32 @hci_dev_lock(%struct.hci_dev* %28)
  %30 = load %struct.hci_cp_write_le_host_supported*, %struct.hci_cp_write_le_host_supported** %5, align 8
  %31 = getelementptr inbounds %struct.hci_cp_write_le_host_supported, %struct.hci_cp_write_le_host_supported* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %47

34:                                               ; preds = %27
  %35 = load i32, i32* @LMP_HOST_LE, align 4
  %36 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %37 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %36, i32 0, i32 0
  %38 = load i32**, i32*** %37, align 8
  %39 = getelementptr inbounds i32*, i32** %38, i64 1
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 0
  %42 = load i32, i32* %41, align 4
  %43 = or i32 %42, %35
  store i32 %43, i32* %41, align 4
  %44 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %45 = load i32, i32* @HCI_LE_ENABLED, align 4
  %46 = call i32 @hci_dev_set_flag(%struct.hci_dev* %44, i32 %45)
  br label %64

47:                                               ; preds = %27
  %48 = load i32, i32* @LMP_HOST_LE, align 4
  %49 = xor i32 %48, -1
  %50 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %51 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %50, i32 0, i32 0
  %52 = load i32**, i32*** %51, align 8
  %53 = getelementptr inbounds i32*, i32** %52, i64 1
  %54 = load i32*, i32** %53, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 0
  %56 = load i32, i32* %55, align 4
  %57 = and i32 %56, %49
  store i32 %57, i32* %55, align 4
  %58 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %59 = load i32, i32* @HCI_LE_ENABLED, align 4
  %60 = call i32 @hci_dev_clear_flag(%struct.hci_dev* %58, i32 %59)
  %61 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %62 = load i32, i32* @HCI_ADVERTISING, align 4
  %63 = call i32 @hci_dev_clear_flag(%struct.hci_dev* %61, i32 %62)
  br label %64

64:                                               ; preds = %47, %34
  %65 = load %struct.hci_cp_write_le_host_supported*, %struct.hci_cp_write_le_host_supported** %5, align 8
  %66 = getelementptr inbounds %struct.hci_cp_write_le_host_supported, %struct.hci_cp_write_le_host_supported* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %79

69:                                               ; preds = %64
  %70 = load i32, i32* @LMP_HOST_LE_BREDR, align 4
  %71 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %72 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %71, i32 0, i32 0
  %73 = load i32**, i32*** %72, align 8
  %74 = getelementptr inbounds i32*, i32** %73, i64 1
  %75 = load i32*, i32** %74, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 0
  %77 = load i32, i32* %76, align 4
  %78 = or i32 %77, %70
  store i32 %78, i32* %76, align 4
  br label %90

79:                                               ; preds = %64
  %80 = load i32, i32* @LMP_HOST_LE_BREDR, align 4
  %81 = xor i32 %80, -1
  %82 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %83 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %82, i32 0, i32 0
  %84 = load i32**, i32*** %83, align 8
  %85 = getelementptr inbounds i32*, i32** %84, i64 1
  %86 = load i32*, i32** %85, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 0
  %88 = load i32, i32* %87, align 4
  %89 = and i32 %88, %81
  store i32 %89, i32* %87, align 4
  br label %90

90:                                               ; preds = %79, %69
  %91 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %92 = call i32 @hci_dev_unlock(%struct.hci_dev* %91)
  br label %93

93:                                               ; preds = %90, %26, %19
  ret void
}

declare dso_local i32 @BT_DBG(i8*, i32, i64) #1

declare dso_local %struct.hci_cp_write_le_host_supported* @hci_sent_cmd_data(%struct.hci_dev*, i32) #1

declare dso_local i32 @hci_dev_lock(%struct.hci_dev*) #1

declare dso_local i32 @hci_dev_set_flag(%struct.hci_dev*, i32) #1

declare dso_local i32 @hci_dev_clear_flag(%struct.hci_dev*, i32) #1

declare dso_local i32 @hci_dev_unlock(%struct.hci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
