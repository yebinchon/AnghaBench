; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/auth_gss/extr_gss_krb5_seqnum.c_krb5_make_seq_num.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/auth_gss/extr_gss_krb5_seqnum.c_krb5_make_seq_num.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.krb5_ctx = type { i64 }
%struct.crypto_sync_skcipher = type { i32 }

@ENCTYPE_ARCFOUR_HMAC = common dso_local global i64 0, align 8
@GFP_NOFS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @krb5_make_seq_num(%struct.krb5_ctx* %0, %struct.crypto_sync_skcipher* %1, i32 %2, i32 %3, i8* %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.krb5_ctx*, align 8
  %9 = alloca %struct.crypto_sync_skcipher*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  store %struct.krb5_ctx* %0, %struct.krb5_ctx** %8, align 8
  store %struct.crypto_sync_skcipher* %1, %struct.crypto_sync_skcipher** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i8* %4, i8** %12, align 8
  store i8* %5, i8** %13, align 8
  %16 = load %struct.krb5_ctx*, %struct.krb5_ctx** %8, align 8
  %17 = getelementptr inbounds %struct.krb5_ctx, %struct.krb5_ctx* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @ENCTYPE_ARCFOUR_HMAC, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %28

21:                                               ; preds = %6
  %22 = load %struct.krb5_ctx*, %struct.krb5_ctx** %8, align 8
  %23 = load i32, i32* %10, align 4
  %24 = load i32, i32* %11, align 4
  %25 = load i8*, i8** %12, align 8
  %26 = load i8*, i8** %13, align 8
  %27 = call i32 @krb5_make_rc4_seq_num(%struct.krb5_ctx* %22, i32 %23, i32 %24, i8* %25, i8* %26)
  store i32 %27, i32* %7, align 4
  br label %84

28:                                               ; preds = %6
  %29 = load i32, i32* @GFP_NOFS, align 4
  %30 = call i8* @kmalloc(i32 8, i32 %29)
  store i8* %30, i8** %14, align 8
  %31 = load i8*, i8** %14, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %28
  %34 = load i32, i32* @ENOMEM, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %7, align 4
  br label %84

36:                                               ; preds = %28
  %37 = load i32, i32* %11, align 4
  %38 = and i32 %37, 255
  %39 = trunc i32 %38 to i8
  %40 = load i8*, i8** %14, align 8
  %41 = getelementptr inbounds i8, i8* %40, i64 0
  store i8 %39, i8* %41, align 1
  %42 = load i32, i32* %11, align 4
  %43 = ashr i32 %42, 8
  %44 = and i32 %43, 255
  %45 = trunc i32 %44 to i8
  %46 = load i8*, i8** %14, align 8
  %47 = getelementptr inbounds i8, i8* %46, i64 1
  store i8 %45, i8* %47, align 1
  %48 = load i32, i32* %11, align 4
  %49 = ashr i32 %48, 16
  %50 = and i32 %49, 255
  %51 = trunc i32 %50 to i8
  %52 = load i8*, i8** %14, align 8
  %53 = getelementptr inbounds i8, i8* %52, i64 2
  store i8 %51, i8* %53, align 1
  %54 = load i32, i32* %11, align 4
  %55 = ashr i32 %54, 24
  %56 = and i32 %55, 255
  %57 = trunc i32 %56 to i8
  %58 = load i8*, i8** %14, align 8
  %59 = getelementptr inbounds i8, i8* %58, i64 3
  store i8 %57, i8* %59, align 1
  %60 = load i32, i32* %10, align 4
  %61 = trunc i32 %60 to i8
  %62 = load i8*, i8** %14, align 8
  %63 = getelementptr inbounds i8, i8* %62, i64 4
  store i8 %61, i8* %63, align 1
  %64 = load i32, i32* %10, align 4
  %65 = trunc i32 %64 to i8
  %66 = load i8*, i8** %14, align 8
  %67 = getelementptr inbounds i8, i8* %66, i64 5
  store i8 %65, i8* %67, align 1
  %68 = load i32, i32* %10, align 4
  %69 = trunc i32 %68 to i8
  %70 = load i8*, i8** %14, align 8
  %71 = getelementptr inbounds i8, i8* %70, i64 6
  store i8 %69, i8* %71, align 1
  %72 = load i32, i32* %10, align 4
  %73 = trunc i32 %72 to i8
  %74 = load i8*, i8** %14, align 8
  %75 = getelementptr inbounds i8, i8* %74, i64 7
  store i8 %73, i8* %75, align 1
  %76 = load %struct.crypto_sync_skcipher*, %struct.crypto_sync_skcipher** %9, align 8
  %77 = load i8*, i8** %12, align 8
  %78 = load i8*, i8** %14, align 8
  %79 = load i8*, i8** %13, align 8
  %80 = call i32 @krb5_encrypt(%struct.crypto_sync_skcipher* %76, i8* %77, i8* %78, i8* %79, i32 8)
  store i32 %80, i32* %15, align 4
  %81 = load i8*, i8** %14, align 8
  %82 = call i32 @kfree(i8* %81)
  %83 = load i32, i32* %15, align 4
  store i32 %83, i32* %7, align 4
  br label %84

84:                                               ; preds = %36, %33, %21
  %85 = load i32, i32* %7, align 4
  ret i32 %85
}

declare dso_local i32 @krb5_make_rc4_seq_num(%struct.krb5_ctx*, i32, i32, i8*, i8*) #1

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @krb5_encrypt(%struct.crypto_sync_skcipher*, i8*, i8*, i8*, i32) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
