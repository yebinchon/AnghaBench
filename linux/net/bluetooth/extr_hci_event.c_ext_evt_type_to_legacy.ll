; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_event.c_ext_evt_type_to_legacy.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_event.c_ext_evt_type_to_legacy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LE_EXT_ADV_LEGACY_PDU = common dso_local global i32 0, align 4
@LE_ADV_IND = common dso_local global i32 0, align 4
@LE_ADV_DIRECT_IND = common dso_local global i32 0, align 4
@LE_ADV_SCAN_IND = common dso_local global i32 0, align 4
@LE_ADV_NONCONN_IND = common dso_local global i32 0, align 4
@LE_ADV_SCAN_RSP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Unknown advertising packet type: 0x%02x\00", align 1
@LE_ADV_INVALID = common dso_local global i32 0, align 4
@LE_EXT_ADV_CONN_IND = common dso_local global i32 0, align 4
@LE_EXT_ADV_DIRECT_IND = common dso_local global i32 0, align 4
@LE_EXT_ADV_SCAN_RSP = common dso_local global i32 0, align 4
@LE_EXT_ADV_SCAN_IND = common dso_local global i32 0, align 4
@LE_EXT_ADV_NON_CONN_IND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @ext_evt_type_to_legacy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext_evt_type_to_legacy(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = load i32, i32* @LE_EXT_ADV_LEGACY_PDU, align 4
  %6 = and i32 %4, %5
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %24

8:                                                ; preds = %1
  %9 = load i32, i32* %3, align 4
  switch i32 %9, label %20 [
    i32 132, label %10
    i32 133, label %12
    i32 131, label %14
    i32 130, label %16
    i32 129, label %18
    i32 128, label %18
  ]

10:                                               ; preds = %8
  %11 = load i32, i32* @LE_ADV_IND, align 4
  store i32 %11, i32* %2, align 4
  br label %67

12:                                               ; preds = %8
  %13 = load i32, i32* @LE_ADV_DIRECT_IND, align 4
  store i32 %13, i32* %2, align 4
  br label %67

14:                                               ; preds = %8
  %15 = load i32, i32* @LE_ADV_SCAN_IND, align 4
  store i32 %15, i32* %2, align 4
  br label %67

16:                                               ; preds = %8
  %17 = load i32, i32* @LE_ADV_NONCONN_IND, align 4
  store i32 %17, i32* %2, align 4
  br label %67

18:                                               ; preds = %8, %8
  %19 = load i32, i32* @LE_ADV_SCAN_RSP, align 4
  store i32 %19, i32* %2, align 4
  br label %67

20:                                               ; preds = %8
  %21 = load i32, i32* %3, align 4
  %22 = call i32 @BT_ERR_RATELIMITED(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = load i32, i32* @LE_ADV_INVALID, align 4
  store i32 %23, i32* %2, align 4
  br label %67

24:                                               ; preds = %1
  %25 = load i32, i32* %3, align 4
  %26 = load i32, i32* @LE_EXT_ADV_CONN_IND, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %38

29:                                               ; preds = %24
  %30 = load i32, i32* %3, align 4
  %31 = load i32, i32* @LE_EXT_ADV_DIRECT_IND, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %29
  %35 = load i32, i32* @LE_ADV_DIRECT_IND, align 4
  store i32 %35, i32* %2, align 4
  br label %67

36:                                               ; preds = %29
  %37 = load i32, i32* @LE_ADV_IND, align 4
  store i32 %37, i32* %2, align 4
  br label %67

38:                                               ; preds = %24
  %39 = load i32, i32* %3, align 4
  %40 = load i32, i32* @LE_EXT_ADV_SCAN_RSP, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %38
  %44 = load i32, i32* @LE_ADV_SCAN_RSP, align 4
  store i32 %44, i32* %2, align 4
  br label %67

45:                                               ; preds = %38
  %46 = load i32, i32* %3, align 4
  %47 = load i32, i32* @LE_EXT_ADV_SCAN_IND, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %45
  %51 = load i32, i32* @LE_ADV_SCAN_IND, align 4
  store i32 %51, i32* %2, align 4
  br label %67

52:                                               ; preds = %45
  %53 = load i32, i32* %3, align 4
  %54 = load i32, i32* @LE_EXT_ADV_NON_CONN_IND, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %61, label %56

56:                                               ; preds = %52
  %57 = load i32, i32* %3, align 4
  %58 = load i32, i32* @LE_EXT_ADV_DIRECT_IND, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %56, %52
  %62 = load i32, i32* @LE_ADV_NONCONN_IND, align 4
  store i32 %62, i32* %2, align 4
  br label %67

63:                                               ; preds = %56
  %64 = load i32, i32* %3, align 4
  %65 = call i32 @BT_ERR_RATELIMITED(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %64)
  %66 = load i32, i32* @LE_ADV_INVALID, align 4
  store i32 %66, i32* %2, align 4
  br label %67

67:                                               ; preds = %63, %61, %50, %43, %36, %34, %20, %18, %16, %14, %12, %10
  %68 = load i32, i32* %2, align 4
  ret i32 %68
}

declare dso_local i32 @BT_ERR_RATELIMITED(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
