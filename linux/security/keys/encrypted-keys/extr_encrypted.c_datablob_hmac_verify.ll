; ModuleID = '/home/carl/AnghaBench/linux/security/keys/encrypted-keys/extr_encrypted.c_datablob_hmac_verify.c'
source_filename = "/home/carl/AnghaBench/linux/security/keys/encrypted-keys/extr_encrypted.c_datablob_hmac_verify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.encrypted_key_payload = type { i16, i8*, i8* }

@HASH_SIZE = common dso_local global i32 0, align 4
@AUTH_KEY = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"datablob\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"calc\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.encrypted_key_payload*, i8*, i8*, i64)* @datablob_hmac_verify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @datablob_hmac_verify(%struct.encrypted_key_payload* %0, i8* %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.encrypted_key_payload*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i16, align 2
  store %struct.encrypted_key_payload* %0, %struct.encrypted_key_payload** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %15 = load i32, i32* @HASH_SIZE, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %9, align 8
  %18 = alloca i8, i64 %16, align 16
  store i64 %16, i64* %10, align 8
  %19 = load i32, i32* @HASH_SIZE, align 4
  %20 = zext i32 %19 to i64
  %21 = alloca i8, i64 %20, align 16
  store i64 %20, i64* %11, align 8
  %22 = load i32, i32* @AUTH_KEY, align 4
  %23 = load i8*, i8** %7, align 8
  %24 = load i64, i64* %8, align 8
  %25 = call i32 @get_derived_key(i8* %18, i32 %22, i8* %23, i64 %24)
  store i32 %25, i32* %12, align 4
  %26 = load i32, i32* %12, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %4
  br label %91

29:                                               ; preds = %4
  %30 = load %struct.encrypted_key_payload*, %struct.encrypted_key_payload** %5, align 8
  %31 = getelementptr inbounds %struct.encrypted_key_payload, %struct.encrypted_key_payload* %30, i32 0, i32 0
  %32 = load i16, i16* %31, align 8
  store i16 %32, i16* %14, align 2
  %33 = load i8*, i8** %6, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %48, label %35

35:                                               ; preds = %29
  %36 = load %struct.encrypted_key_payload*, %struct.encrypted_key_payload** %5, align 8
  %37 = getelementptr inbounds %struct.encrypted_key_payload, %struct.encrypted_key_payload* %36, i32 0, i32 1
  %38 = load i8*, i8** %37, align 8
  store i8* %38, i8** %13, align 8
  %39 = load %struct.encrypted_key_payload*, %struct.encrypted_key_payload** %5, align 8
  %40 = getelementptr inbounds %struct.encrypted_key_payload, %struct.encrypted_key_payload* %39, i32 0, i32 2
  %41 = load i8*, i8** %40, align 8
  %42 = call i64 @strlen(i8* %41)
  %43 = add nsw i64 %42, 1
  %44 = load i16, i16* %14, align 2
  %45 = zext i16 %44 to i64
  %46 = sub nsw i64 %45, %43
  %47 = trunc i64 %46 to i16
  store i16 %47, i16* %14, align 2
  br label %52

48:                                               ; preds = %29
  %49 = load %struct.encrypted_key_payload*, %struct.encrypted_key_payload** %5, align 8
  %50 = getelementptr inbounds %struct.encrypted_key_payload, %struct.encrypted_key_payload* %49, i32 0, i32 2
  %51 = load i8*, i8** %50, align 8
  store i8* %51, i8** %13, align 8
  br label %52

52:                                               ; preds = %48, %35
  %53 = trunc i64 %16 to i32
  %54 = load i8*, i8** %13, align 8
  %55 = load i16, i16* %14, align 2
  %56 = call i32 @calc_hmac(i8* %21, i8* %18, i32 %53, i8* %54, i16 zeroext %55)
  store i32 %56, i32* %12, align 4
  %57 = load i32, i32* %12, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %52
  br label %91

60:                                               ; preds = %52
  %61 = load %struct.encrypted_key_payload*, %struct.encrypted_key_payload** %5, align 8
  %62 = getelementptr inbounds %struct.encrypted_key_payload, %struct.encrypted_key_payload* %61, i32 0, i32 2
  %63 = load i8*, i8** %62, align 8
  %64 = load %struct.encrypted_key_payload*, %struct.encrypted_key_payload** %5, align 8
  %65 = getelementptr inbounds %struct.encrypted_key_payload, %struct.encrypted_key_payload* %64, i32 0, i32 0
  %66 = load i16, i16* %65, align 8
  %67 = zext i16 %66 to i32
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i8, i8* %63, i64 %68
  %70 = trunc i64 %20 to i32
  %71 = call i32 @crypto_memneq(i8* %21, i8* %69, i32 %70)
  store i32 %71, i32* %12, align 4
  %72 = load i32, i32* %12, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %90

74:                                               ; preds = %60
  %75 = load i32, i32* @EINVAL, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %12, align 4
  %77 = load %struct.encrypted_key_payload*, %struct.encrypted_key_payload** %5, align 8
  %78 = getelementptr inbounds %struct.encrypted_key_payload, %struct.encrypted_key_payload* %77, i32 0, i32 2
  %79 = load i8*, i8** %78, align 8
  %80 = load %struct.encrypted_key_payload*, %struct.encrypted_key_payload** %5, align 8
  %81 = getelementptr inbounds %struct.encrypted_key_payload, %struct.encrypted_key_payload* %80, i32 0, i32 0
  %82 = load i16, i16* %81, align 8
  %83 = zext i16 %82 to i32
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i8, i8* %79, i64 %84
  %86 = load i32, i32* @HASH_SIZE, align 4
  %87 = call i32 @dump_hmac(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* %85, i32 %86)
  %88 = load i32, i32* @HASH_SIZE, align 4
  %89 = call i32 @dump_hmac(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %21, i32 %88)
  br label %90

90:                                               ; preds = %74, %60
  br label %91

91:                                               ; preds = %90, %59, %28
  %92 = trunc i64 %16 to i32
  %93 = call i32 @memzero_explicit(i8* %18, i32 %92)
  %94 = load i32, i32* %12, align 4
  %95 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %95)
  ret i32 %94
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @get_derived_key(i8*, i32, i8*, i64) #2

declare dso_local i64 @strlen(i8*) #2

declare dso_local i32 @calc_hmac(i8*, i8*, i32, i8*, i16 zeroext) #2

declare dso_local i32 @crypto_memneq(i8*, i8*, i32) #2

declare dso_local i32 @dump_hmac(i8*, i8*, i32) #2

declare dso_local i32 @memzero_explicit(i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
