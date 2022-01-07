; ModuleID = '/home/carl/AnghaBench/linux/net/tls/extr_tls_device_fallback.c_tls_sw_fallback.c'
source_filename = "/home/carl/AnghaBench/linux/net/tls/extr_tls_device_fallback.c_tls_sw_fallback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.sk_buff = type { i32 }
%struct.tls_context = type { i32 }
%struct.tls_offload_context_tx = type { i32 }
%struct.scatterlist = type { i32 }

@MAX_SKB_FRAGS = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.sock*, %struct.sk_buff*)* @tls_sw_fallback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @tls_sw_fallback(%struct.sock* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.sock*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.tls_context*, align 8
  %8 = alloca %struct.tls_offload_context_tx*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.scatterlist*, align 8
  %11 = alloca [3 x %struct.scatterlist], align 4
  %12 = alloca %struct.sk_buff*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %17 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %18 = call i32 @skb_transport_offset(%struct.sk_buff* %17)
  %19 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %20 = call i32 @tcp_hdrlen(%struct.sk_buff* %19)
  %21 = add nsw i32 %18, %20
  store i32 %21, i32* %6, align 4
  %22 = load %struct.sock*, %struct.sock** %4, align 8
  %23 = call %struct.tls_context* @tls_get_ctx(%struct.sock* %22)
  store %struct.tls_context* %23, %struct.tls_context** %7, align 8
  %24 = load %struct.tls_context*, %struct.tls_context** %7, align 8
  %25 = call %struct.tls_offload_context_tx* @tls_offload_ctx_tx(%struct.tls_context* %24)
  store %struct.tls_offload_context_tx* %25, %struct.tls_offload_context_tx** %8, align 8
  %26 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %27 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %6, align 4
  %30 = sub nsw i32 %28, %29
  store i32 %30, i32* %9, align 4
  store %struct.sk_buff* null, %struct.sk_buff** %12, align 8
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %31 = load i32, i32* @MAX_SKB_FRAGS, align 4
  %32 = mul nsw i32 2, %31
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %13, align 4
  %34 = load i32, i32* %9, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %38, label %36

36:                                               ; preds = %2
  %37 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  store %struct.sk_buff* %37, %struct.sk_buff** %3, align 8
  br label %104

38:                                               ; preds = %2
  %39 = load i32, i32* %13, align 4
  %40 = load i32, i32* @GFP_ATOMIC, align 4
  %41 = call %struct.scatterlist* @kmalloc_array(i32 %39, i32 4, i32 %40)
  store %struct.scatterlist* %41, %struct.scatterlist** %10, align 8
  %42 = load %struct.scatterlist*, %struct.scatterlist** %10, align 8
  %43 = icmp ne %struct.scatterlist* %42, null
  br i1 %43, label %45, label %44

44:                                               ; preds = %38
  br label %93

45:                                               ; preds = %38
  %46 = load %struct.scatterlist*, %struct.scatterlist** %10, align 8
  %47 = load i32, i32* %13, align 4
  %48 = call i32 @sg_init_table(%struct.scatterlist* %46, i32 %47)
  %49 = getelementptr inbounds [3 x %struct.scatterlist], [3 x %struct.scatterlist]* %11, i64 0, i64 0
  %50 = getelementptr inbounds [3 x %struct.scatterlist], [3 x %struct.scatterlist]* %11, i64 0, i64 0
  %51 = call i32 @ARRAY_SIZE(%struct.scatterlist* %50)
  %52 = call i32 @sg_init_table(%struct.scatterlist* %49, i32 %51)
  %53 = load %struct.scatterlist*, %struct.scatterlist** %10, align 8
  %54 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %55 = load %struct.tls_offload_context_tx*, %struct.tls_offload_context_tx** %8, align 8
  %56 = call i64 @fill_sg_in(%struct.scatterlist* %53, %struct.sk_buff* %54, %struct.tls_offload_context_tx* %55, i32* %16, i32* %15, i32* %14)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %70

58:                                               ; preds = %45
  %59 = load i32, i32* %15, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %69

61:                                               ; preds = %58
  %62 = load i32, i32* %9, align 4
  %63 = load i32, i32* %15, align 4
  %64 = sub nsw i32 0, %63
  %65 = icmp sle i32 %62, %64
  br i1 %65, label %66, label %69

66:                                               ; preds = %61
  %67 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %68 = call %struct.sk_buff* @skb_get(%struct.sk_buff* %67)
  store %struct.sk_buff* %68, %struct.sk_buff** %12, align 8
  br label %69

69:                                               ; preds = %66, %61, %58
  br label %78

70:                                               ; preds = %45
  %71 = load %struct.tls_context*, %struct.tls_context** %7, align 8
  %72 = getelementptr inbounds [3 x %struct.scatterlist], [3 x %struct.scatterlist]* %11, i64 0, i64 0
  %73 = load %struct.scatterlist*, %struct.scatterlist** %10, align 8
  %74 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %75 = load i32, i32* %15, align 4
  %76 = load i32, i32* %16, align 4
  %77 = call %struct.sk_buff* @tls_enc_skb(%struct.tls_context* %71, %struct.scatterlist* %72, %struct.scatterlist* %73, %struct.sk_buff* %74, i32 %75, i32 %76)
  store %struct.sk_buff* %77, %struct.sk_buff** %12, align 8
  br label %78

78:                                               ; preds = %70, %69
  br label %79

79:                                               ; preds = %82, %78
  %80 = load i32, i32* %14, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %90

82:                                               ; preds = %79
  %83 = load %struct.scatterlist*, %struct.scatterlist** %10, align 8
  %84 = load i32, i32* %14, align 4
  %85 = add nsw i32 %84, -1
  store i32 %85, i32* %14, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %83, i64 %86
  %88 = call i32 @sg_page(%struct.scatterlist* %87)
  %89 = call i32 @put_page(i32 %88)
  br label %79

90:                                               ; preds = %79
  %91 = load %struct.scatterlist*, %struct.scatterlist** %10, align 8
  %92 = call i32 @kfree(%struct.scatterlist* %91)
  br label %93

93:                                               ; preds = %90, %44
  %94 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %95 = icmp ne %struct.sk_buff* %94, null
  br i1 %95, label %96, label %99

96:                                               ; preds = %93
  %97 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %98 = call i32 @consume_skb(%struct.sk_buff* %97)
  br label %102

99:                                               ; preds = %93
  %100 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %101 = call i32 @kfree_skb(%struct.sk_buff* %100)
  br label %102

102:                                              ; preds = %99, %96
  %103 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  store %struct.sk_buff* %103, %struct.sk_buff** %3, align 8
  br label %104

104:                                              ; preds = %102, %36
  %105 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  ret %struct.sk_buff* %105
}

declare dso_local i32 @skb_transport_offset(%struct.sk_buff*) #1

declare dso_local i32 @tcp_hdrlen(%struct.sk_buff*) #1

declare dso_local %struct.tls_context* @tls_get_ctx(%struct.sock*) #1

declare dso_local %struct.tls_offload_context_tx* @tls_offload_ctx_tx(%struct.tls_context*) #1

declare dso_local %struct.scatterlist* @kmalloc_array(i32, i32, i32) #1

declare dso_local i32 @sg_init_table(%struct.scatterlist*, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.scatterlist*) #1

declare dso_local i64 @fill_sg_in(%struct.scatterlist*, %struct.sk_buff*, %struct.tls_offload_context_tx*, i32*, i32*, i32*) #1

declare dso_local %struct.sk_buff* @skb_get(%struct.sk_buff*) #1

declare dso_local %struct.sk_buff* @tls_enc_skb(%struct.tls_context*, %struct.scatterlist*, %struct.scatterlist*, %struct.sk_buff*, i32, i32) #1

declare dso_local i32 @put_page(i32) #1

declare dso_local i32 @sg_page(%struct.scatterlist*) #1

declare dso_local i32 @kfree(%struct.scatterlist*) #1

declare dso_local i32 @consume_skb(%struct.sk_buff*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
