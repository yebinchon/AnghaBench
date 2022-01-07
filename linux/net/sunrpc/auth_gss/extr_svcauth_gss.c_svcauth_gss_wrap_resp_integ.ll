; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/auth_gss/extr_svcauth_gss.c_svcauth_gss_wrap_resp_integ.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/auth_gss/extr_svcauth_gss.c_svcauth_gss_wrap_resp_integ.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rqst = type { %struct.xdr_buf, i64 }
%struct.xdr_buf = type { i32, %struct.kvec*, %struct.TYPE_3__* }
%struct.kvec = type { i32, i32* }
%struct.TYPE_3__ = type { i64, i32* }
%struct.gss_svc_data = type { %struct.TYPE_4__*, %struct.rpc_gss_wire_cred }
%struct.TYPE_4__ = type { i32 }
%struct.rpc_gss_wire_cred = type { i32 }
%struct.xdr_netobj = type { i32, i32* }

@EINVAL = common dso_local global i32 0, align 4
@RPC_MAX_AUTH_SIZE = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.svc_rqst*)* @svcauth_gss_wrap_resp_integ to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @svcauth_gss_wrap_resp_integ(%struct.svc_rqst* %0) #0 {
  %2 = alloca %struct.svc_rqst*, align 8
  %3 = alloca %struct.gss_svc_data*, align 8
  %4 = alloca %struct.rpc_gss_wire_cred*, align 8
  %5 = alloca %struct.xdr_buf*, align 8
  %6 = alloca %struct.xdr_buf, align 8
  %7 = alloca %struct.xdr_netobj, align 8
  %8 = alloca %struct.kvec*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.svc_rqst* %0, %struct.svc_rqst** %2, align 8
  %13 = load %struct.svc_rqst*, %struct.svc_rqst** %2, align 8
  %14 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to %struct.gss_svc_data*
  store %struct.gss_svc_data* %16, %struct.gss_svc_data** %3, align 8
  %17 = load %struct.gss_svc_data*, %struct.gss_svc_data** %3, align 8
  %18 = getelementptr inbounds %struct.gss_svc_data, %struct.gss_svc_data* %17, i32 0, i32 1
  store %struct.rpc_gss_wire_cred* %18, %struct.rpc_gss_wire_cred** %4, align 8
  %19 = load %struct.svc_rqst*, %struct.svc_rqst** %2, align 8
  %20 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %19, i32 0, i32 0
  store %struct.xdr_buf* %20, %struct.xdr_buf** %5, align 8
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %12, align 4
  %23 = load %struct.xdr_buf*, %struct.xdr_buf** %5, align 8
  %24 = load %struct.gss_svc_data*, %struct.gss_svc_data** %3, align 8
  %25 = call i32* @svcauth_gss_prepare_to_wrap(%struct.xdr_buf* %23, %struct.gss_svc_data* %24)
  store i32* %25, i32** %9, align 8
  %26 = load i32*, i32** %9, align 8
  %27 = icmp eq i32* %26, null
  br i1 %27, label %28, label %29

28:                                               ; preds = %1
  br label %179

29:                                               ; preds = %1
  %30 = load i32*, i32** %9, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 1
  %32 = load %struct.xdr_buf*, %struct.xdr_buf** %5, align 8
  %33 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %32, i32 0, i32 2
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i64 0
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  %38 = ptrtoint i32* %31 to i64
  %39 = ptrtoint i32* %37 to i64
  %40 = sub i64 %38, %39
  %41 = sdiv exact i64 %40, 4
  %42 = trunc i64 %41 to i32
  store i32 %42, i32* %10, align 4
  %43 = load %struct.xdr_buf*, %struct.xdr_buf** %5, align 8
  %44 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* %10, align 4
  %47 = sub nsw i32 %45, %46
  store i32 %47, i32* %11, align 4
  %48 = load i32, i32* %11, align 4
  %49 = srem i32 %48, 4
  %50 = call i32 @BUG_ON(i32 %49)
  %51 = load i32, i32* %11, align 4
  %52 = call i8* @htonl(i32 %51)
  %53 = ptrtoint i8* %52 to i32
  %54 = load i32*, i32** %9, align 8
  %55 = getelementptr inbounds i32, i32* %54, i32 1
  store i32* %55, i32** %9, align 8
  store i32 %53, i32* %54, align 4
  %56 = load %struct.rpc_gss_wire_cred*, %struct.rpc_gss_wire_cred** %4, align 8
  %57 = getelementptr inbounds %struct.rpc_gss_wire_cred, %struct.rpc_gss_wire_cred* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i8* @htonl(i32 %58)
  %60 = ptrtoint i8* %59 to i32
  %61 = load i32*, i32** %9, align 8
  %62 = getelementptr inbounds i32, i32* %61, i32 1
  store i32* %62, i32** %9, align 8
  store i32 %60, i32* %61, align 4
  %63 = load %struct.xdr_buf*, %struct.xdr_buf** %5, align 8
  %64 = load i32, i32* %10, align 4
  %65 = load i32, i32* %11, align 4
  %66 = call i64 @xdr_buf_subsegment(%struct.xdr_buf* %63, %struct.xdr_buf* %6, i32 %64, i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %29
  %69 = call i32 @WARN_ON_ONCE(i32 1)
  br label %180

70:                                               ; preds = %29
  %71 = load %struct.xdr_buf*, %struct.xdr_buf** %5, align 8
  %72 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %71, i32 0, i32 1
  %73 = load %struct.kvec*, %struct.kvec** %72, align 8
  %74 = getelementptr inbounds %struct.kvec, %struct.kvec* %73, i64 0
  %75 = getelementptr inbounds %struct.kvec, %struct.kvec* %74, i32 0, i32 1
  %76 = load i32*, i32** %75, align 8
  %77 = icmp eq i32* %76, null
  br i1 %77, label %78, label %114

78:                                               ; preds = %70
  %79 = load %struct.xdr_buf*, %struct.xdr_buf** %5, align 8
  %80 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %79, i32 0, i32 2
  %81 = load %struct.TYPE_3__*, %struct.TYPE_3__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i64 0
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @RPC_MAX_AUTH_SIZE, align 8
  %86 = add nsw i64 %84, %85
  %87 = load i64, i64* @PAGE_SIZE, align 8
  %88 = icmp sgt i64 %86, %87
  br i1 %88, label %89, label %90

89:                                               ; preds = %78
  br label %180

90:                                               ; preds = %78
  %91 = load %struct.xdr_buf*, %struct.xdr_buf** %5, align 8
  %92 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %91, i32 0, i32 2
  %93 = load %struct.TYPE_3__*, %struct.TYPE_3__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i64 0
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 1
  %96 = load i32*, i32** %95, align 8
  %97 = load %struct.xdr_buf*, %struct.xdr_buf** %5, align 8
  %98 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %97, i32 0, i32 2
  %99 = load %struct.TYPE_3__*, %struct.TYPE_3__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i64 0
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = getelementptr inbounds i32, i32* %96, i64 %102
  %104 = load %struct.xdr_buf*, %struct.xdr_buf** %5, align 8
  %105 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %104, i32 0, i32 1
  %106 = load %struct.kvec*, %struct.kvec** %105, align 8
  %107 = getelementptr inbounds %struct.kvec, %struct.kvec* %106, i64 0
  %108 = getelementptr inbounds %struct.kvec, %struct.kvec* %107, i32 0, i32 1
  store i32* %103, i32** %108, align 8
  %109 = load %struct.xdr_buf*, %struct.xdr_buf** %5, align 8
  %110 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %109, i32 0, i32 1
  %111 = load %struct.kvec*, %struct.kvec** %110, align 8
  %112 = getelementptr inbounds %struct.kvec, %struct.kvec* %111, i64 0
  %113 = getelementptr inbounds %struct.kvec, %struct.kvec* %112, i32 0, i32 0
  store i32 0, i32* %113, align 8
  br label %114

114:                                              ; preds = %90, %70
  %115 = load %struct.xdr_buf*, %struct.xdr_buf** %5, align 8
  %116 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %115, i32 0, i32 1
  %117 = load %struct.kvec*, %struct.kvec** %116, align 8
  %118 = getelementptr inbounds %struct.kvec, %struct.kvec* %117, i64 0
  store %struct.kvec* %118, %struct.kvec** %8, align 8
  %119 = load %struct.kvec*, %struct.kvec** %8, align 8
  %120 = getelementptr inbounds %struct.kvec, %struct.kvec* %119, i32 0, i32 1
  %121 = load i32*, i32** %120, align 8
  %122 = load %struct.kvec*, %struct.kvec** %8, align 8
  %123 = getelementptr inbounds %struct.kvec, %struct.kvec* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i32, i32* %121, i64 %125
  %127 = getelementptr inbounds i32, i32* %126, i64 4
  %128 = getelementptr inbounds %struct.xdr_netobj, %struct.xdr_netobj* %7, i32 0, i32 1
  store i32* %127, i32** %128, align 8
  %129 = load %struct.gss_svc_data*, %struct.gss_svc_data** %3, align 8
  %130 = getelementptr inbounds %struct.gss_svc_data, %struct.gss_svc_data* %129, i32 0, i32 0
  %131 = load %struct.TYPE_4__*, %struct.TYPE_4__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = call i64 @gss_get_mic(i32 %133, %struct.xdr_buf* %6, %struct.xdr_netobj* %7)
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %137

136:                                              ; preds = %114
  br label %180

137:                                              ; preds = %114
  %138 = load %struct.kvec*, %struct.kvec** %8, align 8
  %139 = getelementptr inbounds %struct.xdr_netobj, %struct.xdr_netobj* %7, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = call i32 @svc_putnl(%struct.kvec* %138, i32 %140)
  %142 = getelementptr inbounds %struct.xdr_netobj, %struct.xdr_netobj* %7, i32 0, i32 1
  %143 = load i32*, i32** %142, align 8
  %144 = getelementptr inbounds %struct.xdr_netobj, %struct.xdr_netobj* %7, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i32, i32* %143, i64 %146
  %148 = getelementptr inbounds %struct.xdr_netobj, %struct.xdr_netobj* %7, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = call i32 @round_up_to_quad(i32 %149)
  %151 = getelementptr inbounds %struct.xdr_netobj, %struct.xdr_netobj* %7, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = sub nsw i32 %150, %152
  %154 = call i32 @memset(i32* %147, i32 0, i32 %153)
  %155 = getelementptr inbounds %struct.xdr_netobj, %struct.xdr_netobj* %7, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = call i32 @XDR_QUADLEN(i32 %156)
  %158 = shl i32 %157, 2
  %159 = load %struct.kvec*, %struct.kvec** %8, align 8
  %160 = getelementptr inbounds %struct.kvec, %struct.kvec* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = add nsw i32 %161, %158
  store i32 %162, i32* %160, align 8
  %163 = getelementptr inbounds %struct.xdr_netobj, %struct.xdr_netobj* %7, i32 0, i32 0
  %164 = load i32, i32* %163, align 8
  %165 = call i32 @XDR_QUADLEN(i32 %164)
  %166 = shl i32 %165, 2
  %167 = load %struct.xdr_buf*, %struct.xdr_buf** %5, align 8
  %168 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = add nsw i32 %169, %166
  store i32 %170, i32* %168, align 8
  %171 = load %struct.kvec*, %struct.kvec** %8, align 8
  %172 = getelementptr inbounds %struct.kvec, %struct.kvec* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 8
  %174 = sext i32 %173 to i64
  %175 = load i64, i64* @PAGE_SIZE, align 8
  %176 = icmp sgt i64 %174, %175
  %177 = zext i1 %176 to i32
  %178 = call i32 @BUG_ON(i32 %177)
  br label %179

179:                                              ; preds = %137, %28
  store i32 0, i32* %12, align 4
  br label %180

180:                                              ; preds = %179, %136, %89, %68
  %181 = load i32, i32* %12, align 4
  ret i32 %181
}

declare dso_local i32* @svcauth_gss_prepare_to_wrap(%struct.xdr_buf*, %struct.gss_svc_data*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i8* @htonl(i32) #1

declare dso_local i64 @xdr_buf_subsegment(%struct.xdr_buf*, %struct.xdr_buf*, i32, i32) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i64 @gss_get_mic(i32, %struct.xdr_buf*, %struct.xdr_netobj*) #1

declare dso_local i32 @svc_putnl(%struct.kvec*, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @round_up_to_quad(i32) #1

declare dso_local i32 @XDR_QUADLEN(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
