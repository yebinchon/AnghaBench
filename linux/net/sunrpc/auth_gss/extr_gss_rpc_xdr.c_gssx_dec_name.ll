; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/auth_gss/extr_gss_rpc_xdr.c_gssx_dec_name.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/auth_gss/extr_gss_rpc_xdr.c_gssx_dec_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xdr_stream = type { i32 }
%struct.gssx_name = type { %struct.xdr_netobj }
%struct.xdr_netobj = type { i32 }
%struct.gssx_name_attr_array = type { i32 }
%struct.gssx_option_array = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xdr_stream*, %struct.gssx_name*)* @gssx_dec_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gssx_dec_name(%struct.xdr_stream* %0, %struct.gssx_name* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.xdr_stream*, align 8
  %5 = alloca %struct.gssx_name*, align 8
  %6 = alloca %struct.xdr_netobj, align 4
  %7 = alloca %struct.gssx_name_attr_array, align 4
  %8 = alloca %struct.gssx_option_array, align 4
  %9 = alloca i32, align 4
  store %struct.xdr_stream* %0, %struct.xdr_stream** %4, align 8
  store %struct.gssx_name* %1, %struct.gssx_name** %5, align 8
  %10 = bitcast %struct.xdr_netobj* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %10, i8 0, i64 4, i1 false)
  %11 = bitcast %struct.gssx_name_attr_array* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %11, i8 0, i64 4, i1 false)
  %12 = bitcast %struct.gssx_option_array* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %12, i8 0, i64 4, i1 false)
  %13 = load %struct.xdr_stream*, %struct.xdr_stream** %4, align 8
  %14 = load %struct.gssx_name*, %struct.gssx_name** %5, align 8
  %15 = getelementptr inbounds %struct.gssx_name, %struct.gssx_name* %14, i32 0, i32 0
  %16 = call i32 @gssx_dec_buffer(%struct.xdr_stream* %13, %struct.xdr_netobj* %15)
  store i32 %16, i32* %9, align 4
  %17 = load i32, i32* %9, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = load i32, i32* %9, align 4
  store i32 %20, i32* %3, align 4
  br label %53

21:                                               ; preds = %2
  %22 = load %struct.xdr_stream*, %struct.xdr_stream** %4, align 8
  %23 = call i32 @gssx_dec_buffer(%struct.xdr_stream* %22, %struct.xdr_netobj* %6)
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* %9, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %21
  %27 = load i32, i32* %9, align 4
  store i32 %27, i32* %3, align 4
  br label %53

28:                                               ; preds = %21
  %29 = load %struct.xdr_stream*, %struct.xdr_stream** %4, align 8
  %30 = call i32 @gssx_dec_buffer(%struct.xdr_stream* %29, %struct.xdr_netobj* %6)
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* %9, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %28
  %34 = load i32, i32* %9, align 4
  store i32 %34, i32* %3, align 4
  br label %53

35:                                               ; preds = %28
  %36 = load %struct.xdr_stream*, %struct.xdr_stream** %4, align 8
  %37 = call i32 @gssx_dec_buffer(%struct.xdr_stream* %36, %struct.xdr_netobj* %6)
  store i32 %37, i32* %9, align 4
  %38 = load i32, i32* %9, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %35
  %41 = load i32, i32* %9, align 4
  store i32 %41, i32* %3, align 4
  br label %53

42:                                               ; preds = %35
  %43 = load %struct.xdr_stream*, %struct.xdr_stream** %4, align 8
  %44 = call i32 @dummy_dec_nameattr_array(%struct.xdr_stream* %43, %struct.gssx_name_attr_array* %7)
  store i32 %44, i32* %9, align 4
  %45 = load i32, i32* %9, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %42
  %48 = load i32, i32* %9, align 4
  store i32 %48, i32* %3, align 4
  br label %53

49:                                               ; preds = %42
  %50 = load %struct.xdr_stream*, %struct.xdr_stream** %4, align 8
  %51 = call i32 @dummy_dec_opt_array(%struct.xdr_stream* %50, %struct.gssx_option_array* %8)
  store i32 %51, i32* %9, align 4
  %52 = load i32, i32* %9, align 4
  store i32 %52, i32* %3, align 4
  br label %53

53:                                               ; preds = %49, %47, %40, %33, %26, %19
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @gssx_dec_buffer(%struct.xdr_stream*, %struct.xdr_netobj*) #2

declare dso_local i32 @dummy_dec_nameattr_array(%struct.xdr_stream*, %struct.gssx_name_attr_array*) #2

declare dso_local i32 @dummy_dec_opt_array(%struct.xdr_stream*, %struct.gssx_option_array*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
