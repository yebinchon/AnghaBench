; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/auth_gss/extr_gss_rpc_xdr.c_gssx_dec_accept_sec_context.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/auth_gss/extr_gss_rpc_xdr.c_gssx_dec_accept_sec_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_rqst = type { i32 }
%struct.xdr_stream = type { i32 }
%struct.gssx_res_accept_sec_context = type { i32, i32*, i32*, i32 }
%struct.page = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gssx_dec_accept_sec_context(%struct.rpc_rqst* %0, %struct.xdr_stream* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rpc_rqst*, align 8
  %6 = alloca %struct.xdr_stream*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.gssx_res_accept_sec_context*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.page*, align 8
  store %struct.rpc_rqst* %0, %struct.rpc_rqst** %5, align 8
  store %struct.xdr_stream* %1, %struct.xdr_stream** %6, align 8
  store i8* %2, i8** %7, align 8
  %12 = load i8*, i8** %7, align 8
  %13 = bitcast i8* %12 to %struct.gssx_res_accept_sec_context*
  store %struct.gssx_res_accept_sec_context* %13, %struct.gssx_res_accept_sec_context** %8, align 8
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.page* @alloc_page(i32 %14)
  store %struct.page* %15, %struct.page** %11, align 8
  %16 = load %struct.page*, %struct.page** %11, align 8
  %17 = icmp ne %struct.page* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %3
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %99

21:                                               ; preds = %3
  %22 = load %struct.xdr_stream*, %struct.xdr_stream** %6, align 8
  %23 = load %struct.page*, %struct.page** %11, align 8
  %24 = call i32 @page_address(%struct.page* %23)
  %25 = load i32, i32* @PAGE_SIZE, align 4
  %26 = call i32 @xdr_set_scratch_buffer(%struct.xdr_stream* %22, i32 %24, i32 %25)
  %27 = load %struct.xdr_stream*, %struct.xdr_stream** %6, align 8
  %28 = load %struct.gssx_res_accept_sec_context*, %struct.gssx_res_accept_sec_context** %8, align 8
  %29 = getelementptr inbounds %struct.gssx_res_accept_sec_context, %struct.gssx_res_accept_sec_context* %28, i32 0, i32 3
  %30 = call i32 @gssx_dec_status(%struct.xdr_stream* %27, i32* %29)
  store i32 %30, i32* %10, align 4
  %31 = load i32, i32* %10, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %21
  br label %95

34:                                               ; preds = %21
  %35 = load %struct.xdr_stream*, %struct.xdr_stream** %6, align 8
  %36 = call i32 @gssx_dec_bool(%struct.xdr_stream* %35, i64* %9)
  store i32 %36, i32* %10, align 4
  %37 = load i32, i32* %10, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %34
  br label %95

40:                                               ; preds = %34
  %41 = load i64, i64* %9, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %53

43:                                               ; preds = %40
  %44 = load %struct.xdr_stream*, %struct.xdr_stream** %6, align 8
  %45 = load %struct.gssx_res_accept_sec_context*, %struct.gssx_res_accept_sec_context** %8, align 8
  %46 = getelementptr inbounds %struct.gssx_res_accept_sec_context, %struct.gssx_res_accept_sec_context* %45, i32 0, i32 2
  %47 = load i32*, i32** %46, align 8
  %48 = call i32 @gssx_dec_ctx(%struct.xdr_stream* %44, i32* %47)
  store i32 %48, i32* %10, align 4
  %49 = load i32, i32* %10, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %43
  br label %95

52:                                               ; preds = %43
  br label %56

53:                                               ; preds = %40
  %54 = load %struct.gssx_res_accept_sec_context*, %struct.gssx_res_accept_sec_context** %8, align 8
  %55 = getelementptr inbounds %struct.gssx_res_accept_sec_context, %struct.gssx_res_accept_sec_context* %54, i32 0, i32 2
  store i32* null, i32** %55, align 8
  br label %56

56:                                               ; preds = %53, %52
  %57 = load %struct.xdr_stream*, %struct.xdr_stream** %6, align 8
  %58 = call i32 @gssx_dec_bool(%struct.xdr_stream* %57, i64* %9)
  store i32 %58, i32* %10, align 4
  %59 = load i32, i32* %10, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %56
  br label %95

62:                                               ; preds = %56
  %63 = load i64, i64* %9, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %75

65:                                               ; preds = %62
  %66 = load %struct.xdr_stream*, %struct.xdr_stream** %6, align 8
  %67 = load %struct.gssx_res_accept_sec_context*, %struct.gssx_res_accept_sec_context** %8, align 8
  %68 = getelementptr inbounds %struct.gssx_res_accept_sec_context, %struct.gssx_res_accept_sec_context* %67, i32 0, i32 1
  %69 = load i32*, i32** %68, align 8
  %70 = call i32 @gssx_dec_buffer(%struct.xdr_stream* %66, i32* %69)
  store i32 %70, i32* %10, align 4
  %71 = load i32, i32* %10, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %65
  br label %95

74:                                               ; preds = %65
  br label %78

75:                                               ; preds = %62
  %76 = load %struct.gssx_res_accept_sec_context*, %struct.gssx_res_accept_sec_context** %8, align 8
  %77 = getelementptr inbounds %struct.gssx_res_accept_sec_context, %struct.gssx_res_accept_sec_context* %76, i32 0, i32 1
  store i32* null, i32** %77, align 8
  br label %78

78:                                               ; preds = %75, %74
  %79 = load %struct.xdr_stream*, %struct.xdr_stream** %6, align 8
  %80 = call i32 @gssx_dec_bool(%struct.xdr_stream* %79, i64* %9)
  store i32 %80, i32* %10, align 4
  %81 = load i32, i32* %10, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %78
  br label %95

84:                                               ; preds = %78
  %85 = load i64, i64* %9, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %84
  %88 = load i32, i32* @EINVAL, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %10, align 4
  br label %95

90:                                               ; preds = %84
  %91 = load %struct.xdr_stream*, %struct.xdr_stream** %6, align 8
  %92 = load %struct.gssx_res_accept_sec_context*, %struct.gssx_res_accept_sec_context** %8, align 8
  %93 = getelementptr inbounds %struct.gssx_res_accept_sec_context, %struct.gssx_res_accept_sec_context* %92, i32 0, i32 0
  %94 = call i32 @gssx_dec_option_array(%struct.xdr_stream* %91, i32* %93)
  store i32 %94, i32* %10, align 4
  br label %95

95:                                               ; preds = %90, %87, %83, %73, %61, %51, %39, %33
  %96 = load %struct.page*, %struct.page** %11, align 8
  %97 = call i32 @__free_page(%struct.page* %96)
  %98 = load i32, i32* %10, align 4
  store i32 %98, i32* %4, align 4
  br label %99

99:                                               ; preds = %95, %18
  %100 = load i32, i32* %4, align 4
  ret i32 %100
}

declare dso_local %struct.page* @alloc_page(i32) #1

declare dso_local i32 @xdr_set_scratch_buffer(%struct.xdr_stream*, i32, i32) #1

declare dso_local i32 @page_address(%struct.page*) #1

declare dso_local i32 @gssx_dec_status(%struct.xdr_stream*, i32*) #1

declare dso_local i32 @gssx_dec_bool(%struct.xdr_stream*, i64*) #1

declare dso_local i32 @gssx_dec_ctx(%struct.xdr_stream*, i32*) #1

declare dso_local i32 @gssx_dec_buffer(%struct.xdr_stream*, i32*) #1

declare dso_local i32 @gssx_dec_option_array(%struct.xdr_stream*, i32*) #1

declare dso_local i32 @__free_page(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
