; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_ip6_output.c_ip6_setup_cork.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_ip6_output.c_ip6_setup_cork.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.inet_cork_full = type { %struct.TYPE_16__, %struct.TYPE_14__ }
%struct.TYPE_16__ = type { i32, i32, i64, i32, i64, i32, i32, %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i32, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { %struct.flowi6 }
%struct.flowi6 = type { i32 }
%struct.inet6_cork = type { i32, i32, %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i32, i32, i8*, i8*, i8*, i32, i32 }
%struct.ipcm6_cookie = type { %struct.TYPE_17__, i32, i32, i32, %struct.ipv6_txoptions* }
%struct.TYPE_17__ = type { i32, i32, i32 }
%struct.ipv6_txoptions = type { i64, i64, i64, i64, i32, i32 }
%struct.rt6_info = type { %struct.TYPE_18__ }
%struct.ipv6_pinfo = type { i64, i32 }

@EINVAL = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@DST_XFRM_TUNNEL = common dso_local global i32 0, align 4
@IPV6_PMTUDISC_PROBE = common dso_local global i64 0, align 8
@IPV6_MIN_MTU = common dso_local global i32 0, align 4
@IPCORK_ALLFRAG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, %struct.inet_cork_full*, %struct.inet6_cork*, %struct.ipcm6_cookie*, %struct.rt6_info*, %struct.flowi6*)* @ip6_setup_cork to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ip6_setup_cork(%struct.sock* %0, %struct.inet_cork_full* %1, %struct.inet6_cork* %2, %struct.ipcm6_cookie* %3, %struct.rt6_info* %4, %struct.flowi6* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.sock*, align 8
  %9 = alloca %struct.inet_cork_full*, align 8
  %10 = alloca %struct.inet6_cork*, align 8
  %11 = alloca %struct.ipcm6_cookie*, align 8
  %12 = alloca %struct.rt6_info*, align 8
  %13 = alloca %struct.flowi6*, align 8
  %14 = alloca %struct.ipv6_pinfo*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.ipv6_txoptions*, align 8
  store %struct.sock* %0, %struct.sock** %8, align 8
  store %struct.inet_cork_full* %1, %struct.inet_cork_full** %9, align 8
  store %struct.inet6_cork* %2, %struct.inet6_cork** %10, align 8
  store %struct.ipcm6_cookie* %3, %struct.ipcm6_cookie** %11, align 8
  store %struct.rt6_info* %4, %struct.rt6_info** %12, align 8
  store %struct.flowi6* %5, %struct.flowi6** %13, align 8
  %17 = load %struct.sock*, %struct.sock** %8, align 8
  %18 = call %struct.ipv6_pinfo* @inet6_sk(%struct.sock* %17)
  store %struct.ipv6_pinfo* %18, %struct.ipv6_pinfo** %14, align 8
  %19 = load %struct.ipcm6_cookie*, %struct.ipcm6_cookie** %11, align 8
  %20 = getelementptr inbounds %struct.ipcm6_cookie, %struct.ipcm6_cookie* %19, i32 0, i32 4
  %21 = load %struct.ipv6_txoptions*, %struct.ipv6_txoptions** %20, align 8
  store %struct.ipv6_txoptions* %21, %struct.ipv6_txoptions** %16, align 8
  %22 = load %struct.ipv6_txoptions*, %struct.ipv6_txoptions** %16, align 8
  %23 = icmp ne %struct.ipv6_txoptions* %22, null
  br i1 %23, label %24, label %174

24:                                               ; preds = %6
  %25 = load %struct.inet6_cork*, %struct.inet6_cork** %10, align 8
  %26 = getelementptr inbounds %struct.inet6_cork, %struct.inet6_cork* %25, i32 0, i32 2
  %27 = load %struct.TYPE_19__*, %struct.TYPE_19__** %26, align 8
  %28 = call i64 @WARN_ON(%struct.TYPE_19__* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %24
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %7, align 4
  br label %324

33:                                               ; preds = %24
  %34 = load %struct.sock*, %struct.sock** %8, align 8
  %35 = getelementptr inbounds %struct.sock, %struct.sock* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call %struct.TYPE_19__* @kzalloc(i32 40, i32 %36)
  %38 = load %struct.inet6_cork*, %struct.inet6_cork** %10, align 8
  %39 = getelementptr inbounds %struct.inet6_cork, %struct.inet6_cork* %38, i32 0, i32 2
  store %struct.TYPE_19__* %37, %struct.TYPE_19__** %39, align 8
  %40 = load %struct.inet6_cork*, %struct.inet6_cork** %10, align 8
  %41 = getelementptr inbounds %struct.inet6_cork, %struct.inet6_cork* %40, i32 0, i32 2
  %42 = load %struct.TYPE_19__*, %struct.TYPE_19__** %41, align 8
  %43 = icmp ne %struct.TYPE_19__* %42, null
  %44 = xor i1 %43, true
  %45 = zext i1 %44 to i32
  %46 = call i64 @unlikely(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %33
  %49 = load i32, i32* @ENOBUFS, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %7, align 4
  br label %324

51:                                               ; preds = %33
  %52 = load %struct.inet6_cork*, %struct.inet6_cork** %10, align 8
  %53 = getelementptr inbounds %struct.inet6_cork, %struct.inet6_cork* %52, i32 0, i32 2
  %54 = load %struct.TYPE_19__*, %struct.TYPE_19__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %54, i32 0, i32 0
  store i32 40, i32* %55, align 8
  %56 = load %struct.ipv6_txoptions*, %struct.ipv6_txoptions** %16, align 8
  %57 = getelementptr inbounds %struct.ipv6_txoptions, %struct.ipv6_txoptions* %56, i32 0, i32 5
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.inet6_cork*, %struct.inet6_cork** %10, align 8
  %60 = getelementptr inbounds %struct.inet6_cork, %struct.inet6_cork* %59, i32 0, i32 2
  %61 = load %struct.TYPE_19__*, %struct.TYPE_19__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %61, i32 0, i32 6
  store i32 %58, i32* %62, align 4
  %63 = load %struct.ipv6_txoptions*, %struct.ipv6_txoptions** %16, align 8
  %64 = getelementptr inbounds %struct.ipv6_txoptions, %struct.ipv6_txoptions* %63, i32 0, i32 4
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.inet6_cork*, %struct.inet6_cork** %10, align 8
  %67 = getelementptr inbounds %struct.inet6_cork, %struct.inet6_cork* %66, i32 0, i32 2
  %68 = load %struct.TYPE_19__*, %struct.TYPE_19__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %68, i32 0, i32 5
  store i32 %65, i32* %69, align 8
  %70 = load %struct.ipv6_txoptions*, %struct.ipv6_txoptions** %16, align 8
  %71 = getelementptr inbounds %struct.ipv6_txoptions, %struct.ipv6_txoptions* %70, i32 0, i32 3
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.sock*, %struct.sock** %8, align 8
  %74 = getelementptr inbounds %struct.sock, %struct.sock* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i8* @ip6_opt_dup(i64 %72, i32 %75)
  %77 = load %struct.inet6_cork*, %struct.inet6_cork** %10, align 8
  %78 = getelementptr inbounds %struct.inet6_cork, %struct.inet6_cork* %77, i32 0, i32 2
  %79 = load %struct.TYPE_19__*, %struct.TYPE_19__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %79, i32 0, i32 4
  store i8* %76, i8** %80, align 8
  %81 = load %struct.ipv6_txoptions*, %struct.ipv6_txoptions** %16, align 8
  %82 = getelementptr inbounds %struct.ipv6_txoptions, %struct.ipv6_txoptions* %81, i32 0, i32 3
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %95

85:                                               ; preds = %51
  %86 = load %struct.inet6_cork*, %struct.inet6_cork** %10, align 8
  %87 = getelementptr inbounds %struct.inet6_cork, %struct.inet6_cork* %86, i32 0, i32 2
  %88 = load %struct.TYPE_19__*, %struct.TYPE_19__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %88, i32 0, i32 4
  %90 = load i8*, i8** %89, align 8
  %91 = icmp ne i8* %90, null
  br i1 %91, label %95, label %92

92:                                               ; preds = %85
  %93 = load i32, i32* @ENOBUFS, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %7, align 4
  br label %324

95:                                               ; preds = %85, %51
  %96 = load %struct.ipv6_txoptions*, %struct.ipv6_txoptions** %16, align 8
  %97 = getelementptr inbounds %struct.ipv6_txoptions, %struct.ipv6_txoptions* %96, i32 0, i32 2
  %98 = load i64, i64* %97, align 8
  %99 = load %struct.sock*, %struct.sock** %8, align 8
  %100 = getelementptr inbounds %struct.sock, %struct.sock* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = call i8* @ip6_opt_dup(i64 %98, i32 %101)
  %103 = load %struct.inet6_cork*, %struct.inet6_cork** %10, align 8
  %104 = getelementptr inbounds %struct.inet6_cork, %struct.inet6_cork* %103, i32 0, i32 2
  %105 = load %struct.TYPE_19__*, %struct.TYPE_19__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %105, i32 0, i32 3
  store i8* %102, i8** %106, align 8
  %107 = load %struct.ipv6_txoptions*, %struct.ipv6_txoptions** %16, align 8
  %108 = getelementptr inbounds %struct.ipv6_txoptions, %struct.ipv6_txoptions* %107, i32 0, i32 2
  %109 = load i64, i64* %108, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %121

111:                                              ; preds = %95
  %112 = load %struct.inet6_cork*, %struct.inet6_cork** %10, align 8
  %113 = getelementptr inbounds %struct.inet6_cork, %struct.inet6_cork* %112, i32 0, i32 2
  %114 = load %struct.TYPE_19__*, %struct.TYPE_19__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %114, i32 0, i32 3
  %116 = load i8*, i8** %115, align 8
  %117 = icmp ne i8* %116, null
  br i1 %117, label %121, label %118

118:                                              ; preds = %111
  %119 = load i32, i32* @ENOBUFS, align 4
  %120 = sub nsw i32 0, %119
  store i32 %120, i32* %7, align 4
  br label %324

121:                                              ; preds = %111, %95
  %122 = load %struct.ipv6_txoptions*, %struct.ipv6_txoptions** %16, align 8
  %123 = getelementptr inbounds %struct.ipv6_txoptions, %struct.ipv6_txoptions* %122, i32 0, i32 1
  %124 = load i64, i64* %123, align 8
  %125 = load %struct.sock*, %struct.sock** %8, align 8
  %126 = getelementptr inbounds %struct.sock, %struct.sock* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = call i8* @ip6_opt_dup(i64 %124, i32 %127)
  %129 = load %struct.inet6_cork*, %struct.inet6_cork** %10, align 8
  %130 = getelementptr inbounds %struct.inet6_cork, %struct.inet6_cork* %129, i32 0, i32 2
  %131 = load %struct.TYPE_19__*, %struct.TYPE_19__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %131, i32 0, i32 2
  store i8* %128, i8** %132, align 8
  %133 = load %struct.ipv6_txoptions*, %struct.ipv6_txoptions** %16, align 8
  %134 = getelementptr inbounds %struct.ipv6_txoptions, %struct.ipv6_txoptions* %133, i32 0, i32 1
  %135 = load i64, i64* %134, align 8
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %147

137:                                              ; preds = %121
  %138 = load %struct.inet6_cork*, %struct.inet6_cork** %10, align 8
  %139 = getelementptr inbounds %struct.inet6_cork, %struct.inet6_cork* %138, i32 0, i32 2
  %140 = load %struct.TYPE_19__*, %struct.TYPE_19__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %140, i32 0, i32 2
  %142 = load i8*, i8** %141, align 8
  %143 = icmp ne i8* %142, null
  br i1 %143, label %147, label %144

144:                                              ; preds = %137
  %145 = load i32, i32* @ENOBUFS, align 4
  %146 = sub nsw i32 0, %145
  store i32 %146, i32* %7, align 4
  br label %324

147:                                              ; preds = %137, %121
  %148 = load %struct.ipv6_txoptions*, %struct.ipv6_txoptions** %16, align 8
  %149 = getelementptr inbounds %struct.ipv6_txoptions, %struct.ipv6_txoptions* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = load %struct.sock*, %struct.sock** %8, align 8
  %152 = getelementptr inbounds %struct.sock, %struct.sock* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = call i32 @ip6_rthdr_dup(i64 %150, i32 %153)
  %155 = load %struct.inet6_cork*, %struct.inet6_cork** %10, align 8
  %156 = getelementptr inbounds %struct.inet6_cork, %struct.inet6_cork* %155, i32 0, i32 2
  %157 = load %struct.TYPE_19__*, %struct.TYPE_19__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %157, i32 0, i32 1
  store i32 %154, i32* %158, align 4
  %159 = load %struct.ipv6_txoptions*, %struct.ipv6_txoptions** %16, align 8
  %160 = getelementptr inbounds %struct.ipv6_txoptions, %struct.ipv6_txoptions* %159, i32 0, i32 0
  %161 = load i64, i64* %160, align 8
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %173

163:                                              ; preds = %147
  %164 = load %struct.inet6_cork*, %struct.inet6_cork** %10, align 8
  %165 = getelementptr inbounds %struct.inet6_cork, %struct.inet6_cork* %164, i32 0, i32 2
  %166 = load %struct.TYPE_19__*, %struct.TYPE_19__** %165, align 8
  %167 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %173, label %170

170:                                              ; preds = %163
  %171 = load i32, i32* @ENOBUFS, align 4
  %172 = sub nsw i32 0, %171
  store i32 %172, i32* %7, align 4
  br label %324

173:                                              ; preds = %163, %147
  br label %174

174:                                              ; preds = %173, %6
  %175 = load %struct.rt6_info*, %struct.rt6_info** %12, align 8
  %176 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %175, i32 0, i32 0
  %177 = call i32 @dst_hold(%struct.TYPE_18__* %176)
  %178 = load %struct.rt6_info*, %struct.rt6_info** %12, align 8
  %179 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %178, i32 0, i32 0
  %180 = load %struct.inet_cork_full*, %struct.inet_cork_full** %9, align 8
  %181 = getelementptr inbounds %struct.inet_cork_full, %struct.inet_cork_full* %180, i32 0, i32 0
  %182 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %181, i32 0, i32 7
  store %struct.TYPE_18__* %179, %struct.TYPE_18__** %182, align 8
  %183 = load %struct.inet_cork_full*, %struct.inet_cork_full** %9, align 8
  %184 = getelementptr inbounds %struct.inet_cork_full, %struct.inet_cork_full* %183, i32 0, i32 1
  %185 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %184, i32 0, i32 0
  %186 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %185, i32 0, i32 0
  %187 = load %struct.flowi6*, %struct.flowi6** %13, align 8
  %188 = bitcast %struct.flowi6* %186 to i8*
  %189 = bitcast %struct.flowi6* %187 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %188, i8* align 4 %189, i64 4, i1 false)
  %190 = load %struct.ipcm6_cookie*, %struct.ipcm6_cookie** %11, align 8
  %191 = getelementptr inbounds %struct.ipcm6_cookie, %struct.ipcm6_cookie* %190, i32 0, i32 3
  %192 = load i32, i32* %191, align 4
  %193 = load %struct.inet6_cork*, %struct.inet6_cork** %10, align 8
  %194 = getelementptr inbounds %struct.inet6_cork, %struct.inet6_cork* %193, i32 0, i32 1
  store i32 %192, i32* %194, align 4
  %195 = load %struct.ipcm6_cookie*, %struct.ipcm6_cookie** %11, align 8
  %196 = getelementptr inbounds %struct.ipcm6_cookie, %struct.ipcm6_cookie* %195, i32 0, i32 2
  %197 = load i32, i32* %196, align 8
  %198 = load %struct.inet6_cork*, %struct.inet6_cork** %10, align 8
  %199 = getelementptr inbounds %struct.inet6_cork, %struct.inet6_cork* %198, i32 0, i32 0
  store i32 %197, i32* %199, align 8
  %200 = load %struct.rt6_info*, %struct.rt6_info** %12, align 8
  %201 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %200, i32 0, i32 0
  %202 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 8
  %204 = load i32, i32* @DST_XFRM_TUNNEL, align 4
  %205 = and i32 %203, %204
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %227

207:                                              ; preds = %174
  %208 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %14, align 8
  %209 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %208, i32 0, i32 0
  %210 = load i64, i64* %209, align 8
  %211 = load i64, i64* @IPV6_PMTUDISC_PROBE, align 8
  %212 = icmp sge i64 %210, %211
  br i1 %212, label %213, label %221

213:                                              ; preds = %207
  %214 = load %struct.rt6_info*, %struct.rt6_info** %12, align 8
  %215 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %214, i32 0, i32 0
  %216 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %215, i32 0, i32 1
  %217 = load %struct.TYPE_15__*, %struct.TYPE_15__** %216, align 8
  %218 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 4
  %220 = call i32 @READ_ONCE(i32 %219)
  br label %225

221:                                              ; preds = %207
  %222 = load %struct.rt6_info*, %struct.rt6_info** %12, align 8
  %223 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %222, i32 0, i32 0
  %224 = call i32 @dst_mtu(%struct.TYPE_18__* %223)
  br label %225

225:                                              ; preds = %221, %213
  %226 = phi i32 [ %220, %213 ], [ %224, %221 ]
  store i32 %226, i32* %15, align 4
  br label %248

227:                                              ; preds = %174
  %228 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %14, align 8
  %229 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %228, i32 0, i32 0
  %230 = load i64, i64* %229, align 8
  %231 = load i64, i64* @IPV6_PMTUDISC_PROBE, align 8
  %232 = icmp sge i64 %230, %231
  br i1 %232, label %233, label %241

233:                                              ; preds = %227
  %234 = load %struct.rt6_info*, %struct.rt6_info** %12, align 8
  %235 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %234, i32 0, i32 0
  %236 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %235, i32 0, i32 1
  %237 = load %struct.TYPE_15__*, %struct.TYPE_15__** %236, align 8
  %238 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %237, i32 0, i32 0
  %239 = load i32, i32* %238, align 4
  %240 = call i32 @READ_ONCE(i32 %239)
  br label %246

241:                                              ; preds = %227
  %242 = load %struct.rt6_info*, %struct.rt6_info** %12, align 8
  %243 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %242, i32 0, i32 0
  %244 = call %struct.TYPE_18__* @xfrm_dst_path(%struct.TYPE_18__* %243)
  %245 = call i32 @dst_mtu(%struct.TYPE_18__* %244)
  br label %246

246:                                              ; preds = %241, %233
  %247 = phi i32 [ %240, %233 ], [ %245, %241 ]
  store i32 %247, i32* %15, align 4
  br label %248

248:                                              ; preds = %246, %225
  %249 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %14, align 8
  %250 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %249, i32 0, i32 1
  %251 = load i32, i32* %250, align 8
  %252 = load i32, i32* %15, align 4
  %253 = icmp ult i32 %251, %252
  br i1 %253, label %254, label %264

254:                                              ; preds = %248
  %255 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %14, align 8
  %256 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %255, i32 0, i32 1
  %257 = load i32, i32* %256, align 8
  %258 = icmp ne i32 %257, 0
  br i1 %258, label %259, label %263

259:                                              ; preds = %254
  %260 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %14, align 8
  %261 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %260, i32 0, i32 1
  %262 = load i32, i32* %261, align 8
  store i32 %262, i32* %15, align 4
  br label %263

263:                                              ; preds = %259, %254
  br label %264

264:                                              ; preds = %263, %248
  %265 = load i32, i32* %15, align 4
  %266 = load i32, i32* @IPV6_MIN_MTU, align 4
  %267 = icmp ult i32 %265, %266
  br i1 %267, label %268, label %271

268:                                              ; preds = %264
  %269 = load i32, i32* @EINVAL, align 4
  %270 = sub nsw i32 0, %269
  store i32 %270, i32* %7, align 4
  br label %324

271:                                              ; preds = %264
  %272 = load i32, i32* %15, align 4
  %273 = load %struct.inet_cork_full*, %struct.inet_cork_full** %9, align 8
  %274 = getelementptr inbounds %struct.inet_cork_full, %struct.inet_cork_full* %273, i32 0, i32 0
  %275 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %274, i32 0, i32 0
  store i32 %272, i32* %275, align 8
  %276 = load %struct.ipcm6_cookie*, %struct.ipcm6_cookie** %11, align 8
  %277 = getelementptr inbounds %struct.ipcm6_cookie, %struct.ipcm6_cookie* %276, i32 0, i32 1
  %278 = load i32, i32* %277, align 4
  %279 = load %struct.inet_cork_full*, %struct.inet_cork_full** %9, align 8
  %280 = getelementptr inbounds %struct.inet_cork_full, %struct.inet_cork_full* %279, i32 0, i32 0
  %281 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %280, i32 0, i32 6
  store i32 %278, i32* %281, align 4
  %282 = load %struct.inet_cork_full*, %struct.inet_cork_full** %9, align 8
  %283 = getelementptr inbounds %struct.inet_cork_full, %struct.inet_cork_full* %282, i32 0, i32 0
  %284 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %283, i32 0, i32 4
  store i64 0, i64* %284, align 8
  %285 = load %struct.ipcm6_cookie*, %struct.ipcm6_cookie** %11, align 8
  %286 = getelementptr inbounds %struct.ipcm6_cookie, %struct.ipcm6_cookie* %285, i32 0, i32 0
  %287 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %286, i32 0, i32 2
  %288 = load i32, i32* %287, align 8
  %289 = load %struct.inet_cork_full*, %struct.inet_cork_full** %9, align 8
  %290 = getelementptr inbounds %struct.inet_cork_full, %struct.inet_cork_full* %289, i32 0, i32 0
  %291 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %290, i32 0, i32 5
  store i32 %288, i32* %291, align 8
  %292 = load %struct.sock*, %struct.sock** %8, align 8
  %293 = load %struct.ipcm6_cookie*, %struct.ipcm6_cookie** %11, align 8
  %294 = getelementptr inbounds %struct.ipcm6_cookie, %struct.ipcm6_cookie* %293, i32 0, i32 0
  %295 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %294, i32 0, i32 1
  %296 = load i32, i32* %295, align 4
  %297 = load %struct.inet_cork_full*, %struct.inet_cork_full** %9, align 8
  %298 = getelementptr inbounds %struct.inet_cork_full, %struct.inet_cork_full* %297, i32 0, i32 0
  %299 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %298, i32 0, i32 4
  %300 = call i32 @sock_tx_timestamp(%struct.sock* %292, i32 %296, i64* %299)
  %301 = load %struct.rt6_info*, %struct.rt6_info** %12, align 8
  %302 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %301, i32 0, i32 0
  %303 = call %struct.TYPE_18__* @xfrm_dst_path(%struct.TYPE_18__* %302)
  %304 = call i64 @dst_allfrag(%struct.TYPE_18__* %303)
  %305 = icmp ne i64 %304, 0
  br i1 %305, label %306, label %313

306:                                              ; preds = %271
  %307 = load i32, i32* @IPCORK_ALLFRAG, align 4
  %308 = load %struct.inet_cork_full*, %struct.inet_cork_full** %9, align 8
  %309 = getelementptr inbounds %struct.inet_cork_full, %struct.inet_cork_full* %308, i32 0, i32 0
  %310 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %309, i32 0, i32 3
  %311 = load i32, i32* %310, align 8
  %312 = or i32 %311, %307
  store i32 %312, i32* %310, align 8
  br label %313

313:                                              ; preds = %306, %271
  %314 = load %struct.inet_cork_full*, %struct.inet_cork_full** %9, align 8
  %315 = getelementptr inbounds %struct.inet_cork_full, %struct.inet_cork_full* %314, i32 0, i32 0
  %316 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %315, i32 0, i32 2
  store i64 0, i64* %316, align 8
  %317 = load %struct.ipcm6_cookie*, %struct.ipcm6_cookie** %11, align 8
  %318 = getelementptr inbounds %struct.ipcm6_cookie, %struct.ipcm6_cookie* %317, i32 0, i32 0
  %319 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %318, i32 0, i32 0
  %320 = load i32, i32* %319, align 8
  %321 = load %struct.inet_cork_full*, %struct.inet_cork_full** %9, align 8
  %322 = getelementptr inbounds %struct.inet_cork_full, %struct.inet_cork_full* %321, i32 0, i32 0
  %323 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %322, i32 0, i32 1
  store i32 %320, i32* %323, align 4
  store i32 0, i32* %7, align 4
  br label %324

324:                                              ; preds = %313, %268, %170, %144, %118, %92, %48, %30
  %325 = load i32, i32* %7, align 4
  ret i32 %325
}

declare dso_local %struct.ipv6_pinfo* @inet6_sk(%struct.sock*) #1

declare dso_local i64 @WARN_ON(%struct.TYPE_19__*) #1

declare dso_local %struct.TYPE_19__* @kzalloc(i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i8* @ip6_opt_dup(i64, i32) #1

declare dso_local i32 @ip6_rthdr_dup(i64, i32) #1

declare dso_local i32 @dst_hold(%struct.TYPE_18__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @READ_ONCE(i32) #1

declare dso_local i32 @dst_mtu(%struct.TYPE_18__*) #1

declare dso_local %struct.TYPE_18__* @xfrm_dst_path(%struct.TYPE_18__*) #1

declare dso_local i32 @sock_tx_timestamp(%struct.sock*, i32, i64*) #1

declare dso_local i64 @dst_allfrag(%struct.TYPE_18__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
