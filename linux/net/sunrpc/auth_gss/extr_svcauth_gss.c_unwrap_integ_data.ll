; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/auth_gss/extr_svcauth_gss.c_unwrap_integ_data.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/auth_gss/extr_svcauth_gss.c_unwrap_integ_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rqst = type { i64, i32 }
%struct.xdr_buf = type { i32, i32* }
%struct.gss_ctx = type { i32 }
%struct.xdr_netobj = type { i64, i32 }

@EINVAL = common dso_local global i32 0, align 4
@RQ_SPLICE_OK = common dso_local global i32 0, align 4
@RPC_MAX_AUTH_SIZE = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@GSS_S_COMPLETE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.svc_rqst*, %struct.xdr_buf*, i32, %struct.gss_ctx*)* @unwrap_integ_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @unwrap_integ_data(%struct.svc_rqst* %0, %struct.xdr_buf* %1, i32 %2, %struct.gss_ctx* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.svc_rqst*, align 8
  %7 = alloca %struct.xdr_buf*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.gss_ctx*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.xdr_netobj, align 8
  %14 = alloca %struct.xdr_buf, align 8
  store %struct.svc_rqst* %0, %struct.svc_rqst** %6, align 8
  store %struct.xdr_buf* %1, %struct.xdr_buf** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.gss_ctx* %3, %struct.gss_ctx** %9, align 8
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %10, align 4
  %17 = load i32, i32* @RQ_SPLICE_OK, align 4
  %18 = load %struct.svc_rqst*, %struct.svc_rqst** %6, align 8
  %19 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %18, i32 0, i32 1
  %20 = call i32 @clear_bit(i32 %17, i32* %19)
  %21 = load %struct.svc_rqst*, %struct.svc_rqst** %6, align 8
  %22 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %122

26:                                               ; preds = %4
  %27 = load %struct.xdr_buf*, %struct.xdr_buf** %7, align 8
  %28 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %27, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 0
  %31 = call i32 @svc_getnl(i32* %30)
  store i32 %31, i32* %11, align 4
  %32 = load i32, i32* %11, align 4
  %33 = and i32 %32, 3
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %26
  %36 = load i32, i32* %10, align 4
  store i32 %36, i32* %5, align 4
  br label %122

37:                                               ; preds = %26
  %38 = load i32, i32* %11, align 4
  %39 = load %struct.xdr_buf*, %struct.xdr_buf** %7, align 8
  %40 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp sgt i32 %38, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %37
  %44 = load i32, i32* %10, align 4
  store i32 %44, i32* %5, align 4
  br label %122

45:                                               ; preds = %37
  %46 = load %struct.xdr_buf*, %struct.xdr_buf** %7, align 8
  %47 = load i32, i32* %11, align 4
  %48 = call i64 @xdr_buf_subsegment(%struct.xdr_buf* %46, %struct.xdr_buf* %14, i32 0, i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %45
  %51 = call i32 @WARN_ON_ONCE(i32 1)
  %52 = load i32, i32* %10, align 4
  store i32 %52, i32* %5, align 4
  br label %122

53:                                               ; preds = %45
  %54 = load %struct.xdr_buf*, %struct.xdr_buf** %7, align 8
  %55 = load i32, i32* %11, align 4
  %56 = getelementptr inbounds %struct.xdr_netobj, %struct.xdr_netobj* %13, i32 0, i32 0
  %57 = call i64 @read_u32_from_xdr_buf(%struct.xdr_buf* %54, i32 %55, i64* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %53
  %60 = load i32, i32* %10, align 4
  store i32 %60, i32* %5, align 4
  br label %122

61:                                               ; preds = %53
  %62 = getelementptr inbounds %struct.xdr_netobj, %struct.xdr_netobj* %13, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @RPC_MAX_AUTH_SIZE, align 8
  %65 = icmp sgt i64 %63, %64
  br i1 %65, label %66, label %68

66:                                               ; preds = %61
  %67 = load i32, i32* %10, align 4
  store i32 %67, i32* %5, align 4
  br label %122

68:                                               ; preds = %61
  %69 = getelementptr inbounds %struct.xdr_netobj, %struct.xdr_netobj* %13, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i32, i32* @GFP_KERNEL, align 4
  %72 = call i32 @kmalloc(i64 %70, i32 %71)
  %73 = getelementptr inbounds %struct.xdr_netobj, %struct.xdr_netobj* %13, i32 0, i32 1
  store i32 %72, i32* %73, align 8
  %74 = getelementptr inbounds %struct.xdr_netobj, %struct.xdr_netobj* %13, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %79, label %77

77:                                               ; preds = %68
  %78 = load i32, i32* %10, align 4
  store i32 %78, i32* %5, align 4
  br label %122

79:                                               ; preds = %68
  %80 = load %struct.xdr_buf*, %struct.xdr_buf** %7, align 8
  %81 = load i32, i32* %11, align 4
  %82 = add nsw i32 %81, 4
  %83 = getelementptr inbounds %struct.xdr_netobj, %struct.xdr_netobj* %13, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = getelementptr inbounds %struct.xdr_netobj, %struct.xdr_netobj* %13, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = call i64 @read_bytes_from_xdr_buf(%struct.xdr_buf* %80, i32 %82, i32 %84, i64 %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %79
  br label %117

90:                                               ; preds = %79
  %91 = load %struct.gss_ctx*, %struct.gss_ctx** %9, align 8
  %92 = call i32 @gss_verify_mic(%struct.gss_ctx* %91, %struct.xdr_buf* %14, %struct.xdr_netobj* %13)
  store i32 %92, i32* %12, align 4
  %93 = load i32, i32* %12, align 4
  %94 = load i32, i32* @GSS_S_COMPLETE, align 4
  %95 = icmp ne i32 %93, %94
  br i1 %95, label %96, label %97

96:                                               ; preds = %90
  br label %117

97:                                               ; preds = %90
  %98 = load %struct.xdr_buf*, %struct.xdr_buf** %7, align 8
  %99 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %98, i32 0, i32 1
  %100 = load i32*, i32** %99, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 0
  %102 = call i32 @svc_getnl(i32* %101)
  %103 = load i32, i32* %8, align 4
  %104 = icmp ne i32 %102, %103
  br i1 %104, label %105, label %106

105:                                              ; preds = %97
  br label %117

106:                                              ; preds = %97
  %107 = getelementptr inbounds %struct.xdr_netobj, %struct.xdr_netobj* %13, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = call i64 @round_up_to_quad(i64 %108)
  %110 = add nsw i64 4, %109
  %111 = load %struct.xdr_buf*, %struct.xdr_buf** %7, align 8
  %112 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = sext i32 %113 to i64
  %115 = sub nsw i64 %114, %110
  %116 = trunc i64 %115 to i32
  store i32 %116, i32* %112, align 8
  store i32 0, i32* %10, align 4
  br label %117

117:                                              ; preds = %106, %105, %96, %89
  %118 = getelementptr inbounds %struct.xdr_netobj, %struct.xdr_netobj* %13, i32 0, i32 1
  %119 = load i32, i32* %118, align 8
  %120 = call i32 @kfree(i32 %119)
  %121 = load i32, i32* %10, align 4
  store i32 %121, i32* %5, align 4
  br label %122

122:                                              ; preds = %117, %77, %66, %59, %50, %43, %35, %25
  %123 = load i32, i32* %5, align 4
  ret i32 %123
}

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @svc_getnl(i32*) #1

declare dso_local i64 @xdr_buf_subsegment(%struct.xdr_buf*, %struct.xdr_buf*, i32, i32) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i64 @read_u32_from_xdr_buf(%struct.xdr_buf*, i32, i64*) #1

declare dso_local i32 @kmalloc(i64, i32) #1

declare dso_local i64 @read_bytes_from_xdr_buf(%struct.xdr_buf*, i32, i32, i64) #1

declare dso_local i32 @gss_verify_mic(%struct.gss_ctx*, %struct.xdr_buf*, %struct.xdr_netobj*) #1

declare dso_local i64 @round_up_to_quad(i64) #1

declare dso_local i32 @kfree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
