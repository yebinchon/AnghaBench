; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/auth_gss/extr_auth_gss.c_gss_wrap_req_priv.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/auth_gss/extr_auth_gss.c_gss_wrap_req_priv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_cred = type { i32 }
%struct.gss_cl_ctx = type { i32 }
%struct.rpc_task = type { %struct.rpc_rqst* }
%struct.rpc_rqst = type { i64, i32, %struct.page**, %struct.xdr_buf }
%struct.page = type { i32 }
%struct.xdr_buf = type { i32, i64, i64, %struct.kvec*, %struct.kvec*, i64, %struct.page** }
%struct.kvec = type { i32, i8* }
%struct.xdr_stream = type { i32 }

@EIO = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@GSS_S_CONTEXT_EXPIRED = common dso_local global i64 0, align 8
@RPCAUTH_CRED_UPTODATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rpc_cred*, %struct.gss_cl_ctx*, %struct.rpc_task*, %struct.xdr_stream*)* @gss_wrap_req_priv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gss_wrap_req_priv(%struct.rpc_cred* %0, %struct.gss_cl_ctx* %1, %struct.rpc_task* %2, %struct.xdr_stream* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.rpc_cred*, align 8
  %7 = alloca %struct.gss_cl_ctx*, align 8
  %8 = alloca %struct.rpc_task*, align 8
  %9 = alloca %struct.xdr_stream*, align 8
  %10 = alloca %struct.rpc_rqst*, align 8
  %11 = alloca %struct.xdr_buf*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca %struct.page**, align 8
  %19 = alloca i32, align 4
  %20 = alloca %struct.kvec*, align 8
  %21 = alloca i8*, align 8
  store %struct.rpc_cred* %0, %struct.rpc_cred** %6, align 8
  store %struct.gss_cl_ctx* %1, %struct.gss_cl_ctx** %7, align 8
  store %struct.rpc_task* %2, %struct.rpc_task** %8, align 8
  store %struct.xdr_stream* %3, %struct.xdr_stream** %9, align 8
  %22 = load %struct.rpc_task*, %struct.rpc_task** %8, align 8
  %23 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %22, i32 0, i32 0
  %24 = load %struct.rpc_rqst*, %struct.rpc_rqst** %23, align 8
  store %struct.rpc_rqst* %24, %struct.rpc_rqst** %10, align 8
  %25 = load %struct.rpc_rqst*, %struct.rpc_rqst** %10, align 8
  %26 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %25, i32 0, i32 3
  store %struct.xdr_buf* %26, %struct.xdr_buf** %11, align 8
  %27 = load i32, i32* @EIO, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %15, align 4
  %29 = load %struct.xdr_stream*, %struct.xdr_stream** %9, align 8
  %30 = call i8* @xdr_reserve_space(%struct.xdr_stream* %29, i32 2)
  store i8* %30, i8** %16, align 8
  %31 = load i8*, i8** %16, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %4
  br label %228

34:                                               ; preds = %4
  %35 = load i8*, i8** %16, align 8
  %36 = getelementptr inbounds i8, i8* %35, i32 1
  store i8* %36, i8** %16, align 8
  store i8* %35, i8** %17, align 8
  %37 = load %struct.rpc_rqst*, %struct.rpc_rqst** %10, align 8
  %38 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = call signext i8 @cpu_to_be32(i64 %39)
  %41 = load i8*, i8** %16, align 8
  store i8 %40, i8* %41, align 1
  %42 = load %struct.rpc_task*, %struct.rpc_task** %8, align 8
  %43 = load %struct.xdr_stream*, %struct.xdr_stream** %9, align 8
  %44 = call i64 @rpcauth_wrap_req_encode(%struct.rpc_task* %42, %struct.xdr_stream* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %34
  br label %228

47:                                               ; preds = %34
  %48 = load %struct.rpc_rqst*, %struct.rpc_rqst** %10, align 8
  %49 = call i32 @alloc_enc_pages(%struct.rpc_rqst* %48)
  store i32 %49, i32* %15, align 4
  %50 = load i32, i32* %15, align 4
  %51 = call i64 @unlikely(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %47
  br label %228

54:                                               ; preds = %47
  %55 = load %struct.xdr_buf*, %struct.xdr_buf** %11, align 8
  %56 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @PAGE_SHIFT, align 4
  %59 = ashr i32 %57, %58
  store i32 %59, i32* %19, align 4
  %60 = load %struct.xdr_buf*, %struct.xdr_buf** %11, align 8
  %61 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %60, i32 0, i32 6
  %62 = load %struct.page**, %struct.page*** %61, align 8
  %63 = load i32, i32* %19, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.page*, %struct.page** %62, i64 %64
  store %struct.page** %65, %struct.page*** %18, align 8
  %66 = load %struct.rpc_rqst*, %struct.rpc_rqst** %10, align 8
  %67 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %66, i32 0, i32 2
  %68 = load %struct.page**, %struct.page*** %67, align 8
  %69 = load %struct.xdr_buf*, %struct.xdr_buf** %11, align 8
  %70 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %69, i32 0, i32 6
  store %struct.page** %68, %struct.page*** %70, align 8
  %71 = load i32, i32* %19, align 4
  %72 = load i32, i32* @PAGE_SHIFT, align 4
  %73 = shl i32 %71, %72
  %74 = load %struct.xdr_buf*, %struct.xdr_buf** %11, align 8
  %75 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = sub nsw i32 %76, %73
  store i32 %77, i32* %75, align 8
  %78 = load %struct.xdr_buf*, %struct.xdr_buf** %11, align 8
  %79 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %78, i32 0, i32 5
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %90, label %82

82:                                               ; preds = %54
  %83 = load %struct.xdr_buf*, %struct.xdr_buf** %11, align 8
  %84 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %83, i32 0, i32 4
  %85 = load %struct.kvec*, %struct.kvec** %84, align 8
  %86 = getelementptr inbounds %struct.kvec, %struct.kvec* %85, i64 0
  %87 = getelementptr inbounds %struct.kvec, %struct.kvec* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %122

90:                                               ; preds = %82, %54
  %91 = load %struct.rpc_rqst*, %struct.rpc_rqst** %10, align 8
  %92 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %91, i32 0, i32 2
  %93 = load %struct.page**, %struct.page*** %92, align 8
  %94 = load %struct.rpc_rqst*, %struct.rpc_rqst** %10, align 8
  %95 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 8
  %97 = sub nsw i32 %96, 1
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.page*, %struct.page** %93, i64 %98
  %100 = load %struct.page*, %struct.page** %99, align 8
  %101 = call i8* @page_address(%struct.page* %100)
  store i8* %101, i8** %21, align 8
  %102 = load i8*, i8** %21, align 8
  %103 = load %struct.xdr_buf*, %struct.xdr_buf** %11, align 8
  %104 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %103, i32 0, i32 4
  %105 = load %struct.kvec*, %struct.kvec** %104, align 8
  %106 = getelementptr inbounds %struct.kvec, %struct.kvec* %105, i64 0
  %107 = getelementptr inbounds %struct.kvec, %struct.kvec* %106, i32 0, i32 1
  %108 = load i8*, i8** %107, align 8
  %109 = load %struct.xdr_buf*, %struct.xdr_buf** %11, align 8
  %110 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %109, i32 0, i32 4
  %111 = load %struct.kvec*, %struct.kvec** %110, align 8
  %112 = getelementptr inbounds %struct.kvec, %struct.kvec* %111, i64 0
  %113 = getelementptr inbounds %struct.kvec, %struct.kvec* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = call i32 @memcpy(i8* %102, i8* %108, i32 %114)
  %116 = load i8*, i8** %21, align 8
  %117 = load %struct.xdr_buf*, %struct.xdr_buf** %11, align 8
  %118 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %117, i32 0, i32 4
  %119 = load %struct.kvec*, %struct.kvec** %118, align 8
  %120 = getelementptr inbounds %struct.kvec, %struct.kvec* %119, i64 0
  %121 = getelementptr inbounds %struct.kvec, %struct.kvec* %120, i32 0, i32 1
  store i8* %116, i8** %121, align 8
  br label %122

122:                                              ; preds = %90, %82
  %123 = load i8*, i8** %16, align 8
  %124 = bitcast i8* %123 to i32*
  %125 = load %struct.xdr_buf*, %struct.xdr_buf** %11, align 8
  %126 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %125, i32 0, i32 3
  %127 = load %struct.kvec*, %struct.kvec** %126, align 8
  %128 = getelementptr inbounds %struct.kvec, %struct.kvec* %127, i64 0
  %129 = getelementptr inbounds %struct.kvec, %struct.kvec* %128, i32 0, i32 1
  %130 = load i8*, i8** %129, align 8
  %131 = bitcast i8* %130 to i32*
  %132 = ptrtoint i32* %124 to i64
  %133 = ptrtoint i32* %131 to i64
  %134 = sub i64 %132, %133
  %135 = sdiv exact i64 %134, 4
  store i64 %135, i64* %13, align 8
  %136 = load %struct.gss_cl_ctx*, %struct.gss_cl_ctx** %7, align 8
  %137 = getelementptr inbounds %struct.gss_cl_ctx, %struct.gss_cl_ctx* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = load i64, i64* %13, align 8
  %140 = load %struct.xdr_buf*, %struct.xdr_buf** %11, align 8
  %141 = load %struct.page**, %struct.page*** %18, align 8
  %142 = call i64 @gss_wrap(i32 %138, i64 %139, %struct.xdr_buf* %140, %struct.page** %141)
  store i64 %142, i64* %14, align 8
  %143 = load %struct.xdr_buf*, %struct.xdr_buf** %11, align 8
  %144 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %143, i32 0, i32 1
  %145 = load i64, i64* %144, align 8
  %146 = load %struct.xdr_buf*, %struct.xdr_buf** %11, align 8
  %147 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %146, i32 0, i32 2
  %148 = load i64, i64* %147, align 8
  %149 = icmp sgt i64 %145, %148
  %150 = zext i1 %149 to i32
  %151 = call i64 @unlikely(i32 %150)
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %154

153:                                              ; preds = %122
  br label %228

154:                                              ; preds = %122
  %155 = load i64, i64* %14, align 8
  %156 = load i64, i64* @GSS_S_CONTEXT_EXPIRED, align 8
  %157 = icmp eq i64 %155, %156
  br i1 %157, label %158, label %163

158:                                              ; preds = %154
  %159 = load i32, i32* @RPCAUTH_CRED_UPTODATE, align 4
  %160 = load %struct.rpc_cred*, %struct.rpc_cred** %6, align 8
  %161 = getelementptr inbounds %struct.rpc_cred, %struct.rpc_cred* %160, i32 0, i32 0
  %162 = call i32 @clear_bit(i32 %159, i32* %161)
  br label %168

163:                                              ; preds = %154
  %164 = load i64, i64* %14, align 8
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %167

166:                                              ; preds = %163
  br label %230

167:                                              ; preds = %163
  br label %168

168:                                              ; preds = %167, %158
  %169 = load %struct.xdr_buf*, %struct.xdr_buf** %11, align 8
  %170 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %169, i32 0, i32 1
  %171 = load i64, i64* %170, align 8
  %172 = load i64, i64* %13, align 8
  %173 = sub nsw i64 %171, %172
  %174 = call signext i8 @cpu_to_be32(i64 %173)
  %175 = load i8*, i8** %17, align 8
  store i8 %174, i8* %175, align 1
  %176 = load %struct.xdr_buf*, %struct.xdr_buf** %11, align 8
  %177 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %176, i32 0, i32 5
  %178 = load i64, i64* %177, align 8
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %188, label %180

180:                                              ; preds = %168
  %181 = load %struct.xdr_buf*, %struct.xdr_buf** %11, align 8
  %182 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %181, i32 0, i32 4
  %183 = load %struct.kvec*, %struct.kvec** %182, align 8
  %184 = getelementptr inbounds %struct.kvec, %struct.kvec* %183, i64 0
  %185 = getelementptr inbounds %struct.kvec, %struct.kvec* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 8
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %192

188:                                              ; preds = %180, %168
  %189 = load %struct.xdr_buf*, %struct.xdr_buf** %11, align 8
  %190 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %189, i32 0, i32 4
  %191 = load %struct.kvec*, %struct.kvec** %190, align 8
  store %struct.kvec* %191, %struct.kvec** %20, align 8
  br label %196

192:                                              ; preds = %180
  %193 = load %struct.xdr_buf*, %struct.xdr_buf** %11, align 8
  %194 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %193, i32 0, i32 3
  %195 = load %struct.kvec*, %struct.kvec** %194, align 8
  store %struct.kvec* %195, %struct.kvec** %20, align 8
  br label %196

196:                                              ; preds = %192, %188
  %197 = load %struct.kvec*, %struct.kvec** %20, align 8
  %198 = getelementptr inbounds %struct.kvec, %struct.kvec* %197, i32 0, i32 1
  %199 = load i8*, i8** %198, align 8
  %200 = load %struct.kvec*, %struct.kvec** %20, align 8
  %201 = getelementptr inbounds %struct.kvec, %struct.kvec* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 8
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds i8, i8* %199, i64 %203
  store i8* %204, i8** %16, align 8
  %205 = load %struct.xdr_buf*, %struct.xdr_buf** %11, align 8
  %206 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %205, i32 0, i32 1
  %207 = load i64, i64* %206, align 8
  %208 = load i64, i64* %13, align 8
  %209 = sub nsw i64 %207, %208
  %210 = sub nsw i64 %209, 1
  %211 = and i64 %210, 3
  %212 = sub nsw i64 3, %211
  store i64 %212, i64* %12, align 8
  %213 = load i8*, i8** %16, align 8
  %214 = load i64, i64* %12, align 8
  %215 = call i32 @memset(i8* %213, i32 0, i64 %214)
  %216 = load i64, i64* %12, align 8
  %217 = load %struct.kvec*, %struct.kvec** %20, align 8
  %218 = getelementptr inbounds %struct.kvec, %struct.kvec* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 8
  %220 = sext i32 %219 to i64
  %221 = add nsw i64 %220, %216
  %222 = trunc i64 %221 to i32
  store i32 %222, i32* %218, align 8
  %223 = load i64, i64* %12, align 8
  %224 = load %struct.xdr_buf*, %struct.xdr_buf** %11, align 8
  %225 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %224, i32 0, i32 1
  %226 = load i64, i64* %225, align 8
  %227 = add nsw i64 %226, %223
  store i64 %227, i64* %225, align 8
  store i32 0, i32* %5, align 4
  br label %236

228:                                              ; preds = %153, %53, %46, %33
  %229 = load i32, i32* %15, align 4
  store i32 %229, i32* %5, align 4
  br label %236

230:                                              ; preds = %166
  %231 = load %struct.rpc_task*, %struct.rpc_task** %8, align 8
  %232 = load i64, i64* %14, align 8
  %233 = call i32 @trace_rpcgss_wrap(%struct.rpc_task* %231, i64 %232)
  %234 = load i32, i32* @EIO, align 4
  %235 = sub nsw i32 0, %234
  store i32 %235, i32* %5, align 4
  br label %236

236:                                              ; preds = %230, %228, %196
  %237 = load i32, i32* %5, align 4
  ret i32 %237
}

declare dso_local i8* @xdr_reserve_space(%struct.xdr_stream*, i32) #1

declare dso_local signext i8 @cpu_to_be32(i64) #1

declare dso_local i64 @rpcauth_wrap_req_encode(%struct.rpc_task*, %struct.xdr_stream*) #1

declare dso_local i32 @alloc_enc_pages(%struct.rpc_rqst*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i8* @page_address(%struct.page*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i64 @gss_wrap(i32, i64, %struct.xdr_buf*, %struct.page**) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @memset(i8*, i32, i64) #1

declare dso_local i32 @trace_rpcgss_wrap(%struct.rpc_task*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
