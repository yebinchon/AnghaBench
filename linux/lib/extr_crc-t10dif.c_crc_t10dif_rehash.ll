; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_crc-t10dif.c_crc_t10dif_rehash.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_crc-t10dif.c_crc_t10dif_rehash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.notifier_block = type { i32 }
%struct.crypto_alg = type { i32 }
%struct.crypto_shash = type { i32 }

@CRYPTO_MSG_ALG_LOADED = common dso_local global i64 0, align 8
@crct10dif_fallback = common dso_local global i32 0, align 4
@CRC_T10DIF_STRING = common dso_local global i32 0, align 4
@crc_t10dif_mutex = common dso_local global i32 0, align 4
@crct10dif_tfm = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"crct10dif\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.notifier_block*, i64, i8*)* @crc_t10dif_rehash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @crc_t10dif_rehash(%struct.notifier_block* %0, i64 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.notifier_block*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.crypto_alg*, align 8
  %9 = alloca %struct.crypto_shash*, align 8
  %10 = alloca %struct.crypto_shash*, align 8
  store %struct.notifier_block* %0, %struct.notifier_block** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  %11 = load i8*, i8** %7, align 8
  %12 = bitcast i8* %11 to %struct.crypto_alg*
  store %struct.crypto_alg* %12, %struct.crypto_alg** %8, align 8
  %13 = load i64, i64* %6, align 8
  %14 = load i64, i64* @CRYPTO_MSG_ALG_LOADED, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %28, label %16

16:                                               ; preds = %3
  %17 = call i64 @static_key_false(i32* @crct10dif_fallback)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %28, label %19

19:                                               ; preds = %16
  %20 = load %struct.crypto_alg*, %struct.crypto_alg** %8, align 8
  %21 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @CRC_T10DIF_STRING, align 4
  %24 = load i32, i32* @CRC_T10DIF_STRING, align 4
  %25 = call i32 @strlen(i32 %24)
  %26 = call i64 @strncmp(i32 %22, i32 %23, i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %19, %16, %3
  store i32 0, i32* %4, align 4
  br label %53

29:                                               ; preds = %19
  %30 = call i32 @mutex_lock(i32* @crc_t10dif_mutex)
  %31 = load i32, i32* @crct10dif_tfm, align 4
  %32 = call i32 @lockdep_is_held(i32* @crc_t10dif_mutex)
  %33 = call %struct.crypto_shash* @rcu_dereference_protected(i32 %31, i32 %32)
  store %struct.crypto_shash* %33, %struct.crypto_shash** %10, align 8
  %34 = load %struct.crypto_shash*, %struct.crypto_shash** %10, align 8
  %35 = icmp ne %struct.crypto_shash* %34, null
  br i1 %35, label %38, label %36

36:                                               ; preds = %29
  %37 = call i32 @mutex_unlock(i32* @crc_t10dif_mutex)
  store i32 0, i32* %4, align 4
  br label %53

38:                                               ; preds = %29
  %39 = call %struct.crypto_shash* @crypto_alloc_shash(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 0, i32 0)
  store %struct.crypto_shash* %39, %struct.crypto_shash** %9, align 8
  %40 = load %struct.crypto_shash*, %struct.crypto_shash** %9, align 8
  %41 = call i64 @IS_ERR(%struct.crypto_shash* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %38
  %44 = call i32 @mutex_unlock(i32* @crc_t10dif_mutex)
  store i32 0, i32* %4, align 4
  br label %53

45:                                               ; preds = %38
  %46 = load i32, i32* @crct10dif_tfm, align 4
  %47 = load %struct.crypto_shash*, %struct.crypto_shash** %9, align 8
  %48 = call i32 @rcu_assign_pointer(i32 %46, %struct.crypto_shash* %47)
  %49 = call i32 @mutex_unlock(i32* @crc_t10dif_mutex)
  %50 = call i32 (...) @synchronize_rcu()
  %51 = load %struct.crypto_shash*, %struct.crypto_shash** %10, align 8
  %52 = call i32 @crypto_free_shash(%struct.crypto_shash* %51)
  store i32 0, i32* %4, align 4
  br label %53

53:                                               ; preds = %45, %43, %36, %28
  %54 = load i32, i32* %4, align 4
  ret i32 %54
}

declare dso_local i64 @static_key_false(i32*) #1

declare dso_local i64 @strncmp(i32, i32, i32) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.crypto_shash* @rcu_dereference_protected(i32, i32) #1

declare dso_local i32 @lockdep_is_held(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local %struct.crypto_shash* @crypto_alloc_shash(i8*, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.crypto_shash*) #1

declare dso_local i32 @rcu_assign_pointer(i32, %struct.crypto_shash*) #1

declare dso_local i32 @synchronize_rcu(...) #1

declare dso_local i32 @crypto_free_shash(%struct.crypto_shash*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
