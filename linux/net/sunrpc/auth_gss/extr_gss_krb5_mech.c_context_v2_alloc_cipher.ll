; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/auth_gss/extr_gss_krb5_mech.c_context_v2_alloc_cipher.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/auth_gss/extr_gss_krb5_mech.c_context_v2_alloc_cipher.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_sync_skcipher = type { i32 }
%struct.krb5_ctx = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [61 x i8] c"gss_kerberos_mech: unable to initialize crypto algorithm %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [62 x i8] c"gss_kerberos_mech: error setting key for crypto algorithm %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.crypto_sync_skcipher* (%struct.krb5_ctx*, i8*, i32*)* @context_v2_alloc_cipher to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.crypto_sync_skcipher* @context_v2_alloc_cipher(%struct.krb5_ctx* %0, i8* %1, i32* %2) #0 {
  %4 = alloca %struct.crypto_sync_skcipher*, align 8
  %5 = alloca %struct.krb5_ctx*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.crypto_sync_skcipher*, align 8
  store %struct.krb5_ctx* %0, %struct.krb5_ctx** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = call %struct.crypto_sync_skcipher* @crypto_alloc_sync_skcipher(i8* %9, i32 0, i32 0)
  store %struct.crypto_sync_skcipher* %10, %struct.crypto_sync_skcipher** %8, align 8
  %11 = load %struct.crypto_sync_skcipher*, %struct.crypto_sync_skcipher** %8, align 8
  %12 = call i64 @IS_ERR(%struct.crypto_sync_skcipher* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %3
  %15 = load i8*, i8** %6, align 8
  %16 = call i32 @dprintk(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0), i8* %15)
  store %struct.crypto_sync_skcipher* null, %struct.crypto_sync_skcipher** %4, align 8
  br label %34

17:                                               ; preds = %3
  %18 = load %struct.crypto_sync_skcipher*, %struct.crypto_sync_skcipher** %8, align 8
  %19 = load i32*, i32** %7, align 8
  %20 = load %struct.krb5_ctx*, %struct.krb5_ctx** %5, align 8
  %21 = getelementptr inbounds %struct.krb5_ctx, %struct.krb5_ctx* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @crypto_sync_skcipher_setkey(%struct.crypto_sync_skcipher* %18, i32* %19, i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %17
  %28 = load i8*, i8** %6, align 8
  %29 = call i32 @dprintk(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.1, i64 0, i64 0), i8* %28)
  %30 = load %struct.crypto_sync_skcipher*, %struct.crypto_sync_skcipher** %8, align 8
  %31 = call i32 @crypto_free_sync_skcipher(%struct.crypto_sync_skcipher* %30)
  store %struct.crypto_sync_skcipher* null, %struct.crypto_sync_skcipher** %4, align 8
  br label %34

32:                                               ; preds = %17
  %33 = load %struct.crypto_sync_skcipher*, %struct.crypto_sync_skcipher** %8, align 8
  store %struct.crypto_sync_skcipher* %33, %struct.crypto_sync_skcipher** %4, align 8
  br label %34

34:                                               ; preds = %32, %27, %14
  %35 = load %struct.crypto_sync_skcipher*, %struct.crypto_sync_skcipher** %4, align 8
  ret %struct.crypto_sync_skcipher* %35
}

declare dso_local %struct.crypto_sync_skcipher* @crypto_alloc_sync_skcipher(i8*, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.crypto_sync_skcipher*) #1

declare dso_local i32 @dprintk(i8*, i8*) #1

declare dso_local i64 @crypto_sync_skcipher_setkey(%struct.crypto_sync_skcipher*, i32*, i32) #1

declare dso_local i32 @crypto_free_sync_skcipher(%struct.crypto_sync_skcipher*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
