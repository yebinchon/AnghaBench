; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_smp.c_sc_dhkey_check.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_smp.c_sc_dhkey_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smp_chan = type { i64, %struct.TYPE_2__*, i32, i32, i32, i32, i32*, i32*, i32* }
%struct.TYPE_2__ = type { %struct.hci_conn* }
%struct.hci_conn = type { i32, i64, i32, i32, i32, i32 }
%struct.smp_cmd_dhkey_check = type { i32 }

@REQ_PASSKEY = common dso_local global i64 0, align 8
@DSP_PASSKEY = common dso_local global i64 0, align 8
@REQ_OOB = common dso_local global i64 0, align 8
@SMP_CMD_DHKEY_CHECK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.smp_chan*)* @sc_dhkey_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sc_dhkey_check(%struct.smp_chan* %0) #0 {
  %2 = alloca %struct.smp_chan*, align 8
  %3 = alloca %struct.hci_conn*, align 8
  %4 = alloca %struct.smp_cmd_dhkey_check, align 4
  %5 = alloca [7 x i32], align 16
  %6 = alloca [7 x i32], align 16
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca [3 x i32], align 4
  %10 = alloca [16 x i32], align 16
  store %struct.smp_chan* %0, %struct.smp_chan** %2, align 8
  %11 = load %struct.smp_chan*, %struct.smp_chan** %2, align 8
  %12 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %11, i32 0, i32 1
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load %struct.hci_conn*, %struct.hci_conn** %14, align 8
  store %struct.hci_conn* %15, %struct.hci_conn** %3, align 8
  %16 = getelementptr inbounds [7 x i32], [7 x i32]* %5, i64 0, i64 0
  %17 = load %struct.hci_conn*, %struct.hci_conn** %3, align 8
  %18 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %17, i32 0, i32 5
  %19 = call i32 @memcpy(i32* %16, i32* %18, i32 6)
  %20 = getelementptr inbounds [7 x i32], [7 x i32]* %6, i64 0, i64 0
  %21 = load %struct.hci_conn*, %struct.hci_conn** %3, align 8
  %22 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %21, i32 0, i32 4
  %23 = call i32 @memcpy(i32* %20, i32* %22, i32 6)
  %24 = load %struct.hci_conn*, %struct.hci_conn** %3, align 8
  %25 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = getelementptr inbounds [7 x i32], [7 x i32]* %5, i64 0, i64 6
  store i32 %26, i32* %27, align 8
  %28 = load %struct.hci_conn*, %struct.hci_conn** %3, align 8
  %29 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = getelementptr inbounds [7 x i32], [7 x i32]* %6, i64 0, i64 6
  store i32 %30, i32* %31, align 8
  %32 = load %struct.hci_conn*, %struct.hci_conn** %3, align 8
  %33 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %45

36:                                               ; preds = %1
  %37 = getelementptr inbounds [7 x i32], [7 x i32]* %5, i64 0, i64 0
  store i32* %37, i32** %7, align 8
  %38 = getelementptr inbounds [7 x i32], [7 x i32]* %6, i64 0, i64 0
  store i32* %38, i32** %8, align 8
  %39 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 0
  %40 = load %struct.smp_chan*, %struct.smp_chan** %2, align 8
  %41 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %40, i32 0, i32 8
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 1
  %44 = call i32 @memcpy(i32* %39, i32* %43, i32 3)
  br label %54

45:                                               ; preds = %1
  %46 = getelementptr inbounds [7 x i32], [7 x i32]* %6, i64 0, i64 0
  store i32* %46, i32** %7, align 8
  %47 = getelementptr inbounds [7 x i32], [7 x i32]* %5, i64 0, i64 0
  store i32* %47, i32** %8, align 8
  %48 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 0
  %49 = load %struct.smp_chan*, %struct.smp_chan** %2, align 8
  %50 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %49, i32 0, i32 7
  %51 = load i32*, i32** %50, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 1
  %53 = call i32 @memcpy(i32* %48, i32* %52, i32 3)
  br label %54

54:                                               ; preds = %45, %36
  %55 = getelementptr inbounds [16 x i32], [16 x i32]* %10, i64 0, i64 0
  %56 = call i32 @memset(i32* %55, i32 0, i32 64)
  %57 = load %struct.smp_chan*, %struct.smp_chan** %2, align 8
  %58 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @REQ_PASSKEY, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %68, label %62

62:                                               ; preds = %54
  %63 = load %struct.smp_chan*, %struct.smp_chan** %2, align 8
  %64 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @DSP_PASSKEY, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %74

68:                                               ; preds = %62, %54
  %69 = load %struct.hci_conn*, %struct.hci_conn** %3, align 8
  %70 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = getelementptr inbounds [16 x i32], [16 x i32]* %10, i64 0, i64 0
  %73 = call i32 @put_unaligned_le32(i32 %71, i32* %72)
  br label %74

74:                                               ; preds = %68, %62
  %75 = load %struct.smp_chan*, %struct.smp_chan** %2, align 8
  %76 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @REQ_OOB, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %80, label %86

80:                                               ; preds = %74
  %81 = getelementptr inbounds [16 x i32], [16 x i32]* %10, i64 0, i64 0
  %82 = load %struct.smp_chan*, %struct.smp_chan** %2, align 8
  %83 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %82, i32 0, i32 6
  %84 = load i32*, i32** %83, align 8
  %85 = call i32 @memcpy(i32* %81, i32* %84, i32 16)
  br label %86

86:                                               ; preds = %80, %74
  %87 = load %struct.smp_chan*, %struct.smp_chan** %2, align 8
  %88 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %87, i32 0, i32 5
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.smp_chan*, %struct.smp_chan** %2, align 8
  %91 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %90, i32 0, i32 4
  %92 = load i32, i32* %91, align 8
  %93 = load %struct.smp_chan*, %struct.smp_chan** %2, align 8
  %94 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %93, i32 0, i32 3
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.smp_chan*, %struct.smp_chan** %2, align 8
  %97 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 8
  %99 = getelementptr inbounds [16 x i32], [16 x i32]* %10, i64 0, i64 0
  %100 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 0
  %101 = load i32*, i32** %7, align 8
  %102 = load i32*, i32** %8, align 8
  %103 = getelementptr inbounds %struct.smp_cmd_dhkey_check, %struct.smp_cmd_dhkey_check* %4, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @smp_f6(i32 %89, i32 %92, i32 %95, i32 %98, i32* %99, i32* %100, i32* %101, i32* %102, i32 %104)
  %106 = load %struct.smp_chan*, %struct.smp_chan** %2, align 8
  %107 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %106, i32 0, i32 1
  %108 = load %struct.TYPE_2__*, %struct.TYPE_2__** %107, align 8
  %109 = load i32, i32* @SMP_CMD_DHKEY_CHECK, align 4
  %110 = call i32 @smp_send_cmd(%struct.TYPE_2__* %108, i32 %109, i32 4, %struct.smp_cmd_dhkey_check* %4)
  ret void
}

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @put_unaligned_le32(i32, i32*) #1

declare dso_local i32 @smp_f6(i32, i32, i32, i32, i32*, i32*, i32*, i32*, i32) #1

declare dso_local i32 @smp_send_cmd(%struct.TYPE_2__*, i32, i32, %struct.smp_cmd_dhkey_check*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
