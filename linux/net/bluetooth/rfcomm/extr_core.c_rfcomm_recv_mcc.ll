; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/rfcomm/extr_core.c_rfcomm_recv_mcc.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/rfcomm/extr_core.c_rfcomm_recv_mcc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rfcomm_session = type { i32 }
%struct.sk_buff = type { i32, i64 }
%struct.rfcomm_mcc = type { i32, i32 }

@.str = private unnamed_addr constant [19 x i8] c"%p type 0x%x cr %d\00", align 1
@RFCOMM_TX_THROTTLED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"Unknown control type 0x%02x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rfcomm_session*, %struct.sk_buff*)* @rfcomm_recv_mcc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rfcomm_recv_mcc(%struct.rfcomm_session* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.rfcomm_session*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.rfcomm_mcc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.rfcomm_session* %0, %struct.rfcomm_session** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %9 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %10 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to i8*
  %13 = bitcast i8* %12 to %struct.rfcomm_mcc*
  store %struct.rfcomm_mcc* %13, %struct.rfcomm_mcc** %5, align 8
  %14 = load %struct.rfcomm_mcc*, %struct.rfcomm_mcc** %5, align 8
  %15 = getelementptr inbounds %struct.rfcomm_mcc, %struct.rfcomm_mcc* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @__test_cr(i32 %16)
  store i32 %17, i32* %7, align 4
  %18 = load %struct.rfcomm_mcc*, %struct.rfcomm_mcc** %5, align 8
  %19 = getelementptr inbounds %struct.rfcomm_mcc, %struct.rfcomm_mcc* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @__get_mcc_type(i32 %20)
  store i32 %21, i32* %6, align 4
  %22 = load %struct.rfcomm_mcc*, %struct.rfcomm_mcc** %5, align 8
  %23 = getelementptr inbounds %struct.rfcomm_mcc, %struct.rfcomm_mcc* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @__get_mcc_len(i32 %24)
  store i32 %25, i32* %8, align 4
  %26 = load %struct.rfcomm_session*, %struct.rfcomm_session** %3, align 8
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* %7, align 4
  %29 = call i32 @BT_DBG(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), %struct.rfcomm_session* %26, i32 %27, i32 %28)
  %30 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %31 = call i32 @skb_pull(%struct.sk_buff* %30, i32 2)
  %32 = load i32, i32* %6, align 4
  switch i32 %32, label %90 [
    i32 131, label %33
    i32 129, label %38
    i32 130, label %44
    i32 133, label %49
    i32 135, label %54
    i32 134, label %65
    i32 128, label %76
    i32 132, label %89
  ]

33:                                               ; preds = %2
  %34 = load %struct.rfcomm_session*, %struct.rfcomm_session** %3, align 8
  %35 = load i32, i32* %7, align 4
  %36 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %37 = call i32 @rfcomm_recv_pn(%struct.rfcomm_session* %34, i32 %35, %struct.sk_buff* %36)
  br label %97

38:                                               ; preds = %2
  %39 = load %struct.rfcomm_session*, %struct.rfcomm_session** %3, align 8
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* %8, align 4
  %42 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %43 = call i32 @rfcomm_recv_rpn(%struct.rfcomm_session* %39, i32 %40, i32 %41, %struct.sk_buff* %42)
  br label %97

44:                                               ; preds = %2
  %45 = load %struct.rfcomm_session*, %struct.rfcomm_session** %3, align 8
  %46 = load i32, i32* %7, align 4
  %47 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %48 = call i32 @rfcomm_recv_rls(%struct.rfcomm_session* %45, i32 %46, %struct.sk_buff* %47)
  br label %97

49:                                               ; preds = %2
  %50 = load %struct.rfcomm_session*, %struct.rfcomm_session** %3, align 8
  %51 = load i32, i32* %7, align 4
  %52 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %53 = call i32 @rfcomm_recv_msc(%struct.rfcomm_session* %50, i32 %51, %struct.sk_buff* %52)
  br label %97

54:                                               ; preds = %2
  %55 = load i32, i32* %7, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %64

57:                                               ; preds = %54
  %58 = load i32, i32* @RFCOMM_TX_THROTTLED, align 4
  %59 = load %struct.rfcomm_session*, %struct.rfcomm_session** %3, align 8
  %60 = getelementptr inbounds %struct.rfcomm_session, %struct.rfcomm_session* %59, i32 0, i32 0
  %61 = call i32 @set_bit(i32 %58, i32* %60)
  %62 = load %struct.rfcomm_session*, %struct.rfcomm_session** %3, align 8
  %63 = call i32 @rfcomm_send_fcoff(%struct.rfcomm_session* %62, i32 0)
  br label %64

64:                                               ; preds = %57, %54
  br label %97

65:                                               ; preds = %2
  %66 = load i32, i32* %7, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %75

68:                                               ; preds = %65
  %69 = load i32, i32* @RFCOMM_TX_THROTTLED, align 4
  %70 = load %struct.rfcomm_session*, %struct.rfcomm_session** %3, align 8
  %71 = getelementptr inbounds %struct.rfcomm_session, %struct.rfcomm_session* %70, i32 0, i32 0
  %72 = call i32 @clear_bit(i32 %69, i32* %71)
  %73 = load %struct.rfcomm_session*, %struct.rfcomm_session** %3, align 8
  %74 = call i32 @rfcomm_send_fcon(%struct.rfcomm_session* %73, i32 0)
  br label %75

75:                                               ; preds = %68, %65
  br label %97

76:                                               ; preds = %2
  %77 = load i32, i32* %7, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %88

79:                                               ; preds = %76
  %80 = load %struct.rfcomm_session*, %struct.rfcomm_session** %3, align 8
  %81 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %82 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %85 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @rfcomm_send_test(%struct.rfcomm_session* %80, i32 0, i64 %83, i32 %86)
  br label %88

88:                                               ; preds = %79, %76
  br label %97

89:                                               ; preds = %2
  br label %97

90:                                               ; preds = %2
  %91 = load i32, i32* %6, align 4
  %92 = call i32 @BT_ERR(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %91)
  %93 = load %struct.rfcomm_session*, %struct.rfcomm_session** %3, align 8
  %94 = load i32, i32* %7, align 4
  %95 = load i32, i32* %6, align 4
  %96 = call i32 @rfcomm_send_nsc(%struct.rfcomm_session* %93, i32 %94, i32 %95)
  br label %97

97:                                               ; preds = %90, %89, %88, %75, %64, %49, %44, %38, %33
  ret i32 0
}

declare dso_local i32 @__test_cr(i32) #1

declare dso_local i32 @__get_mcc_type(i32) #1

declare dso_local i32 @__get_mcc_len(i32) #1

declare dso_local i32 @BT_DBG(i8*, %struct.rfcomm_session*, i32, i32) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @rfcomm_recv_pn(%struct.rfcomm_session*, i32, %struct.sk_buff*) #1

declare dso_local i32 @rfcomm_recv_rpn(%struct.rfcomm_session*, i32, i32, %struct.sk_buff*) #1

declare dso_local i32 @rfcomm_recv_rls(%struct.rfcomm_session*, i32, %struct.sk_buff*) #1

declare dso_local i32 @rfcomm_recv_msc(%struct.rfcomm_session*, i32, %struct.sk_buff*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @rfcomm_send_fcoff(%struct.rfcomm_session*, i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @rfcomm_send_fcon(%struct.rfcomm_session*, i32) #1

declare dso_local i32 @rfcomm_send_test(%struct.rfcomm_session*, i32, i64, i32) #1

declare dso_local i32 @BT_ERR(i8*, i32) #1

declare dso_local i32 @rfcomm_send_nsc(%struct.rfcomm_session*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
