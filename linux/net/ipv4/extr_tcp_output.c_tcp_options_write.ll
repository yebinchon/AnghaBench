; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_output.c_tcp_options_write.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_output.c_tcp_options_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcp_sock = type { %struct.TYPE_2__, %struct.tcp_sack_block*, %struct.tcp_sack_block* }
%struct.TYPE_2__ = type { i64 }
%struct.tcp_sack_block = type { i32, i32 }
%struct.tcp_out_options = type { i32, i32, i32, i32, i32, i32, %struct.tcp_fastopen_cookie*, i32* }
%struct.tcp_fastopen_cookie = type { i32, i32, i64 }

@OPTION_MD5 = common dso_local global i32 0, align 4
@TCPOPT_NOP = common dso_local global i32 0, align 4
@TCPOPT_MD5SIG = common dso_local global i32 0, align 4
@TCPOLEN_MD5SIG = common dso_local global i32 0, align 4
@TCPOPT_MSS = common dso_local global i32 0, align 4
@TCPOLEN_MSS = common dso_local global i32 0, align 4
@OPTION_TS = common dso_local global i32 0, align 4
@OPTION_SACK_ADVERTISE = common dso_local global i32 0, align 4
@TCPOPT_SACK_PERM = common dso_local global i32 0, align 4
@TCPOLEN_SACK_PERM = common dso_local global i32 0, align 4
@TCPOPT_TIMESTAMP = common dso_local global i32 0, align 4
@TCPOLEN_TIMESTAMP = common dso_local global i32 0, align 4
@OPTION_WSCALE = common dso_local global i32 0, align 4
@TCPOPT_WINDOW = common dso_local global i32 0, align 4
@TCPOLEN_WINDOW = common dso_local global i32 0, align 4
@TCPOPT_SACK = common dso_local global i32 0, align 4
@TCPOLEN_SACK_BASE = common dso_local global i32 0, align 4
@TCPOLEN_SACK_PERBLOCK = common dso_local global i32 0, align 4
@OPTION_FAST_OPEN_COOKIE = common dso_local global i32 0, align 4
@TCPOLEN_EXP_FASTOPEN_BASE = common dso_local global i32 0, align 4
@TCPOPT_EXP = common dso_local global i32 0, align 4
@TCPOPT_FASTOPEN_MAGIC = common dso_local global i32 0, align 4
@TCPOLEN_FASTOPEN_BASE = common dso_local global i32 0, align 4
@TCPOPT_FASTOPEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8**, %struct.tcp_sock*, %struct.tcp_out_options*)* @tcp_options_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tcp_options_write(i8** %0, %struct.tcp_sock* %1, %struct.tcp_out_options* %2) #0 {
  %4 = alloca i8**, align 8
  %5 = alloca %struct.tcp_sock*, align 8
  %6 = alloca %struct.tcp_out_options*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.tcp_sack_block*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.tcp_fastopen_cookie*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store i8** %0, i8*** %4, align 8
  store %struct.tcp_sock* %1, %struct.tcp_sock** %5, align 8
  store %struct.tcp_out_options* %2, %struct.tcp_out_options** %6, align 8
  %13 = load %struct.tcp_out_options*, %struct.tcp_out_options** %6, align 8
  %14 = getelementptr inbounds %struct.tcp_out_options, %struct.tcp_out_options* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* @OPTION_MD5, align 4
  %17 = load i32, i32* %7, align 4
  %18 = and i32 %16, %17
  %19 = call i64 @unlikely(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %41

21:                                               ; preds = %3
  %22 = load i32, i32* @TCPOPT_NOP, align 4
  %23 = shl i32 %22, 24
  %24 = load i32, i32* @TCPOPT_NOP, align 4
  %25 = shl i32 %24, 16
  %26 = or i32 %23, %25
  %27 = load i32, i32* @TCPOPT_MD5SIG, align 4
  %28 = shl i32 %27, 8
  %29 = or i32 %26, %28
  %30 = load i32, i32* @TCPOLEN_MD5SIG, align 4
  %31 = or i32 %29, %30
  %32 = call i8* @htonl(i32 %31)
  %33 = load i8**, i8*** %4, align 8
  %34 = getelementptr inbounds i8*, i8** %33, i32 1
  store i8** %34, i8*** %4, align 8
  store i8* %32, i8** %33, align 8
  %35 = load i8**, i8*** %4, align 8
  %36 = bitcast i8** %35 to i32*
  %37 = load %struct.tcp_out_options*, %struct.tcp_out_options** %6, align 8
  %38 = getelementptr inbounds %struct.tcp_out_options, %struct.tcp_out_options* %37, i32 0, i32 7
  store i32* %36, i32** %38, align 8
  %39 = load i8**, i8*** %4, align 8
  %40 = getelementptr inbounds i8*, i8** %39, i64 4
  store i8** %40, i8*** %4, align 8
  br label %41

41:                                               ; preds = %21, %3
  %42 = load %struct.tcp_out_options*, %struct.tcp_out_options** %6, align 8
  %43 = getelementptr inbounds %struct.tcp_out_options, %struct.tcp_out_options* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i64 @unlikely(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %60

47:                                               ; preds = %41
  %48 = load i32, i32* @TCPOPT_MSS, align 4
  %49 = shl i32 %48, 24
  %50 = load i32, i32* @TCPOLEN_MSS, align 4
  %51 = shl i32 %50, 16
  %52 = or i32 %49, %51
  %53 = load %struct.tcp_out_options*, %struct.tcp_out_options** %6, align 8
  %54 = getelementptr inbounds %struct.tcp_out_options, %struct.tcp_out_options* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = or i32 %52, %55
  %57 = call i8* @htonl(i32 %56)
  %58 = load i8**, i8*** %4, align 8
  %59 = getelementptr inbounds i8*, i8** %58, i32 1
  store i8** %59, i8*** %4, align 8
  store i8* %57, i8** %58, align 8
  br label %60

60:                                               ; preds = %47, %41
  %61 = load i32, i32* @OPTION_TS, align 4
  %62 = load i32, i32* %7, align 4
  %63 = and i32 %61, %62
  %64 = call i64 @likely(i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %117

66:                                               ; preds = %60
  %67 = load i32, i32* @OPTION_SACK_ADVERTISE, align 4
  %68 = load i32, i32* %7, align 4
  %69 = and i32 %67, %68
  %70 = call i64 @unlikely(i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %90

72:                                               ; preds = %66
  %73 = load i32, i32* @TCPOPT_SACK_PERM, align 4
  %74 = shl i32 %73, 24
  %75 = load i32, i32* @TCPOLEN_SACK_PERM, align 4
  %76 = shl i32 %75, 16
  %77 = or i32 %74, %76
  %78 = load i32, i32* @TCPOPT_TIMESTAMP, align 4
  %79 = shl i32 %78, 8
  %80 = or i32 %77, %79
  %81 = load i32, i32* @TCPOLEN_TIMESTAMP, align 4
  %82 = or i32 %80, %81
  %83 = call i8* @htonl(i32 %82)
  %84 = load i8**, i8*** %4, align 8
  %85 = getelementptr inbounds i8*, i8** %84, i32 1
  store i8** %85, i8*** %4, align 8
  store i8* %83, i8** %84, align 8
  %86 = load i32, i32* @OPTION_SACK_ADVERTISE, align 4
  %87 = xor i32 %86, -1
  %88 = load i32, i32* %7, align 4
  %89 = and i32 %88, %87
  store i32 %89, i32* %7, align 4
  br label %104

90:                                               ; preds = %66
  %91 = load i32, i32* @TCPOPT_NOP, align 4
  %92 = shl i32 %91, 24
  %93 = load i32, i32* @TCPOPT_NOP, align 4
  %94 = shl i32 %93, 16
  %95 = or i32 %92, %94
  %96 = load i32, i32* @TCPOPT_TIMESTAMP, align 4
  %97 = shl i32 %96, 8
  %98 = or i32 %95, %97
  %99 = load i32, i32* @TCPOLEN_TIMESTAMP, align 4
  %100 = or i32 %98, %99
  %101 = call i8* @htonl(i32 %100)
  %102 = load i8**, i8*** %4, align 8
  %103 = getelementptr inbounds i8*, i8** %102, i32 1
  store i8** %103, i8*** %4, align 8
  store i8* %101, i8** %102, align 8
  br label %104

104:                                              ; preds = %90, %72
  %105 = load %struct.tcp_out_options*, %struct.tcp_out_options** %6, align 8
  %106 = getelementptr inbounds %struct.tcp_out_options, %struct.tcp_out_options* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 8
  %108 = call i8* @htonl(i32 %107)
  %109 = load i8**, i8*** %4, align 8
  %110 = getelementptr inbounds i8*, i8** %109, i32 1
  store i8** %110, i8*** %4, align 8
  store i8* %108, i8** %109, align 8
  %111 = load %struct.tcp_out_options*, %struct.tcp_out_options** %6, align 8
  %112 = getelementptr inbounds %struct.tcp_out_options, %struct.tcp_out_options* %111, i32 0, i32 3
  %113 = load i32, i32* %112, align 4
  %114 = call i8* @htonl(i32 %113)
  %115 = load i8**, i8*** %4, align 8
  %116 = getelementptr inbounds i8*, i8** %115, i32 1
  store i8** %116, i8*** %4, align 8
  store i8* %114, i8** %115, align 8
  br label %117

117:                                              ; preds = %104, %60
  %118 = load i32, i32* @OPTION_SACK_ADVERTISE, align 4
  %119 = load i32, i32* %7, align 4
  %120 = and i32 %118, %119
  %121 = call i64 @unlikely(i32 %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %137

123:                                              ; preds = %117
  %124 = load i32, i32* @TCPOPT_NOP, align 4
  %125 = shl i32 %124, 24
  %126 = load i32, i32* @TCPOPT_NOP, align 4
  %127 = shl i32 %126, 16
  %128 = or i32 %125, %127
  %129 = load i32, i32* @TCPOPT_SACK_PERM, align 4
  %130 = shl i32 %129, 8
  %131 = or i32 %128, %130
  %132 = load i32, i32* @TCPOLEN_SACK_PERM, align 4
  %133 = or i32 %131, %132
  %134 = call i8* @htonl(i32 %133)
  %135 = load i8**, i8*** %4, align 8
  %136 = getelementptr inbounds i8*, i8** %135, i32 1
  store i8** %136, i8*** %4, align 8
  store i8* %134, i8** %135, align 8
  br label %137

137:                                              ; preds = %123, %117
  %138 = load i32, i32* @OPTION_WSCALE, align 4
  %139 = load i32, i32* %7, align 4
  %140 = and i32 %138, %139
  %141 = call i64 @unlikely(i32 %140)
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %159

143:                                              ; preds = %137
  %144 = load i32, i32* @TCPOPT_NOP, align 4
  %145 = shl i32 %144, 24
  %146 = load i32, i32* @TCPOPT_WINDOW, align 4
  %147 = shl i32 %146, 16
  %148 = or i32 %145, %147
  %149 = load i32, i32* @TCPOLEN_WINDOW, align 4
  %150 = shl i32 %149, 8
  %151 = or i32 %148, %150
  %152 = load %struct.tcp_out_options*, %struct.tcp_out_options** %6, align 8
  %153 = getelementptr inbounds %struct.tcp_out_options, %struct.tcp_out_options* %152, i32 0, i32 4
  %154 = load i32, i32* %153, align 8
  %155 = or i32 %151, %154
  %156 = call i8* @htonl(i32 %155)
  %157 = load i8**, i8*** %4, align 8
  %158 = getelementptr inbounds i8*, i8** %157, i32 1
  store i8** %158, i8*** %4, align 8
  store i8* %156, i8** %157, align 8
  br label %159

159:                                              ; preds = %143, %137
  %160 = load %struct.tcp_out_options*, %struct.tcp_out_options** %6, align 8
  %161 = getelementptr inbounds %struct.tcp_out_options, %struct.tcp_out_options* %160, i32 0, i32 5
  %162 = load i32, i32* %161, align 4
  %163 = call i64 @unlikely(i32 %162)
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %232

165:                                              ; preds = %159
  %166 = load %struct.tcp_sock*, %struct.tcp_sock** %5, align 8
  %167 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %167, i32 0, i32 0
  %169 = load i64, i64* %168, align 8
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %175

171:                                              ; preds = %165
  %172 = load %struct.tcp_sock*, %struct.tcp_sock** %5, align 8
  %173 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %172, i32 0, i32 2
  %174 = load %struct.tcp_sack_block*, %struct.tcp_sack_block** %173, align 8
  br label %179

175:                                              ; preds = %165
  %176 = load %struct.tcp_sock*, %struct.tcp_sock** %5, align 8
  %177 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %176, i32 0, i32 1
  %178 = load %struct.tcp_sack_block*, %struct.tcp_sack_block** %177, align 8
  br label %179

179:                                              ; preds = %175, %171
  %180 = phi %struct.tcp_sack_block* [ %174, %171 ], [ %178, %175 ]
  store %struct.tcp_sack_block* %180, %struct.tcp_sack_block** %8, align 8
  %181 = load i32, i32* @TCPOPT_NOP, align 4
  %182 = shl i32 %181, 24
  %183 = load i32, i32* @TCPOPT_NOP, align 4
  %184 = shl i32 %183, 16
  %185 = or i32 %182, %184
  %186 = load i32, i32* @TCPOPT_SACK, align 4
  %187 = shl i32 %186, 8
  %188 = or i32 %185, %187
  %189 = load i32, i32* @TCPOLEN_SACK_BASE, align 4
  %190 = load %struct.tcp_out_options*, %struct.tcp_out_options** %6, align 8
  %191 = getelementptr inbounds %struct.tcp_out_options, %struct.tcp_out_options* %190, i32 0, i32 5
  %192 = load i32, i32* %191, align 4
  %193 = load i32, i32* @TCPOLEN_SACK_PERBLOCK, align 4
  %194 = mul nsw i32 %192, %193
  %195 = add nsw i32 %189, %194
  %196 = or i32 %188, %195
  %197 = call i8* @htonl(i32 %196)
  %198 = load i8**, i8*** %4, align 8
  %199 = getelementptr inbounds i8*, i8** %198, i32 1
  store i8** %199, i8*** %4, align 8
  store i8* %197, i8** %198, align 8
  store i32 0, i32* %9, align 4
  br label %200

200:                                              ; preds = %225, %179
  %201 = load i32, i32* %9, align 4
  %202 = load %struct.tcp_out_options*, %struct.tcp_out_options** %6, align 8
  %203 = getelementptr inbounds %struct.tcp_out_options, %struct.tcp_out_options* %202, i32 0, i32 5
  %204 = load i32, i32* %203, align 4
  %205 = icmp slt i32 %201, %204
  br i1 %205, label %206, label %228

206:                                              ; preds = %200
  %207 = load %struct.tcp_sack_block*, %struct.tcp_sack_block** %8, align 8
  %208 = load i32, i32* %9, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds %struct.tcp_sack_block, %struct.tcp_sack_block* %207, i64 %209
  %211 = getelementptr inbounds %struct.tcp_sack_block, %struct.tcp_sack_block* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 4
  %213 = call i8* @htonl(i32 %212)
  %214 = load i8**, i8*** %4, align 8
  %215 = getelementptr inbounds i8*, i8** %214, i32 1
  store i8** %215, i8*** %4, align 8
  store i8* %213, i8** %214, align 8
  %216 = load %struct.tcp_sack_block*, %struct.tcp_sack_block** %8, align 8
  %217 = load i32, i32* %9, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds %struct.tcp_sack_block, %struct.tcp_sack_block* %216, i64 %218
  %220 = getelementptr inbounds %struct.tcp_sack_block, %struct.tcp_sack_block* %219, i32 0, i32 1
  %221 = load i32, i32* %220, align 4
  %222 = call i8* @htonl(i32 %221)
  %223 = load i8**, i8*** %4, align 8
  %224 = getelementptr inbounds i8*, i8** %223, i32 1
  store i8** %224, i8*** %4, align 8
  store i8* %222, i8** %223, align 8
  br label %225

225:                                              ; preds = %206
  %226 = load i32, i32* %9, align 4
  %227 = add nsw i32 %226, 1
  store i32 %227, i32* %9, align 4
  br label %200

228:                                              ; preds = %200
  %229 = load %struct.tcp_sock*, %struct.tcp_sock** %5, align 8
  %230 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %229, i32 0, i32 0
  %231 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %230, i32 0, i32 0
  store i64 0, i64* %231, align 8
  br label %232

232:                                              ; preds = %228, %159
  %233 = load i32, i32* @OPTION_FAST_OPEN_COOKIE, align 4
  %234 = load i32, i32* %7, align 4
  %235 = and i32 %233, %234
  %236 = call i64 @unlikely(i32 %235)
  %237 = icmp ne i64 %236, 0
  br i1 %237, label %238, label %314

238:                                              ; preds = %232
  %239 = load %struct.tcp_out_options*, %struct.tcp_out_options** %6, align 8
  %240 = getelementptr inbounds %struct.tcp_out_options, %struct.tcp_out_options* %239, i32 0, i32 6
  %241 = load %struct.tcp_fastopen_cookie*, %struct.tcp_fastopen_cookie** %240, align 8
  store %struct.tcp_fastopen_cookie* %241, %struct.tcp_fastopen_cookie** %10, align 8
  %242 = load i8**, i8*** %4, align 8
  %243 = bitcast i8** %242 to i32*
  store i32* %243, i32** %11, align 8
  %244 = load %struct.tcp_fastopen_cookie*, %struct.tcp_fastopen_cookie** %10, align 8
  %245 = getelementptr inbounds %struct.tcp_fastopen_cookie, %struct.tcp_fastopen_cookie* %244, i32 0, i32 2
  %246 = load i64, i64* %245, align 8
  %247 = icmp ne i64 %246, 0
  br i1 %247, label %248, label %267

248:                                              ; preds = %238
  %249 = load i32, i32* @TCPOLEN_EXP_FASTOPEN_BASE, align 4
  %250 = load %struct.tcp_fastopen_cookie*, %struct.tcp_fastopen_cookie** %10, align 8
  %251 = getelementptr inbounds %struct.tcp_fastopen_cookie, %struct.tcp_fastopen_cookie* %250, i32 0, i32 0
  %252 = load i32, i32* %251, align 8
  %253 = add nsw i32 %249, %252
  store i32 %253, i32* %12, align 4
  %254 = load i32, i32* @TCPOPT_EXP, align 4
  %255 = shl i32 %254, 24
  %256 = load i32, i32* %12, align 4
  %257 = shl i32 %256, 16
  %258 = or i32 %255, %257
  %259 = load i32, i32* @TCPOPT_FASTOPEN_MAGIC, align 4
  %260 = or i32 %258, %259
  %261 = call i8* @htonl(i32 %260)
  %262 = load i8**, i8*** %4, align 8
  store i8* %261, i8** %262, align 8
  %263 = load i32, i32* @TCPOLEN_EXP_FASTOPEN_BASE, align 4
  %264 = load i32*, i32** %11, align 8
  %265 = sext i32 %263 to i64
  %266 = getelementptr inbounds i32, i32* %264, i64 %265
  store i32* %266, i32** %11, align 8
  br label %279

267:                                              ; preds = %238
  %268 = load i32, i32* @TCPOLEN_FASTOPEN_BASE, align 4
  %269 = load %struct.tcp_fastopen_cookie*, %struct.tcp_fastopen_cookie** %10, align 8
  %270 = getelementptr inbounds %struct.tcp_fastopen_cookie, %struct.tcp_fastopen_cookie* %269, i32 0, i32 0
  %271 = load i32, i32* %270, align 8
  %272 = add nsw i32 %268, %271
  store i32 %272, i32* %12, align 4
  %273 = load i32, i32* @TCPOPT_FASTOPEN, align 4
  %274 = load i32*, i32** %11, align 8
  %275 = getelementptr inbounds i32, i32* %274, i32 1
  store i32* %275, i32** %11, align 8
  store i32 %273, i32* %274, align 4
  %276 = load i32, i32* %12, align 4
  %277 = load i32*, i32** %11, align 8
  %278 = getelementptr inbounds i32, i32* %277, i32 1
  store i32* %278, i32** %11, align 8
  store i32 %276, i32* %277, align 4
  br label %279

279:                                              ; preds = %267, %248
  %280 = load i32*, i32** %11, align 8
  %281 = load %struct.tcp_fastopen_cookie*, %struct.tcp_fastopen_cookie** %10, align 8
  %282 = getelementptr inbounds %struct.tcp_fastopen_cookie, %struct.tcp_fastopen_cookie* %281, i32 0, i32 1
  %283 = load i32, i32* %282, align 4
  %284 = load %struct.tcp_fastopen_cookie*, %struct.tcp_fastopen_cookie** %10, align 8
  %285 = getelementptr inbounds %struct.tcp_fastopen_cookie, %struct.tcp_fastopen_cookie* %284, i32 0, i32 0
  %286 = load i32, i32* %285, align 8
  %287 = call i32 @memcpy(i32* %280, i32 %283, i32 %286)
  %288 = load i32, i32* %12, align 4
  %289 = and i32 %288, 3
  %290 = icmp eq i32 %289, 2
  br i1 %290, label %291, label %307

291:                                              ; preds = %279
  %292 = load i32, i32* @TCPOPT_NOP, align 4
  %293 = load i32*, i32** %11, align 8
  %294 = load %struct.tcp_fastopen_cookie*, %struct.tcp_fastopen_cookie** %10, align 8
  %295 = getelementptr inbounds %struct.tcp_fastopen_cookie, %struct.tcp_fastopen_cookie* %294, i32 0, i32 0
  %296 = load i32, i32* %295, align 8
  %297 = sext i32 %296 to i64
  %298 = getelementptr inbounds i32, i32* %293, i64 %297
  store i32 %292, i32* %298, align 4
  %299 = load i32, i32* @TCPOPT_NOP, align 4
  %300 = load i32*, i32** %11, align 8
  %301 = load %struct.tcp_fastopen_cookie*, %struct.tcp_fastopen_cookie** %10, align 8
  %302 = getelementptr inbounds %struct.tcp_fastopen_cookie, %struct.tcp_fastopen_cookie* %301, i32 0, i32 0
  %303 = load i32, i32* %302, align 8
  %304 = add nsw i32 %303, 1
  %305 = sext i32 %304 to i64
  %306 = getelementptr inbounds i32, i32* %300, i64 %305
  store i32 %299, i32* %306, align 4
  br label %307

307:                                              ; preds = %291, %279
  %308 = load i32, i32* %12, align 4
  %309 = add nsw i32 %308, 3
  %310 = ashr i32 %309, 2
  %311 = load i8**, i8*** %4, align 8
  %312 = sext i32 %310 to i64
  %313 = getelementptr inbounds i8*, i8** %311, i64 %312
  store i8** %313, i8*** %4, align 8
  br label %314

314:                                              ; preds = %307, %232
  %315 = load i8**, i8*** %4, align 8
  %316 = call i32 @smc_options_write(i8** %315, i32* %7)
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i8* @htonl(i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @smc_options_write(i8**, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
