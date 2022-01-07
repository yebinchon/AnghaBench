; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/auth_gss/extr_gss_krb5_seqnum.c_krb5_get_seq_num.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/auth_gss/extr_gss_krb5_seqnum.c_krb5_get_seq_num.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.krb5_ctx = type { i64, %struct.crypto_sync_skcipher* }
%struct.crypto_sync_skcipher = type { i32 }

@.str = private unnamed_addr constant [30 x i8] c"RPC:       krb5_get_seq_num:\0A\00", align 1
@ENCTYPE_ARCFOUR_HMAC = common dso_local global i64 0, align 8
@GFP_NOFS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i64 0, align 8
@KG_BAD_SEQ = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @krb5_get_seq_num(%struct.krb5_ctx* %0, i8* %1, i8* %2, i32* %3, i8* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.krb5_ctx*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.crypto_sync_skcipher*, align 8
  store %struct.krb5_ctx* %0, %struct.krb5_ctx** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32* %3, i32** %10, align 8
  store i8* %4, i8** %11, align 8
  %15 = load %struct.krb5_ctx*, %struct.krb5_ctx** %7, align 8
  %16 = getelementptr inbounds %struct.krb5_ctx, %struct.krb5_ctx* %15, i32 0, i32 1
  %17 = load %struct.crypto_sync_skcipher*, %struct.crypto_sync_skcipher** %16, align 8
  store %struct.crypto_sync_skcipher* %17, %struct.crypto_sync_skcipher** %14, align 8
  %18 = call i32 @dprintk(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %19 = load %struct.krb5_ctx*, %struct.krb5_ctx** %7, align 8
  %20 = getelementptr inbounds %struct.krb5_ctx, %struct.krb5_ctx* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @ENCTYPE_ARCFOUR_HMAC, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %31

24:                                               ; preds = %5
  %25 = load %struct.krb5_ctx*, %struct.krb5_ctx** %7, align 8
  %26 = load i8*, i8** %8, align 8
  %27 = load i8*, i8** %9, align 8
  %28 = load i32*, i32** %10, align 8
  %29 = load i8*, i8** %11, align 8
  %30 = call i64 @krb5_get_rc4_seq_num(%struct.krb5_ctx* %25, i8* %26, i8* %27, i32* %28, i8* %29)
  store i64 %30, i64* %6, align 8
  br label %113

31:                                               ; preds = %5
  %32 = load i32, i32* @GFP_NOFS, align 4
  %33 = call i8* @kmalloc(i32 8, i32 %32)
  store i8* %33, i8** %13, align 8
  %34 = load i8*, i8** %13, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %31
  %37 = load i64, i64* @ENOMEM, align 8
  %38 = sub nsw i64 0, %37
  store i64 %38, i64* %6, align 8
  br label %113

39:                                               ; preds = %31
  %40 = load %struct.crypto_sync_skcipher*, %struct.crypto_sync_skcipher** %14, align 8
  %41 = load i8*, i8** %8, align 8
  %42 = load i8*, i8** %9, align 8
  %43 = load i8*, i8** %13, align 8
  %44 = call i64 @krb5_decrypt(%struct.crypto_sync_skcipher* %40, i8* %41, i8* %42, i8* %43, i32 8)
  store i64 %44, i64* %12, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %39
  br label %109

47:                                               ; preds = %39
  %48 = load i8*, i8** %13, align 8
  %49 = getelementptr inbounds i8, i8* %48, i64 4
  %50 = load i8, i8* %49, align 1
  %51 = zext i8 %50 to i32
  %52 = load i8*, i8** %13, align 8
  %53 = getelementptr inbounds i8, i8* %52, i64 5
  %54 = load i8, i8* %53, align 1
  %55 = zext i8 %54 to i32
  %56 = icmp ne i32 %51, %55
  br i1 %56, label %77, label %57

57:                                               ; preds = %47
  %58 = load i8*, i8** %13, align 8
  %59 = getelementptr inbounds i8, i8* %58, i64 4
  %60 = load i8, i8* %59, align 1
  %61 = zext i8 %60 to i32
  %62 = load i8*, i8** %13, align 8
  %63 = getelementptr inbounds i8, i8* %62, i64 6
  %64 = load i8, i8* %63, align 1
  %65 = zext i8 %64 to i32
  %66 = icmp ne i32 %61, %65
  br i1 %66, label %77, label %67

67:                                               ; preds = %57
  %68 = load i8*, i8** %13, align 8
  %69 = getelementptr inbounds i8, i8* %68, i64 4
  %70 = load i8, i8* %69, align 1
  %71 = zext i8 %70 to i32
  %72 = load i8*, i8** %13, align 8
  %73 = getelementptr inbounds i8, i8* %72, i64 7
  %74 = load i8, i8* %73, align 1
  %75 = zext i8 %74 to i32
  %76 = icmp ne i32 %71, %75
  br i1 %76, label %77, label %79

77:                                               ; preds = %67, %57, %47
  %78 = load i64, i64* @KG_BAD_SEQ, align 8
  store i64 %78, i64* %12, align 8
  br label %109

79:                                               ; preds = %67
  %80 = load i8*, i8** %13, align 8
  %81 = getelementptr inbounds i8, i8* %80, i64 4
  %82 = load i8, i8* %81, align 1
  %83 = zext i8 %82 to i32
  %84 = load i32*, i32** %10, align 8
  store i32 %83, i32* %84, align 4
  %85 = load i8*, i8** %13, align 8
  %86 = getelementptr inbounds i8, i8* %85, i64 0
  %87 = load i8, i8* %86, align 1
  %88 = zext i8 %87 to i32
  %89 = load i8*, i8** %13, align 8
  %90 = getelementptr inbounds i8, i8* %89, i64 1
  %91 = load i8, i8* %90, align 1
  %92 = zext i8 %91 to i32
  %93 = shl i32 %92, 8
  %94 = or i32 %88, %93
  %95 = load i8*, i8** %13, align 8
  %96 = getelementptr inbounds i8, i8* %95, i64 2
  %97 = load i8, i8* %96, align 1
  %98 = zext i8 %97 to i32
  %99 = shl i32 %98, 16
  %100 = or i32 %94, %99
  %101 = load i8*, i8** %13, align 8
  %102 = getelementptr inbounds i8, i8* %101, i64 3
  %103 = load i8, i8* %102, align 1
  %104 = zext i8 %103 to i32
  %105 = shl i32 %104, 24
  %106 = or i32 %100, %105
  %107 = trunc i32 %106 to i8
  %108 = load i8*, i8** %11, align 8
  store i8 %107, i8* %108, align 1
  br label %109

109:                                              ; preds = %79, %77, %46
  %110 = load i8*, i8** %13, align 8
  %111 = call i32 @kfree(i8* %110)
  %112 = load i64, i64* %12, align 8
  store i64 %112, i64* %6, align 8
  br label %113

113:                                              ; preds = %109, %36, %24
  %114 = load i64, i64* %6, align 8
  ret i64 %114
}

declare dso_local i32 @dprintk(i8*) #1

declare dso_local i64 @krb5_get_rc4_seq_num(%struct.krb5_ctx*, i8*, i8*, i32*, i8*) #1

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i64 @krb5_decrypt(%struct.crypto_sync_skcipher*, i8*, i8*, i8*, i32) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
