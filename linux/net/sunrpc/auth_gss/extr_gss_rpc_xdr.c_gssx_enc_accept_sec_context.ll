; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/auth_gss/extr_gss_rpc_xdr.c_gssx_enc_accept_sec_context.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/auth_gss/extr_gss_rpc_xdr.c_gssx_enc_accept_sec_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_rqst = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.xdr_stream = type { i32 }
%struct.gssx_arg_accept_sec_context = type { i32, i32, i32, i32, i64, i32, i64, i64, i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@XDRBUF_SPARSE_PAGES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"RPC:       gssx_enc_accept_sec_context: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gssx_enc_accept_sec_context(%struct.rpc_rqst* %0, %struct.xdr_stream* %1, i8* %2) #0 {
  %4 = alloca %struct.rpc_rqst*, align 8
  %5 = alloca %struct.xdr_stream*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.gssx_arg_accept_sec_context*, align 8
  %8 = alloca i32, align 4
  store %struct.rpc_rqst* %0, %struct.rpc_rqst** %4, align 8
  store %struct.xdr_stream* %1, %struct.xdr_stream** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = bitcast i8* %9 to %struct.gssx_arg_accept_sec_context*
  store %struct.gssx_arg_accept_sec_context* %10, %struct.gssx_arg_accept_sec_context** %7, align 8
  %11 = load %struct.xdr_stream*, %struct.xdr_stream** %5, align 8
  %12 = load %struct.gssx_arg_accept_sec_context*, %struct.gssx_arg_accept_sec_context** %7, align 8
  %13 = getelementptr inbounds %struct.gssx_arg_accept_sec_context, %struct.gssx_arg_accept_sec_context* %12, i32 0, i32 8
  %14 = call i32 @gssx_enc_call_ctx(%struct.xdr_stream* %11, i32* %13)
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %8, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  br label %113

18:                                               ; preds = %3
  %19 = load %struct.gssx_arg_accept_sec_context*, %struct.gssx_arg_accept_sec_context** %7, align 8
  %20 = getelementptr inbounds %struct.gssx_arg_accept_sec_context, %struct.gssx_arg_accept_sec_context* %19, i32 0, i32 7
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %18
  %24 = load %struct.xdr_stream*, %struct.xdr_stream** %5, align 8
  %25 = load %struct.gssx_arg_accept_sec_context*, %struct.gssx_arg_accept_sec_context** %7, align 8
  %26 = getelementptr inbounds %struct.gssx_arg_accept_sec_context, %struct.gssx_arg_accept_sec_context* %25, i32 0, i32 7
  %27 = load i64, i64* %26, align 8
  %28 = call i32 @gssx_enc_ctx(%struct.xdr_stream* %24, i64 %27)
  store i32 %28, i32* %8, align 4
  br label %32

29:                                               ; preds = %18
  %30 = load %struct.xdr_stream*, %struct.xdr_stream** %5, align 8
  %31 = call i32 @gssx_enc_bool(%struct.xdr_stream* %30, i32 0)
  store i32 %31, i32* %8, align 4
  br label %32

32:                                               ; preds = %29, %23
  %33 = load i32, i32* %8, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %32
  br label %113

36:                                               ; preds = %32
  %37 = load %struct.gssx_arg_accept_sec_context*, %struct.gssx_arg_accept_sec_context** %7, align 8
  %38 = getelementptr inbounds %struct.gssx_arg_accept_sec_context, %struct.gssx_arg_accept_sec_context* %37, i32 0, i32 6
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %36
  %42 = load %struct.xdr_stream*, %struct.xdr_stream** %5, align 8
  %43 = load %struct.gssx_arg_accept_sec_context*, %struct.gssx_arg_accept_sec_context** %7, align 8
  %44 = getelementptr inbounds %struct.gssx_arg_accept_sec_context, %struct.gssx_arg_accept_sec_context* %43, i32 0, i32 6
  %45 = load i64, i64* %44, align 8
  %46 = call i32 @gssx_enc_cred(%struct.xdr_stream* %42, i64 %45)
  store i32 %46, i32* %8, align 4
  br label %50

47:                                               ; preds = %36
  %48 = load %struct.xdr_stream*, %struct.xdr_stream** %5, align 8
  %49 = call i32 @gssx_enc_bool(%struct.xdr_stream* %48, i32 0)
  store i32 %49, i32* %8, align 4
  br label %50

50:                                               ; preds = %47, %41
  %51 = load i32, i32* %8, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %50
  br label %113

54:                                               ; preds = %50
  %55 = load %struct.xdr_stream*, %struct.xdr_stream** %5, align 8
  %56 = load %struct.gssx_arg_accept_sec_context*, %struct.gssx_arg_accept_sec_context** %7, align 8
  %57 = getelementptr inbounds %struct.gssx_arg_accept_sec_context, %struct.gssx_arg_accept_sec_context* %56, i32 0, i32 5
  %58 = call i32 @gssx_enc_in_token(%struct.xdr_stream* %55, i32* %57)
  store i32 %58, i32* %8, align 4
  %59 = load i32, i32* %8, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %54
  br label %113

62:                                               ; preds = %54
  %63 = load %struct.gssx_arg_accept_sec_context*, %struct.gssx_arg_accept_sec_context** %7, align 8
  %64 = getelementptr inbounds %struct.gssx_arg_accept_sec_context, %struct.gssx_arg_accept_sec_context* %63, i32 0, i32 4
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %73

67:                                               ; preds = %62
  %68 = load %struct.xdr_stream*, %struct.xdr_stream** %5, align 8
  %69 = load %struct.gssx_arg_accept_sec_context*, %struct.gssx_arg_accept_sec_context** %7, align 8
  %70 = getelementptr inbounds %struct.gssx_arg_accept_sec_context, %struct.gssx_arg_accept_sec_context* %69, i32 0, i32 4
  %71 = load i64, i64* %70, align 8
  %72 = call i32 @gssx_enc_cb(%struct.xdr_stream* %68, i64 %71)
  store i32 %72, i32* %8, align 4
  br label %76

73:                                               ; preds = %62
  %74 = load %struct.xdr_stream*, %struct.xdr_stream** %5, align 8
  %75 = call i32 @gssx_enc_bool(%struct.xdr_stream* %74, i32 0)
  store i32 %75, i32* %8, align 4
  br label %76

76:                                               ; preds = %73, %67
  %77 = load i32, i32* %8, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %76
  br label %113

80:                                               ; preds = %76
  %81 = load %struct.xdr_stream*, %struct.xdr_stream** %5, align 8
  %82 = load %struct.gssx_arg_accept_sec_context*, %struct.gssx_arg_accept_sec_context** %7, align 8
  %83 = getelementptr inbounds %struct.gssx_arg_accept_sec_context, %struct.gssx_arg_accept_sec_context* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @gssx_enc_bool(%struct.xdr_stream* %81, i32 %84)
  store i32 %85, i32* %8, align 4
  %86 = load i32, i32* %8, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %80
  br label %113

89:                                               ; preds = %80
  %90 = load %struct.xdr_stream*, %struct.xdr_stream** %5, align 8
  %91 = load %struct.gssx_arg_accept_sec_context*, %struct.gssx_arg_accept_sec_context** %7, align 8
  %92 = getelementptr inbounds %struct.gssx_arg_accept_sec_context, %struct.gssx_arg_accept_sec_context* %91, i32 0, i32 2
  %93 = call i32 @dummy_enc_opt_array(%struct.xdr_stream* %90, i32* %92)
  store i32 %93, i32* %8, align 4
  %94 = load %struct.rpc_rqst*, %struct.rpc_rqst** %4, align 8
  %95 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %94, i32 0, i32 0
  %96 = load i32, i32* @PAGE_SIZE, align 4
  %97 = sdiv i32 %96, 2
  %98 = load %struct.gssx_arg_accept_sec_context*, %struct.gssx_arg_accept_sec_context** %7, align 8
  %99 = getelementptr inbounds %struct.gssx_arg_accept_sec_context, %struct.gssx_arg_accept_sec_context* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.gssx_arg_accept_sec_context*, %struct.gssx_arg_accept_sec_context** %7, align 8
  %102 = getelementptr inbounds %struct.gssx_arg_accept_sec_context, %struct.gssx_arg_accept_sec_context* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = load i32, i32* @PAGE_SIZE, align 4
  %105 = mul nsw i32 %103, %104
  %106 = call i32 @xdr_inline_pages(%struct.TYPE_2__* %95, i32 %97, i32 %100, i32 0, i32 %105)
  %107 = load i32, i32* @XDRBUF_SPARSE_PAGES, align 4
  %108 = load %struct.rpc_rqst*, %struct.rpc_rqst** %4, align 8
  %109 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = or i32 %111, %107
  store i32 %112, i32* %110, align 4
  br label %113

113:                                              ; preds = %89, %88, %79, %61, %53, %35, %17
  %114 = load i32, i32* %8, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %119

116:                                              ; preds = %113
  %117 = load i32, i32* %8, align 4
  %118 = call i32 @dprintk(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %117)
  br label %119

119:                                              ; preds = %116, %113
  ret void
}

declare dso_local i32 @gssx_enc_call_ctx(%struct.xdr_stream*, i32*) #1

declare dso_local i32 @gssx_enc_ctx(%struct.xdr_stream*, i64) #1

declare dso_local i32 @gssx_enc_bool(%struct.xdr_stream*, i32) #1

declare dso_local i32 @gssx_enc_cred(%struct.xdr_stream*, i64) #1

declare dso_local i32 @gssx_enc_in_token(%struct.xdr_stream*, i32*) #1

declare dso_local i32 @gssx_enc_cb(%struct.xdr_stream*, i64) #1

declare dso_local i32 @dummy_enc_opt_array(%struct.xdr_stream*, i32*) #1

declare dso_local i32 @xdr_inline_pages(%struct.TYPE_2__*, i32, i32, i32, i32) #1

declare dso_local i32 @dprintk(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
