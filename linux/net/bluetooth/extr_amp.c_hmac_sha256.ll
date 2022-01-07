; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_amp.c_hmac_sha256.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_amp.c_hmac_sha256.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_shash = type { i32 }
%struct.shash_desc = type { %struct.crypto_shash* }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"hmac(sha256)\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"crypto_alloc_ahash failed: err %ld\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"crypto_ahash_setkey failed: err %d\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i8*, i32, i32*)* @hmac_sha256 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hmac_sha256(i32* %0, i32 %1, i8* %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.crypto_shash*, align 8
  %13 = alloca %struct.shash_desc*, align 8
  %14 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %15 = load i32, i32* %8, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %5
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %6, align 4
  br label %67

20:                                               ; preds = %5
  %21 = call %struct.crypto_shash* @crypto_alloc_shash(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 0, i32 0)
  store %struct.crypto_shash* %21, %struct.crypto_shash** %12, align 8
  %22 = load %struct.crypto_shash*, %struct.crypto_shash** %12, align 8
  %23 = call i64 @IS_ERR(%struct.crypto_shash* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %20
  %26 = load %struct.crypto_shash*, %struct.crypto_shash** %12, align 8
  %27 = call i32 @PTR_ERR(%struct.crypto_shash* %26)
  %28 = call i32 @BT_DBG(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %27)
  %29 = load %struct.crypto_shash*, %struct.crypto_shash** %12, align 8
  %30 = call i32 @PTR_ERR(%struct.crypto_shash* %29)
  store i32 %30, i32* %6, align 4
  br label %67

31:                                               ; preds = %20
  %32 = load %struct.crypto_shash*, %struct.crypto_shash** %12, align 8
  %33 = load i32*, i32** %7, align 8
  %34 = load i32, i32* %8, align 4
  %35 = call i32 @crypto_shash_setkey(%struct.crypto_shash* %32, i32* %33, i32 %34)
  store i32 %35, i32* %14, align 4
  %36 = load i32, i32* %14, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %31
  %39 = load i32, i32* %14, align 4
  %40 = call i32 @BT_DBG(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %39)
  br label %63

41:                                               ; preds = %31
  %42 = load %struct.crypto_shash*, %struct.crypto_shash** %12, align 8
  %43 = call i64 @crypto_shash_descsize(%struct.crypto_shash* %42)
  %44 = add i64 8, %43
  %45 = load i32, i32* @GFP_KERNEL, align 4
  %46 = call %struct.shash_desc* @kzalloc(i64 %44, i32 %45)
  store %struct.shash_desc* %46, %struct.shash_desc** %13, align 8
  %47 = load %struct.shash_desc*, %struct.shash_desc** %13, align 8
  %48 = icmp ne %struct.shash_desc* %47, null
  br i1 %48, label %52, label %49

49:                                               ; preds = %41
  %50 = load i32, i32* @ENOMEM, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %14, align 4
  br label %63

52:                                               ; preds = %41
  %53 = load %struct.crypto_shash*, %struct.crypto_shash** %12, align 8
  %54 = load %struct.shash_desc*, %struct.shash_desc** %13, align 8
  %55 = getelementptr inbounds %struct.shash_desc, %struct.shash_desc* %54, i32 0, i32 0
  store %struct.crypto_shash* %53, %struct.crypto_shash** %55, align 8
  %56 = load %struct.shash_desc*, %struct.shash_desc** %13, align 8
  %57 = load i8*, i8** %9, align 8
  %58 = load i32, i32* %10, align 4
  %59 = load i32*, i32** %11, align 8
  %60 = call i32 @crypto_shash_digest(%struct.shash_desc* %56, i8* %57, i32 %58, i32* %59)
  store i32 %60, i32* %14, align 4
  %61 = load %struct.shash_desc*, %struct.shash_desc** %13, align 8
  %62 = call i32 @kfree(%struct.shash_desc* %61)
  br label %63

63:                                               ; preds = %52, %49, %38
  %64 = load %struct.crypto_shash*, %struct.crypto_shash** %12, align 8
  %65 = call i32 @crypto_free_shash(%struct.crypto_shash* %64)
  %66 = load i32, i32* %14, align 4
  store i32 %66, i32* %6, align 4
  br label %67

67:                                               ; preds = %63, %25, %17
  %68 = load i32, i32* %6, align 4
  ret i32 %68
}

declare dso_local %struct.crypto_shash* @crypto_alloc_shash(i8*, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.crypto_shash*) #1

declare dso_local i32 @BT_DBG(i8*, i32) #1

declare dso_local i32 @PTR_ERR(%struct.crypto_shash*) #1

declare dso_local i32 @crypto_shash_setkey(%struct.crypto_shash*, i32*, i32) #1

declare dso_local %struct.shash_desc* @kzalloc(i64, i32) #1

declare dso_local i64 @crypto_shash_descsize(%struct.crypto_shash*) #1

declare dso_local i32 @crypto_shash_digest(%struct.shash_desc*, i8*, i32, i32*) #1

declare dso_local i32 @kfree(%struct.shash_desc*) #1

declare dso_local i32 @crypto_free_shash(%struct.crypto_shash*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
