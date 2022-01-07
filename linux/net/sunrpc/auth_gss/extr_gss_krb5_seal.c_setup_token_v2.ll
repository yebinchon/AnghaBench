; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/auth_gss/extr_gss_krb5_seal.c_setup_token_v2.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/auth_gss/extr_gss_krb5_seal.c_setup_token_v2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.krb5_ctx = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.xdr_netobj = type { i64, i64 }

@KRB5_CTX_FLAG_INITIATOR = common dso_local global i32 0, align 4
@KRB5_CTX_FLAG_ACCEPTOR_SUBKEY = common dso_local global i32 0, align 4
@KG2_TOK_MIC = common dso_local global i32 0, align 4
@GSS_KRB5_TOK_HDR_LEN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.krb5_ctx*, %struct.xdr_netobj*)* @setup_token_v2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @setup_token_v2(%struct.krb5_ctx* %0, %struct.xdr_netobj* %1) #0 {
  %3 = alloca %struct.krb5_ctx*, align 8
  %4 = alloca %struct.xdr_netobj*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store %struct.krb5_ctx* %0, %struct.krb5_ctx** %3, align 8
  store %struct.xdr_netobj* %1, %struct.xdr_netobj** %4, align 8
  store i32 0, i32* %8, align 4
  %9 = load %struct.krb5_ctx*, %struct.krb5_ctx** %3, align 8
  %10 = getelementptr inbounds %struct.krb5_ctx, %struct.krb5_ctx* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @KRB5_CTX_FLAG_INITIATOR, align 4
  %13 = and i32 %11, %12
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load i32, i32* %8, align 4
  %17 = or i32 %16, 1
  store i32 %17, i32* %8, align 4
  br label %18

18:                                               ; preds = %15, %2
  %19 = load %struct.krb5_ctx*, %struct.krb5_ctx** %3, align 8
  %20 = getelementptr inbounds %struct.krb5_ctx, %struct.krb5_ctx* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @KRB5_CTX_FLAG_ACCEPTOR_SUBKEY, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %18
  %26 = load i32, i32* %8, align 4
  %27 = or i32 %26, 4
  store i32 %27, i32* %8, align 4
  br label %28

28:                                               ; preds = %25, %18
  %29 = load %struct.xdr_netobj*, %struct.xdr_netobj** %4, align 8
  %30 = getelementptr inbounds %struct.xdr_netobj, %struct.xdr_netobj* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = inttoptr i64 %31 to i32*
  store i32* %32, i32** %5, align 8
  %33 = bitcast i32* %32 to i8*
  store i8* %33, i8** %6, align 8
  %34 = load i32, i32* @KG2_TOK_MIC, align 4
  %35 = load i32*, i32** %5, align 8
  %36 = getelementptr inbounds i32, i32* %35, i32 1
  store i32* %36, i32** %5, align 8
  store i32 %34, i32* %35, align 4
  %37 = load i32*, i32** %5, align 8
  store i32* %37, i32** %7, align 8
  %38 = load i32, i32* %8, align 4
  %39 = load i32*, i32** %7, align 8
  %40 = getelementptr inbounds i32, i32* %39, i32 1
  store i32* %40, i32** %7, align 8
  store i32 %38, i32* %39, align 4
  %41 = load i32*, i32** %7, align 8
  %42 = getelementptr inbounds i32, i32* %41, i32 1
  store i32* %42, i32** %7, align 8
  store i32 255, i32* %41, align 4
  %43 = load i32*, i32** %7, align 8
  store i32* %43, i32** %5, align 8
  %44 = load i32*, i32** %5, align 8
  %45 = getelementptr inbounds i32, i32* %44, i32 1
  store i32* %45, i32** %5, align 8
  store i32 65535, i32* %44, align 4
  %46 = load i32*, i32** %5, align 8
  store i32 65535, i32* %46, align 4
  %47 = load i64, i64* @GSS_KRB5_TOK_HDR_LEN, align 8
  %48 = load %struct.krb5_ctx*, %struct.krb5_ctx** %3, align 8
  %49 = getelementptr inbounds %struct.krb5_ctx, %struct.krb5_ctx* %48, i32 0, i32 1
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = add nsw i64 %47, %52
  %54 = load %struct.xdr_netobj*, %struct.xdr_netobj** %4, align 8
  %55 = getelementptr inbounds %struct.xdr_netobj, %struct.xdr_netobj* %54, i32 0, i32 0
  store i64 %53, i64* %55, align 8
  %56 = load i8*, i8** %6, align 8
  ret i8* %56
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
