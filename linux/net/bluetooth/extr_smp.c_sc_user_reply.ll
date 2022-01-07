; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_smp.c_sc_user_reply.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_smp.c_sc_user_reply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smp_chan = type { i32, i32, %struct.l2cap_conn* }
%struct.l2cap_conn = type { %struct.hci_conn* }
%struct.hci_conn = type { i64, i32 }

@SMP_FLAG_WAIT_USER = common dso_local global i32 0, align 4
@SMP_PASSKEY_ENTRY_FAILED = common dso_local global i32 0, align 4
@SMP_NUMERIC_COMP_FAILED = common dso_local global i32 0, align 4
@SMP_FLAG_CFM_PENDING = common dso_local global i32 0, align 4
@SMP_CMD_PAIRING_CONFIRM = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@SMP_CMD_DHKEY_CHECK = common dso_local global i32 0, align 4
@SMP_FLAG_DHKEY_PENDING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.smp_chan*, i32, i32)* @sc_user_reply to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sc_user_reply(%struct.smp_chan* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.smp_chan*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.l2cap_conn*, align 8
  %9 = alloca %struct.hci_conn*, align 8
  %10 = alloca i32, align 4
  store %struct.smp_chan* %0, %struct.smp_chan** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load %struct.smp_chan*, %struct.smp_chan** %5, align 8
  %12 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %11, i32 0, i32 2
  %13 = load %struct.l2cap_conn*, %struct.l2cap_conn** %12, align 8
  store %struct.l2cap_conn* %13, %struct.l2cap_conn** %8, align 8
  %14 = load %struct.l2cap_conn*, %struct.l2cap_conn** %8, align 8
  %15 = getelementptr inbounds %struct.l2cap_conn, %struct.l2cap_conn* %14, i32 0, i32 0
  %16 = load %struct.hci_conn*, %struct.hci_conn** %15, align 8
  store %struct.hci_conn* %16, %struct.hci_conn** %9, align 8
  %17 = load i32, i32* @SMP_FLAG_WAIT_USER, align 4
  %18 = load %struct.smp_chan*, %struct.smp_chan** %5, align 8
  %19 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %18, i32 0, i32 0
  %20 = call i32 @clear_bit(i32 %17, i32* %19)
  %21 = load i32, i32* %6, align 4
  switch i32 %21, label %58 [
    i32 129, label %22
    i32 130, label %28
    i32 128, label %34
  ]

22:                                               ; preds = %3
  %23 = load %struct.smp_chan*, %struct.smp_chan** %5, align 8
  %24 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %23, i32 0, i32 2
  %25 = load %struct.l2cap_conn*, %struct.l2cap_conn** %24, align 8
  %26 = load i32, i32* @SMP_PASSKEY_ENTRY_FAILED, align 4
  %27 = call i32 @smp_failure(%struct.l2cap_conn* %25, i32 %26)
  store i32 0, i32* %4, align 4
  br label %82

28:                                               ; preds = %3
  %29 = load %struct.smp_chan*, %struct.smp_chan** %5, align 8
  %30 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %29, i32 0, i32 2
  %31 = load %struct.l2cap_conn*, %struct.l2cap_conn** %30, align 8
  %32 = load i32, i32* @SMP_NUMERIC_COMP_FAILED, align 4
  %33 = call i32 @smp_failure(%struct.l2cap_conn* %31, i32 %32)
  store i32 0, i32* %4, align 4
  br label %82

34:                                               ; preds = %3
  %35 = load i32, i32* %7, align 4
  %36 = call i32 @le32_to_cpu(i32 %35)
  %37 = load %struct.hci_conn*, %struct.hci_conn** %9, align 8
  %38 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 8
  %39 = load %struct.smp_chan*, %struct.smp_chan** %5, align 8
  %40 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %39, i32 0, i32 1
  store i32 0, i32* %40, align 4
  %41 = load i32, i32* @SMP_FLAG_CFM_PENDING, align 4
  %42 = load %struct.smp_chan*, %struct.smp_chan** %5, align 8
  %43 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %42, i32 0, i32 0
  %44 = call i64 @test_and_clear_bit(i32 %41, i32* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %34
  %47 = load i32, i32* @SMP_CMD_PAIRING_CONFIRM, align 4
  store i32 %47, i32* %10, align 4
  br label %49

48:                                               ; preds = %34
  store i32 0, i32* %10, align 4
  br label %49

49:                                               ; preds = %48, %46
  %50 = load %struct.smp_chan*, %struct.smp_chan** %5, align 8
  %51 = load i32, i32* %10, align 4
  %52 = call i32 @sc_passkey_round(%struct.smp_chan* %50, i32 %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %49
  %55 = load i32, i32* @EIO, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %4, align 4
  br label %82

57:                                               ; preds = %49
  store i32 0, i32* %4, align 4
  br label %82

58:                                               ; preds = %3
  %59 = load %struct.hci_conn*, %struct.hci_conn** %9, align 8
  %60 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %69

63:                                               ; preds = %58
  %64 = load %struct.smp_chan*, %struct.smp_chan** %5, align 8
  %65 = call i32 @sc_dhkey_check(%struct.smp_chan* %64)
  %66 = load %struct.smp_chan*, %struct.smp_chan** %5, align 8
  %67 = load i32, i32* @SMP_CMD_DHKEY_CHECK, align 4
  %68 = call i32 @SMP_ALLOW_CMD(%struct.smp_chan* %66, i32 %67)
  br label %81

69:                                               ; preds = %58
  %70 = load i32, i32* @SMP_FLAG_DHKEY_PENDING, align 4
  %71 = load %struct.smp_chan*, %struct.smp_chan** %5, align 8
  %72 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %71, i32 0, i32 0
  %73 = call i64 @test_and_clear_bit(i32 %70, i32* %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %80

75:                                               ; preds = %69
  %76 = load %struct.smp_chan*, %struct.smp_chan** %5, align 8
  %77 = call i32 @sc_dhkey_check(%struct.smp_chan* %76)
  %78 = load %struct.smp_chan*, %struct.smp_chan** %5, align 8
  %79 = call i32 @sc_add_ltk(%struct.smp_chan* %78)
  br label %80

80:                                               ; preds = %75, %69
  br label %81

81:                                               ; preds = %80, %63
  store i32 0, i32* %4, align 4
  br label %82

82:                                               ; preds = %81, %57, %54, %28, %22
  %83 = load i32, i32* %4, align 4
  ret i32 %83
}

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @smp_failure(%struct.l2cap_conn*, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i64 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @sc_passkey_round(%struct.smp_chan*, i32) #1

declare dso_local i32 @sc_dhkey_check(%struct.smp_chan*) #1

declare dso_local i32 @SMP_ALLOW_CMD(%struct.smp_chan*, i32) #1

declare dso_local i32 @sc_add_ltk(%struct.smp_chan*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
