; ModuleID = '/home/carl/AnghaBench/linux/security/integrity/evm/extr_evm_crypto.c_init_desc.c'
source_filename = "/home/carl/AnghaBench/linux/security/integrity/evm/extr_evm_crypto.c_init_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_shash = type { i32 }
%struct.shash_desc = type { %struct.crypto_shash* }

@EVM_XATTR_HMAC = common dso_local global i8 0, align 1
@evm_initialized = common dso_local global i32 0, align 4
@EVM_INIT_HMAC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"HMAC key is not set\0A\00", align 1
@ENOKEY = common dso_local global i64 0, align 8
@hmac_tfm = common dso_local global %struct.crypto_shash* null, align 8
@evm_hmac = common dso_local global i8* null, align 8
@HASH_ALGO__LAST = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i64 0, align 8
@evm_tfm = common dso_local global %struct.crypto_shash** null, align 8
@hash_algo_name = common dso_local global i8** null, align 8
@mutex = common dso_local global i32 0, align 4
@CRYPTO_NOLOAD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"Can not allocate %s (reason: %ld)\0A\00", align 1
@evmkey = common dso_local global i32 0, align 4
@evmkey_len = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.shash_desc* (i8, i64)* @init_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.shash_desc* @init_desc(i8 signext %0, i64 %1) #0 {
  %3 = alloca %struct.shash_desc*, align 8
  %4 = alloca i8, align 1
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.crypto_shash**, align 8
  %9 = alloca %struct.shash_desc*, align 8
  store i8 %0, i8* %4, align 1
  store i64 %1, i64* %5, align 8
  %10 = load i8, i8* %4, align 1
  %11 = sext i8 %10 to i32
  %12 = load i8, i8* @EVM_XATTR_HMAC, align 1
  %13 = sext i8 %12 to i32
  %14 = icmp eq i32 %11, %13
  br i1 %14, label %15, label %27

15:                                               ; preds = %2
  %16 = load i32, i32* @evm_initialized, align 4
  %17 = load i32, i32* @EVM_INIT_HMAC, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %25, label %20

20:                                               ; preds = %15
  %21 = call i32 @pr_err_once(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %22 = load i64, i64* @ENOKEY, align 8
  %23 = sub nsw i64 0, %22
  %24 = call %struct.shash_desc* @ERR_PTR(i64 %23)
  store %struct.shash_desc* %24, %struct.shash_desc** %3, align 8
  br label %128

25:                                               ; preds = %15
  store %struct.crypto_shash** @hmac_tfm, %struct.crypto_shash*** %8, align 8
  %26 = load i8*, i8** @evm_hmac, align 8
  store i8* %26, i8** %7, align 8
  br label %43

27:                                               ; preds = %2
  %28 = load i64, i64* %5, align 8
  %29 = load i64, i64* @HASH_ALGO__LAST, align 8
  %30 = icmp uge i64 %28, %29
  br i1 %30, label %31, label %35

31:                                               ; preds = %27
  %32 = load i64, i64* @EINVAL, align 8
  %33 = sub nsw i64 0, %32
  %34 = call %struct.shash_desc* @ERR_PTR(i64 %33)
  store %struct.shash_desc* %34, %struct.shash_desc** %3, align 8
  br label %128

35:                                               ; preds = %27
  %36 = load %struct.crypto_shash**, %struct.crypto_shash*** @evm_tfm, align 8
  %37 = load i64, i64* %5, align 8
  %38 = getelementptr inbounds %struct.crypto_shash*, %struct.crypto_shash** %36, i64 %37
  store %struct.crypto_shash** %38, %struct.crypto_shash*** %8, align 8
  %39 = load i8**, i8*** @hash_algo_name, align 8
  %40 = load i64, i64* %5, align 8
  %41 = getelementptr inbounds i8*, i8** %39, i64 %40
  %42 = load i8*, i8** %41, align 8
  store i8* %42, i8** %7, align 8
  br label %43

43:                                               ; preds = %35, %25
  %44 = load %struct.crypto_shash**, %struct.crypto_shash*** %8, align 8
  %45 = load %struct.crypto_shash*, %struct.crypto_shash** %44, align 8
  %46 = icmp eq %struct.crypto_shash* %45, null
  br i1 %46, label %47, label %99

47:                                               ; preds = %43
  %48 = call i32 @mutex_lock(i32* @mutex)
  %49 = load %struct.crypto_shash**, %struct.crypto_shash*** %8, align 8
  %50 = load %struct.crypto_shash*, %struct.crypto_shash** %49, align 8
  %51 = icmp ne %struct.crypto_shash* %50, null
  br i1 %51, label %52, label %53

52:                                               ; preds = %47
  br label %97

53:                                               ; preds = %47
  %54 = load i8*, i8** %7, align 8
  %55 = load i32, i32* @CRYPTO_NOLOAD, align 4
  %56 = call %struct.crypto_shash* @crypto_alloc_shash(i8* %54, i32 0, i32 %55)
  %57 = load %struct.crypto_shash**, %struct.crypto_shash*** %8, align 8
  store %struct.crypto_shash* %56, %struct.crypto_shash** %57, align 8
  %58 = load %struct.crypto_shash**, %struct.crypto_shash*** %8, align 8
  %59 = load %struct.crypto_shash*, %struct.crypto_shash** %58, align 8
  %60 = call i64 @IS_ERR(%struct.crypto_shash* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %73

62:                                               ; preds = %53
  %63 = load %struct.crypto_shash**, %struct.crypto_shash*** %8, align 8
  %64 = load %struct.crypto_shash*, %struct.crypto_shash** %63, align 8
  %65 = call i64 @PTR_ERR(%struct.crypto_shash* %64)
  store i64 %65, i64* %6, align 8
  %66 = load i8*, i8** %7, align 8
  %67 = load i64, i64* %6, align 8
  %68 = call i32 @pr_err(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i8* %66, i64 %67)
  %69 = load %struct.crypto_shash**, %struct.crypto_shash*** %8, align 8
  store %struct.crypto_shash* null, %struct.crypto_shash** %69, align 8
  %70 = call i32 @mutex_unlock(i32* @mutex)
  %71 = load i64, i64* %6, align 8
  %72 = call %struct.shash_desc* @ERR_PTR(i64 %71)
  store %struct.shash_desc* %72, %struct.shash_desc** %3, align 8
  br label %128

73:                                               ; preds = %53
  %74 = load i8, i8* %4, align 1
  %75 = sext i8 %74 to i32
  %76 = load i8, i8* @EVM_XATTR_HMAC, align 1
  %77 = sext i8 %76 to i32
  %78 = icmp eq i32 %75, %77
  br i1 %78, label %79, label %96

79:                                               ; preds = %73
  %80 = load %struct.crypto_shash**, %struct.crypto_shash*** %8, align 8
  %81 = load %struct.crypto_shash*, %struct.crypto_shash** %80, align 8
  %82 = load i32, i32* @evmkey, align 4
  %83 = load i32, i32* @evmkey_len, align 4
  %84 = call i64 @crypto_shash_setkey(%struct.crypto_shash* %81, i32 %82, i32 %83)
  store i64 %84, i64* %6, align 8
  %85 = load i64, i64* %6, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %95

87:                                               ; preds = %79
  %88 = load %struct.crypto_shash**, %struct.crypto_shash*** %8, align 8
  %89 = load %struct.crypto_shash*, %struct.crypto_shash** %88, align 8
  %90 = call i32 @crypto_free_shash(%struct.crypto_shash* %89)
  %91 = load %struct.crypto_shash**, %struct.crypto_shash*** %8, align 8
  store %struct.crypto_shash* null, %struct.crypto_shash** %91, align 8
  %92 = call i32 @mutex_unlock(i32* @mutex)
  %93 = load i64, i64* %6, align 8
  %94 = call %struct.shash_desc* @ERR_PTR(i64 %93)
  store %struct.shash_desc* %94, %struct.shash_desc** %3, align 8
  br label %128

95:                                               ; preds = %79
  br label %96

96:                                               ; preds = %95, %73
  br label %97

97:                                               ; preds = %96, %52
  %98 = call i32 @mutex_unlock(i32* @mutex)
  br label %99

99:                                               ; preds = %97, %43
  %100 = load %struct.crypto_shash**, %struct.crypto_shash*** %8, align 8
  %101 = load %struct.crypto_shash*, %struct.crypto_shash** %100, align 8
  %102 = call i64 @crypto_shash_descsize(%struct.crypto_shash* %101)
  %103 = add i64 8, %102
  %104 = load i32, i32* @GFP_KERNEL, align 4
  %105 = call %struct.shash_desc* @kmalloc(i64 %103, i32 %104)
  store %struct.shash_desc* %105, %struct.shash_desc** %9, align 8
  %106 = load %struct.shash_desc*, %struct.shash_desc** %9, align 8
  %107 = icmp ne %struct.shash_desc* %106, null
  br i1 %107, label %112, label %108

108:                                              ; preds = %99
  %109 = load i64, i64* @ENOMEM, align 8
  %110 = sub nsw i64 0, %109
  %111 = call %struct.shash_desc* @ERR_PTR(i64 %110)
  store %struct.shash_desc* %111, %struct.shash_desc** %3, align 8
  br label %128

112:                                              ; preds = %99
  %113 = load %struct.crypto_shash**, %struct.crypto_shash*** %8, align 8
  %114 = load %struct.crypto_shash*, %struct.crypto_shash** %113, align 8
  %115 = load %struct.shash_desc*, %struct.shash_desc** %9, align 8
  %116 = getelementptr inbounds %struct.shash_desc, %struct.shash_desc* %115, i32 0, i32 0
  store %struct.crypto_shash* %114, %struct.crypto_shash** %116, align 8
  %117 = load %struct.shash_desc*, %struct.shash_desc** %9, align 8
  %118 = call i64 @crypto_shash_init(%struct.shash_desc* %117)
  store i64 %118, i64* %6, align 8
  %119 = load i64, i64* %6, align 8
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %126

121:                                              ; preds = %112
  %122 = load %struct.shash_desc*, %struct.shash_desc** %9, align 8
  %123 = call i32 @kfree(%struct.shash_desc* %122)
  %124 = load i64, i64* %6, align 8
  %125 = call %struct.shash_desc* @ERR_PTR(i64 %124)
  store %struct.shash_desc* %125, %struct.shash_desc** %3, align 8
  br label %128

126:                                              ; preds = %112
  %127 = load %struct.shash_desc*, %struct.shash_desc** %9, align 8
  store %struct.shash_desc* %127, %struct.shash_desc** %3, align 8
  br label %128

128:                                              ; preds = %126, %121, %108, %87, %62, %31, %20
  %129 = load %struct.shash_desc*, %struct.shash_desc** %3, align 8
  ret %struct.shash_desc* %129
}

declare dso_local i32 @pr_err_once(i8*) #1

declare dso_local %struct.shash_desc* @ERR_PTR(i64) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.crypto_shash* @crypto_alloc_shash(i8*, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.crypto_shash*) #1

declare dso_local i64 @PTR_ERR(%struct.crypto_shash*) #1

declare dso_local i32 @pr_err(i8*, i8*, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i64 @crypto_shash_setkey(%struct.crypto_shash*, i32, i32) #1

declare dso_local i32 @crypto_free_shash(%struct.crypto_shash*) #1

declare dso_local %struct.shash_desc* @kmalloc(i64, i32) #1

declare dso_local i64 @crypto_shash_descsize(%struct.crypto_shash*) #1

declare dso_local i64 @crypto_shash_init(%struct.shash_desc*) #1

declare dso_local i32 @kfree(%struct.shash_desc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
