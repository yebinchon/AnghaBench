; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_smp.c_sc_select_method.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_smp.c_sc_select_method.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smp_chan = type { i32, i32*, i32*, %struct.l2cap_conn* }
%struct.l2cap_conn = type { %struct.hci_conn* }
%struct.hci_conn = type { i64 }
%struct.smp_cmd_pairing = type { i64, i64 }

@SMP_FLAG_REMOTE_OOB = common dso_local global i32 0, align 4
@SMP_FLAG_LOCAL_OOB = common dso_local global i32 0, align 4
@REQ_OOB = common dso_local global i64 0, align 8
@SMP_AUTH_MITM = common dso_local global i64 0, align 8
@JUST_WORKS = common dso_local global i64 0, align 8
@JUST_CFM = common dso_local global i64 0, align 8
@SMP_FLAG_INITIATOR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.smp_chan*)* @sc_select_method to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @sc_select_method(%struct.smp_chan* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.smp_chan*, align 8
  %4 = alloca %struct.l2cap_conn*, align 8
  %5 = alloca %struct.hci_conn*, align 8
  %6 = alloca %struct.smp_cmd_pairing*, align 8
  %7 = alloca %struct.smp_cmd_pairing*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.smp_chan* %0, %struct.smp_chan** %3, align 8
  %13 = load %struct.smp_chan*, %struct.smp_chan** %3, align 8
  %14 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %13, i32 0, i32 3
  %15 = load %struct.l2cap_conn*, %struct.l2cap_conn** %14, align 8
  store %struct.l2cap_conn* %15, %struct.l2cap_conn** %4, align 8
  %16 = load %struct.l2cap_conn*, %struct.l2cap_conn** %4, align 8
  %17 = getelementptr inbounds %struct.l2cap_conn, %struct.l2cap_conn* %16, i32 0, i32 0
  %18 = load %struct.hci_conn*, %struct.hci_conn** %17, align 8
  store %struct.hci_conn* %18, %struct.hci_conn** %5, align 8
  %19 = load i32, i32* @SMP_FLAG_REMOTE_OOB, align 4
  %20 = load %struct.smp_chan*, %struct.smp_chan** %3, align 8
  %21 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %20, i32 0, i32 0
  %22 = call i64 @test_bit(i32 %19, i32* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %30, label %24

24:                                               ; preds = %1
  %25 = load i32, i32* @SMP_FLAG_LOCAL_OOB, align 4
  %26 = load %struct.smp_chan*, %struct.smp_chan** %3, align 8
  %27 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %26, i32 0, i32 0
  %28 = call i64 @test_bit(i32 %25, i32* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %24, %1
  %31 = load i64, i64* @REQ_OOB, align 8
  store i64 %31, i64* %2, align 8
  br label %106

32:                                               ; preds = %24
  %33 = load %struct.hci_conn*, %struct.hci_conn** %5, align 8
  %34 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %50

37:                                               ; preds = %32
  %38 = load %struct.smp_chan*, %struct.smp_chan** %3, align 8
  %39 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %38, i32 0, i32 1
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 1
  %42 = bitcast i32* %41 to i8*
  %43 = bitcast i8* %42 to %struct.smp_cmd_pairing*
  store %struct.smp_cmd_pairing* %43, %struct.smp_cmd_pairing** %6, align 8
  %44 = load %struct.smp_chan*, %struct.smp_chan** %3, align 8
  %45 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %44, i32 0, i32 2
  %46 = load i32*, i32** %45, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 1
  %48 = bitcast i32* %47 to i8*
  %49 = bitcast i8* %48 to %struct.smp_cmd_pairing*
  store %struct.smp_cmd_pairing* %49, %struct.smp_cmd_pairing** %7, align 8
  br label %63

50:                                               ; preds = %32
  %51 = load %struct.smp_chan*, %struct.smp_chan** %3, align 8
  %52 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %51, i32 0, i32 2
  %53 = load i32*, i32** %52, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 1
  %55 = bitcast i32* %54 to i8*
  %56 = bitcast i8* %55 to %struct.smp_cmd_pairing*
  store %struct.smp_cmd_pairing* %56, %struct.smp_cmd_pairing** %6, align 8
  %57 = load %struct.smp_chan*, %struct.smp_chan** %3, align 8
  %58 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %57, i32 0, i32 1
  %59 = load i32*, i32** %58, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 1
  %61 = bitcast i32* %60 to i8*
  %62 = bitcast i8* %61 to %struct.smp_cmd_pairing*
  store %struct.smp_cmd_pairing* %62, %struct.smp_cmd_pairing** %7, align 8
  br label %63

63:                                               ; preds = %50, %37
  %64 = load %struct.smp_cmd_pairing*, %struct.smp_cmd_pairing** %6, align 8
  %65 = getelementptr inbounds %struct.smp_cmd_pairing, %struct.smp_cmd_pairing* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  store i64 %66, i64* %10, align 8
  %67 = load %struct.smp_cmd_pairing*, %struct.smp_cmd_pairing** %7, align 8
  %68 = getelementptr inbounds %struct.smp_cmd_pairing, %struct.smp_cmd_pairing* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  store i64 %69, i64* %11, align 8
  %70 = load %struct.smp_cmd_pairing*, %struct.smp_cmd_pairing** %6, align 8
  %71 = getelementptr inbounds %struct.smp_cmd_pairing, %struct.smp_cmd_pairing* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @SMP_AUTH_MITM, align 8
  %74 = and i64 %72, %73
  store i64 %74, i64* %8, align 8
  %75 = load %struct.smp_cmd_pairing*, %struct.smp_cmd_pairing** %7, align 8
  %76 = getelementptr inbounds %struct.smp_cmd_pairing, %struct.smp_cmd_pairing* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @SMP_AUTH_MITM, align 8
  %79 = and i64 %77, %78
  store i64 %79, i64* %9, align 8
  %80 = load i64, i64* %8, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %85, label %82

82:                                               ; preds = %63
  %83 = load i64, i64* %9, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %90

85:                                               ; preds = %82, %63
  %86 = load %struct.smp_chan*, %struct.smp_chan** %3, align 8
  %87 = load i64, i64* %10, align 8
  %88 = load i64, i64* %11, align 8
  %89 = call i64 @get_auth_method(%struct.smp_chan* %86, i64 %87, i64 %88)
  store i64 %89, i64* %12, align 8
  br label %92

90:                                               ; preds = %82
  %91 = load i64, i64* @JUST_WORKS, align 8
  store i64 %91, i64* %12, align 8
  br label %92

92:                                               ; preds = %90, %85
  %93 = load i64, i64* %12, align 8
  %94 = load i64, i64* @JUST_CFM, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %96, label %104

96:                                               ; preds = %92
  %97 = load i32, i32* @SMP_FLAG_INITIATOR, align 4
  %98 = load %struct.smp_chan*, %struct.smp_chan** %3, align 8
  %99 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %98, i32 0, i32 0
  %100 = call i64 @test_bit(i32 %97, i32* %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %104

102:                                              ; preds = %96
  %103 = load i64, i64* @JUST_WORKS, align 8
  store i64 %103, i64* %12, align 8
  br label %104

104:                                              ; preds = %102, %96, %92
  %105 = load i64, i64* %12, align 8
  store i64 %105, i64* %2, align 8
  br label %106

106:                                              ; preds = %104, %30
  %107 = load i64, i64* %2, align 8
  ret i64 %107
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i64 @get_auth_method(%struct.smp_chan*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
