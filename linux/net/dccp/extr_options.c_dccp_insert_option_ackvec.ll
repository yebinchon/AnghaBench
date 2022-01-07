; ModuleID = '/home/carl/AnghaBench/linux/net/dccp/extr_options.c_dccp_insert_option_ackvec.c'
source_filename = "/home/carl/AnghaBench/linux/net/dccp/extr_options.c_dccp_insert_option_ackvec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.sk_buff = type { i64 }
%struct.dccp_sock = type { i64, i32, %struct.dccp_ackvec* }
%struct.dccp_ackvec = type { i8*, i32, i32* }
%struct.dccp_skb_cb = type { i64, i32, i32 }

@DCCP_SINGLE_OPT_MAXLEN = common dso_local global i32 0, align 4
@DCCP_MAX_OPT_LEN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [41 x i8] c"Lacking space for %u bytes on %s packet\0A\00", align 1
@DCCPAV_MIN_OPTLEN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [83 x i8] c"No space left for Ack Vector (%u) on skb (%u+%u), MPS=%u ==> reduce payload size?\0A\00", align 1
@DCCPAV_MAX_ACKVEC_LEN = common dso_local global i32 0, align 4
@DCCPO_ACK_VECTOR_0 = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, %struct.sk_buff*)* @dccp_insert_option_ackvec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dccp_insert_option_ackvec(%struct.sock* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sock*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.dccp_sock*, align 8
  %7 = alloca %struct.dccp_ackvec*, align 8
  %8 = alloca %struct.dccp_skb_cb*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %19 = load %struct.sock*, %struct.sock** %4, align 8
  %20 = call %struct.dccp_sock* @dccp_sk(%struct.sock* %19)
  store %struct.dccp_sock* %20, %struct.dccp_sock** %6, align 8
  %21 = load %struct.dccp_sock*, %struct.dccp_sock** %6, align 8
  %22 = getelementptr inbounds %struct.dccp_sock, %struct.dccp_sock* %21, i32 0, i32 2
  %23 = load %struct.dccp_ackvec*, %struct.dccp_ackvec** %22, align 8
  store %struct.dccp_ackvec* %23, %struct.dccp_ackvec** %7, align 8
  %24 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %25 = call %struct.dccp_skb_cb* @DCCP_SKB_CB(%struct.sk_buff* %24)
  store %struct.dccp_skb_cb* %25, %struct.dccp_skb_cb** %8, align 8
  %26 = load %struct.dccp_ackvec*, %struct.dccp_ackvec** %7, align 8
  %27 = call i32 @dccp_ackvec_buflen(%struct.dccp_ackvec* %26)
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* @DCCP_SINGLE_OPT_MAXLEN, align 4
  %30 = call i32 @DIV_ROUND_UP(i32 %28, i32 %29)
  store i32 %30, i32* %10, align 4
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* %10, align 4
  %33 = mul nsw i32 2, %32
  %34 = add nsw i32 %31, %33
  store i32 %34, i32* %11, align 4
  store i32 0, i32* %13, align 4
  %35 = load %struct.dccp_skb_cb*, %struct.dccp_skb_cb** %8, align 8
  %36 = getelementptr inbounds %struct.dccp_skb_cb, %struct.dccp_skb_cb* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i32, i32* %11, align 4
  %39 = sext i32 %38 to i64
  %40 = add nsw i64 %37, %39
  %41 = load i64, i64* @DCCP_MAX_OPT_LEN, align 8
  %42 = icmp sgt i64 %40, %41
  br i1 %42, label %43, label %51

43:                                               ; preds = %2
  %44 = load i32, i32* %11, align 4
  %45 = load %struct.dccp_skb_cb*, %struct.dccp_skb_cb** %8, align 8
  %46 = getelementptr inbounds %struct.dccp_skb_cb, %struct.dccp_skb_cb* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @dccp_packet_name(i32 %47)
  %49 = sext i32 %48 to i64
  %50 = call i32 (i8*, i32, i64, ...) @DCCP_WARN(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %44, i64 %49)
  store i32 -1, i32* %3, align 4
  br label %208

51:                                               ; preds = %2
  %52 = load i32, i32* %11, align 4
  %53 = load i32, i32* @DCCPAV_MIN_OPTLEN, align 4
  %54 = icmp sgt i32 %52, %53
  br i1 %54, label %55, label %84

55:                                               ; preds = %51
  %56 = load i32, i32* %11, align 4
  %57 = sext i32 %56 to i64
  %58 = load %struct.dccp_skb_cb*, %struct.dccp_skb_cb** %8, align 8
  %59 = getelementptr inbounds %struct.dccp_skb_cb, %struct.dccp_skb_cb* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = add nsw i64 %57, %60
  %62 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %63 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = add nsw i64 %61, %64
  %66 = load %struct.dccp_sock*, %struct.dccp_sock** %6, align 8
  %67 = getelementptr inbounds %struct.dccp_sock, %struct.dccp_sock* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = icmp sgt i64 %65, %68
  br i1 %69, label %70, label %84

70:                                               ; preds = %55
  %71 = load i32, i32* %11, align 4
  %72 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %73 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.dccp_skb_cb*, %struct.dccp_skb_cb** %8, align 8
  %76 = getelementptr inbounds %struct.dccp_skb_cb, %struct.dccp_skb_cb* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.dccp_sock*, %struct.dccp_sock** %6, align 8
  %79 = getelementptr inbounds %struct.dccp_sock, %struct.dccp_sock* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = call i32 (i8*, i32, i64, ...) @DCCP_WARN(i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.1, i64 0, i64 0), i32 %71, i64 %74, i64 %77, i64 %80)
  %82 = load %struct.dccp_sock*, %struct.dccp_sock** %6, align 8
  %83 = getelementptr inbounds %struct.dccp_sock, %struct.dccp_sock* %82, i32 0, i32 1
  store i32 1, i32* %83, align 8
  store i32 0, i32* %3, align 4
  br label %208

84:                                               ; preds = %55, %51
  %85 = load i32, i32* %11, align 4
  %86 = sext i32 %85 to i64
  %87 = load %struct.dccp_skb_cb*, %struct.dccp_skb_cb** %8, align 8
  %88 = getelementptr inbounds %struct.dccp_skb_cb, %struct.dccp_skb_cb* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = add nsw i64 %89, %86
  store i64 %90, i64* %88, align 8
  %91 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %92 = load i32, i32* %11, align 4
  %93 = call i8* @skb_push(%struct.sk_buff* %91, i32 %92)
  store i8* %93, i8** %16, align 8
  %94 = load i32, i32* %9, align 4
  store i32 %94, i32* %11, align 4
  %95 = load %struct.dccp_ackvec*, %struct.dccp_ackvec** %7, align 8
  %96 = getelementptr inbounds %struct.dccp_ackvec, %struct.dccp_ackvec* %95, i32 0, i32 0
  %97 = load i8*, i8** %96, align 8
  %98 = load %struct.dccp_ackvec*, %struct.dccp_ackvec** %7, align 8
  %99 = getelementptr inbounds %struct.dccp_ackvec, %struct.dccp_ackvec* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 8
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i8, i8* %97, i64 %101
  store i8* %102, i8** %15, align 8
  %103 = load %struct.dccp_ackvec*, %struct.dccp_ackvec** %7, align 8
  %104 = getelementptr inbounds %struct.dccp_ackvec, %struct.dccp_ackvec* %103, i32 0, i32 0
  %105 = load i8*, i8** %104, align 8
  %106 = load i32, i32* @DCCPAV_MAX_ACKVEC_LEN, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i8, i8* %105, i64 %107
  store i8* %108, i8** %14, align 8
  store i32 0, i32* %12, align 4
  br label %109

109:                                              ; preds = %193, %84
  %110 = load i32, i32* %12, align 4
  %111 = load i32, i32* %10, align 4
  %112 = icmp slt i32 %110, %111
  br i1 %112, label %113, label %196

113:                                              ; preds = %109
  %114 = load i32, i32* %11, align 4
  store i32 %114, i32* %17, align 4
  %115 = load i32, i32* %11, align 4
  %116 = load i32, i32* @DCCP_SINGLE_OPT_MAXLEN, align 4
  %117 = icmp sgt i32 %115, %116
  br i1 %117, label %118, label %120

118:                                              ; preds = %113
  %119 = load i32, i32* @DCCP_SINGLE_OPT_MAXLEN, align 4
  store i32 %119, i32* %17, align 4
  br label %120

120:                                              ; preds = %118, %113
  %121 = load %struct.dccp_ackvec*, %struct.dccp_ackvec** %7, align 8
  %122 = getelementptr inbounds %struct.dccp_ackvec, %struct.dccp_ackvec* %121, i32 0, i32 2
  %123 = load i32*, i32** %122, align 8
  %124 = load i32, i32* %12, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i32, i32* %123, i64 %125
  %127 = load i32, i32* %126, align 4
  %128 = load i32, i32* %13, align 4
  %129 = xor i32 %128, %127
  store i32 %129, i32* %13, align 4
  %130 = load i32, i32* @DCCPO_ACK_VECTOR_0, align 4
  %131 = load %struct.dccp_ackvec*, %struct.dccp_ackvec** %7, align 8
  %132 = getelementptr inbounds %struct.dccp_ackvec, %struct.dccp_ackvec* %131, i32 0, i32 2
  %133 = load i32*, i32** %132, align 8
  %134 = load i32, i32* %12, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i32, i32* %133, i64 %135
  %137 = load i32, i32* %136, align 4
  %138 = add nsw i32 %130, %137
  %139 = trunc i32 %138 to i8
  %140 = load i8*, i8** %16, align 8
  %141 = getelementptr inbounds i8, i8* %140, i32 1
  store i8* %141, i8** %16, align 8
  store i8 %139, i8* %140, align 1
  %142 = load i32, i32* %17, align 4
  %143 = add nsw i32 %142, 2
  %144 = trunc i32 %143 to i8
  %145 = load i8*, i8** %16, align 8
  %146 = getelementptr inbounds i8, i8* %145, i32 1
  store i8* %146, i8** %16, align 8
  store i8 %144, i8* %145, align 1
  %147 = load i8*, i8** %15, align 8
  %148 = load i32, i32* %17, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i8, i8* %147, i64 %149
  %151 = load i8*, i8** %14, align 8
  %152 = icmp ugt i8* %150, %151
  br i1 %152, label %153, label %177

153:                                              ; preds = %120
  %154 = load i8*, i8** %14, align 8
  %155 = load i8*, i8** %15, align 8
  %156 = ptrtoint i8* %154 to i64
  %157 = ptrtoint i8* %155 to i64
  %158 = sub i64 %156, %157
  %159 = trunc i64 %158 to i32
  store i32 %159, i32* %18, align 4
  %160 = load i8*, i8** %16, align 8
  %161 = load i8*, i8** %15, align 8
  %162 = load i32, i32* %18, align 4
  %163 = call i32 @memcpy(i8* %160, i8* %161, i32 %162)
  %164 = load i32, i32* %18, align 4
  %165 = load i8*, i8** %16, align 8
  %166 = sext i32 %164 to i64
  %167 = getelementptr inbounds i8, i8* %165, i64 %166
  store i8* %167, i8** %16, align 8
  %168 = load i32, i32* %18, align 4
  %169 = load i32, i32* %11, align 4
  %170 = sub nsw i32 %169, %168
  store i32 %170, i32* %11, align 4
  %171 = load i32, i32* %18, align 4
  %172 = load i32, i32* %17, align 4
  %173 = sub nsw i32 %172, %171
  store i32 %173, i32* %17, align 4
  %174 = load %struct.dccp_ackvec*, %struct.dccp_ackvec** %7, align 8
  %175 = getelementptr inbounds %struct.dccp_ackvec, %struct.dccp_ackvec* %174, i32 0, i32 0
  %176 = load i8*, i8** %175, align 8
  store i8* %176, i8** %15, align 8
  br label %177

177:                                              ; preds = %153, %120
  %178 = load i8*, i8** %16, align 8
  %179 = load i8*, i8** %15, align 8
  %180 = load i32, i32* %17, align 4
  %181 = call i32 @memcpy(i8* %178, i8* %179, i32 %180)
  %182 = load i32, i32* %17, align 4
  %183 = load i8*, i8** %15, align 8
  %184 = sext i32 %182 to i64
  %185 = getelementptr inbounds i8, i8* %183, i64 %184
  store i8* %185, i8** %15, align 8
  %186 = load i32, i32* %17, align 4
  %187 = load i8*, i8** %16, align 8
  %188 = sext i32 %186 to i64
  %189 = getelementptr inbounds i8, i8* %187, i64 %188
  store i8* %189, i8** %16, align 8
  %190 = load i32, i32* %17, align 4
  %191 = load i32, i32* %11, align 4
  %192 = sub nsw i32 %191, %190
  store i32 %192, i32* %11, align 4
  br label %193

193:                                              ; preds = %177
  %194 = load i32, i32* %12, align 4
  %195 = add nsw i32 %194, 1
  store i32 %195, i32* %12, align 4
  br label %109

196:                                              ; preds = %109
  %197 = load %struct.dccp_ackvec*, %struct.dccp_ackvec** %7, align 8
  %198 = load %struct.dccp_skb_cb*, %struct.dccp_skb_cb** %8, align 8
  %199 = getelementptr inbounds %struct.dccp_skb_cb, %struct.dccp_skb_cb* %198, i32 0, i32 1
  %200 = load i32, i32* %199, align 8
  %201 = load i32, i32* %13, align 4
  %202 = call i64 @dccp_ackvec_update_records(%struct.dccp_ackvec* %197, i32 %200, i32 %201)
  %203 = icmp ne i64 %202, 0
  br i1 %203, label %204, label %207

204:                                              ; preds = %196
  %205 = load i32, i32* @ENOBUFS, align 4
  %206 = sub nsw i32 0, %205
  store i32 %206, i32* %3, align 4
  br label %208

207:                                              ; preds = %196
  store i32 0, i32* %3, align 4
  br label %208

208:                                              ; preds = %207, %204, %70, %43
  %209 = load i32, i32* %3, align 4
  ret i32 %209
}

declare dso_local %struct.dccp_sock* @dccp_sk(%struct.sock*) #1

declare dso_local %struct.dccp_skb_cb* @DCCP_SKB_CB(%struct.sk_buff*) #1

declare dso_local i32 @dccp_ackvec_buflen(%struct.dccp_ackvec*) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @DCCP_WARN(i8*, i32, i64, ...) #1

declare dso_local i32 @dccp_packet_name(i32) #1

declare dso_local i8* @skb_push(%struct.sk_buff*, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i64 @dccp_ackvec_update_records(%struct.dccp_ackvec*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
