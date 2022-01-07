; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/auth_gss/extr_svcauth_gss.c_svc_safe_putnetobj.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/auth_gss/extr_svcauth_gss.c_svc_safe_putnetobj.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvec = type { i64, i32* }
%struct.xdr_netobj = type { i32, i32 }

@PAGE_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvec*, %struct.xdr_netobj*)* @svc_safe_putnetobj to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @svc_safe_putnetobj(%struct.kvec* %0, %struct.xdr_netobj* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.kvec*, align 8
  %5 = alloca %struct.xdr_netobj*, align 8
  %6 = alloca i32*, align 8
  store %struct.kvec* %0, %struct.kvec** %4, align 8
  store %struct.xdr_netobj* %1, %struct.xdr_netobj** %5, align 8
  %7 = load %struct.kvec*, %struct.kvec** %4, align 8
  %8 = getelementptr inbounds %struct.kvec, %struct.kvec* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = add nsw i64 %9, 4
  %11 = load i64, i64* @PAGE_SIZE, align 8
  %12 = icmp sgt i64 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %66

14:                                               ; preds = %2
  %15 = load %struct.kvec*, %struct.kvec** %4, align 8
  %16 = load %struct.xdr_netobj*, %struct.xdr_netobj** %5, align 8
  %17 = getelementptr inbounds %struct.xdr_netobj, %struct.xdr_netobj* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @svc_putnl(%struct.kvec* %15, i32 %18)
  %20 = load %struct.kvec*, %struct.kvec** %4, align 8
  %21 = getelementptr inbounds %struct.kvec, %struct.kvec* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  %23 = load %struct.kvec*, %struct.kvec** %4, align 8
  %24 = getelementptr inbounds %struct.kvec, %struct.kvec* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = getelementptr inbounds i32, i32* %22, i64 %25
  store i32* %26, i32** %6, align 8
  %27 = load %struct.xdr_netobj*, %struct.xdr_netobj** %5, align 8
  %28 = getelementptr inbounds %struct.xdr_netobj, %struct.xdr_netobj* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @round_up_to_quad(i32 %29)
  %31 = sext i32 %30 to i64
  %32 = load %struct.kvec*, %struct.kvec** %4, align 8
  %33 = getelementptr inbounds %struct.kvec, %struct.kvec* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = add nsw i64 %34, %31
  store i64 %35, i64* %33, align 8
  %36 = load %struct.kvec*, %struct.kvec** %4, align 8
  %37 = getelementptr inbounds %struct.kvec, %struct.kvec* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @PAGE_SIZE, align 8
  %40 = icmp sgt i64 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %14
  store i32 -1, i32* %3, align 4
  br label %66

42:                                               ; preds = %14
  %43 = load i32*, i32** %6, align 8
  %44 = load %struct.xdr_netobj*, %struct.xdr_netobj** %5, align 8
  %45 = getelementptr inbounds %struct.xdr_netobj, %struct.xdr_netobj* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.xdr_netobj*, %struct.xdr_netobj** %5, align 8
  %48 = getelementptr inbounds %struct.xdr_netobj, %struct.xdr_netobj* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @memcpy(i32* %43, i32 %46, i32 %49)
  %51 = load i32*, i32** %6, align 8
  %52 = load %struct.xdr_netobj*, %struct.xdr_netobj** %5, align 8
  %53 = getelementptr inbounds %struct.xdr_netobj, %struct.xdr_netobj* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %51, i64 %55
  %57 = load %struct.xdr_netobj*, %struct.xdr_netobj** %5, align 8
  %58 = getelementptr inbounds %struct.xdr_netobj, %struct.xdr_netobj* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @round_up_to_quad(i32 %59)
  %61 = load %struct.xdr_netobj*, %struct.xdr_netobj** %5, align 8
  %62 = getelementptr inbounds %struct.xdr_netobj, %struct.xdr_netobj* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = sub nsw i32 %60, %63
  %65 = call i32 @memset(i32* %56, i32 0, i32 %64)
  store i32 0, i32* %3, align 4
  br label %66

66:                                               ; preds = %42, %41, %13
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

declare dso_local i32 @svc_putnl(%struct.kvec*, i32) #1

declare dso_local i32 @round_up_to_quad(i32) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
