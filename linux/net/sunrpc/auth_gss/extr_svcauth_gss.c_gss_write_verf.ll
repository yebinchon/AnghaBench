; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/auth_gss/extr_svcauth_gss.c_gss_write_verf.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/auth_gss/extr_svcauth_gss.c_gss_write_verf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rqst = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i8** }
%struct.gss_ctx = type { i32 }
%struct.xdr_buf = type { i32 }
%struct.xdr_netobj = type { i64, i32* }
%struct.kvec = type { i32, i8** }

@RPC_AUTH_GSS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@GSS_S_COMPLETE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.svc_rqst*, %struct.gss_ctx*, i64)* @gss_write_verf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gss_write_verf(%struct.svc_rqst* %0, %struct.gss_ctx* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.svc_rqst*, align 8
  %6 = alloca %struct.gss_ctx*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.xdr_buf, align 4
  %11 = alloca %struct.xdr_netobj, align 8
  %12 = alloca i8**, align 8
  %13 = alloca %struct.kvec, align 8
  %14 = alloca i32, align 4
  store %struct.svc_rqst* %0, %struct.svc_rqst** %5, align 8
  store %struct.gss_ctx* %1, %struct.gss_ctx** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 -1, i32* %14, align 4
  %15 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %16 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = load i32, i32* @RPC_AUTH_GSS, align 4
  %20 = call i32 @svc_putnl(%struct.TYPE_4__* %18, i32 %19)
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = call i8** @kmalloc(i32 4, i32 %21)
  store i8** %22, i8*** %8, align 8
  %23 = load i8**, i8*** %8, align 8
  %24 = icmp ne i8** %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %96

26:                                               ; preds = %3
  %27 = load i64, i64* %7, align 8
  %28 = call i8* @htonl(i64 %27)
  %29 = load i8**, i8*** %8, align 8
  store i8* %28, i8** %29, align 8
  %30 = load i8**, i8*** %8, align 8
  %31 = getelementptr inbounds %struct.kvec, %struct.kvec* %13, i32 0, i32 1
  store i8** %30, i8*** %31, align 8
  %32 = getelementptr inbounds %struct.kvec, %struct.kvec* %13, i32 0, i32 0
  store i32 4, i32* %32, align 8
  %33 = call i32 @xdr_buf_from_iov(%struct.kvec* %13, %struct.xdr_buf* %10)
  %34 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %35 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 1
  %39 = load i8**, i8*** %38, align 8
  %40 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %41 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i8*, i8** %39, i64 %46
  store i8** %47, i8*** %12, align 8
  %48 = load i8**, i8*** %12, align 8
  %49 = getelementptr inbounds i8*, i8** %48, i64 1
  %50 = bitcast i8** %49 to i32*
  %51 = getelementptr inbounds %struct.xdr_netobj, %struct.xdr_netobj* %11, i32 0, i32 1
  store i32* %50, i32** %51, align 8
  %52 = load %struct.gss_ctx*, %struct.gss_ctx** %6, align 8
  %53 = call i64 @gss_get_mic(%struct.gss_ctx* %52, %struct.xdr_buf* %10, %struct.xdr_netobj* %11)
  store i64 %53, i64* %9, align 8
  %54 = load i64, i64* %9, align 8
  %55 = load i64, i64* @GSS_S_COMPLETE, align 8
  %56 = icmp ne i64 %54, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %26
  br label %92

58:                                               ; preds = %26
  %59 = getelementptr inbounds %struct.xdr_netobj, %struct.xdr_netobj* %11, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = call i8* @htonl(i64 %60)
  %62 = load i8**, i8*** %12, align 8
  %63 = getelementptr inbounds i8*, i8** %62, i32 1
  store i8** %63, i8*** %12, align 8
  store i8* %61, i8** %62, align 8
  %64 = load i8**, i8*** %12, align 8
  %65 = bitcast i8** %64 to i32*
  %66 = getelementptr inbounds %struct.xdr_netobj, %struct.xdr_netobj* %11, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  %69 = getelementptr inbounds %struct.xdr_netobj, %struct.xdr_netobj* %11, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = trunc i64 %70 to i32
  %72 = call i32 @round_up_to_quad(i32 %71)
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.xdr_netobj, %struct.xdr_netobj* %11, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = sub nsw i64 %73, %75
  %77 = trunc i64 %76 to i32
  %78 = call i32 @memset(i32* %68, i32 0, i32 %77)
  %79 = getelementptr inbounds %struct.xdr_netobj, %struct.xdr_netobj* %11, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = trunc i64 %80 to i32
  %82 = call i32 @XDR_QUADLEN(i32 %81)
  %83 = load i8**, i8*** %12, align 8
  %84 = sext i32 %82 to i64
  %85 = getelementptr inbounds i8*, i8** %83, i64 %84
  store i8** %85, i8*** %12, align 8
  %86 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %87 = load i8**, i8*** %12, align 8
  %88 = call i32 @xdr_ressize_check(%struct.svc_rqst* %86, i8** %87)
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %91, label %90

90:                                               ; preds = %58
  br label %92

91:                                               ; preds = %58
  store i32 0, i32* %14, align 4
  br label %92

92:                                               ; preds = %91, %90, %57
  %93 = load i8**, i8*** %8, align 8
  %94 = call i32 @kfree(i8** %93)
  %95 = load i32, i32* %14, align 4
  store i32 %95, i32* %4, align 4
  br label %96

96:                                               ; preds = %92, %25
  %97 = load i32, i32* %4, align 4
  ret i32 %97
}

declare dso_local i32 @svc_putnl(%struct.TYPE_4__*, i32) #1

declare dso_local i8** @kmalloc(i32, i32) #1

declare dso_local i8* @htonl(i64) #1

declare dso_local i32 @xdr_buf_from_iov(%struct.kvec*, %struct.xdr_buf*) #1

declare dso_local i64 @gss_get_mic(%struct.gss_ctx*, %struct.xdr_buf*, %struct.xdr_netobj*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @round_up_to_quad(i32) #1

declare dso_local i32 @XDR_QUADLEN(i32) #1

declare dso_local i32 @xdr_ressize_check(%struct.svc_rqst*, i8**) #1

declare dso_local i32 @kfree(i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
