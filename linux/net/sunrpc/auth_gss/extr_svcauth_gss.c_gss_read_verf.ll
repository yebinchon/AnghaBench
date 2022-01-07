; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/auth_gss/extr_svcauth_gss.c_gss_read_verf.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/auth_gss/extr_svcauth_gss.c_gss_read_verf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_gss_wire_cred = type { i32 }
%struct.kvec = type { i32 }
%struct.xdr_netobj = type { i32 }

@SVC_DENIED = common dso_local global i32 0, align 4
@SVC_CLOSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rpc_gss_wire_cred*, %struct.kvec*, i32*, %struct.xdr_netobj*, %struct.xdr_netobj*)* @gss_read_verf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gss_read_verf(%struct.rpc_gss_wire_cred* %0, %struct.kvec* %1, i32* %2, %struct.xdr_netobj* %3, %struct.xdr_netobj* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.rpc_gss_wire_cred*, align 8
  %8 = alloca %struct.kvec*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.xdr_netobj*, align 8
  %11 = alloca %struct.xdr_netobj*, align 8
  %12 = alloca %struct.xdr_netobj, align 4
  %13 = alloca i32, align 4
  store %struct.rpc_gss_wire_cred* %0, %struct.rpc_gss_wire_cred** %7, align 8
  store %struct.kvec* %1, %struct.kvec** %8, align 8
  store i32* %2, i32** %9, align 8
  store %struct.xdr_netobj* %3, %struct.xdr_netobj** %10, align 8
  store %struct.xdr_netobj* %4, %struct.xdr_netobj** %11, align 8
  %14 = load %struct.rpc_gss_wire_cred*, %struct.rpc_gss_wire_cred** %7, align 8
  %15 = load %struct.kvec*, %struct.kvec** %8, align 8
  %16 = load i32*, i32** %9, align 8
  %17 = load %struct.xdr_netobj*, %struct.xdr_netobj** %10, align 8
  %18 = call i32 @gss_read_common_verf(%struct.rpc_gss_wire_cred* %14, %struct.kvec* %15, i32* %16, %struct.xdr_netobj* %17)
  store i32 %18, i32* %13, align 4
  %19 = load i32, i32* %13, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %5
  %22 = load i32, i32* %13, align 4
  store i32 %22, i32* %6, align 4
  br label %44

23:                                               ; preds = %5
  %24 = load %struct.kvec*, %struct.kvec** %8, align 8
  %25 = call i64 @svc_safe_getnetobj(%struct.kvec* %24, %struct.xdr_netobj* %12)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %23
  %28 = load %struct.xdr_netobj*, %struct.xdr_netobj** %10, align 8
  %29 = getelementptr inbounds %struct.xdr_netobj, %struct.xdr_netobj* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @kfree(i32 %30)
  %32 = load i32, i32* @SVC_DENIED, align 4
  store i32 %32, i32* %6, align 4
  br label %44

33:                                               ; preds = %23
  %34 = load %struct.xdr_netobj*, %struct.xdr_netobj** %11, align 8
  %35 = call i64 @dup_netobj(%struct.xdr_netobj* %34, %struct.xdr_netobj* %12)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %33
  %38 = load %struct.xdr_netobj*, %struct.xdr_netobj** %10, align 8
  %39 = getelementptr inbounds %struct.xdr_netobj, %struct.xdr_netobj* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @kfree(i32 %40)
  %42 = load i32, i32* @SVC_CLOSE, align 4
  store i32 %42, i32* %6, align 4
  br label %44

43:                                               ; preds = %33
  store i32 0, i32* %6, align 4
  br label %44

44:                                               ; preds = %43, %37, %27, %21
  %45 = load i32, i32* %6, align 4
  ret i32 %45
}

declare dso_local i32 @gss_read_common_verf(%struct.rpc_gss_wire_cred*, %struct.kvec*, i32*, %struct.xdr_netobj*) #1

declare dso_local i64 @svc_safe_getnetobj(%struct.kvec*, %struct.xdr_netobj*) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i64 @dup_netobj(%struct.xdr_netobj*, %struct.xdr_netobj*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
