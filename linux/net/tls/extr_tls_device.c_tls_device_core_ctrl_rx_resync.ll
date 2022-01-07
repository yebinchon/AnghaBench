; ModuleID = '/home/carl/AnghaBench/linux/net/tls/extr_tls_device.c_tls_device_core_ctrl_rx_resync.c'
source_filename = "/home/carl/AnghaBench/linux/net/tls/extr_tls_device.c_tls_device_core_ctrl_rx_resync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tls_context = type { %struct.TYPE_5__, %struct.tls_prot_info }
%struct.TYPE_5__ = type { i32 }
%struct.tls_prot_info = type { i32 }
%struct.tls_offload_context_rx = type { i64, i32, %struct.TYPE_4__, i64 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.sock = type { i32 }
%struct.sk_buff = type { i32 }
%struct.strp_msg = type { i64 }
%struct.TYPE_6__ = type { i32 }

@TLS_OFFLOAD_SYNC_TYPE_CORE_NEXT_HINT = common dso_local global i64 0, align 8
@TLS_DEVICE_RESYNC_NH_START_IVAL = common dso_local global i32 0, align 4
@TLS_DEVICE_RESYNC_NH_MAX_IVAL = common dso_local global i32 0, align 4
@TLS_MAX_REC_SEQ_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tls_context*, %struct.tls_offload_context_rx*, %struct.sock*, %struct.sk_buff*)* @tls_device_core_ctrl_rx_resync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tls_device_core_ctrl_rx_resync(%struct.tls_context* %0, %struct.tls_offload_context_rx* %1, %struct.sock* %2, %struct.sk_buff* %3) #0 {
  %5 = alloca %struct.tls_context*, align 8
  %6 = alloca %struct.tls_offload_context_rx*, align 8
  %7 = alloca %struct.sock*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.strp_msg*, align 8
  %10 = alloca %struct.tls_prot_info*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  store %struct.tls_context* %0, %struct.tls_context** %5, align 8
  store %struct.tls_offload_context_rx* %1, %struct.tls_offload_context_rx** %6, align 8
  store %struct.sock* %2, %struct.sock** %7, align 8
  store %struct.sk_buff* %3, %struct.sk_buff** %8, align 8
  %13 = load %struct.tls_offload_context_rx*, %struct.tls_offload_context_rx** %6, align 8
  %14 = getelementptr inbounds %struct.tls_offload_context_rx, %struct.tls_offload_context_rx* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @TLS_OFFLOAD_SYNC_TYPE_CORE_NEXT_HINT, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %4
  br label %111

19:                                               ; preds = %4
  %20 = load %struct.tls_offload_context_rx*, %struct.tls_offload_context_rx** %6, align 8
  %21 = getelementptr inbounds %struct.tls_offload_context_rx, %struct.tls_offload_context_rx* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  br label %111

25:                                               ; preds = %19
  %26 = load %struct.tls_offload_context_rx*, %struct.tls_offload_context_rx** %6, align 8
  %27 = getelementptr inbounds %struct.tls_offload_context_rx, %struct.tls_offload_context_rx* %26, i32 0, i32 3
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %40

30:                                               ; preds = %25
  %31 = load %struct.tls_offload_context_rx*, %struct.tls_offload_context_rx** %6, align 8
  %32 = getelementptr inbounds %struct.tls_offload_context_rx, %struct.tls_offload_context_rx* %31, i32 0, i32 3
  store i64 0, i64* %32, align 8
  %33 = load %struct.tls_offload_context_rx*, %struct.tls_offload_context_rx** %6, align 8
  %34 = getelementptr inbounds %struct.tls_offload_context_rx, %struct.tls_offload_context_rx* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  store i32 1, i32* %35, align 4
  %36 = load i32, i32* @TLS_DEVICE_RESYNC_NH_START_IVAL, align 4
  %37 = load %struct.tls_offload_context_rx*, %struct.tls_offload_context_rx** %6, align 8
  %38 = getelementptr inbounds %struct.tls_offload_context_rx, %struct.tls_offload_context_rx* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 1
  store i32 %36, i32* %39, align 4
  br label %111

40:                                               ; preds = %25
  %41 = load %struct.tls_offload_context_rx*, %struct.tls_offload_context_rx** %6, align 8
  %42 = getelementptr inbounds %struct.tls_offload_context_rx, %struct.tls_offload_context_rx* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %43, align 4
  %46 = load %struct.tls_offload_context_rx*, %struct.tls_offload_context_rx** %6, align 8
  %47 = getelementptr inbounds %struct.tls_offload_context_rx, %struct.tls_offload_context_rx* %46, i32 0, i32 2
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = icmp sle i32 %45, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %40
  br label %111

52:                                               ; preds = %40
  %53 = load %struct.tls_offload_context_rx*, %struct.tls_offload_context_rx** %6, align 8
  %54 = getelementptr inbounds %struct.tls_offload_context_rx, %struct.tls_offload_context_rx* %53, i32 0, i32 2
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @TLS_DEVICE_RESYNC_NH_MAX_IVAL, align 4
  %58 = icmp slt i32 %56, %57
  br i1 %58, label %59, label %65

59:                                               ; preds = %52
  %60 = load %struct.tls_offload_context_rx*, %struct.tls_offload_context_rx** %6, align 8
  %61 = getelementptr inbounds %struct.tls_offload_context_rx, %struct.tls_offload_context_rx* %60, i32 0, i32 2
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = mul nsw i32 %63, 2
  store i32 %64, i32* %62, align 4
  br label %72

65:                                               ; preds = %52
  %66 = load i32, i32* @TLS_DEVICE_RESYNC_NH_MAX_IVAL, align 4
  %67 = load %struct.tls_offload_context_rx*, %struct.tls_offload_context_rx** %6, align 8
  %68 = getelementptr inbounds %struct.tls_offload_context_rx, %struct.tls_offload_context_rx* %67, i32 0, i32 2
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = add nsw i32 %70, %66
  store i32 %71, i32* %69, align 4
  br label %72

72:                                               ; preds = %65, %59
  %73 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %74 = call %struct.strp_msg* @strp_msg(%struct.sk_buff* %73)
  store %struct.strp_msg* %74, %struct.strp_msg** %9, align 8
  %75 = load %struct.sock*, %struct.sock** %7, align 8
  %76 = call i64 @tcp_inq(%struct.sock* %75)
  %77 = load %struct.strp_msg*, %struct.strp_msg** %9, align 8
  %78 = getelementptr inbounds %struct.strp_msg, %struct.strp_msg* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = icmp sgt i64 %76, %79
  br i1 %80, label %81, label %84

81:                                               ; preds = %72
  %82 = load %struct.tls_offload_context_rx*, %struct.tls_offload_context_rx** %6, align 8
  %83 = getelementptr inbounds %struct.tls_offload_context_rx, %struct.tls_offload_context_rx* %82, i32 0, i32 1
  store i32 1, i32* %83, align 8
  br label %111

84:                                               ; preds = %72
  %85 = load %struct.tls_context*, %struct.tls_context** %5, align 8
  %86 = getelementptr inbounds %struct.tls_context, %struct.tls_context* %85, i32 0, i32 1
  store %struct.tls_prot_info* %86, %struct.tls_prot_info** %10, align 8
  %87 = load i32, i32* @TLS_MAX_REC_SEQ_SIZE, align 4
  %88 = zext i32 %87 to i64
  %89 = call i8* @llvm.stacksave()
  store i8* %89, i8** %11, align 8
  %90 = alloca i32, i64 %88, align 16
  store i64 %88, i64* %12, align 8
  %91 = load %struct.tls_context*, %struct.tls_context** %5, align 8
  %92 = getelementptr inbounds %struct.tls_context, %struct.tls_context* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.tls_prot_info*, %struct.tls_prot_info** %10, align 8
  %96 = getelementptr inbounds %struct.tls_prot_info, %struct.tls_prot_info* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @memcpy(i32* %90, i32 %94, i32 %97)
  %99 = load %struct.tls_prot_info*, %struct.tls_prot_info** %10, align 8
  %100 = getelementptr inbounds %struct.tls_prot_info, %struct.tls_prot_info* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @tls_bigint_increment(i32* %90, i32 %101)
  %103 = load %struct.tls_context*, %struct.tls_context** %5, align 8
  %104 = load %struct.sock*, %struct.sock** %7, align 8
  %105 = load %struct.sock*, %struct.sock** %7, align 8
  %106 = call %struct.TYPE_6__* @tcp_sk(%struct.sock* %105)
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @tls_device_resync_rx(%struct.tls_context* %103, %struct.sock* %104, i32 %108, i32* %90)
  %110 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %110)
  br label %111

111:                                              ; preds = %18, %24, %30, %51, %84, %81
  ret void
}

declare dso_local %struct.strp_msg* @strp_msg(%struct.sk_buff*) #1

declare dso_local i64 @tcp_inq(%struct.sock*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @tls_bigint_increment(i32*, i32) #1

declare dso_local i32 @tls_device_resync_rx(%struct.tls_context*, %struct.sock*, i32, i32*) #1

declare dso_local %struct.TYPE_6__* @tcp_sk(%struct.sock*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
