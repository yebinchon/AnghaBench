; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_smp.c_smp_user_confirm_reply.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_smp.c_smp_user_confirm_reply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_conn = type { %struct.l2cap_conn* }
%struct.l2cap_conn = type { %struct.l2cap_chan* }
%struct.l2cap_chan = type { %struct.smp_chan* }
%struct.smp_chan = type { i32, i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@ENOTCONN = common dso_local global i32 0, align 4
@SMP_FLAG_SC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"PassKey: %d\00", align 1
@SMP_FLAG_TK_VALID = common dso_local global i32 0, align 4
@SMP_PASSKEY_ENTRY_FAILED = common dso_local global i64 0, align 8
@EOPNOTSUPP = common dso_local global i32 0, align 4
@SMP_FLAG_CFM_PENDING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @smp_user_confirm_reply(%struct.hci_conn* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hci_conn*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.l2cap_conn*, align 8
  %9 = alloca %struct.l2cap_chan*, align 8
  %10 = alloca %struct.smp_chan*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store %struct.hci_conn* %0, %struct.hci_conn** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %14 = load %struct.hci_conn*, %struct.hci_conn** %5, align 8
  %15 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %14, i32 0, i32 0
  %16 = load %struct.l2cap_conn*, %struct.l2cap_conn** %15, align 8
  store %struct.l2cap_conn* %16, %struct.l2cap_conn** %8, align 8
  %17 = call i32 (i8*, ...) @BT_DBG(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %18 = load %struct.l2cap_conn*, %struct.l2cap_conn** %8, align 8
  %19 = icmp ne %struct.l2cap_conn* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %3
  %21 = load i32, i32* @ENOTCONN, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %4, align 4
  br label %108

23:                                               ; preds = %3
  %24 = load %struct.l2cap_conn*, %struct.l2cap_conn** %8, align 8
  %25 = getelementptr inbounds %struct.l2cap_conn, %struct.l2cap_conn* %24, i32 0, i32 0
  %26 = load %struct.l2cap_chan*, %struct.l2cap_chan** %25, align 8
  store %struct.l2cap_chan* %26, %struct.l2cap_chan** %9, align 8
  %27 = load %struct.l2cap_chan*, %struct.l2cap_chan** %9, align 8
  %28 = icmp ne %struct.l2cap_chan* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %23
  %30 = load i32, i32* @ENOTCONN, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %4, align 4
  br label %108

32:                                               ; preds = %23
  %33 = load %struct.l2cap_chan*, %struct.l2cap_chan** %9, align 8
  %34 = call i32 @l2cap_chan_lock(%struct.l2cap_chan* %33)
  %35 = load %struct.l2cap_chan*, %struct.l2cap_chan** %9, align 8
  %36 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %35, i32 0, i32 0
  %37 = load %struct.smp_chan*, %struct.smp_chan** %36, align 8
  %38 = icmp ne %struct.smp_chan* %37, null
  br i1 %38, label %42, label %39

39:                                               ; preds = %32
  %40 = load i32, i32* @ENOTCONN, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %12, align 4
  br label %104

42:                                               ; preds = %32
  %43 = load %struct.l2cap_chan*, %struct.l2cap_chan** %9, align 8
  %44 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %43, i32 0, i32 0
  %45 = load %struct.smp_chan*, %struct.smp_chan** %44, align 8
  store %struct.smp_chan* %45, %struct.smp_chan** %10, align 8
  %46 = load i32, i32* @SMP_FLAG_SC, align 4
  %47 = load %struct.smp_chan*, %struct.smp_chan** %10, align 8
  %48 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %47, i32 0, i32 0
  %49 = call i64 @test_bit(i32 %46, i32* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %42
  %52 = load %struct.smp_chan*, %struct.smp_chan** %10, align 8
  %53 = load i32, i32* %6, align 4
  %54 = load i32, i32* %7, align 4
  %55 = call i32 @sc_user_reply(%struct.smp_chan* %52, i32 %53, i32 %54)
  store i32 %55, i32* %12, align 4
  br label %104

56:                                               ; preds = %42
  %57 = load i32, i32* %6, align 4
  switch i32 %57, label %81 [
    i32 128, label %58
    i32 130, label %72
    i32 129, label %77
    i32 131, label %77
  ]

58:                                               ; preds = %56
  %59 = load i32, i32* %7, align 4
  %60 = call i32 @le32_to_cpu(i32 %59)
  store i32 %60, i32* %11, align 4
  %61 = load %struct.smp_chan*, %struct.smp_chan** %10, align 8
  %62 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @memset(i32 %63, i32 0, i32 4)
  %65 = load i32, i32* %11, align 4
  %66 = call i32 (i8*, ...) @BT_DBG(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %65)
  %67 = load i32, i32* %11, align 4
  %68 = load %struct.smp_chan*, %struct.smp_chan** %10, align 8
  %69 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @put_unaligned_le32(i32 %67, i32 %70)
  br label %72

72:                                               ; preds = %56, %58
  %73 = load i32, i32* @SMP_FLAG_TK_VALID, align 4
  %74 = load %struct.smp_chan*, %struct.smp_chan** %10, align 8
  %75 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %74, i32 0, i32 0
  %76 = call i32 @set_bit(i32 %73, i32* %75)
  br label %87

77:                                               ; preds = %56, %56
  %78 = load %struct.l2cap_conn*, %struct.l2cap_conn** %8, align 8
  %79 = load i64, i64* @SMP_PASSKEY_ENTRY_FAILED, align 8
  %80 = call i32 @smp_failure(%struct.l2cap_conn* %78, i64 %79)
  store i32 0, i32* %12, align 4
  br label %104

81:                                               ; preds = %56
  %82 = load %struct.l2cap_conn*, %struct.l2cap_conn** %8, align 8
  %83 = load i64, i64* @SMP_PASSKEY_ENTRY_FAILED, align 8
  %84 = call i32 @smp_failure(%struct.l2cap_conn* %82, i64 %83)
  %85 = load i32, i32* @EOPNOTSUPP, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %12, align 4
  br label %104

87:                                               ; preds = %72
  store i32 0, i32* %12, align 4
  %88 = load i32, i32* @SMP_FLAG_CFM_PENDING, align 4
  %89 = load %struct.smp_chan*, %struct.smp_chan** %10, align 8
  %90 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %89, i32 0, i32 0
  %91 = call i64 @test_bit(i32 %88, i32* %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %103

93:                                               ; preds = %87
  %94 = load %struct.smp_chan*, %struct.smp_chan** %10, align 8
  %95 = call i64 @smp_confirm(%struct.smp_chan* %94)
  store i64 %95, i64* %13, align 8
  %96 = load i64, i64* %13, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %102

98:                                               ; preds = %93
  %99 = load %struct.l2cap_conn*, %struct.l2cap_conn** %8, align 8
  %100 = load i64, i64* %13, align 8
  %101 = call i32 @smp_failure(%struct.l2cap_conn* %99, i64 %100)
  br label %102

102:                                              ; preds = %98, %93
  br label %103

103:                                              ; preds = %102, %87
  br label %104

104:                                              ; preds = %103, %81, %77, %51, %39
  %105 = load %struct.l2cap_chan*, %struct.l2cap_chan** %9, align 8
  %106 = call i32 @l2cap_chan_unlock(%struct.l2cap_chan* %105)
  %107 = load i32, i32* %12, align 4
  store i32 %107, i32* %4, align 4
  br label %108

108:                                              ; preds = %104, %29, %20
  %109 = load i32, i32* %4, align 4
  ret i32 %109
}

declare dso_local i32 @BT_DBG(i8*, ...) #1

declare dso_local i32 @l2cap_chan_lock(%struct.l2cap_chan*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @sc_user_reply(%struct.smp_chan*, i32, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @put_unaligned_le32(i32, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @smp_failure(%struct.l2cap_conn*, i64) #1

declare dso_local i64 @smp_confirm(%struct.smp_chan*) #1

declare dso_local i32 @l2cap_chan_unlock(%struct.l2cap_chan*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
