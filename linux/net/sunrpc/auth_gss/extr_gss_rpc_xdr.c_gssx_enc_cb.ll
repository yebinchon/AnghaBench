; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/auth_gss/extr_gss_rpc_xdr.c_gssx_enc_cb.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/auth_gss/extr_gss_rpc_xdr.c_gssx_enc_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xdr_stream = type { i32 }
%struct.gssx_cb = type { i32, i32, i32, i32, i32 }

@ENOSPC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xdr_stream*, %struct.gssx_cb*)* @gssx_enc_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gssx_enc_cb(%struct.xdr_stream* %0, %struct.gssx_cb* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.xdr_stream*, align 8
  %5 = alloca %struct.gssx_cb*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store %struct.xdr_stream* %0, %struct.xdr_stream** %4, align 8
  store %struct.gssx_cb* %1, %struct.gssx_cb** %5, align 8
  %8 = load %struct.xdr_stream*, %struct.xdr_stream** %4, align 8
  %9 = call i32* @xdr_reserve_space(%struct.xdr_stream* %8, i32 8)
  store i32* %9, i32** %6, align 8
  %10 = load i32*, i32** %6, align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @ENOSPC, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %57

15:                                               ; preds = %2
  %16 = load i32*, i32** %6, align 8
  %17 = load %struct.gssx_cb*, %struct.gssx_cb** %5, align 8
  %18 = getelementptr inbounds %struct.gssx_cb, %struct.gssx_cb* %17, i32 0, i32 4
  %19 = load i32, i32* %18, align 4
  %20 = call i32* @xdr_encode_hyper(i32* %16, i32 %19)
  store i32* %20, i32** %6, align 8
  %21 = load %struct.xdr_stream*, %struct.xdr_stream** %4, align 8
  %22 = load %struct.gssx_cb*, %struct.gssx_cb** %5, align 8
  %23 = getelementptr inbounds %struct.gssx_cb, %struct.gssx_cb* %22, i32 0, i32 3
  %24 = call i32 @gssx_enc_buffer(%struct.xdr_stream* %21, i32* %23)
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %15
  %28 = load i32, i32* %7, align 4
  store i32 %28, i32* %3, align 4
  br label %57

29:                                               ; preds = %15
  %30 = load %struct.xdr_stream*, %struct.xdr_stream** %4, align 8
  %31 = call i32* @xdr_reserve_space(%struct.xdr_stream* %30, i32 8)
  store i32* %31, i32** %6, align 8
  %32 = load i32*, i32** %6, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %29
  %35 = load i32, i32* @ENOSPC, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %3, align 4
  br label %57

37:                                               ; preds = %29
  %38 = load i32*, i32** %6, align 8
  %39 = load %struct.gssx_cb*, %struct.gssx_cb** %5, align 8
  %40 = getelementptr inbounds %struct.gssx_cb, %struct.gssx_cb* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = call i32* @xdr_encode_hyper(i32* %38, i32 %41)
  store i32* %42, i32** %6, align 8
  %43 = load %struct.xdr_stream*, %struct.xdr_stream** %4, align 8
  %44 = load %struct.gssx_cb*, %struct.gssx_cb** %5, align 8
  %45 = getelementptr inbounds %struct.gssx_cb, %struct.gssx_cb* %44, i32 0, i32 1
  %46 = call i32 @gssx_enc_buffer(%struct.xdr_stream* %43, i32* %45)
  store i32 %46, i32* %7, align 4
  %47 = load i32, i32* %7, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %37
  %50 = load i32, i32* %7, align 4
  store i32 %50, i32* %3, align 4
  br label %57

51:                                               ; preds = %37
  %52 = load %struct.xdr_stream*, %struct.xdr_stream** %4, align 8
  %53 = load %struct.gssx_cb*, %struct.gssx_cb** %5, align 8
  %54 = getelementptr inbounds %struct.gssx_cb, %struct.gssx_cb* %53, i32 0, i32 0
  %55 = call i32 @gssx_enc_buffer(%struct.xdr_stream* %52, i32* %54)
  store i32 %55, i32* %7, align 4
  %56 = load i32, i32* %7, align 4
  store i32 %56, i32* %3, align 4
  br label %57

57:                                               ; preds = %51, %49, %34, %27, %12
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local i32* @xdr_reserve_space(%struct.xdr_stream*, i32) #1

declare dso_local i32* @xdr_encode_hyper(i32*, i32) #1

declare dso_local i32 @gssx_enc_buffer(%struct.xdr_stream*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
