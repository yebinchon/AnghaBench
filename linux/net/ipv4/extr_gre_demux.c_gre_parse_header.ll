; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_gre_demux.c_gre_parse_header.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_gre_demux.c_gre_parse_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64 }
%struct.tnl_ptk_info = type { i64, i32, i8*, i8*, i32 }
%struct.gre_base_hdr = type { i32, i64 }
%struct.erspan_base_hdr = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@GRE_VERSION = common dso_local global i32 0, align 4
@GRE_ROUTING = common dso_local global i32 0, align 4
@GRE_CSUM = common dso_local global i32 0, align 4
@IPPROTO_GRE = common dso_local global i32 0, align 4
@null_compute_pseudo = common dso_local global i32 0, align 4
@GRE_KEY = common dso_local global i32 0, align 4
@GRE_SEQ = common dso_local global i32 0, align 4
@ETH_P_WCCP = common dso_local global i32 0, align 4
@ETH_P_ERSPAN = common dso_local global i32 0, align 4
@ETH_P_ERSPAN2 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gre_parse_header(%struct.sk_buff* %0, %struct.tnl_ptk_info* %1, i32* %2, i64 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.tnl_ptk_info*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.gre_base_hdr*, align 8
  %13 = alloca i8**, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.erspan_base_hdr*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %7, align 8
  store %struct.tnl_ptk_info* %1, %struct.tnl_ptk_info** %8, align 8
  store i32* %2, i32** %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  %16 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %17 = load i32, i32* %11, align 4
  %18 = sext i32 %17 to i64
  %19 = add i64 %18, 16
  %20 = trunc i64 %19 to i32
  %21 = call i32 @pskb_may_pull(%struct.sk_buff* %16, i32 %20)
  %22 = icmp ne i32 %21, 0
  %23 = xor i1 %22, true
  %24 = zext i1 %23 to i32
  %25 = call i64 @unlikely(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %5
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %6, align 4
  br label %212

30:                                               ; preds = %5
  %31 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %32 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i32, i32* %11, align 4
  %35 = sext i32 %34 to i64
  %36 = add nsw i64 %33, %35
  %37 = inttoptr i64 %36 to %struct.gre_base_hdr*
  store %struct.gre_base_hdr* %37, %struct.gre_base_hdr** %12, align 8
  %38 = load %struct.gre_base_hdr*, %struct.gre_base_hdr** %12, align 8
  %39 = getelementptr inbounds %struct.gre_base_hdr, %struct.gre_base_hdr* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @GRE_VERSION, align 4
  %42 = load i32, i32* @GRE_ROUTING, align 4
  %43 = or i32 %41, %42
  %44 = and i32 %40, %43
  %45 = call i64 @unlikely(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %30
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %6, align 4
  br label %212

50:                                               ; preds = %30
  %51 = load %struct.gre_base_hdr*, %struct.gre_base_hdr** %12, align 8
  %52 = getelementptr inbounds %struct.gre_base_hdr, %struct.gre_base_hdr* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @gre_flags_to_tnl_flags(i32 %53)
  %55 = load %struct.tnl_ptk_info*, %struct.tnl_ptk_info** %8, align 8
  %56 = getelementptr inbounds %struct.tnl_ptk_info, %struct.tnl_ptk_info* %55, i32 0, i32 4
  store i32 %54, i32* %56, align 8
  %57 = load %struct.tnl_ptk_info*, %struct.tnl_ptk_info** %8, align 8
  %58 = getelementptr inbounds %struct.tnl_ptk_info, %struct.tnl_ptk_info* %57, i32 0, i32 4
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @gre_calc_hlen(i32 %59)
  store i32 %60, i32* %14, align 4
  %61 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %62 = load i32, i32* %11, align 4
  %63 = load i32, i32* %14, align 4
  %64 = add nsw i32 %62, %63
  %65 = call i32 @pskb_may_pull(%struct.sk_buff* %61, i32 %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %70, label %67

67:                                               ; preds = %50
  %68 = load i32, i32* @EINVAL, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %6, align 4
  br label %212

70:                                               ; preds = %50
  %71 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %72 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i32, i32* %11, align 4
  %75 = sext i32 %74 to i64
  %76 = add nsw i64 %73, %75
  %77 = inttoptr i64 %76 to %struct.gre_base_hdr*
  store %struct.gre_base_hdr* %77, %struct.gre_base_hdr** %12, align 8
  %78 = load %struct.gre_base_hdr*, %struct.gre_base_hdr** %12, align 8
  %79 = getelementptr inbounds %struct.gre_base_hdr, %struct.gre_base_hdr* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = load %struct.tnl_ptk_info*, %struct.tnl_ptk_info** %8, align 8
  %82 = getelementptr inbounds %struct.tnl_ptk_info, %struct.tnl_ptk_info* %81, i32 0, i32 0
  store i64 %80, i64* %82, align 8
  %83 = load %struct.gre_base_hdr*, %struct.gre_base_hdr** %12, align 8
  %84 = getelementptr inbounds %struct.gre_base_hdr, %struct.gre_base_hdr* %83, i64 1
  %85 = bitcast %struct.gre_base_hdr* %84 to i8**
  store i8** %85, i8*** %13, align 8
  %86 = load %struct.gre_base_hdr*, %struct.gre_base_hdr** %12, align 8
  %87 = getelementptr inbounds %struct.gre_base_hdr, %struct.gre_base_hdr* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* @GRE_CSUM, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %112

92:                                               ; preds = %70
  %93 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %94 = call i32 @skb_checksum_simple_validate(%struct.sk_buff* %93)
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %101, label %96

96:                                               ; preds = %92
  %97 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %98 = load i32, i32* @IPPROTO_GRE, align 4
  %99 = load i32, i32* @null_compute_pseudo, align 4
  %100 = call i32 @skb_checksum_try_convert(%struct.sk_buff* %97, i32 %98, i32 %99)
  br label %109

101:                                              ; preds = %92
  %102 = load i32*, i32** %9, align 8
  %103 = icmp ne i32* %102, null
  br i1 %103, label %104, label %108

104:                                              ; preds = %101
  %105 = load i32*, i32** %9, align 8
  store i32 1, i32* %105, align 4
  %106 = load i32, i32* @EINVAL, align 4
  %107 = sub nsw i32 0, %106
  store i32 %107, i32* %6, align 4
  br label %212

108:                                              ; preds = %101
  br label %109

109:                                              ; preds = %108, %96
  %110 = load i8**, i8*** %13, align 8
  %111 = getelementptr inbounds i8*, i8** %110, i32 1
  store i8** %111, i8*** %13, align 8
  br label %112

112:                                              ; preds = %109, %70
  %113 = load %struct.gre_base_hdr*, %struct.gre_base_hdr** %12, align 8
  %114 = getelementptr inbounds %struct.gre_base_hdr, %struct.gre_base_hdr* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = load i32, i32* @GRE_KEY, align 4
  %117 = and i32 %115, %116
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %126

119:                                              ; preds = %112
  %120 = load i8**, i8*** %13, align 8
  %121 = load i8*, i8** %120, align 8
  %122 = load %struct.tnl_ptk_info*, %struct.tnl_ptk_info** %8, align 8
  %123 = getelementptr inbounds %struct.tnl_ptk_info, %struct.tnl_ptk_info* %122, i32 0, i32 2
  store i8* %121, i8** %123, align 8
  %124 = load i8**, i8*** %13, align 8
  %125 = getelementptr inbounds i8*, i8** %124, i32 1
  store i8** %125, i8*** %13, align 8
  br label %129

126:                                              ; preds = %112
  %127 = load %struct.tnl_ptk_info*, %struct.tnl_ptk_info** %8, align 8
  %128 = getelementptr inbounds %struct.tnl_ptk_info, %struct.tnl_ptk_info* %127, i32 0, i32 2
  store i8* null, i8** %128, align 8
  br label %129

129:                                              ; preds = %126, %119
  %130 = load %struct.gre_base_hdr*, %struct.gre_base_hdr** %12, align 8
  %131 = getelementptr inbounds %struct.gre_base_hdr, %struct.gre_base_hdr* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = load i32, i32* @GRE_SEQ, align 4
  %134 = and i32 %132, %133
  %135 = call i64 @unlikely(i32 %134)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %144

137:                                              ; preds = %129
  %138 = load i8**, i8*** %13, align 8
  %139 = load i8*, i8** %138, align 8
  %140 = load %struct.tnl_ptk_info*, %struct.tnl_ptk_info** %8, align 8
  %141 = getelementptr inbounds %struct.tnl_ptk_info, %struct.tnl_ptk_info* %140, i32 0, i32 3
  store i8* %139, i8** %141, align 8
  %142 = load i8**, i8*** %13, align 8
  %143 = getelementptr inbounds i8*, i8** %142, i32 1
  store i8** %143, i8*** %13, align 8
  br label %147

144:                                              ; preds = %129
  %145 = load %struct.tnl_ptk_info*, %struct.tnl_ptk_info** %8, align 8
  %146 = getelementptr inbounds %struct.tnl_ptk_info, %struct.tnl_ptk_info* %145, i32 0, i32 3
  store i8* null, i8** %146, align 8
  br label %147

147:                                              ; preds = %144, %137
  %148 = load %struct.gre_base_hdr*, %struct.gre_base_hdr** %12, align 8
  %149 = getelementptr inbounds %struct.gre_base_hdr, %struct.gre_base_hdr* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %152, label %172

152:                                              ; preds = %147
  %153 = load %struct.tnl_ptk_info*, %struct.tnl_ptk_info** %8, align 8
  %154 = getelementptr inbounds %struct.tnl_ptk_info, %struct.tnl_ptk_info* %153, i32 0, i32 0
  %155 = load i64, i64* %154, align 8
  %156 = load i32, i32* @ETH_P_WCCP, align 4
  %157 = call i64 @htons(i32 %156)
  %158 = icmp eq i64 %155, %157
  br i1 %158, label %159, label %172

159:                                              ; preds = %152
  %160 = load i64, i64* %10, align 8
  %161 = load %struct.tnl_ptk_info*, %struct.tnl_ptk_info** %8, align 8
  %162 = getelementptr inbounds %struct.tnl_ptk_info, %struct.tnl_ptk_info* %161, i32 0, i32 0
  store i64 %160, i64* %162, align 8
  %163 = load i8**, i8*** %13, align 8
  %164 = bitcast i8** %163 to i32*
  %165 = load i32, i32* %164, align 4
  %166 = and i32 %165, 240
  %167 = icmp ne i32 %166, 64
  br i1 %167, label %168, label %171

168:                                              ; preds = %159
  %169 = load i32, i32* %14, align 4
  %170 = add nsw i32 %169, 4
  store i32 %170, i32* %14, align 4
  br label %171

171:                                              ; preds = %168, %159
  br label %172

172:                                              ; preds = %171, %152, %147
  %173 = load i32, i32* %14, align 4
  %174 = load %struct.tnl_ptk_info*, %struct.tnl_ptk_info** %8, align 8
  %175 = getelementptr inbounds %struct.tnl_ptk_info, %struct.tnl_ptk_info* %174, i32 0, i32 1
  store i32 %173, i32* %175, align 8
  %176 = load %struct.gre_base_hdr*, %struct.gre_base_hdr** %12, align 8
  %177 = getelementptr inbounds %struct.gre_base_hdr, %struct.gre_base_hdr* %176, i32 0, i32 1
  %178 = load i64, i64* %177, align 8
  %179 = load i32, i32* @ETH_P_ERSPAN, align 4
  %180 = call i64 @htons(i32 %179)
  %181 = icmp eq i64 %178, %180
  br i1 %181, label %189, label %182

182:                                              ; preds = %172
  %183 = load %struct.gre_base_hdr*, %struct.gre_base_hdr** %12, align 8
  %184 = getelementptr inbounds %struct.gre_base_hdr, %struct.gre_base_hdr* %183, i32 0, i32 1
  %185 = load i64, i64* %184, align 8
  %186 = load i32, i32* @ETH_P_ERSPAN2, align 4
  %187 = call i64 @htons(i32 %186)
  %188 = icmp eq i64 %185, %187
  br i1 %188, label %189, label %210

189:                                              ; preds = %182, %172
  %190 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %191 = load i32, i32* %11, align 4
  %192 = load i32, i32* %14, align 4
  %193 = add nsw i32 %191, %192
  %194 = sext i32 %193 to i64
  %195 = add i64 %194, 4
  %196 = trunc i64 %195 to i32
  %197 = call i32 @pskb_may_pull(%struct.sk_buff* %190, i32 %196)
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %202, label %199

199:                                              ; preds = %189
  %200 = load i32, i32* @EINVAL, align 4
  %201 = sub nsw i32 0, %200
  store i32 %201, i32* %6, align 4
  br label %212

202:                                              ; preds = %189
  %203 = load i8**, i8*** %13, align 8
  %204 = bitcast i8** %203 to %struct.erspan_base_hdr*
  store %struct.erspan_base_hdr* %204, %struct.erspan_base_hdr** %15, align 8
  %205 = load %struct.erspan_base_hdr*, %struct.erspan_base_hdr** %15, align 8
  %206 = call i32 @get_session_id(%struct.erspan_base_hdr* %205)
  %207 = call i8* @cpu_to_be32(i32 %206)
  %208 = load %struct.tnl_ptk_info*, %struct.tnl_ptk_info** %8, align 8
  %209 = getelementptr inbounds %struct.tnl_ptk_info, %struct.tnl_ptk_info* %208, i32 0, i32 2
  store i8* %207, i8** %209, align 8
  br label %210

210:                                              ; preds = %202, %182
  %211 = load i32, i32* %14, align 4
  store i32 %211, i32* %6, align 4
  br label %212

212:                                              ; preds = %210, %199, %104, %67, %47, %27
  %213 = load i32, i32* %6, align 4
  ret i32 %213
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @pskb_may_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @gre_flags_to_tnl_flags(i32) #1

declare dso_local i32 @gre_calc_hlen(i32) #1

declare dso_local i32 @skb_checksum_simple_validate(%struct.sk_buff*) #1

declare dso_local i32 @skb_checksum_try_convert(%struct.sk_buff*, i32, i32) #1

declare dso_local i64 @htons(i32) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i32 @get_session_id(%struct.erspan_base_hdr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
