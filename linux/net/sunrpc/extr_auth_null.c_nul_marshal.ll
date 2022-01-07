; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/extr_auth_null.c_nul_marshal.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/extr_auth_null.c_nul_marshal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_task = type { i32 }
%struct.xdr_stream = type { i32 }

@EMSGSIZE = common dso_local global i32 0, align 4
@rpc_auth_null = common dso_local global i8* null, align 8
@xdr_zero = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rpc_task*, %struct.xdr_stream*)* @nul_marshal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nul_marshal(%struct.rpc_task* %0, %struct.xdr_stream* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rpc_task*, align 8
  %5 = alloca %struct.xdr_stream*, align 8
  %6 = alloca i8**, align 8
  store %struct.rpc_task* %0, %struct.rpc_task** %4, align 8
  store %struct.xdr_stream* %1, %struct.xdr_stream** %5, align 8
  %7 = load %struct.xdr_stream*, %struct.xdr_stream** %5, align 8
  %8 = call i8** @xdr_reserve_space(%struct.xdr_stream* %7, i32 32)
  store i8** %8, i8*** %6, align 8
  %9 = load i8**, i8*** %6, align 8
  %10 = icmp ne i8** %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* @EMSGSIZE, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %3, align 4
  br label %26

14:                                               ; preds = %2
  %15 = load i8*, i8** @rpc_auth_null, align 8
  %16 = load i8**, i8*** %6, align 8
  %17 = getelementptr inbounds i8*, i8** %16, i32 1
  store i8** %17, i8*** %6, align 8
  store i8* %15, i8** %16, align 8
  %18 = load i8*, i8** @xdr_zero, align 8
  %19 = load i8**, i8*** %6, align 8
  %20 = getelementptr inbounds i8*, i8** %19, i32 1
  store i8** %20, i8*** %6, align 8
  store i8* %18, i8** %19, align 8
  %21 = load i8*, i8** @rpc_auth_null, align 8
  %22 = load i8**, i8*** %6, align 8
  %23 = getelementptr inbounds i8*, i8** %22, i32 1
  store i8** %23, i8*** %6, align 8
  store i8* %21, i8** %22, align 8
  %24 = load i8*, i8** @xdr_zero, align 8
  %25 = load i8**, i8*** %6, align 8
  store i8* %24, i8** %25, align 8
  store i32 0, i32* %3, align 4
  br label %26

26:                                               ; preds = %14, %11
  %27 = load i32, i32* %3, align 4
  ret i32 %27
}

declare dso_local i8** @xdr_reserve_space(%struct.xdr_stream*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
