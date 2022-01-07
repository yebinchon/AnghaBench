; ModuleID = '/home/carl/AnghaBench/linux/net/tls/extr_tls_sw.c_tls_read_size.c'
source_filename = "/home/carl/AnghaBench/linux/net/tls/extr_tls_sw.c_tls_read_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strparser = type { i32 }
%struct.sk_buff = type { i64 }
%struct.tls_context = type { %struct.tls_prot_info }
%struct.tls_prot_info = type { i32, i64, i64, i64, i64 }
%struct.tls_sw_context_rx = type { i8 }
%struct.strp_msg = type { i64 }
%struct.TYPE_2__ = type { i64 }

@TLS_HEADER_SIZE = common dso_local global i32 0, align 4
@MAX_IV_SIZE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@TLS_1_3_VERSION = common dso_local global i64 0, align 8
@TLS_MAX_PAYLOAD_SIZE = common dso_local global i64 0, align 8
@EMSGSIZE = common dso_local global i32 0, align 4
@EBADMSG = common dso_local global i32 0, align 4
@TLS_1_2_VERSION_MINOR = common dso_local global i8 0, align 1
@TLS_1_2_VERSION_MAJOR = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.strparser*, %struct.sk_buff*)* @tls_read_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tls_read_size(%struct.strparser* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.strparser*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.tls_context*, align 8
  %7 = alloca %struct.tls_sw_context_rx*, align 8
  %8 = alloca %struct.tls_prot_info*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.strp_msg*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.strparser* %0, %struct.strparser** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %16 = load %struct.strparser*, %struct.strparser** %4, align 8
  %17 = getelementptr inbounds %struct.strparser, %struct.strparser* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.tls_context* @tls_get_ctx(i32 %18)
  store %struct.tls_context* %19, %struct.tls_context** %6, align 8
  %20 = load %struct.tls_context*, %struct.tls_context** %6, align 8
  %21 = call %struct.tls_sw_context_rx* @tls_sw_ctx_rx(%struct.tls_context* %20)
  store %struct.tls_sw_context_rx* %21, %struct.tls_sw_context_rx** %7, align 8
  %22 = load %struct.tls_context*, %struct.tls_context** %6, align 8
  %23 = getelementptr inbounds %struct.tls_context, %struct.tls_context* %22, i32 0, i32 0
  store %struct.tls_prot_info* %23, %struct.tls_prot_info** %8, align 8
  %24 = load i32, i32* @TLS_HEADER_SIZE, align 4
  %25 = load i32, i32* @MAX_IV_SIZE, align 4
  %26 = add nsw i32 %24, %25
  %27 = zext i32 %26 to i64
  %28 = call i8* @llvm.stacksave()
  store i8* %28, i8** %9, align 8
  %29 = alloca i8, i64 %27, align 16
  store i64 %27, i64* %10, align 8
  %30 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %31 = call %struct.strp_msg* @strp_msg(%struct.sk_buff* %30)
  store %struct.strp_msg* %31, %struct.strp_msg** %11, align 8
  store i64 0, i64* %13, align 8
  %32 = load %struct.strp_msg*, %struct.strp_msg** %11, align 8
  %33 = getelementptr inbounds %struct.strp_msg, %struct.strp_msg* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.tls_prot_info*, %struct.tls_prot_info** %8, align 8
  %36 = getelementptr inbounds %struct.tls_prot_info, %struct.tls_prot_info* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = sext i32 %37 to i64
  %39 = add nsw i64 %34, %38
  %40 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %41 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp sgt i64 %39, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %165

45:                                               ; preds = %2
  %46 = load %struct.tls_prot_info*, %struct.tls_prot_info** %8, align 8
  %47 = getelementptr inbounds %struct.tls_prot_info, %struct.tls_prot_info* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = sext i32 %48 to i64
  %50 = icmp ugt i64 %49, %27
  %51 = zext i1 %50 to i32
  %52 = call i64 @WARN_ON(i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %45
  %55 = load i32, i32* @EINVAL, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %14, align 4
  br label %158

57:                                               ; preds = %45
  %58 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %59 = load %struct.strp_msg*, %struct.strp_msg** %11, align 8
  %60 = getelementptr inbounds %struct.strp_msg, %struct.strp_msg* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.tls_prot_info*, %struct.tls_prot_info** %8, align 8
  %63 = getelementptr inbounds %struct.tls_prot_info, %struct.tls_prot_info* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @skb_copy_bits(%struct.sk_buff* %58, i64 %61, i8* %29, i32 %64)
  store i32 %65, i32* %14, align 4
  %66 = load i32, i32* %14, align 4
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %57
  br label %158

69:                                               ; preds = %57
  %70 = getelementptr inbounds i8, i8* %29, i64 0
  %71 = load i8, i8* %70, align 16
  %72 = load %struct.tls_sw_context_rx*, %struct.tls_sw_context_rx** %7, align 8
  %73 = getelementptr inbounds %struct.tls_sw_context_rx, %struct.tls_sw_context_rx* %72, i32 0, i32 0
  store i8 %71, i8* %73, align 1
  %74 = getelementptr inbounds i8, i8* %29, i64 4
  %75 = load i8, i8* %74, align 4
  %76 = sext i8 %75 to i32
  %77 = and i32 %76, 255
  %78 = getelementptr inbounds i8, i8* %29, i64 3
  %79 = load i8, i8* %78, align 1
  %80 = sext i8 %79 to i32
  %81 = shl i32 %80, 8
  %82 = or i32 %77, %81
  %83 = sext i32 %82 to i64
  store i64 %83, i64* %13, align 8
  %84 = load %struct.tls_prot_info*, %struct.tls_prot_info** %8, align 8
  %85 = getelementptr inbounds %struct.tls_prot_info, %struct.tls_prot_info* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  store i64 %86, i64* %12, align 8
  %87 = load %struct.tls_prot_info*, %struct.tls_prot_info** %8, align 8
  %88 = getelementptr inbounds %struct.tls_prot_info, %struct.tls_prot_info* %87, i32 0, i32 2
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @TLS_1_3_VERSION, align 8
  %91 = icmp ne i64 %89, %90
  br i1 %91, label %92, label %98

92:                                               ; preds = %69
  %93 = load %struct.tls_prot_info*, %struct.tls_prot_info** %8, align 8
  %94 = getelementptr inbounds %struct.tls_prot_info, %struct.tls_prot_info* %93, i32 0, i32 4
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* %12, align 8
  %97 = add i64 %96, %95
  store i64 %97, i64* %12, align 8
  br label %98

98:                                               ; preds = %92, %69
  %99 = load i64, i64* %13, align 8
  %100 = load i64, i64* @TLS_MAX_PAYLOAD_SIZE, align 8
  %101 = load i64, i64* %12, align 8
  %102 = add i64 %100, %101
  %103 = load %struct.tls_prot_info*, %struct.tls_prot_info** %8, align 8
  %104 = getelementptr inbounds %struct.tls_prot_info, %struct.tls_prot_info* %103, i32 0, i32 3
  %105 = load i64, i64* %104, align 8
  %106 = add i64 %102, %105
  %107 = icmp ugt i64 %99, %106
  br i1 %107, label %108, label %111

108:                                              ; preds = %98
  %109 = load i32, i32* @EMSGSIZE, align 4
  %110 = sub nsw i32 0, %109
  store i32 %110, i32* %14, align 4
  br label %158

111:                                              ; preds = %98
  %112 = load i64, i64* %13, align 8
  %113 = load i64, i64* %12, align 8
  %114 = icmp ult i64 %112, %113
  br i1 %114, label %115, label %118

115:                                              ; preds = %111
  %116 = load i32, i32* @EBADMSG, align 4
  %117 = sub nsw i32 0, %116
  store i32 %117, i32* %14, align 4
  br label %158

118:                                              ; preds = %111
  %119 = getelementptr inbounds i8, i8* %29, i64 1
  %120 = load i8, i8* %119, align 1
  %121 = sext i8 %120 to i32
  %122 = load i8, i8* @TLS_1_2_VERSION_MINOR, align 1
  %123 = sext i8 %122 to i32
  %124 = icmp ne i32 %121, %123
  br i1 %124, label %132, label %125

125:                                              ; preds = %118
  %126 = getelementptr inbounds i8, i8* %29, i64 2
  %127 = load i8, i8* %126, align 2
  %128 = sext i8 %127 to i32
  %129 = load i8, i8* @TLS_1_2_VERSION_MAJOR, align 1
  %130 = sext i8 %129 to i32
  %131 = icmp ne i32 %128, %130
  br i1 %131, label %132, label %135

132:                                              ; preds = %125, %118
  %133 = load i32, i32* @EINVAL, align 4
  %134 = sub nsw i32 0, %133
  store i32 %134, i32* %14, align 4
  br label %158

135:                                              ; preds = %125
  %136 = load %struct.strparser*, %struct.strparser** %4, align 8
  %137 = getelementptr inbounds %struct.strparser, %struct.strparser* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = load i64, i64* %13, align 8
  %140 = load i32, i32* @TLS_HEADER_SIZE, align 4
  %141 = sext i32 %140 to i64
  %142 = add i64 %139, %141
  %143 = trunc i64 %142 to i32
  %144 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %145 = call %struct.TYPE_2__* @TCP_SKB_CB(%struct.sk_buff* %144)
  %146 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = load %struct.strp_msg*, %struct.strp_msg** %11, align 8
  %149 = getelementptr inbounds %struct.strp_msg, %struct.strp_msg* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = add nsw i64 %147, %150
  %152 = call i32 @tls_device_rx_resync_new_rec(i32 %138, i32 %143, i64 %151)
  %153 = load i64, i64* %13, align 8
  %154 = load i32, i32* @TLS_HEADER_SIZE, align 4
  %155 = sext i32 %154 to i64
  %156 = add i64 %153, %155
  %157 = trunc i64 %156 to i32
  store i32 %157, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %165

158:                                              ; preds = %132, %115, %108, %68, %54
  %159 = load %struct.strparser*, %struct.strparser** %4, align 8
  %160 = getelementptr inbounds %struct.strparser, %struct.strparser* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = load i32, i32* %14, align 4
  %163 = call i32 @tls_err_abort(i32 %161, i32 %162)
  %164 = load i32, i32* %14, align 4
  store i32 %164, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %165

165:                                              ; preds = %158, %135, %44
  %166 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %166)
  %167 = load i32, i32* %3, align 4
  ret i32 %167
}

declare dso_local %struct.tls_context* @tls_get_ctx(i32) #1

declare dso_local %struct.tls_sw_context_rx* @tls_sw_ctx_rx(%struct.tls_context*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local %struct.strp_msg* @strp_msg(%struct.sk_buff*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @skb_copy_bits(%struct.sk_buff*, i64, i8*, i32) #1

declare dso_local i32 @tls_device_rx_resync_new_rec(i32, i32, i64) #1

declare dso_local %struct.TYPE_2__* @TCP_SKB_CB(%struct.sk_buff*) #1

declare dso_local i32 @tls_err_abort(i32, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
