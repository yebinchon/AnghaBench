; ModuleID = '/home/carl/AnghaBench/linux/security/keys/encrypted-keys/extr_encrypted.c_datablob_hmac_append.c'
source_filename = "/home/carl/AnghaBench/linux/security/keys/encrypted-keys/extr_encrypted.c_datablob_hmac_append.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.encrypted_key_payload = type { i32, i32* }

@HASH_SIZE = common dso_local global i32 0, align 4
@AUTH_KEY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.encrypted_key_payload*, i32*, i64)* @datablob_hmac_append to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @datablob_hmac_append(%struct.encrypted_key_payload* %0, i32* %1, i64 %2) #0 {
  %4 = alloca %struct.encrypted_key_payload*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store %struct.encrypted_key_payload* %0, %struct.encrypted_key_payload** %4, align 8
  store i32* %1, i32** %5, align 8
  store i64 %2, i64* %6, align 8
  %11 = load i32, i32* @HASH_SIZE, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %7, align 8
  %14 = alloca i32, i64 %12, align 16
  store i64 %12, i64* %8, align 8
  %15 = load i32, i32* @AUTH_KEY, align 4
  %16 = load i32*, i32** %5, align 8
  %17 = load i64, i64* %6, align 8
  %18 = call i32 @get_derived_key(i32* %14, i32 %15, i32* %16, i64 %17)
  store i32 %18, i32* %10, align 4
  %19 = load i32, i32* %10, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %3
  br label %48

22:                                               ; preds = %3
  %23 = load %struct.encrypted_key_payload*, %struct.encrypted_key_payload** %4, align 8
  %24 = getelementptr inbounds %struct.encrypted_key_payload, %struct.encrypted_key_payload* %23, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  %26 = load %struct.encrypted_key_payload*, %struct.encrypted_key_payload** %4, align 8
  %27 = getelementptr inbounds %struct.encrypted_key_payload, %struct.encrypted_key_payload* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %25, i64 %29
  store i32* %30, i32** %9, align 8
  %31 = load i32*, i32** %9, align 8
  %32 = mul nuw i64 4, %12
  %33 = trunc i64 %32 to i32
  %34 = load %struct.encrypted_key_payload*, %struct.encrypted_key_payload** %4, align 8
  %35 = getelementptr inbounds %struct.encrypted_key_payload, %struct.encrypted_key_payload* %34, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  %37 = load %struct.encrypted_key_payload*, %struct.encrypted_key_payload** %4, align 8
  %38 = getelementptr inbounds %struct.encrypted_key_payload, %struct.encrypted_key_payload* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @calc_hmac(i32* %31, i32* %14, i32 %33, i32* %36, i32 %39)
  store i32 %40, i32* %10, align 4
  %41 = load i32, i32* %10, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %47, label %43

43:                                               ; preds = %22
  %44 = load i32*, i32** %9, align 8
  %45 = load i32, i32* @HASH_SIZE, align 4
  %46 = call i32 @dump_hmac(i32* null, i32* %44, i32 %45)
  br label %47

47:                                               ; preds = %43, %22
  br label %48

48:                                               ; preds = %47, %21
  %49 = mul nuw i64 4, %12
  %50 = trunc i64 %49 to i32
  %51 = call i32 @memzero_explicit(i32* %14, i32 %50)
  %52 = load i32, i32* %10, align 4
  %53 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %53)
  ret i32 %52
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @get_derived_key(i32*, i32, i32*, i64) #2

declare dso_local i32 @calc_hmac(i32*, i32*, i32, i32*, i32) #2

declare dso_local i32 @dump_hmac(i32*, i32*, i32) #2

declare dso_local i32 @memzero_explicit(i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
