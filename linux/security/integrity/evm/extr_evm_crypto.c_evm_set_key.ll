; ModuleID = '/home/carl/AnghaBench/linux/security/integrity/evm/extr_evm_crypto.c_evm_set_key.c'
source_filename = "/home/carl/AnghaBench/linux/security/integrity/evm/extr_evm_crypto.c_evm_set_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EBUSY = common dso_local global i32 0, align 4
@EVM_SET_KEY_BUSY = common dso_local global i32 0, align 4
@evm_set_key_flags = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@MAX_KEY_SIZE = common dso_local global i64 0, align 8
@evmkey = common dso_local global i32 0, align 4
@EVM_INIT_HMAC = common dso_local global i32 0, align 4
@evm_initialized = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"key initialized\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"key initialization failed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @evm_set_key(i8* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load i32, i32* @EBUSY, align 4
  %8 = sub nsw i32 0, %7
  store i32 %8, i32* %6, align 4
  %9 = load i32, i32* @EVM_SET_KEY_BUSY, align 4
  %10 = call i64 @test_and_set_bit(i32 %9, i32* @evm_set_key_flags)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  br label %32

13:                                               ; preds = %2
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %6, align 4
  %16 = load i64, i64* %5, align 8
  %17 = load i64, i64* @MAX_KEY_SIZE, align 8
  %18 = icmp ugt i64 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %13
  br label %29

20:                                               ; preds = %13
  %21 = load i32, i32* @evmkey, align 4
  %22 = load i8*, i8** %4, align 8
  %23 = load i64, i64* %5, align 8
  %24 = call i32 @memcpy(i32 %21, i8* %22, i64 %23)
  %25 = load i32, i32* @EVM_INIT_HMAC, align 4
  %26 = load i32, i32* @evm_initialized, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* @evm_initialized, align 4
  %28 = call i32 @pr_info(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %35

29:                                               ; preds = %19
  %30 = load i32, i32* @EVM_SET_KEY_BUSY, align 4
  %31 = call i32 @clear_bit(i32 %30, i32* @evm_set_key_flags)
  br label %32

32:                                               ; preds = %29, %12
  %33 = call i32 @pr_err(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %34 = load i32, i32* %6, align 4
  store i32 %34, i32* %3, align 4
  br label %35

35:                                               ; preds = %32, %20
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

declare dso_local i64 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @memcpy(i32, i8*, i64) #1

declare dso_local i32 @pr_info(i8*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @pr_err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
