; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/auth_gss/extr_svcauth_gss.c_unwrap_priv_data.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/auth_gss/extr_svcauth_gss.c_unwrap_priv_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rqst = type { i64, i32 }
%struct.xdr_buf = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.gss_ctx = type { i32 }

@RQ_SPLICE_OK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@RPCSVC_MAXPAYLOAD = common dso_local global i32 0, align 4
@GSS_S_COMPLETE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.svc_rqst*, %struct.xdr_buf*, i32, %struct.gss_ctx*)* @unwrap_priv_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @unwrap_priv_data(%struct.svc_rqst* %0, %struct.xdr_buf* %1, i32 %2, %struct.gss_ctx* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.svc_rqst*, align 8
  %7 = alloca %struct.xdr_buf*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.gss_ctx*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.svc_rqst* %0, %struct.svc_rqst** %6, align 8
  store %struct.xdr_buf* %1, %struct.xdr_buf** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.gss_ctx* %3, %struct.gss_ctx** %9, align 8
  %16 = load i32, i32* @RQ_SPLICE_OK, align 4
  %17 = load %struct.svc_rqst*, %struct.svc_rqst** %6, align 8
  %18 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %17, i32 0, i32 1
  %19 = call i32 @clear_bit(i32 %16, i32* %18)
  %20 = load %struct.xdr_buf*, %struct.xdr_buf** %7, align 8
  %21 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %20, i32 0, i32 1
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i64 0
  %24 = call i32 @svc_getnl(%struct.TYPE_2__* %23)
  store i32 %24, i32* %10, align 4
  %25 = load %struct.svc_rqst*, %struct.svc_rqst** %6, align 8
  %26 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %4
  br label %100

30:                                               ; preds = %4
  %31 = load %struct.xdr_buf*, %struct.xdr_buf** %7, align 8
  %32 = call i32 @total_buf_len(%struct.xdr_buf* %31)
  store i32 %32, i32* %14, align 4
  %33 = load i32, i32* %10, align 4
  %34 = load i32, i32* %14, align 4
  %35 = icmp sgt i32 %33, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %30
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %5, align 4
  br label %112

39:                                               ; preds = %30
  %40 = load i32, i32* %14, align 4
  %41 = load i32, i32* %10, align 4
  %42 = sub nsw i32 %40, %41
  store i32 %42, i32* %12, align 4
  %43 = load i32, i32* %12, align 4
  %44 = load %struct.xdr_buf*, %struct.xdr_buf** %7, align 8
  %45 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = sub nsw i32 %46, %43
  store i32 %47, i32* %45, align 8
  %48 = load %struct.xdr_buf*, %struct.xdr_buf** %7, align 8
  %49 = load i32, i32* %12, align 4
  %50 = call i32 @fix_priv_head(%struct.xdr_buf* %48, i32 %49)
  %51 = load %struct.xdr_buf*, %struct.xdr_buf** %7, align 8
  %52 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  store i32 %53, i32* %13, align 4
  %54 = load i32, i32* %10, align 4
  %55 = load %struct.xdr_buf*, %struct.xdr_buf** %7, align 8
  %56 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 8
  %57 = load %struct.gss_ctx*, %struct.gss_ctx** %9, align 8
  %58 = load %struct.xdr_buf*, %struct.xdr_buf** %7, align 8
  %59 = call i32 @gss_unwrap(%struct.gss_ctx* %57, i32 0, %struct.xdr_buf* %58)
  store i32 %59, i32* %11, align 4
  %60 = load i32, i32* %10, align 4
  %61 = load %struct.xdr_buf*, %struct.xdr_buf** %7, align 8
  %62 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = sub nsw i32 %60, %63
  store i32 %64, i32* %12, align 4
  %65 = load i32, i32* %13, align 4
  %66 = load %struct.xdr_buf*, %struct.xdr_buf** %7, align 8
  %67 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %66, i32 0, i32 0
  store i32 %65, i32* %67, align 8
  %68 = load i32, i32* %12, align 4
  %69 = load %struct.xdr_buf*, %struct.xdr_buf** %7, align 8
  %70 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = sub nsw i32 %71, %68
  store i32 %72, i32* %70, align 8
  %73 = load %struct.xdr_buf*, %struct.xdr_buf** %7, align 8
  %74 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %73, i32 0, i32 1
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i64 0
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = srem i32 %78, 4
  store i32 %79, i32* %15, align 4
  %80 = load i32, i32* %15, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %92

82:                                               ; preds = %39
  %83 = load i32, i32* @RPCSVC_MAXPAYLOAD, align 4
  %84 = load %struct.xdr_buf*, %struct.xdr_buf** %7, align 8
  %85 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %84, i32 0, i32 2
  store i32 %83, i32* %85, align 8
  %86 = load %struct.xdr_buf*, %struct.xdr_buf** %7, align 8
  %87 = load i32, i32* %15, align 4
  %88 = call i32 @xdr_shift_buf(%struct.xdr_buf* %86, i32 %87)
  %89 = load %struct.xdr_buf*, %struct.xdr_buf** %7, align 8
  %90 = load i32, i32* %12, align 4
  %91 = call i32 @fix_priv_head(%struct.xdr_buf* %89, i32 %90)
  br label %92

92:                                               ; preds = %82, %39
  %93 = load i32, i32* %11, align 4
  %94 = load i32, i32* @GSS_S_COMPLETE, align 4
  %95 = icmp ne i32 %93, %94
  br i1 %95, label %96, label %99

96:                                               ; preds = %92
  %97 = load i32, i32* @EINVAL, align 4
  %98 = sub nsw i32 0, %97
  store i32 %98, i32* %5, align 4
  br label %112

99:                                               ; preds = %92
  br label %100

100:                                              ; preds = %99, %29
  %101 = load %struct.xdr_buf*, %struct.xdr_buf** %7, align 8
  %102 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %101, i32 0, i32 1
  %103 = load %struct.TYPE_2__*, %struct.TYPE_2__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i64 0
  %105 = call i32 @svc_getnl(%struct.TYPE_2__* %104)
  %106 = load i32, i32* %8, align 4
  %107 = icmp ne i32 %105, %106
  br i1 %107, label %108, label %111

108:                                              ; preds = %100
  %109 = load i32, i32* @EINVAL, align 4
  %110 = sub nsw i32 0, %109
  store i32 %110, i32* %5, align 4
  br label %112

111:                                              ; preds = %100
  store i32 0, i32* %5, align 4
  br label %112

112:                                              ; preds = %111, %108, %96, %36
  %113 = load i32, i32* %5, align 4
  ret i32 %113
}

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @svc_getnl(%struct.TYPE_2__*) #1

declare dso_local i32 @total_buf_len(%struct.xdr_buf*) #1

declare dso_local i32 @fix_priv_head(%struct.xdr_buf*, i32) #1

declare dso_local i32 @gss_unwrap(%struct.gss_ctx*, i32, %struct.xdr_buf*) #1

declare dso_local i32 @xdr_shift_buf(%struct.xdr_buf*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
