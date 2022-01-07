; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_smp.c_fixup_sc_false_positive.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_smp.c_fixup_sc_false_positive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smp_chan = type { i32, i32, i32*, i32*, %struct.l2cap_conn* }
%struct.l2cap_conn = type { %struct.hci_conn* }
%struct.hci_conn = type { i64, %struct.hci_dev* }
%struct.hci_dev = type { i32 }
%struct.smp_cmd_pairing = type { i32, i32, i32, i32 }

@SMP_UNSPECIFIED = common dso_local global i32 0, align 4
@HCI_SC_ONLY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"refusing legacy fallback in SC-only mode\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"trying to fall back to legacy SMP\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"failed to fall back to legacy SMP\00", align 1
@SMP_FLAG_SC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.smp_chan*)* @fixup_sc_false_positive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fixup_sc_false_positive(%struct.smp_chan* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.smp_chan*, align 8
  %4 = alloca %struct.l2cap_conn*, align 8
  %5 = alloca %struct.hci_conn*, align 8
  %6 = alloca %struct.hci_dev*, align 8
  %7 = alloca %struct.smp_cmd_pairing*, align 8
  %8 = alloca %struct.smp_cmd_pairing*, align 8
  %9 = alloca i32, align 4
  store %struct.smp_chan* %0, %struct.smp_chan** %3, align 8
  %10 = load %struct.smp_chan*, %struct.smp_chan** %3, align 8
  %11 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %10, i32 0, i32 4
  %12 = load %struct.l2cap_conn*, %struct.l2cap_conn** %11, align 8
  store %struct.l2cap_conn* %12, %struct.l2cap_conn** %4, align 8
  %13 = load %struct.l2cap_conn*, %struct.l2cap_conn** %4, align 8
  %14 = getelementptr inbounds %struct.l2cap_conn, %struct.l2cap_conn* %13, i32 0, i32 0
  %15 = load %struct.hci_conn*, %struct.hci_conn** %14, align 8
  store %struct.hci_conn* %15, %struct.hci_conn** %5, align 8
  %16 = load %struct.hci_conn*, %struct.hci_conn** %5, align 8
  %17 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %16, i32 0, i32 1
  %18 = load %struct.hci_dev*, %struct.hci_dev** %17, align 8
  store %struct.hci_dev* %18, %struct.hci_dev** %6, align 8
  %19 = load %struct.hci_conn*, %struct.hci_conn** %5, align 8
  %20 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %1
  %24 = load i32, i32* @SMP_UNSPECIFIED, align 4
  store i32 %24, i32* %2, align 4
  br label %83

25:                                               ; preds = %1
  %26 = load %struct.hci_dev*, %struct.hci_dev** %6, align 8
  %27 = load i32, i32* @HCI_SC_ONLY, align 4
  %28 = call i64 @hci_dev_test_flag(%struct.hci_dev* %26, i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %25
  %31 = load %struct.hci_dev*, %struct.hci_dev** %6, align 8
  %32 = call i32 @bt_dev_err(%struct.hci_dev* %31, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %33 = load i32, i32* @SMP_UNSPECIFIED, align 4
  store i32 %33, i32* %2, align 4
  br label %83

34:                                               ; preds = %25
  %35 = load %struct.hci_dev*, %struct.hci_dev** %6, align 8
  %36 = call i32 @bt_dev_err(%struct.hci_dev* %35, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %37 = load %struct.smp_chan*, %struct.smp_chan** %3, align 8
  %38 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %37, i32 0, i32 3
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 1
  %41 = bitcast i32* %40 to i8*
  %42 = bitcast i8* %41 to %struct.smp_cmd_pairing*
  store %struct.smp_cmd_pairing* %42, %struct.smp_cmd_pairing** %7, align 8
  %43 = load %struct.smp_chan*, %struct.smp_chan** %3, align 8
  %44 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %43, i32 0, i32 2
  %45 = load i32*, i32** %44, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 1
  %47 = bitcast i32* %46 to i8*
  %48 = bitcast i8* %47 to %struct.smp_cmd_pairing*
  store %struct.smp_cmd_pairing* %48, %struct.smp_cmd_pairing** %8, align 8
  %49 = load %struct.smp_cmd_pairing*, %struct.smp_cmd_pairing** %7, align 8
  %50 = getelementptr inbounds %struct.smp_cmd_pairing, %struct.smp_cmd_pairing* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.smp_cmd_pairing*, %struct.smp_cmd_pairing** %8, align 8
  %53 = getelementptr inbounds %struct.smp_cmd_pairing, %struct.smp_cmd_pairing* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = and i32 %51, %54
  %56 = load %struct.smp_chan*, %struct.smp_chan** %3, align 8
  %57 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 8
  %58 = load %struct.smp_cmd_pairing*, %struct.smp_cmd_pairing** %7, align 8
  %59 = getelementptr inbounds %struct.smp_cmd_pairing, %struct.smp_cmd_pairing* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.hci_dev*, %struct.hci_dev** %6, align 8
  %62 = call i32 @AUTH_REQ_MASK(%struct.hci_dev* %61)
  %63 = and i32 %60, %62
  store i32 %63, i32* %9, align 4
  %64 = load %struct.l2cap_conn*, %struct.l2cap_conn** %4, align 8
  %65 = load i32, i32* %9, align 4
  %66 = load %struct.smp_cmd_pairing*, %struct.smp_cmd_pairing** %8, align 8
  %67 = getelementptr inbounds %struct.smp_cmd_pairing, %struct.smp_cmd_pairing* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.smp_cmd_pairing*, %struct.smp_cmd_pairing** %7, align 8
  %70 = getelementptr inbounds %struct.smp_cmd_pairing, %struct.smp_cmd_pairing* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 4
  %72 = call i64 @tk_request(%struct.l2cap_conn* %64, i32 0, i32 %65, i32 %68, i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %34
  %75 = load %struct.hci_dev*, %struct.hci_dev** %6, align 8
  %76 = call i32 @bt_dev_err(%struct.hci_dev* %75, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  %77 = load i32, i32* @SMP_UNSPECIFIED, align 4
  store i32 %77, i32* %2, align 4
  br label %83

78:                                               ; preds = %34
  %79 = load i32, i32* @SMP_FLAG_SC, align 4
  %80 = load %struct.smp_chan*, %struct.smp_chan** %3, align 8
  %81 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %80, i32 0, i32 1
  %82 = call i32 @clear_bit(i32 %79, i32* %81)
  store i32 0, i32* %2, align 4
  br label %83

83:                                               ; preds = %78, %74, %30, %23
  %84 = load i32, i32* %2, align 4
  ret i32 %84
}

declare dso_local i64 @hci_dev_test_flag(%struct.hci_dev*, i32) #1

declare dso_local i32 @bt_dev_err(%struct.hci_dev*, i8*) #1

declare dso_local i32 @AUTH_REQ_MASK(%struct.hci_dev*) #1

declare dso_local i64 @tk_request(%struct.l2cap_conn*, i32, i32, i32, i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
