; ModuleID = '/home/carl/AnghaBench/linux/net/nfc/hci/extr_llc_shdlc.c_llc_shdlc_rcv_i_frame.c'
source_filename = "/home/carl/AnghaBench/linux/net/nfc/hci/extr_llc_shdlc.c_llc_shdlc_rcv_i_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.llc_shdlc = type { i64, i32, i32, i32, i32, i32, i32 (i32, %struct.sk_buff*)*, i32, i32 }
%struct.sk_buff = type { i64 }

@.str = private unnamed_addr constant [43 x i8] c"recvd I-frame %d, remote waiting frame %d\0A\00", align 1
@SHDLC_CONNECTED = common dso_local global i64 0, align 8
@S_FRAME_REJ = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [24 x i8] c"(re)Start T1(send ack)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.llc_shdlc*, %struct.sk_buff*, i32, i32)* @llc_shdlc_rcv_i_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @llc_shdlc_rcv_i_frame(%struct.llc_shdlc* %0, %struct.sk_buff* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.llc_shdlc*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.llc_shdlc* %0, %struct.llc_shdlc** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load i32, i32* %7, align 4
  store i32 %11, i32* %9, align 4
  %12 = load i32, i32* %8, align 4
  store i32 %12, i32* %10, align 4
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* %8, align 4
  %15 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %13, i32 %14)
  %16 = load %struct.llc_shdlc*, %struct.llc_shdlc** %5, align 8
  %17 = getelementptr inbounds %struct.llc_shdlc, %struct.llc_shdlc* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @SHDLC_CONNECTED, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %4
  br label %93

22:                                               ; preds = %4
  %23 = load i32, i32* %9, align 4
  %24 = load %struct.llc_shdlc*, %struct.llc_shdlc** %5, align 8
  %25 = getelementptr inbounds %struct.llc_shdlc, %struct.llc_shdlc* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = icmp ne i32 %23, %26
  br i1 %27, label %28, label %35

28:                                               ; preds = %22
  %29 = load %struct.llc_shdlc*, %struct.llc_shdlc** %5, align 8
  %30 = load i32, i32* @S_FRAME_REJ, align 4
  %31 = load %struct.llc_shdlc*, %struct.llc_shdlc** %5, align 8
  %32 = getelementptr inbounds %struct.llc_shdlc, %struct.llc_shdlc* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @llc_shdlc_send_s_frame(%struct.llc_shdlc* %29, i32 %30, i32 %33)
  br label %93

35:                                               ; preds = %22
  %36 = load %struct.llc_shdlc*, %struct.llc_shdlc** %5, align 8
  %37 = getelementptr inbounds %struct.llc_shdlc, %struct.llc_shdlc* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %54

40:                                               ; preds = %35
  %41 = load %struct.llc_shdlc*, %struct.llc_shdlc** %5, align 8
  %42 = getelementptr inbounds %struct.llc_shdlc, %struct.llc_shdlc* %41, i32 0, i32 2
  store i32 1, i32* %42, align 4
  %43 = load %struct.llc_shdlc*, %struct.llc_shdlc** %5, align 8
  %44 = getelementptr inbounds %struct.llc_shdlc, %struct.llc_shdlc* %43, i32 0, i32 8
  %45 = load i64, i64* @jiffies, align 8
  %46 = load %struct.llc_shdlc*, %struct.llc_shdlc** %5, align 8
  %47 = getelementptr inbounds %struct.llc_shdlc, %struct.llc_shdlc* %46, i32 0, i32 7
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @SHDLC_T1_VALUE_MS(i32 %48)
  %50 = call i64 @msecs_to_jiffies(i32 %49)
  %51 = add nsw i64 %45, %50
  %52 = call i32 @mod_timer(i32* %44, i64 %51)
  %53 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  br label %54

54:                                               ; preds = %40, %35
  %55 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %56 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %68

59:                                               ; preds = %54
  %60 = load %struct.llc_shdlc*, %struct.llc_shdlc** %5, align 8
  %61 = getelementptr inbounds %struct.llc_shdlc, %struct.llc_shdlc* %60, i32 0, i32 6
  %62 = load i32 (i32, %struct.sk_buff*)*, i32 (i32, %struct.sk_buff*)** %61, align 8
  %63 = load %struct.llc_shdlc*, %struct.llc_shdlc** %5, align 8
  %64 = getelementptr inbounds %struct.llc_shdlc, %struct.llc_shdlc* %63, i32 0, i32 5
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %67 = call i32 %62(i32 %65, %struct.sk_buff* %66)
  store %struct.sk_buff* null, %struct.sk_buff** %6, align 8
  br label %68

68:                                               ; preds = %59, %54
  %69 = load %struct.llc_shdlc*, %struct.llc_shdlc** %5, align 8
  %70 = getelementptr inbounds %struct.llc_shdlc, %struct.llc_shdlc* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = add nsw i32 %71, 1
  %73 = srem i32 %72, 8
  %74 = load %struct.llc_shdlc*, %struct.llc_shdlc** %5, align 8
  %75 = getelementptr inbounds %struct.llc_shdlc, %struct.llc_shdlc* %74, i32 0, i32 1
  store i32 %73, i32* %75, align 8
  %76 = load %struct.llc_shdlc*, %struct.llc_shdlc** %5, align 8
  %77 = getelementptr inbounds %struct.llc_shdlc, %struct.llc_shdlc* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* %10, align 4
  %80 = load %struct.llc_shdlc*, %struct.llc_shdlc** %5, align 8
  %81 = getelementptr inbounds %struct.llc_shdlc, %struct.llc_shdlc* %80, i32 0, i32 4
  %82 = load i32, i32* %81, align 4
  %83 = call i64 @llc_shdlc_x_lt_y_lteq_z(i32 %78, i32 %79, i32 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %92

85:                                               ; preds = %68
  %86 = load %struct.llc_shdlc*, %struct.llc_shdlc** %5, align 8
  %87 = load i32, i32* %10, align 4
  %88 = call i32 @llc_shdlc_reset_t2(%struct.llc_shdlc* %86, i32 %87)
  %89 = load i32, i32* %10, align 4
  %90 = load %struct.llc_shdlc*, %struct.llc_shdlc** %5, align 8
  %91 = getelementptr inbounds %struct.llc_shdlc, %struct.llc_shdlc* %90, i32 0, i32 3
  store i32 %89, i32* %91, align 8
  br label %92

92:                                               ; preds = %85, %68
  br label %93

93:                                               ; preds = %92, %28, %21
  %94 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %95 = call i32 @kfree_skb(%struct.sk_buff* %94)
  ret void
}

declare dso_local i32 @pr_debug(i8*, ...) #1

declare dso_local i32 @llc_shdlc_send_s_frame(%struct.llc_shdlc*, i32, i32) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @SHDLC_T1_VALUE_MS(i32) #1

declare dso_local i64 @llc_shdlc_x_lt_y_lteq_z(i32, i32, i32) #1

declare dso_local i32 @llc_shdlc_reset_t2(%struct.llc_shdlc*, i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
