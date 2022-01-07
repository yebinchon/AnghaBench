; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/extr_auth_null.c_nul_validate.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/extr_auth_null.c_nul_validate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_task = type { i32 }
%struct.xdr_stream = type { i32 }

@EIO = common dso_local global i32 0, align 4
@rpc_auth_null = common dso_local global i64 0, align 8
@xdr_zero = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rpc_task*, %struct.xdr_stream*)* @nul_validate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nul_validate(%struct.rpc_task* %0, %struct.xdr_stream* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rpc_task*, align 8
  %5 = alloca %struct.xdr_stream*, align 8
  %6 = alloca i64*, align 8
  store %struct.rpc_task* %0, %struct.rpc_task** %4, align 8
  store %struct.xdr_stream* %1, %struct.xdr_stream** %5, align 8
  %7 = load %struct.xdr_stream*, %struct.xdr_stream** %5, align 8
  %8 = call i64* @xdr_inline_decode(%struct.xdr_stream* %7, i32 16)
  store i64* %8, i64** %6, align 8
  %9 = load i64*, i64** %6, align 8
  %10 = icmp ne i64* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* @EIO, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %3, align 4
  br label %32

14:                                               ; preds = %2
  %15 = load i64*, i64** %6, align 8
  %16 = getelementptr inbounds i64, i64* %15, i32 1
  store i64* %16, i64** %6, align 8
  %17 = load i64, i64* %15, align 8
  %18 = load i64, i64* @rpc_auth_null, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %14
  %21 = load i32, i32* @EIO, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %32

23:                                               ; preds = %14
  %24 = load i64*, i64** %6, align 8
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @xdr_zero, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %23
  %29 = load i32, i32* @EIO, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %32

31:                                               ; preds = %23
  store i32 0, i32* %3, align 4
  br label %32

32:                                               ; preds = %31, %28, %20, %11
  %33 = load i32, i32* %3, align 4
  ret i32 %33
}

declare dso_local i64* @xdr_inline_decode(%struct.xdr_stream*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
