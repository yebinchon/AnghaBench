; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/auth_gss/extr_gss_rpc_xdr.c_gssx_dec_ctx.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/auth_gss/extr_gss_rpc_xdr.c_gssx_dec_ctx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xdr_stream = type { i32 }
%struct.gssx_ctx = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@ENOSPC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xdr_stream*, %struct.gssx_ctx*)* @gssx_dec_ctx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gssx_dec_ctx(%struct.xdr_stream* %0, %struct.gssx_ctx* %1) #0 {
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
  %11 = call i32 @gssx_dec_buffer(%struct.xdr_stream* %8, i32* %10)
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* %7, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* %7, align 4
  store i32 %15, i32* %3, align 4
  br label %104

16:                                               ; preds = %2
  %17 = load %struct.xdr_stream*, %struct.xdr_stream** %4, align 8
  %18 = load %struct.gssx_ctx*, %struct.gssx_ctx** %5, align 8
  %19 = getelementptr inbounds %struct.gssx_ctx, %struct.gssx_ctx* %18, i32 0, i32 9
  %20 = call i32 @gssx_dec_buffer(%struct.xdr_stream* %17, i32* %19)
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %16
  %24 = load i32, i32* %7, align 4
  store i32 %24, i32* %3, align 4
  br label %104

25:                                               ; preds = %16
  %26 = load %struct.xdr_stream*, %struct.xdr_stream** %4, align 8
  %27 = load %struct.gssx_ctx*, %struct.gssx_ctx** %5, align 8
  %28 = getelementptr inbounds %struct.gssx_ctx, %struct.gssx_ctx* %27, i32 0, i32 8
  %29 = call i32 @gssx_dec_bool(%struct.xdr_stream* %26, i32* %28)
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* %7, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %25
  %33 = load i32, i32* %7, align 4
  store i32 %33, i32* %3, align 4
  br label %104

34:                                               ; preds = %25
  %35 = load %struct.xdr_stream*, %struct.xdr_stream** %4, align 8
  %36 = load %struct.gssx_ctx*, %struct.gssx_ctx** %5, align 8
  %37 = getelementptr inbounds %struct.gssx_ctx, %struct.gssx_ctx* %36, i32 0, i32 7
  %38 = call i32 @gssx_dec_buffer(%struct.xdr_stream* %35, i32* %37)
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* %7, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %34
  %42 = load i32, i32* %7, align 4
  store i32 %42, i32* %3, align 4
  br label %104

43:                                               ; preds = %34
  %44 = load %struct.xdr_stream*, %struct.xdr_stream** %4, align 8
  %45 = load %struct.gssx_ctx*, %struct.gssx_ctx** %5, align 8
  %46 = getelementptr inbounds %struct.gssx_ctx, %struct.gssx_ctx* %45, i32 0, i32 6
  %47 = call i32 @gssx_dec_name(%struct.xdr_stream* %44, i32* %46)
  store i32 %47, i32* %7, align 4
  %48 = load i32, i32* %7, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %43
  %51 = load i32, i32* %7, align 4
  store i32 %51, i32* %3, align 4
  br label %104

52:                                               ; preds = %43
  %53 = load %struct.xdr_stream*, %struct.xdr_stream** %4, align 8
  %54 = load %struct.gssx_ctx*, %struct.gssx_ctx** %5, align 8
  %55 = getelementptr inbounds %struct.gssx_ctx, %struct.gssx_ctx* %54, i32 0, i32 5
  %56 = call i32 @gssx_dec_name(%struct.xdr_stream* %53, i32* %55)
  store i32 %56, i32* %7, align 4
  %57 = load i32, i32* %7, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %52
  %60 = load i32, i32* %7, align 4
  store i32 %60, i32* %3, align 4
  br label %104

61:                                               ; preds = %52
  %62 = load %struct.xdr_stream*, %struct.xdr_stream** %4, align 8
  %63 = call i32* @xdr_inline_decode(%struct.xdr_stream* %62, i32 16)
  store i32* %63, i32** %6, align 8
  %64 = load i32*, i32** %6, align 8
  %65 = icmp eq i32* %64, null
  %66 = zext i1 %65 to i32
  %67 = call i64 @unlikely(i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %61
  %70 = load i32, i32* @ENOSPC, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %3, align 4
  br label %104

72:                                               ; preds = %61
  %73 = load i32*, i32** %6, align 8
  %74 = load %struct.gssx_ctx*, %struct.gssx_ctx** %5, align 8
  %75 = getelementptr inbounds %struct.gssx_ctx, %struct.gssx_ctx* %74, i32 0, i32 4
  %76 = call i32* @xdr_decode_hyper(i32* %73, i32* %75)
  store i32* %76, i32** %6, align 8
  %77 = load i32*, i32** %6, align 8
  %78 = load %struct.gssx_ctx*, %struct.gssx_ctx** %5, align 8
  %79 = getelementptr inbounds %struct.gssx_ctx, %struct.gssx_ctx* %78, i32 0, i32 3
  %80 = call i32* @xdr_decode_hyper(i32* %77, i32* %79)
  store i32* %80, i32** %6, align 8
  %81 = load %struct.xdr_stream*, %struct.xdr_stream** %4, align 8
  %82 = load %struct.gssx_ctx*, %struct.gssx_ctx** %5, align 8
  %83 = getelementptr inbounds %struct.gssx_ctx, %struct.gssx_ctx* %82, i32 0, i32 2
  %84 = call i32 @gssx_dec_bool(%struct.xdr_stream* %81, i32* %83)
  store i32 %84, i32* %7, align 4
  %85 = load i32, i32* %7, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %72
  %88 = load i32, i32* %7, align 4
  store i32 %88, i32* %3, align 4
  br label %104

89:                                               ; preds = %72
  %90 = load %struct.xdr_stream*, %struct.xdr_stream** %4, align 8
  %91 = load %struct.gssx_ctx*, %struct.gssx_ctx** %5, align 8
  %92 = getelementptr inbounds %struct.gssx_ctx, %struct.gssx_ctx* %91, i32 0, i32 1
  %93 = call i32 @gssx_dec_bool(%struct.xdr_stream* %90, i32* %92)
  store i32 %93, i32* %7, align 4
  %94 = load i32, i32* %7, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %89
  %97 = load i32, i32* %7, align 4
  store i32 %97, i32* %3, align 4
  br label %104

98:                                               ; preds = %89
  %99 = load %struct.xdr_stream*, %struct.xdr_stream** %4, align 8
  %100 = load %struct.gssx_ctx*, %struct.gssx_ctx** %5, align 8
  %101 = getelementptr inbounds %struct.gssx_ctx, %struct.gssx_ctx* %100, i32 0, i32 0
  %102 = call i32 @dummy_dec_opt_array(%struct.xdr_stream* %99, i32* %101)
  store i32 %102, i32* %7, align 4
  %103 = load i32, i32* %7, align 4
  store i32 %103, i32* %3, align 4
  br label %104

104:                                              ; preds = %98, %96, %87, %69, %59, %50, %41, %32, %23, %14
  %105 = load i32, i32* %3, align 4
  ret i32 %105
}

declare dso_local i32 @gssx_dec_buffer(%struct.xdr_stream*, i32*) #1

declare dso_local i32 @gssx_dec_bool(%struct.xdr_stream*, i32*) #1

declare dso_local i32 @gssx_dec_name(%struct.xdr_stream*, i32*) #1

declare dso_local i32* @xdr_inline_decode(%struct.xdr_stream*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32* @xdr_decode_hyper(i32*, i32*) #1

declare dso_local i32 @dummy_dec_opt_array(%struct.xdr_stream*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
