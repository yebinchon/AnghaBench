; ModuleID = '/home/carl/AnghaBench/linux/net/sctp/extr_sm_make_chunk.c_sctp_pack_cookie.c'
source_filename = "/home/carl/AnghaBench/linux/net/sctp/extr_sm_make_chunk.c_sctp_pack_cookie.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i64 }
%struct.sctp_cookie_param = type { %struct.TYPE_14__, i64 }
%struct.TYPE_14__ = type { i32, i32 }
%struct.sctp_endpoint = type { i32, %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32 }
%struct.sctp_association = type { i32, %struct.TYPE_15__, %struct.TYPE_17__ }
%struct.TYPE_15__ = type { i32, i32 }
%struct.TYPE_17__ = type { i32, %struct.TYPE_18__*, i32, i32, i32 }
%struct.sctp_chunk = type { %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i32 }
%struct.sctp_signed_cookie = type { i32, %struct.TYPE_17__ }
%struct.TYPE_20__ = type { i64 }

@SCTP_COOKIE_MULTIPLE = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@SCTP_PARAM_STATE_COOKIE = common dso_local global i32 0, align 4
@desc = common dso_local global %struct.TYPE_19__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sctp_cookie_param* (%struct.sctp_endpoint*, %struct.sctp_association*, %struct.sctp_chunk*, i32*, %struct.TYPE_18__*, i32)* @sctp_pack_cookie to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sctp_cookie_param* @sctp_pack_cookie(%struct.sctp_endpoint* %0, %struct.sctp_association* %1, %struct.sctp_chunk* %2, i32* %3, %struct.TYPE_18__* %4, i32 %5) #0 {
  %7 = alloca %struct.sctp_cookie_param*, align 8
  %8 = alloca %struct.sctp_endpoint*, align 8
  %9 = alloca %struct.sctp_association*, align 8
  %10 = alloca %struct.sctp_chunk*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_18__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.sctp_signed_cookie*, align 8
  %15 = alloca %struct.sctp_cookie_param*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.sctp_endpoint* %0, %struct.sctp_endpoint** %8, align 8
  store %struct.sctp_association* %1, %struct.sctp_association** %9, align 8
  store %struct.sctp_chunk* %2, %struct.sctp_chunk** %10, align 8
  store i32* %3, i32** %11, align 8
  store %struct.TYPE_18__* %4, %struct.TYPE_18__** %12, align 8
  store i32 %5, i32* %13, align 4
  store i32 40, i32* %16, align 4
  %19 = load %struct.sctp_chunk*, %struct.sctp_chunk** %10, align 8
  %20 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %19, i32 0, i32 0
  %21 = load %struct.TYPE_18__*, %struct.TYPE_18__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @ntohs(i32 %23)
  %25 = sext i32 %24 to i64
  %26 = add i64 4, %25
  %27 = load i32, i32* %13, align 4
  %28 = sext i32 %27 to i64
  %29 = add i64 %26, %28
  %30 = trunc i64 %29 to i32
  store i32 %30, i32* %17, align 4
  %31 = load i32, i32* %17, align 4
  %32 = load i32, i32* @SCTP_COOKIE_MULTIPLE, align 4
  %33 = srem i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %43

35:                                               ; preds = %6
  %36 = load i32, i32* @SCTP_COOKIE_MULTIPLE, align 4
  %37 = load i32, i32* %17, align 4
  %38 = load i32, i32* @SCTP_COOKIE_MULTIPLE, align 4
  %39 = srem i32 %37, %38
  %40 = sub nsw i32 %36, %39
  %41 = load i32, i32* %17, align 4
  %42 = add nsw i32 %41, %40
  store i32 %42, i32* %17, align 4
  br label %43

43:                                               ; preds = %35, %6
  %44 = load i32, i32* %16, align 4
  %45 = load i32, i32* %17, align 4
  %46 = add nsw i32 %44, %45
  %47 = load i32*, i32** %11, align 8
  store i32 %46, i32* %47, align 4
  %48 = load i32*, i32** %11, align 8
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @GFP_ATOMIC, align 4
  %51 = call %struct.sctp_cookie_param* @kzalloc(i32 %49, i32 %50)
  store %struct.sctp_cookie_param* %51, %struct.sctp_cookie_param** %15, align 8
  %52 = load %struct.sctp_cookie_param*, %struct.sctp_cookie_param** %15, align 8
  %53 = icmp ne %struct.sctp_cookie_param* %52, null
  br i1 %53, label %55, label %54

54:                                               ; preds = %43
  br label %194

55:                                               ; preds = %43
  %56 = load %struct.sctp_cookie_param*, %struct.sctp_cookie_param** %15, align 8
  %57 = getelementptr inbounds %struct.sctp_cookie_param, %struct.sctp_cookie_param* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = inttoptr i64 %58 to %struct.sctp_signed_cookie*
  store %struct.sctp_signed_cookie* %59, %struct.sctp_signed_cookie** %14, align 8
  %60 = load i32, i32* @SCTP_PARAM_STATE_COOKIE, align 4
  %61 = load %struct.sctp_cookie_param*, %struct.sctp_cookie_param** %15, align 8
  %62 = getelementptr inbounds %struct.sctp_cookie_param, %struct.sctp_cookie_param* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %62, i32 0, i32 1
  store i32 %60, i32* %63, align 4
  %64 = load i32*, i32** %11, align 8
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @htons(i32 %65)
  %67 = load %struct.sctp_cookie_param*, %struct.sctp_cookie_param** %15, align 8
  %68 = getelementptr inbounds %struct.sctp_cookie_param, %struct.sctp_cookie_param* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %68, i32 0, i32 0
  store i32 %66, i32* %69, align 8
  %70 = load %struct.sctp_signed_cookie*, %struct.sctp_signed_cookie** %14, align 8
  %71 = getelementptr inbounds %struct.sctp_signed_cookie, %struct.sctp_signed_cookie* %70, i32 0, i32 1
  %72 = load %struct.sctp_association*, %struct.sctp_association** %9, align 8
  %73 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %72, i32 0, i32 2
  %74 = bitcast %struct.TYPE_17__* %71 to i8*
  %75 = bitcast %struct.TYPE_17__* %73 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %74, i8* align 8 %75, i64 32, i1 false)
  %76 = load i32, i32* %13, align 4
  %77 = load %struct.sctp_signed_cookie*, %struct.sctp_signed_cookie** %14, align 8
  %78 = getelementptr inbounds %struct.sctp_signed_cookie, %struct.sctp_signed_cookie* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %78, i32 0, i32 0
  store i32 %76, i32* %79, align 8
  %80 = load %struct.sctp_association*, %struct.sctp_association** %9, align 8
  %81 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.sctp_signed_cookie*, %struct.sctp_signed_cookie** %14, align 8
  %85 = getelementptr inbounds %struct.sctp_signed_cookie, %struct.sctp_signed_cookie* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %85, i32 0, i32 4
  store i32 %83, i32* %86, align 8
  %87 = load %struct.sctp_association*, %struct.sctp_association** %9, align 8
  %88 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.sctp_signed_cookie*, %struct.sctp_signed_cookie** %14, align 8
  %92 = getelementptr inbounds %struct.sctp_signed_cookie, %struct.sctp_signed_cookie* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %92, i32 0, i32 3
  store i32 %90, i32* %93, align 4
  %94 = load %struct.sctp_association*, %struct.sctp_association** %9, align 8
  %95 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = call i32 (...) @ktime_get_real()
  %98 = call i32 @ktime_add(i32 %96, i32 %97)
  %99 = load %struct.sctp_signed_cookie*, %struct.sctp_signed_cookie** %14, align 8
  %100 = getelementptr inbounds %struct.sctp_signed_cookie, %struct.sctp_signed_cookie* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %100, i32 0, i32 2
  store i32 %98, i32* %101, align 8
  %102 = load %struct.sctp_signed_cookie*, %struct.sctp_signed_cookie** %14, align 8
  %103 = getelementptr inbounds %struct.sctp_signed_cookie, %struct.sctp_signed_cookie* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %103, i32 0, i32 1
  %105 = load %struct.TYPE_18__*, %struct.TYPE_18__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %105, i64 0
  %107 = load %struct.sctp_chunk*, %struct.sctp_chunk** %10, align 8
  %108 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %107, i32 0, i32 0
  %109 = load %struct.TYPE_18__*, %struct.TYPE_18__** %108, align 8
  %110 = load %struct.sctp_chunk*, %struct.sctp_chunk** %10, align 8
  %111 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %110, i32 0, i32 0
  %112 = load %struct.TYPE_18__*, %struct.TYPE_18__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @ntohs(i32 %114)
  %116 = call i32 @memcpy(%struct.TYPE_18__* %106, %struct.TYPE_18__* %109, i32 %115)
  %117 = load %struct.sctp_signed_cookie*, %struct.sctp_signed_cookie** %14, align 8
  %118 = getelementptr inbounds %struct.sctp_signed_cookie, %struct.sctp_signed_cookie* %117, i32 0, i32 1
  %119 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %118, i32 0, i32 1
  %120 = load %struct.TYPE_18__*, %struct.TYPE_18__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %120, i64 0
  %122 = load %struct.sctp_chunk*, %struct.sctp_chunk** %10, align 8
  %123 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %122, i32 0, i32 0
  %124 = load %struct.TYPE_18__*, %struct.TYPE_18__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @ntohs(i32 %126)
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %121, i64 %128
  %130 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %131 = load i32, i32* %13, align 4
  %132 = call i32 @memcpy(%struct.TYPE_18__* %129, %struct.TYPE_18__* %130, i32 %131)
  %133 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %8, align 8
  %134 = getelementptr inbounds %struct.sctp_endpoint, %struct.sctp_endpoint* %133, i32 0, i32 1
  %135 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = call %struct.TYPE_20__* @sctp_sk(i32 %136)
  %138 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %189

141:                                              ; preds = %55
  %142 = load %struct.TYPE_19__*, %struct.TYPE_19__** @desc, align 8
  %143 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %8, align 8
  %144 = getelementptr inbounds %struct.sctp_endpoint, %struct.sctp_endpoint* %143, i32 0, i32 1
  %145 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = call %struct.TYPE_20__* @sctp_sk(i32 %146)
  %148 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %147, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = call i32 @SHASH_DESC_ON_STACK(%struct.TYPE_19__* %142, i64 %149)
  %151 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %8, align 8
  %152 = getelementptr inbounds %struct.sctp_endpoint, %struct.sctp_endpoint* %151, i32 0, i32 1
  %153 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = call %struct.TYPE_20__* @sctp_sk(i32 %154)
  %156 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %155, i32 0, i32 0
  %157 = load i64, i64* %156, align 8
  %158 = load %struct.TYPE_19__*, %struct.TYPE_19__** @desc, align 8
  %159 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %158, i32 0, i32 0
  store i64 %157, i64* %159, align 8
  %160 = load %struct.TYPE_19__*, %struct.TYPE_19__** @desc, align 8
  %161 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %160, i32 0, i32 0
  %162 = load i64, i64* %161, align 8
  %163 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %8, align 8
  %164 = getelementptr inbounds %struct.sctp_endpoint, %struct.sctp_endpoint* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 4
  %166 = call i64 @crypto_shash_setkey(i64 %162, i32 %165, i32 4)
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %169

168:                                              ; preds = %141
  br label %180

169:                                              ; preds = %141
  %170 = load %struct.TYPE_19__*, %struct.TYPE_19__** @desc, align 8
  %171 = load %struct.sctp_signed_cookie*, %struct.sctp_signed_cookie** %14, align 8
  %172 = getelementptr inbounds %struct.sctp_signed_cookie, %struct.sctp_signed_cookie* %171, i32 0, i32 1
  %173 = bitcast %struct.TYPE_17__* %172 to i32*
  %174 = load i32, i32* %17, align 4
  %175 = load %struct.sctp_signed_cookie*, %struct.sctp_signed_cookie** %14, align 8
  %176 = getelementptr inbounds %struct.sctp_signed_cookie, %struct.sctp_signed_cookie* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 8
  %178 = call i32 @crypto_shash_digest(%struct.TYPE_19__* %170, i32* %173, i32 %174, i32 %177)
  %179 = sext i32 %178 to i64
  br label %180

180:                                              ; preds = %169, %168
  %181 = phi i64 [ %166, %168 ], [ %179, %169 ]
  %182 = trunc i64 %181 to i32
  store i32 %182, i32* %18, align 4
  %183 = load %struct.TYPE_19__*, %struct.TYPE_19__** @desc, align 8
  %184 = call i32 @shash_desc_zero(%struct.TYPE_19__* %183)
  %185 = load i32, i32* %18, align 4
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %188

187:                                              ; preds = %180
  br label %191

188:                                              ; preds = %180
  br label %189

189:                                              ; preds = %188, %55
  %190 = load %struct.sctp_cookie_param*, %struct.sctp_cookie_param** %15, align 8
  store %struct.sctp_cookie_param* %190, %struct.sctp_cookie_param** %7, align 8
  br label %196

191:                                              ; preds = %187
  %192 = load %struct.sctp_cookie_param*, %struct.sctp_cookie_param** %15, align 8
  %193 = call i32 @kfree(%struct.sctp_cookie_param* %192)
  br label %194

194:                                              ; preds = %191, %54
  %195 = load i32*, i32** %11, align 8
  store i32 0, i32* %195, align 4
  store %struct.sctp_cookie_param* null, %struct.sctp_cookie_param** %7, align 8
  br label %196

196:                                              ; preds = %194, %189
  %197 = load %struct.sctp_cookie_param*, %struct.sctp_cookie_param** %7, align 8
  ret %struct.sctp_cookie_param* %197
}

declare dso_local i32 @ntohs(i32) #1

declare dso_local %struct.sctp_cookie_param* @kzalloc(i32, i32) #1

declare dso_local i32 @htons(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @ktime_add(i32, i32) #1

declare dso_local i32 @ktime_get_real(...) #1

declare dso_local i32 @memcpy(%struct.TYPE_18__*, %struct.TYPE_18__*, i32) #1

declare dso_local %struct.TYPE_20__* @sctp_sk(i32) #1

declare dso_local i32 @SHASH_DESC_ON_STACK(%struct.TYPE_19__*, i64) #1

declare dso_local i64 @crypto_shash_setkey(i64, i32, i32) #1

declare dso_local i32 @crypto_shash_digest(%struct.TYPE_19__*, i32*, i32, i32) #1

declare dso_local i32 @shash_desc_zero(%struct.TYPE_19__*) #1

declare dso_local i32 @kfree(%struct.sctp_cookie_param*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
