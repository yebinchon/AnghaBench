; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/auth_gss/extr_gss_rpc_xdr.c_gssx_enc_ctx.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/auth_gss/extr_gss_rpc_xdr.c_gssx_enc_ctx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xdr_stream = type { i32 }
%struct.gssx_ctx = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@ENOSPC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xdr_stream*, %struct.gssx_ctx*)* @gssx_enc_ctx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gssx_enc_ctx(%struct.xdr_stream* %0, %struct.gssx_ctx* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.xdr_stream*, align 8
  %5 = alloca %struct.gssx_ctx*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store %struct.xdr_stream* %0, %struct.xdr_stream** %4, align 8
  store %struct.gssx_ctx* %1, %struct.gssx_ctx** %5, align 8
  %8 = load %struct.xdr_stream*, %struct.xdr_stream** %4, align 8
  %9 = load %struct.gssx_ctx*, %struct.gssx_ctx** %5, align 8
  %10 = getelementptr inbounds %struct.gssx_ctx, %struct.gssx_ctx* %9, i32 0, i32 10
  %11 = call i32 @gssx_enc_buffer(%struct.xdr_stream* %8, i32* %10)
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* %7, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* %7, align 4
  store i32 %15, i32* %3, align 4
  br label %106

16:                                               ; preds = %2
  %17 = load %struct.xdr_stream*, %struct.xdr_stream** %4, align 8
  %18 = load %struct.gssx_ctx*, %struct.gssx_ctx** %5, align 8
  %19 = getelementptr inbounds %struct.gssx_ctx, %struct.gssx_ctx* %18, i32 0, i32 9
  %20 = call i32 @gssx_enc_buffer(%struct.xdr_stream* %17, i32* %19)
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %16
  %24 = load i32, i32* %7, align 4
  store i32 %24, i32* %3, align 4
  br label %106

25:                                               ; preds = %16
  %26 = load %struct.xdr_stream*, %struct.xdr_stream** %4, align 8
  %27 = load %struct.gssx_ctx*, %struct.gssx_ctx** %5, align 8
  %28 = getelementptr inbounds %struct.gssx_ctx, %struct.gssx_ctx* %27, i32 0, i32 8
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @gssx_enc_bool(%struct.xdr_stream* %26, i32 %29)
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %7, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %25
  %34 = load i32, i32* %7, align 4
  store i32 %34, i32* %3, align 4
  br label %106

35:                                               ; preds = %25
  %36 = load %struct.xdr_stream*, %struct.xdr_stream** %4, align 8
  %37 = load %struct.gssx_ctx*, %struct.gssx_ctx** %5, align 8
  %38 = getelementptr inbounds %struct.gssx_ctx, %struct.gssx_ctx* %37, i32 0, i32 7
  %39 = call i32 @gssx_enc_buffer(%struct.xdr_stream* %36, i32* %38)
  store i32 %39, i32* %7, align 4
  %40 = load i32, i32* %7, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %35
  %43 = load i32, i32* %7, align 4
  store i32 %43, i32* %3, align 4
  br label %106

44:                                               ; preds = %35
  %45 = load %struct.xdr_stream*, %struct.xdr_stream** %4, align 8
  %46 = load %struct.gssx_ctx*, %struct.gssx_ctx** %5, align 8
  %47 = getelementptr inbounds %struct.gssx_ctx, %struct.gssx_ctx* %46, i32 0, i32 6
  %48 = call i32 @gssx_enc_name(%struct.xdr_stream* %45, i32* %47)
  store i32 %48, i32* %7, align 4
  %49 = load i32, i32* %7, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %44
  %52 = load i32, i32* %7, align 4
  store i32 %52, i32* %3, align 4
  br label %106

53:                                               ; preds = %44
  %54 = load %struct.xdr_stream*, %struct.xdr_stream** %4, align 8
  %55 = load %struct.gssx_ctx*, %struct.gssx_ctx** %5, align 8
  %56 = getelementptr inbounds %struct.gssx_ctx, %struct.gssx_ctx* %55, i32 0, i32 5
  %57 = call i32 @gssx_enc_name(%struct.xdr_stream* %54, i32* %56)
  store i32 %57, i32* %7, align 4
  %58 = load i32, i32* %7, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %53
  %61 = load i32, i32* %7, align 4
  store i32 %61, i32* %3, align 4
  br label %106

62:                                               ; preds = %53
  %63 = load %struct.xdr_stream*, %struct.xdr_stream** %4, align 8
  %64 = call i32* @xdr_reserve_space(%struct.xdr_stream* %63, i32 16)
  store i32* %64, i32** %6, align 8
  %65 = load i32*, i32** %6, align 8
  %66 = icmp ne i32* %65, null
  br i1 %66, label %70, label %67

67:                                               ; preds = %62
  %68 = load i32, i32* @ENOSPC, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %3, align 4
  br label %106

70:                                               ; preds = %62
  %71 = load i32*, i32** %6, align 8
  %72 = load %struct.gssx_ctx*, %struct.gssx_ctx** %5, align 8
  %73 = getelementptr inbounds %struct.gssx_ctx, %struct.gssx_ctx* %72, i32 0, i32 4
  %74 = load i32, i32* %73, align 4
  %75 = call i32* @xdr_encode_hyper(i32* %71, i32 %74)
  store i32* %75, i32** %6, align 8
  %76 = load i32*, i32** %6, align 8
  %77 = load %struct.gssx_ctx*, %struct.gssx_ctx** %5, align 8
  %78 = getelementptr inbounds %struct.gssx_ctx, %struct.gssx_ctx* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 4
  %80 = call i32* @xdr_encode_hyper(i32* %76, i32 %79)
  store i32* %80, i32** %6, align 8
  %81 = load %struct.xdr_stream*, %struct.xdr_stream** %4, align 8
  %82 = load %struct.gssx_ctx*, %struct.gssx_ctx** %5, align 8
  %83 = getelementptr inbounds %struct.gssx_ctx, %struct.gssx_ctx* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @gssx_enc_bool(%struct.xdr_stream* %81, i32 %84)
  store i32 %85, i32* %7, align 4
  %86 = load i32, i32* %7, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %70
  %89 = load i32, i32* %7, align 4
  store i32 %89, i32* %3, align 4
  br label %106

90:                                               ; preds = %70
  %91 = load %struct.xdr_stream*, %struct.xdr_stream** %4, align 8
  %92 = load %struct.gssx_ctx*, %struct.gssx_ctx** %5, align 8
  %93 = getelementptr inbounds %struct.gssx_ctx, %struct.gssx_ctx* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @gssx_enc_bool(%struct.xdr_stream* %91, i32 %94)
  store i32 %95, i32* %7, align 4
  %96 = load i32, i32* %7, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %90
  %99 = load i32, i32* %7, align 4
  store i32 %99, i32* %3, align 4
  br label %106

100:                                              ; preds = %90
  %101 = load %struct.xdr_stream*, %struct.xdr_stream** %4, align 8
  %102 = load %struct.gssx_ctx*, %struct.gssx_ctx** %5, align 8
  %103 = getelementptr inbounds %struct.gssx_ctx, %struct.gssx_ctx* %102, i32 0, i32 0
  %104 = call i32 @dummy_enc_opt_array(%struct.xdr_stream* %101, i32* %103)
  store i32 %104, i32* %7, align 4
  %105 = load i32, i32* %7, align 4
  store i32 %105, i32* %3, align 4
  br label %106

106:                                              ; preds = %100, %98, %88, %67, %60, %51, %42, %33, %23, %14
  %107 = load i32, i32* %3, align 4
  ret i32 %107
}

declare dso_local i32 @gssx_enc_buffer(%struct.xdr_stream*, i32*) #1

declare dso_local i32 @gssx_enc_bool(%struct.xdr_stream*, i32) #1

declare dso_local i32 @gssx_enc_name(%struct.xdr_stream*, i32*) #1

declare dso_local i32* @xdr_reserve_space(%struct.xdr_stream*, i32) #1

declare dso_local i32* @xdr_encode_hyper(i32*, i32) #1

declare dso_local i32 @dummy_enc_opt_array(%struct.xdr_stream*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
