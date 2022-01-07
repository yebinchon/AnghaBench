; ModuleID = '/home/carl/AnghaBench/linux/net/dccp/extr_input.c_dccp_rcv_respond_partopen_state_process.c'
source_filename = "/home/carl/AnghaBench/linux/net/dccp/extr_input.c_dccp_rcv_respond_partopen_state_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.sk_buff = type { i32 }
%struct.dccp_hdr = type { i32 }
%struct.dccp_sock = type { i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.TYPE_4__ = type { i32 }

@ICSK_TIME_DACK = common dso_local global i32 0, align 4
@DCCP_RESPOND = common dso_local global i32 0, align 4
@DCCP_PARTOPEN = common dso_local global i32 0, align 4
@DCCP_OPEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, %struct.sk_buff*, %struct.dccp_hdr*, i32)* @dccp_rcv_respond_partopen_state_process to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dccp_rcv_respond_partopen_state_process(%struct.sock* %0, %struct.sk_buff* %1, %struct.dccp_hdr* %2, i32 %3) #0 {
  %5 = alloca %struct.sock*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.dccp_hdr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.dccp_sock*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.sock* %0, %struct.sock** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store %struct.dccp_hdr* %2, %struct.dccp_hdr** %7, align 8
  store i32 %3, i32* %8, align 4
  %13 = load %struct.sock*, %struct.sock** %5, align 8
  %14 = call %struct.dccp_sock* @dccp_sk(%struct.sock* %13)
  store %struct.dccp_sock* %14, %struct.dccp_sock** %9, align 8
  %15 = load %struct.dccp_sock*, %struct.dccp_sock** %9, align 8
  %16 = getelementptr inbounds %struct.dccp_sock, %struct.dccp_sock* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  store i64 %18, i64* %10, align 8
  store i32 0, i32* %11, align 4
  %19 = load %struct.dccp_hdr*, %struct.dccp_hdr** %7, align 8
  %20 = getelementptr inbounds %struct.dccp_hdr, %struct.dccp_hdr* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  switch i32 %21, label %85 [
    i32 128, label %22
    i32 130, label %26
    i32 129, label %34
    i32 131, label %34
  ]

22:                                               ; preds = %4
  %23 = load %struct.sock*, %struct.sock** %5, align 8
  %24 = load i32, i32* @ICSK_TIME_DACK, align 4
  %25 = call i32 @inet_csk_clear_xmit_timer(%struct.sock* %23, i32 %24)
  br label %85

26:                                               ; preds = %4
  %27 = load %struct.sock*, %struct.sock** %5, align 8
  %28 = getelementptr inbounds %struct.sock, %struct.sock* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @DCCP_RESPOND, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %26
  br label %85

33:                                               ; preds = %26
  br label %34

34:                                               ; preds = %4, %4, %33
  %35 = load %struct.sock*, %struct.sock** %5, align 8
  %36 = getelementptr inbounds %struct.sock, %struct.sock* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @DCCP_PARTOPEN, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %44

40:                                               ; preds = %34
  %41 = load %struct.sock*, %struct.sock** %5, align 8
  %42 = load i32, i32* @ICSK_TIME_DACK, align 4
  %43 = call i32 @inet_csk_clear_xmit_timer(%struct.sock* %41, i32 %42)
  br label %44

44:                                               ; preds = %40, %34
  %45 = load i64, i64* %10, align 8
  %46 = call i32 @likely(i64 %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %59

48:                                               ; preds = %44
  %49 = call i64 (...) @dccp_timestamp()
  %50 = load i64, i64* %10, align 8
  %51 = sub nsw i64 %49, %50
  store i64 %51, i64* %12, align 8
  %52 = load %struct.sock*, %struct.sock** %5, align 8
  %53 = load i64, i64* %12, align 8
  %54 = mul nsw i64 10, %53
  %55 = trunc i64 %54 to i32
  %56 = call i32 @dccp_sample_rtt(%struct.sock* %52, i32 %55)
  %57 = load %struct.dccp_sock*, %struct.dccp_sock** %9, align 8
  %58 = getelementptr inbounds %struct.dccp_sock, %struct.dccp_sock* %57, i32 0, i32 1
  store i32 %56, i32* %58, align 4
  br label %59

59:                                               ; preds = %48, %44
  %60 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %61 = call %struct.TYPE_4__* @DCCP_SKB_CB(%struct.sk_buff* %60)
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.dccp_sock*, %struct.dccp_sock** %9, align 8
  %65 = getelementptr inbounds %struct.dccp_sock, %struct.dccp_sock* %64, i32 0, i32 0
  store i32 %63, i32* %65, align 8
  %66 = load %struct.sock*, %struct.sock** %5, align 8
  %67 = load i32, i32* @DCCP_OPEN, align 4
  %68 = call i32 @dccp_set_state(%struct.sock* %66, i32 %67)
  %69 = load %struct.dccp_hdr*, %struct.dccp_hdr** %7, align 8
  %70 = getelementptr inbounds %struct.dccp_hdr, %struct.dccp_hdr* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = icmp eq i32 %71, 129
  br i1 %72, label %78, label %73

73:                                               ; preds = %59
  %74 = load %struct.dccp_hdr*, %struct.dccp_hdr** %7, align 8
  %75 = getelementptr inbounds %struct.dccp_hdr, %struct.dccp_hdr* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = icmp eq i32 %76, 130
  br i1 %77, label %78, label %84

78:                                               ; preds = %73, %59
  %79 = load %struct.sock*, %struct.sock** %5, align 8
  %80 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %81 = load %struct.dccp_hdr*, %struct.dccp_hdr** %7, align 8
  %82 = load i32, i32* %8, align 4
  %83 = call i32 @__dccp_rcv_established(%struct.sock* %79, %struct.sk_buff* %80, %struct.dccp_hdr* %81, i32 %82)
  store i32 1, i32* %11, align 4
  br label %84

84:                                               ; preds = %78, %73
  br label %85

85:                                               ; preds = %4, %84, %32, %22
  %86 = load i32, i32* %11, align 4
  ret i32 %86
}

declare dso_local %struct.dccp_sock* @dccp_sk(%struct.sock*) #1

declare dso_local i32 @inet_csk_clear_xmit_timer(%struct.sock*, i32) #1

declare dso_local i32 @likely(i64) #1

declare dso_local i64 @dccp_timestamp(...) #1

declare dso_local i32 @dccp_sample_rtt(%struct.sock*, i32) #1

declare dso_local %struct.TYPE_4__* @DCCP_SKB_CB(%struct.sk_buff*) #1

declare dso_local i32 @dccp_set_state(%struct.sock*, i32) #1

declare dso_local i32 @__dccp_rcv_established(%struct.sock*, %struct.sk_buff*, %struct.dccp_hdr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
