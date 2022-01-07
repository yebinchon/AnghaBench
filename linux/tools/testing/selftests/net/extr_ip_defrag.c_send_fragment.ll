; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/net/extr_ip_defrag.c_send_fragment.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/net/extr_ip_defrag.c_send_fragment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.udphdr = type { i64, i8*, i8*, i8* }
%struct.sockaddr = type { i32 }
%struct.ip6_hdr = type { i8* }
%struct.ip6_frag = type { i8* }
%struct.ip = type { i8*, i8* }

@UDP_HLEN = common dso_local global i32 0, align 4
@ip_frame = common dso_local global i32* null, align 8
@IP6_HLEN = common dso_local global i32 0, align 4
@FRAG_HLEN = common dso_local global i32 0, align 4
@IP4_HLEN = common dso_local global i32 0, align 4
@cfg_port = common dso_local global i32 0, align 4
@payload_len = common dso_local global i32 0, align 4
@max_frag_len = common dso_local global i32 0, align 4
@IP6_MF = common dso_local global i32 0, align 4
@udp_payload = common dso_local global %struct.udphdr* null, align 8
@IP4_MF = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"send_fragment\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"send_fragment: %d vs %d\00", align 1
@frag_counter = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.sockaddr*, i32, i32, i32)* @send_fragment to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @send_fragment(i32 %0, %struct.sockaddr* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.sockaddr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca %struct.udphdr, align 8
  %16 = alloca %struct.ip6_hdr*, align 8
  %17 = alloca %struct.ip6_frag*, align 8
  %18 = alloca %struct.ip*, align 8
  store i32 %0, i32* %6, align 4
  store %struct.sockaddr* %1, %struct.sockaddr** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %19 = load i32, i32* %9, align 4
  %20 = icmp sgt i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %5
  %22 = load i32, i32* %9, align 4
  %23 = load i32, i32* @UDP_HLEN, align 4
  %24 = sub nsw i32 %22, %23
  br label %26

25:                                               ; preds = %5
  br label %26

26:                                               ; preds = %25, %21
  %27 = phi i32 [ %24, %21 ], [ 0, %25 ]
  store i32 %27, i32* %13, align 4
  %28 = load i32, i32* %10, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %38

30:                                               ; preds = %26
  %31 = load i32*, i32** @ip_frame, align 8
  %32 = load i32, i32* @IP6_HLEN, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  %35 = load i32, i32* @FRAG_HLEN, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  br label %43

38:                                               ; preds = %26
  %39 = load i32*, i32** @ip_frame, align 8
  %40 = load i32, i32* @IP4_HLEN, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  br label %43

43:                                               ; preds = %38, %30
  %44 = phi i32* [ %37, %30 ], [ %42, %38 ]
  store i32* %44, i32** %14, align 8
  %45 = load i32, i32* %9, align 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %77

47:                                               ; preds = %43
  %48 = load i32, i32* @cfg_port, align 4
  %49 = add nsw i32 %48, 1
  %50 = call i8* @htons(i32 %49)
  %51 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %15, i32 0, i32 3
  store i8* %50, i8** %51, align 8
  %52 = load i32, i32* @cfg_port, align 4
  %53 = call i8* @htons(i32 %52)
  %54 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %15, i32 0, i32 2
  store i8* %53, i8** %54, align 8
  %55 = load i32, i32* @UDP_HLEN, align 4
  %56 = load i32, i32* @payload_len, align 4
  %57 = add nsw i32 %55, %56
  %58 = call i8* @htons(i32 %57)
  %59 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %15, i32 0, i32 1
  store i8* %58, i8** %59, align 8
  %60 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %15, i32 0, i32 0
  store i64 0, i64* %60, align 8
  %61 = load i32, i32* %10, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %47
  %64 = load i32*, i32** @ip_frame, align 8
  %65 = bitcast i32* %64 to %struct.ip6_hdr*
  %66 = call i64 @udp6_checksum(%struct.ip6_hdr* %65, %struct.udphdr* %15)
  %67 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %15, i32 0, i32 0
  store i64 %66, i64* %67, align 8
  br label %73

68:                                               ; preds = %47
  %69 = load i32*, i32** @ip_frame, align 8
  %70 = bitcast i32* %69 to %struct.ip*
  %71 = call i64 @udp_checksum(%struct.ip* %70, %struct.udphdr* %15)
  %72 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %15, i32 0, i32 0
  store i64 %71, i64* %72, align 8
  br label %73

73:                                               ; preds = %68, %63
  %74 = load i32*, i32** %14, align 8
  %75 = load i32, i32* @UDP_HLEN, align 4
  %76 = call i32 @memcpy(i32* %74, %struct.udphdr* %15, i32 %75)
  br label %77

77:                                               ; preds = %73, %43
  %78 = load i32, i32* %10, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %149

80:                                               ; preds = %77
  %81 = load i32*, i32** @ip_frame, align 8
  %82 = bitcast i32* %81 to %struct.ip6_hdr*
  store %struct.ip6_hdr* %82, %struct.ip6_hdr** %16, align 8
  %83 = load i32*, i32** @ip_frame, align 8
  %84 = load i32, i32* @IP6_HLEN, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %83, i64 %85
  %87 = bitcast i32* %86 to %struct.ip6_frag*
  store %struct.ip6_frag* %87, %struct.ip6_frag** %17, align 8
  %88 = load i32, i32* @payload_len, align 4
  %89 = load i32, i32* %13, align 4
  %90 = sub nsw i32 %88, %89
  %91 = load i32, i32* @max_frag_len, align 4
  %92 = icmp sle i32 %90, %91
  br i1 %92, label %93, label %106

93:                                               ; preds = %80
  %94 = load i32, i32* %9, align 4
  %95 = icmp sgt i32 %94, 0
  br i1 %95, label %96, label %106

96:                                               ; preds = %93
  %97 = load i32, i32* @FRAG_HLEN, align 4
  %98 = load i32, i32* @payload_len, align 4
  %99 = add nsw i32 %97, %98
  %100 = load i32, i32* %13, align 4
  %101 = sub nsw i32 %99, %100
  store i32 %101, i32* %11, align 4
  %102 = load i32, i32* %9, align 4
  %103 = call i8* @htons(i32 %102)
  %104 = load %struct.ip6_frag*, %struct.ip6_frag** %17, align 8
  %105 = getelementptr inbounds %struct.ip6_frag, %struct.ip6_frag* %104, i32 0, i32 0
  store i8* %103, i8** %105, align 8
  br label %116

106:                                              ; preds = %93, %80
  %107 = load i32, i32* @FRAG_HLEN, align 4
  %108 = load i32, i32* @max_frag_len, align 4
  %109 = add nsw i32 %107, %108
  store i32 %109, i32* %11, align 4
  %110 = load i32, i32* %9, align 4
  %111 = load i32, i32* @IP6_MF, align 4
  %112 = or i32 %110, %111
  %113 = call i8* @htons(i32 %112)
  %114 = load %struct.ip6_frag*, %struct.ip6_frag** %17, align 8
  %115 = getelementptr inbounds %struct.ip6_frag, %struct.ip6_frag* %114, i32 0, i32 0
  store i8* %113, i8** %115, align 8
  br label %116

116:                                              ; preds = %106, %96
  %117 = load i32, i32* %11, align 4
  %118 = call i8* @htons(i32 %117)
  %119 = load %struct.ip6_hdr*, %struct.ip6_hdr** %16, align 8
  %120 = getelementptr inbounds %struct.ip6_hdr, %struct.ip6_hdr* %119, i32 0, i32 0
  store i8* %118, i8** %120, align 8
  %121 = load i32, i32* %9, align 4
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %123, label %135

123:                                              ; preds = %116
  %124 = load i32*, i32** %14, align 8
  %125 = load i32, i32* @UDP_HLEN, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i32, i32* %124, i64 %126
  %128 = load %struct.udphdr*, %struct.udphdr** @udp_payload, align 8
  %129 = load i32, i32* %11, align 4
  %130 = load i32, i32* @FRAG_HLEN, align 4
  %131 = sub nsw i32 %129, %130
  %132 = load i32, i32* @UDP_HLEN, align 4
  %133 = sub nsw i32 %131, %132
  %134 = call i32 @memcpy(i32* %127, %struct.udphdr* %128, i32 %133)
  br label %145

135:                                              ; preds = %116
  %136 = load i32*, i32** %14, align 8
  %137 = load %struct.udphdr*, %struct.udphdr** @udp_payload, align 8
  %138 = load i32, i32* %13, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %137, i64 %139
  %141 = load i32, i32* %11, align 4
  %142 = load i32, i32* @FRAG_HLEN, align 4
  %143 = sub nsw i32 %141, %142
  %144 = call i32 @memcpy(i32* %136, %struct.udphdr* %140, i32 %143)
  br label %145

145:                                              ; preds = %135, %123
  %146 = load i32, i32* @IP6_HLEN, align 4
  %147 = load i32, i32* %11, align 4
  %148 = add nsw i32 %147, %146
  store i32 %148, i32* %11, align 4
  br label %212

149:                                              ; preds = %77
  %150 = load i32*, i32** @ip_frame, align 8
  %151 = bitcast i32* %150 to %struct.ip*
  store %struct.ip* %151, %struct.ip** %18, align 8
  %152 = load i32, i32* @payload_len, align 4
  %153 = load i32, i32* %13, align 4
  %154 = sub nsw i32 %152, %153
  %155 = load i32, i32* @max_frag_len, align 4
  %156 = icmp sle i32 %154, %155
  br i1 %156, label %157, label %171

157:                                              ; preds = %149
  %158 = load i32, i32* %9, align 4
  %159 = icmp sgt i32 %158, 0
  br i1 %159, label %160, label %171

160:                                              ; preds = %157
  %161 = load i32, i32* @IP4_HLEN, align 4
  %162 = load i32, i32* @payload_len, align 4
  %163 = add nsw i32 %161, %162
  %164 = load i32, i32* %13, align 4
  %165 = sub nsw i32 %163, %164
  store i32 %165, i32* %11, align 4
  %166 = load i32, i32* %9, align 4
  %167 = sdiv i32 %166, 8
  %168 = call i8* @htons(i32 %167)
  %169 = load %struct.ip*, %struct.ip** %18, align 8
  %170 = getelementptr inbounds %struct.ip, %struct.ip* %169, i32 0, i32 1
  store i8* %168, i8** %170, align 8
  br label %182

171:                                              ; preds = %157, %149
  %172 = load i32, i32* @IP4_HLEN, align 4
  %173 = load i32, i32* @max_frag_len, align 4
  %174 = add nsw i32 %172, %173
  store i32 %174, i32* %11, align 4
  %175 = load i32, i32* %9, align 4
  %176 = sdiv i32 %175, 8
  %177 = load i32, i32* @IP4_MF, align 4
  %178 = or i32 %176, %177
  %179 = call i8* @htons(i32 %178)
  %180 = load %struct.ip*, %struct.ip** %18, align 8
  %181 = getelementptr inbounds %struct.ip, %struct.ip* %180, i32 0, i32 1
  store i8* %179, i8** %181, align 8
  br label %182

182:                                              ; preds = %171, %160
  %183 = load i32, i32* %11, align 4
  %184 = call i8* @htons(i32 %183)
  %185 = load %struct.ip*, %struct.ip** %18, align 8
  %186 = getelementptr inbounds %struct.ip, %struct.ip* %185, i32 0, i32 0
  store i8* %184, i8** %186, align 8
  %187 = load i32, i32* %9, align 4
  %188 = icmp eq i32 %187, 0
  br i1 %188, label %189, label %201

189:                                              ; preds = %182
  %190 = load i32*, i32** %14, align 8
  %191 = load i32, i32* @UDP_HLEN, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds i32, i32* %190, i64 %192
  %194 = load %struct.udphdr*, %struct.udphdr** @udp_payload, align 8
  %195 = load i32, i32* %11, align 4
  %196 = load i32, i32* @IP4_HLEN, align 4
  %197 = sub nsw i32 %195, %196
  %198 = load i32, i32* @UDP_HLEN, align 4
  %199 = sub nsw i32 %197, %198
  %200 = call i32 @memcpy(i32* %193, %struct.udphdr* %194, i32 %199)
  br label %211

201:                                              ; preds = %182
  %202 = load i32*, i32** %14, align 8
  %203 = load %struct.udphdr*, %struct.udphdr** @udp_payload, align 8
  %204 = load i32, i32* %13, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %203, i64 %205
  %207 = load i32, i32* %11, align 4
  %208 = load i32, i32* @IP4_HLEN, align 4
  %209 = sub nsw i32 %207, %208
  %210 = call i32 @memcpy(i32* %202, %struct.udphdr* %206, i32 %209)
  br label %211

211:                                              ; preds = %201, %189
  br label %212

212:                                              ; preds = %211, %145
  %213 = load i32, i32* %6, align 4
  %214 = load i32*, i32** @ip_frame, align 8
  %215 = load i32, i32* %11, align 4
  %216 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %217 = load i32, i32* %8, align 4
  %218 = call i32 @sendto(i32 %213, i32* %214, i32 %215, i32 0, %struct.sockaddr* %216, i32 %217)
  store i32 %218, i32* %12, align 4
  %219 = load i32, i32* %12, align 4
  %220 = icmp slt i32 %219, 0
  br i1 %220, label %221, label %224

221:                                              ; preds = %212
  %222 = load i32, i32* @errno, align 4
  %223 = call i32 (i32, i32, i8*, ...) @error(i32 1, i32 %222, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %224

224:                                              ; preds = %221, %212
  %225 = load i32, i32* %12, align 4
  %226 = load i32, i32* %11, align 4
  %227 = icmp ne i32 %225, %226
  br i1 %227, label %228, label %232

228:                                              ; preds = %224
  %229 = load i32, i32* %12, align 4
  %230 = load i32, i32* %11, align 4
  %231 = call i32 (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %229, i32 %230)
  br label %232

232:                                              ; preds = %228, %224
  %233 = load i32, i32* @frag_counter, align 4
  %234 = add nsw i32 %233, 1
  store i32 %234, i32* @frag_counter, align 4
  ret void
}

declare dso_local i8* @htons(i32) #1

declare dso_local i64 @udp6_checksum(%struct.ip6_hdr*, %struct.udphdr*) #1

declare dso_local i64 @udp_checksum(%struct.ip*, %struct.udphdr*) #1

declare dso_local i32 @memcpy(i32*, %struct.udphdr*, i32) #1

declare dso_local i32 @sendto(i32, i32*, i32, i32, %struct.sockaddr*, i32) #1

declare dso_local i32 @error(i32, i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
