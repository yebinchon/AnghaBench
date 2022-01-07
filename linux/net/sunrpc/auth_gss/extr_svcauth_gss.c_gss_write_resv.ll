; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/auth_gss/extr_svcauth_gss.c_gss_write_resv.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/auth_gss/extr_svcauth_gss.c_gss_write_resv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvec = type { i32 }
%struct.xdr_netobj = type { i32 }

@RPC_SUCCESS = common dso_local global i32 0, align 4
@GSS_SEQ_WIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvec*, i64, %struct.xdr_netobj*, %struct.xdr_netobj*, i32, i32)* @gss_write_resv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gss_write_resv(%struct.kvec* %0, i64 %1, %struct.xdr_netobj* %2, %struct.xdr_netobj* %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.kvec*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.xdr_netobj*, align 8
  %11 = alloca %struct.xdr_netobj*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.kvec* %0, %struct.kvec** %8, align 8
  store i64 %1, i64* %9, align 8
  store %struct.xdr_netobj* %2, %struct.xdr_netobj** %10, align 8
  store %struct.xdr_netobj* %3, %struct.xdr_netobj** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %14 = load %struct.kvec*, %struct.kvec** %8, align 8
  %15 = getelementptr inbounds %struct.kvec, %struct.kvec* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = add nsw i32 %16, 4
  %18 = sext i32 %17 to i64
  %19 = load i64, i64* %9, align 8
  %20 = icmp ugt i64 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %6
  store i32 -1, i32* %7, align 4
  br label %56

22:                                               ; preds = %6
  %23 = load %struct.kvec*, %struct.kvec** %8, align 8
  %24 = load i32, i32* @RPC_SUCCESS, align 4
  %25 = call i32 @svc_putnl(%struct.kvec* %23, i32 %24)
  %26 = load %struct.kvec*, %struct.kvec** %8, align 8
  %27 = load %struct.xdr_netobj*, %struct.xdr_netobj** %10, align 8
  %28 = call i64 @svc_safe_putnetobj(%struct.kvec* %26, %struct.xdr_netobj* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %22
  store i32 -1, i32* %7, align 4
  br label %56

31:                                               ; preds = %22
  %32 = load %struct.kvec*, %struct.kvec** %8, align 8
  %33 = getelementptr inbounds %struct.kvec, %struct.kvec* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = add nsw i32 %34, 12
  %36 = sext i32 %35 to i64
  %37 = load i64, i64* %9, align 8
  %38 = icmp ugt i64 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %31
  store i32 -1, i32* %7, align 4
  br label %56

40:                                               ; preds = %31
  %41 = load %struct.kvec*, %struct.kvec** %8, align 8
  %42 = load i32, i32* %12, align 4
  %43 = call i32 @svc_putnl(%struct.kvec* %41, i32 %42)
  %44 = load %struct.kvec*, %struct.kvec** %8, align 8
  %45 = load i32, i32* %13, align 4
  %46 = call i32 @svc_putnl(%struct.kvec* %44, i32 %45)
  %47 = load %struct.kvec*, %struct.kvec** %8, align 8
  %48 = load i32, i32* @GSS_SEQ_WIN, align 4
  %49 = call i32 @svc_putnl(%struct.kvec* %47, i32 %48)
  %50 = load %struct.kvec*, %struct.kvec** %8, align 8
  %51 = load %struct.xdr_netobj*, %struct.xdr_netobj** %11, align 8
  %52 = call i64 @svc_safe_putnetobj(%struct.kvec* %50, %struct.xdr_netobj* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %40
  store i32 -1, i32* %7, align 4
  br label %56

55:                                               ; preds = %40
  store i32 0, i32* %7, align 4
  br label %56

56:                                               ; preds = %55, %54, %39, %30, %21
  %57 = load i32, i32* %7, align 4
  ret i32 %57
}

declare dso_local i32 @svc_putnl(%struct.kvec*, i32) #1

declare dso_local i64 @svc_safe_putnetobj(%struct.kvec*, %struct.xdr_netobj*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
