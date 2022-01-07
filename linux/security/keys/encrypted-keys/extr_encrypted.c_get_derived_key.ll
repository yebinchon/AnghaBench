; ModuleID = '/home/carl/AnghaBench/linux/security/keys/encrypted-keys/extr_encrypted.c_get_derived_key.c'
source_filename = "/home/carl/AnghaBench/linux/security/keys/encrypted-keys/extr_encrypted.c_get_derived_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"AUTH_KEY\00", align 1
@HASH_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"ENC_KEY\00", align 1
@hash_tfm = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i8*, i64)* @get_derived_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_derived_key(i8* %0, i32 %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = call i32 @strlen(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %14 = add nsw i32 %13, 1
  %15 = sext i32 %14 to i64
  %16 = load i64, i64* %9, align 8
  %17 = add i64 %15, %16
  %18 = trunc i64 %17 to i32
  store i32 %18, i32* %11, align 4
  %19 = load i32, i32* %11, align 4
  %20 = load i32, i32* @HASH_SIZE, align 4
  %21 = icmp ult i32 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %4
  %23 = load i32, i32* @HASH_SIZE, align 4
  store i32 %23, i32* %11, align 4
  br label %24

24:                                               ; preds = %22, %4
  %25 = load i32, i32* %11, align 4
  %26 = load i32, i32* @GFP_KERNEL, align 4
  %27 = call i8* @kzalloc(i32 %25, i32 %26)
  store i8* %27, i8** %10, align 8
  %28 = load i8*, i8** %10, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %24
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %5, align 4
  br label %60

33:                                               ; preds = %24
  %34 = load i32, i32* %7, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %33
  %37 = load i8*, i8** %10, align 8
  %38 = call i32 @strcpy(i8* %37, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  br label %42

39:                                               ; preds = %33
  %40 = load i8*, i8** %10, align 8
  %41 = call i32 @strcpy(i8* %40, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  br label %42

42:                                               ; preds = %39, %36
  %43 = load i8*, i8** %10, align 8
  %44 = load i8*, i8** %10, align 8
  %45 = call i32 @strlen(i8* %44)
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i8, i8* %43, i64 %46
  %48 = getelementptr inbounds i8, i8* %47, i64 1
  %49 = load i8*, i8** %8, align 8
  %50 = load i64, i64* %9, align 8
  %51 = call i32 @memcpy(i8* %48, i8* %49, i64 %50)
  %52 = load i32, i32* @hash_tfm, align 4
  %53 = load i8*, i8** %6, align 8
  %54 = load i8*, i8** %10, align 8
  %55 = load i32, i32* %11, align 4
  %56 = call i32 @calc_hash(i32 %52, i8* %53, i8* %54, i32 %55)
  store i32 %56, i32* %12, align 4
  %57 = load i8*, i8** %10, align 8
  %58 = call i32 @kzfree(i8* %57)
  %59 = load i32, i32* %12, align 4
  store i32 %59, i32* %5, align 4
  br label %60

60:                                               ; preds = %42, %30
  %61 = load i32, i32* %5, align 4
  ret i32 %61
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @calc_hash(i32, i8*, i8*, i32) #1

declare dso_local i32 @kzfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
