; ModuleID = '/home/carl/AnghaBench/linux/security/keys/encrypted-keys/extr_encrypted.c_datablob_format.c'
source_filename = "/home/carl/AnghaBench/linux/security/keys/encrypted-keys/extr_encrypted.c_datablob_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.encrypted_key_payload = type { i8*, i8*, i8*, i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"%s %s %s \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.encrypted_key_payload*, i64)* @datablob_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @datablob_format(%struct.encrypted_key_payload* %0, i64 %1) #0 {
  %3 = alloca %struct.encrypted_key_payload*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.encrypted_key_payload* %0, %struct.encrypted_key_payload** %3, align 8
  store i64 %1, i64* %4, align 8
  %10 = load %struct.encrypted_key_payload*, %struct.encrypted_key_payload** %3, align 8
  %11 = getelementptr inbounds %struct.encrypted_key_payload, %struct.encrypted_key_payload* %10, i32 0, i32 3
  %12 = load i32*, i32** %11, align 8
  store i32* %12, i32** %7, align 8
  %13 = load i64, i64* %4, align 8
  %14 = add i64 %13, 1
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call i8* @kmalloc(i64 %14, i32 %15)
  store i8* %16, i8** %5, align 8
  %17 = load i8*, i8** %5, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %2
  br label %60

20:                                               ; preds = %2
  %21 = load i8*, i8** %5, align 8
  %22 = load i64, i64* %4, align 8
  %23 = getelementptr inbounds i8, i8* %21, i64 %22
  store i8 0, i8* %23, align 1
  %24 = load i8*, i8** %5, align 8
  %25 = load %struct.encrypted_key_payload*, %struct.encrypted_key_payload** %3, align 8
  %26 = getelementptr inbounds %struct.encrypted_key_payload, %struct.encrypted_key_payload* %25, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  %28 = load %struct.encrypted_key_payload*, %struct.encrypted_key_payload** %3, align 8
  %29 = getelementptr inbounds %struct.encrypted_key_payload, %struct.encrypted_key_payload* %28, i32 0, i32 1
  %30 = load i8*, i8** %29, align 8
  %31 = load %struct.encrypted_key_payload*, %struct.encrypted_key_payload** %3, align 8
  %32 = getelementptr inbounds %struct.encrypted_key_payload, %struct.encrypted_key_payload* %31, i32 0, i32 2
  %33 = load i8*, i8** %32, align 8
  %34 = call i32 @sprintf(i8* %24, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* %27, i8* %30, i8* %33)
  store i32 %34, i32* %8, align 4
  %35 = load i8*, i8** %5, align 8
  %36 = load i32, i32* %8, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i8, i8* %35, i64 %37
  store i8* %38, i8** %6, align 8
  store i32 0, i32* %9, align 4
  br label %39

39:                                               ; preds = %56, %20
  %40 = load i32, i32* %9, align 4
  %41 = sext i32 %40 to i64
  %42 = load i64, i64* %4, align 8
  %43 = load i32, i32* %8, align 4
  %44 = sext i32 %43 to i64
  %45 = sub i64 %42, %44
  %46 = udiv i64 %45, 2
  %47 = icmp ult i64 %41, %46
  br i1 %47, label %48, label %59

48:                                               ; preds = %39
  %49 = load i8*, i8** %6, align 8
  %50 = load i32*, i32** %7, align 8
  %51 = load i32, i32* %9, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = call i8* @hex_byte_pack(i8* %49, i32 %54)
  store i8* %55, i8** %6, align 8
  br label %56

56:                                               ; preds = %48
  %57 = load i32, i32* %9, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %9, align 4
  br label %39

59:                                               ; preds = %39
  br label %60

60:                                               ; preds = %59, %19
  %61 = load i8*, i8** %5, align 8
  ret i8* %61
}

declare dso_local i8* @kmalloc(i64, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*, i8*, i8*) #1

declare dso_local i8* @hex_byte_pack(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
