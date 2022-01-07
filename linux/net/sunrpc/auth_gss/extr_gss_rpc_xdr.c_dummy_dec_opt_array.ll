; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/auth_gss/extr_gss_rpc_xdr.c_dummy_dec_opt_array.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/auth_gss/extr_gss_rpc_xdr.c_dummy_dec_opt_array.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xdr_stream = type { i32 }
%struct.gssx_option_array = type { i32*, i64 }
%struct.gssx_option = type { i32 }

@ENOSPC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xdr_stream*, %struct.gssx_option_array*)* @dummy_dec_opt_array to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dummy_dec_opt_array(%struct.xdr_stream* %0, %struct.gssx_option_array* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.xdr_stream*, align 8
  %5 = alloca %struct.gssx_option_array*, align 8
  %6 = alloca %struct.gssx_option, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  store %struct.xdr_stream* %0, %struct.xdr_stream** %4, align 8
  store %struct.gssx_option_array* %1, %struct.gssx_option_array** %5, align 8
  %10 = load %struct.xdr_stream*, %struct.xdr_stream** %4, align 8
  %11 = call i32* @xdr_inline_decode(%struct.xdr_stream* %10, i32 4)
  store i32* %11, i32** %9, align 8
  %12 = load i32*, i32** %9, align 8
  %13 = icmp eq i32* %12, null
  %14 = zext i1 %13 to i32
  %15 = call i64 @unlikely(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load i32, i32* @ENOSPC, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %41

20:                                               ; preds = %2
  %21 = load i32*, i32** %9, align 8
  %22 = getelementptr inbounds i32, i32* %21, i32 1
  store i32* %22, i32** %9, align 8
  %23 = ptrtoint i32* %21 to i32
  %24 = call i64 @be32_to_cpup(i32 %23)
  store i64 %24, i64* %7, align 8
  %25 = call i32 @memset(%struct.gssx_option* %6, i32 0, i32 4)
  store i64 0, i64* %8, align 8
  br label %26

26:                                               ; preds = %33, %20
  %27 = load i64, i64* %8, align 8
  %28 = load i64, i64* %7, align 8
  %29 = icmp slt i64 %27, %28
  br i1 %29, label %30, label %36

30:                                               ; preds = %26
  %31 = load %struct.xdr_stream*, %struct.xdr_stream** %4, align 8
  %32 = call i32 @gssx_dec_option(%struct.xdr_stream* %31, %struct.gssx_option* %6)
  br label %33

33:                                               ; preds = %30
  %34 = load i64, i64* %8, align 8
  %35 = add nsw i64 %34, 1
  store i64 %35, i64* %8, align 8
  br label %26

36:                                               ; preds = %26
  %37 = load %struct.gssx_option_array*, %struct.gssx_option_array** %5, align 8
  %38 = getelementptr inbounds %struct.gssx_option_array, %struct.gssx_option_array* %37, i32 0, i32 1
  store i64 0, i64* %38, align 8
  %39 = load %struct.gssx_option_array*, %struct.gssx_option_array** %5, align 8
  %40 = getelementptr inbounds %struct.gssx_option_array, %struct.gssx_option_array* %39, i32 0, i32 0
  store i32* null, i32** %40, align 8
  store i32 0, i32* %3, align 4
  br label %41

41:                                               ; preds = %36, %17
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local i32* @xdr_inline_decode(%struct.xdr_stream*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @be32_to_cpup(i32) #1

declare dso_local i32 @memset(%struct.gssx_option*, i32, i32) #1

declare dso_local i32 @gssx_dec_option(%struct.xdr_stream*, %struct.gssx_option*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
