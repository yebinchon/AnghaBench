; ModuleID = '/home/carl/AnghaBench/linux/net/dccp/extr_input.c_dccp_handle_ackvec_processing.c'
source_filename = "/home/carl/AnghaBench/linux/net/dccp/extr_input.c_dccp_handle_ackvec_processing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.sk_buff = type { i32 }
%struct.dccp_ackvec = type { i32 }
%struct.TYPE_3__ = type { %struct.dccp_ackvec* }
%struct.TYPE_4__ = type { i64 }

@DCCP_PKT_WITHOUT_ACK_SEQ = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*, %struct.sk_buff*)* @dccp_handle_ackvec_processing to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dccp_handle_ackvec_processing(%struct.sock* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.sock*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.dccp_ackvec*, align 8
  store %struct.sock* %0, %struct.sock** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %6 = load %struct.sock*, %struct.sock** %3, align 8
  %7 = call %struct.TYPE_3__* @dccp_sk(%struct.sock* %6)
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load %struct.dccp_ackvec*, %struct.dccp_ackvec** %8, align 8
  store %struct.dccp_ackvec* %9, %struct.dccp_ackvec** %5, align 8
  %10 = load %struct.dccp_ackvec*, %struct.dccp_ackvec** %5, align 8
  %11 = icmp eq %struct.dccp_ackvec* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  br label %31

13:                                               ; preds = %2
  %14 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %15 = call %struct.TYPE_4__* @DCCP_SKB_CB(%struct.sk_buff* %14)
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @DCCP_PKT_WITHOUT_ACK_SEQ, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %27

20:                                               ; preds = %13
  %21 = load %struct.dccp_ackvec*, %struct.dccp_ackvec** %5, align 8
  %22 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %23 = call %struct.TYPE_4__* @DCCP_SKB_CB(%struct.sk_buff* %22)
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = call i32 @dccp_ackvec_clear_state(%struct.dccp_ackvec* %21, i64 %25)
  br label %27

27:                                               ; preds = %20, %13
  %28 = load %struct.dccp_ackvec*, %struct.dccp_ackvec** %5, align 8
  %29 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %30 = call i32 @dccp_ackvec_input(%struct.dccp_ackvec* %28, %struct.sk_buff* %29)
  br label %31

31:                                               ; preds = %27, %12
  ret void
}

declare dso_local %struct.TYPE_3__* @dccp_sk(%struct.sock*) #1

declare dso_local %struct.TYPE_4__* @DCCP_SKB_CB(%struct.sk_buff*) #1

declare dso_local i32 @dccp_ackvec_clear_state(%struct.dccp_ackvec*, i64) #1

declare dso_local i32 @dccp_ackvec_input(%struct.dccp_ackvec*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
