; ModuleID = '/home/carl/AnghaBench/linux/net/tls/extr_tls_sw.c_tls_trim_both_msgs.c'
source_filename = "/home/carl/AnghaBench/linux/net/tls/extr_tls_sw.c_tls_trim_both_msgs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.tls_context = type { %struct.tls_prot_info }
%struct.tls_prot_info = type { i64 }
%struct.tls_sw_context_tx = type { %struct.tls_rec* }
%struct.tls_rec = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*, i32)* @tls_trim_both_msgs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tls_trim_both_msgs(%struct.sock* %0, i32 %1) #0 {
  %3 = alloca %struct.sock*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.tls_context*, align 8
  %6 = alloca %struct.tls_prot_info*, align 8
  %7 = alloca %struct.tls_sw_context_tx*, align 8
  %8 = alloca %struct.tls_rec*, align 8
  store %struct.sock* %0, %struct.sock** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.sock*, %struct.sock** %3, align 8
  %10 = call %struct.tls_context* @tls_get_ctx(%struct.sock* %9)
  store %struct.tls_context* %10, %struct.tls_context** %5, align 8
  %11 = load %struct.tls_context*, %struct.tls_context** %5, align 8
  %12 = getelementptr inbounds %struct.tls_context, %struct.tls_context* %11, i32 0, i32 0
  store %struct.tls_prot_info* %12, %struct.tls_prot_info** %6, align 8
  %13 = load %struct.tls_context*, %struct.tls_context** %5, align 8
  %14 = call %struct.tls_sw_context_tx* @tls_sw_ctx_tx(%struct.tls_context* %13)
  store %struct.tls_sw_context_tx* %14, %struct.tls_sw_context_tx** %7, align 8
  %15 = load %struct.tls_sw_context_tx*, %struct.tls_sw_context_tx** %7, align 8
  %16 = getelementptr inbounds %struct.tls_sw_context_tx, %struct.tls_sw_context_tx* %15, i32 0, i32 0
  %17 = load %struct.tls_rec*, %struct.tls_rec** %16, align 8
  store %struct.tls_rec* %17, %struct.tls_rec** %8, align 8
  %18 = load %struct.sock*, %struct.sock** %3, align 8
  %19 = load %struct.tls_rec*, %struct.tls_rec** %8, align 8
  %20 = getelementptr inbounds %struct.tls_rec, %struct.tls_rec* %19, i32 0, i32 1
  %21 = load i32, i32* %4, align 4
  %22 = call i32 @sk_msg_trim(%struct.sock* %18, i32* %20, i32 %21)
  %23 = load i32, i32* %4, align 4
  %24 = icmp sgt i32 %23, 0
  br i1 %24, label %25, label %33

25:                                               ; preds = %2
  %26 = load %struct.tls_prot_info*, %struct.tls_prot_info** %6, align 8
  %27 = getelementptr inbounds %struct.tls_prot_info, %struct.tls_prot_info* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i32, i32* %4, align 4
  %30 = sext i32 %29 to i64
  %31 = add nsw i64 %30, %28
  %32 = trunc i64 %31 to i32
  store i32 %32, i32* %4, align 4
  br label %33

33:                                               ; preds = %25, %2
  %34 = load %struct.sock*, %struct.sock** %3, align 8
  %35 = load %struct.tls_rec*, %struct.tls_rec** %8, align 8
  %36 = getelementptr inbounds %struct.tls_rec, %struct.tls_rec* %35, i32 0, i32 0
  %37 = load i32, i32* %4, align 4
  %38 = call i32 @sk_msg_trim(%struct.sock* %34, i32* %36, i32 %37)
  ret void
}

declare dso_local %struct.tls_context* @tls_get_ctx(%struct.sock*) #1

declare dso_local %struct.tls_sw_context_tx* @tls_sw_ctx_tx(%struct.tls_context*) #1

declare dso_local i32 @sk_msg_trim(%struct.sock*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
