; ModuleID = '/home/carl/AnghaBench/linux/net/tls/extr_tls_device_fallback.c_fill_sg_in.c'
source_filename = "/home/carl/AnghaBench/linux/net/tls/extr_tls_device_fallback.c_fill_sg_in.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scatterlist = type { i32 }
%struct.sk_buff = type { i32 }
%struct.tls_offload_context_tx = type { i32 }
%struct.tls_record_info = type { i32* }
%struct.TYPE_2__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scatterlist*, %struct.sk_buff*, %struct.tls_offload_context_tx*, i32*, i32*, i32*)* @fill_sg_in to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fill_sg_in(%struct.scatterlist* %0, %struct.sk_buff* %1, %struct.tls_offload_context_tx* %2, i32* %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.scatterlist*, align 8
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca %struct.tls_offload_context_tx*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.tls_record_info*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32*, align 8
  store %struct.scatterlist* %0, %struct.scatterlist** %8, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %9, align 8
  store %struct.tls_offload_context_tx* %2, %struct.tls_offload_context_tx** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  %23 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %24 = call i32 @skb_transport_offset(%struct.sk_buff* %23)
  %25 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %26 = call i32 @tcp_hdrlen(%struct.sk_buff* %25)
  %27 = add nsw i32 %24, %26
  store i32 %27, i32* %14, align 4
  %28 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %29 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %14, align 4
  %32 = sub nsw i32 %30, %31
  store i32 %32, i32* %15, align 4
  %33 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %34 = call %struct.TYPE_2__* @tcp_hdr(%struct.sk_buff* %33)
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @ntohl(i32 %36)
  store i32 %37, i32* %16, align 4
  %38 = load %struct.tls_offload_context_tx*, %struct.tls_offload_context_tx** %10, align 8
  %39 = getelementptr inbounds %struct.tls_offload_context_tx, %struct.tls_offload_context_tx* %38, i32 0, i32 0
  %40 = load i64, i64* %18, align 8
  %41 = call i32 @spin_lock_irqsave(i32* %39, i64 %40)
  %42 = load %struct.tls_offload_context_tx*, %struct.tls_offload_context_tx** %10, align 8
  %43 = load i32, i32* %16, align 4
  %44 = load i32*, i32** %11, align 8
  %45 = call %struct.tls_record_info* @tls_get_record(%struct.tls_offload_context_tx* %42, i32 %43, i32* %44)
  store %struct.tls_record_info* %45, %struct.tls_record_info** %17, align 8
  %46 = load %struct.tls_record_info*, %struct.tls_record_info** %17, align 8
  %47 = icmp ne %struct.tls_record_info* %46, null
  br i1 %47, label %55, label %48

48:                                               ; preds = %6
  %49 = load %struct.tls_offload_context_tx*, %struct.tls_offload_context_tx** %10, align 8
  %50 = getelementptr inbounds %struct.tls_offload_context_tx, %struct.tls_offload_context_tx* %49, i32 0, i32 0
  %51 = load i64, i64* %18, align 8
  %52 = call i32 @spin_unlock_irqrestore(i32* %50, i64 %51)
  %53 = load i32, i32* @EINVAL, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %7, align 4
  br label %145

55:                                               ; preds = %6
  %56 = load i32, i32* %16, align 4
  %57 = load %struct.tls_record_info*, %struct.tls_record_info** %17, align 8
  %58 = call i32 @tls_record_start_seq(%struct.tls_record_info* %57)
  %59 = sub nsw i32 %56, %58
  %60 = load i32*, i32** %12, align 8
  store i32 %59, i32* %60, align 4
  %61 = load i32*, i32** %12, align 8
  %62 = load i32, i32* %61, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %78

64:                                               ; preds = %55
  %65 = load %struct.tls_record_info*, %struct.tls_record_info** %17, align 8
  %66 = call i32 @tls_record_is_start_marker(%struct.tls_record_info* %65)
  store i32 %66, i32* %21, align 4
  %67 = load %struct.tls_offload_context_tx*, %struct.tls_offload_context_tx** %10, align 8
  %68 = getelementptr inbounds %struct.tls_offload_context_tx, %struct.tls_offload_context_tx* %67, i32 0, i32 0
  %69 = load i64, i64* %18, align 8
  %70 = call i32 @spin_unlock_irqrestore(i32* %68, i64 %69)
  %71 = load i32, i32* %21, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %75, label %73

73:                                               ; preds = %64
  %74 = load i32*, i32** %12, align 8
  store i32 0, i32* %74, align 4
  br label %75

75:                                               ; preds = %73, %64
  %76 = load i32, i32* @EINVAL, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %7, align 4
  br label %145

78:                                               ; preds = %55
  %79 = load i32*, i32** %12, align 8
  %80 = load i32, i32* %79, align 4
  store i32 %80, i32* %19, align 4
  store i32 0, i32* %20, align 4
  br label %81

81:                                               ; preds = %122, %78
  %82 = load i32, i32* %19, align 4
  %83 = icmp sgt i32 %82, 0
  br i1 %83, label %84, label %125

84:                                               ; preds = %81
  %85 = load %struct.tls_record_info*, %struct.tls_record_info** %17, align 8
  %86 = getelementptr inbounds %struct.tls_record_info, %struct.tls_record_info* %85, i32 0, i32 0
  %87 = load i32*, i32** %86, align 8
  %88 = load i32, i32* %20, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %87, i64 %89
  store i32* %90, i32** %22, align 8
  %91 = load i32*, i32** %22, align 8
  %92 = call i32 @__skb_frag_ref(i32* %91)
  %93 = load %struct.scatterlist*, %struct.scatterlist** %8, align 8
  %94 = load i32, i32* %20, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %93, i64 %95
  %97 = load i32*, i32** %22, align 8
  %98 = call i32 @skb_frag_page(i32* %97)
  %99 = load i32*, i32** %22, align 8
  %100 = call i64 @skb_frag_size(i32* %99)
  %101 = load i32*, i32** %22, align 8
  %102 = call i32 @skb_frag_off(i32* %101)
  %103 = call i32 @sg_set_page(%struct.scatterlist* %96, i32 %98, i64 %100, i32 %102)
  %104 = load i32*, i32** %22, align 8
  %105 = call i64 @skb_frag_size(i32* %104)
  %106 = load i32, i32* %19, align 4
  %107 = sext i32 %106 to i64
  %108 = sub nsw i64 %107, %105
  %109 = trunc i64 %108 to i32
  store i32 %109, i32* %19, align 4
  %110 = load i32, i32* %19, align 4
  %111 = icmp slt i32 %110, 0
  br i1 %111, label %112, label %121

112:                                              ; preds = %84
  %113 = load i32, i32* %19, align 4
  %114 = load %struct.scatterlist*, %struct.scatterlist** %8, align 8
  %115 = load i32, i32* %20, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %114, i64 %116
  %118 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = add nsw i32 %119, %113
  store i32 %120, i32* %118, align 4
  br label %121

121:                                              ; preds = %112, %84
  br label %122

122:                                              ; preds = %121
  %123 = load i32, i32* %20, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %20, align 4
  br label %81

125:                                              ; preds = %81
  %126 = load i32, i32* %20, align 4
  %127 = load i32*, i32** %13, align 8
  store i32 %126, i32* %127, align 4
  %128 = load %struct.tls_offload_context_tx*, %struct.tls_offload_context_tx** %10, align 8
  %129 = getelementptr inbounds %struct.tls_offload_context_tx, %struct.tls_offload_context_tx* %128, i32 0, i32 0
  %130 = load i64, i64* %18, align 8
  %131 = call i32 @spin_unlock_irqrestore(i32* %129, i64 %130)
  %132 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %133 = load %struct.scatterlist*, %struct.scatterlist** %8, align 8
  %134 = load i32, i32* %20, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %133, i64 %135
  %137 = load i32, i32* %14, align 4
  %138 = load i32, i32* %15, align 4
  %139 = call i64 @skb_to_sgvec(%struct.sk_buff* %132, %struct.scatterlist* %136, i32 %137, i32 %138)
  %140 = icmp slt i64 %139, 0
  br i1 %140, label %141, label %144

141:                                              ; preds = %125
  %142 = load i32, i32* @EINVAL, align 4
  %143 = sub nsw i32 0, %142
  store i32 %143, i32* %7, align 4
  br label %145

144:                                              ; preds = %125
  store i32 0, i32* %7, align 4
  br label %145

145:                                              ; preds = %144, %141, %75, %48
  %146 = load i32, i32* %7, align 4
  ret i32 %146
}

declare dso_local i32 @skb_transport_offset(%struct.sk_buff*) #1

declare dso_local i32 @tcp_hdrlen(%struct.sk_buff*) #1

declare dso_local i32 @ntohl(i32) #1

declare dso_local %struct.TYPE_2__* @tcp_hdr(%struct.sk_buff*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct.tls_record_info* @tls_get_record(%struct.tls_offload_context_tx*, i32, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @tls_record_start_seq(%struct.tls_record_info*) #1

declare dso_local i32 @tls_record_is_start_marker(%struct.tls_record_info*) #1

declare dso_local i32 @__skb_frag_ref(i32*) #1

declare dso_local i32 @sg_set_page(%struct.scatterlist*, i32, i64, i32) #1

declare dso_local i32 @skb_frag_page(i32*) #1

declare dso_local i64 @skb_frag_size(i32*) #1

declare dso_local i32 @skb_frag_off(i32*) #1

declare dso_local i64 @skb_to_sgvec(%struct.sk_buff*, %struct.scatterlist*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
