; ModuleID = '/home/carl/AnghaBench/linux/security/apparmor/extr_crypto.c_aa_calc_hash.c'
source_filename = "/home/carl/AnghaBench/linux/security/apparmor/extr_crypto.c_aa_calc_hash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64 }

@desc = common dso_local global %struct.TYPE_6__* null, align 8
@apparmor_tfm = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@apparmor_hash_size = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @aa_calc_hash(i8* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** @desc, align 8
  %9 = load i64, i64* @apparmor_tfm, align 8
  %10 = call i32 @SHASH_DESC_ON_STACK(%struct.TYPE_6__* %8, i64 %9)
  store i8* null, i8** %6, align 8
  %11 = load i32, i32* @ENOMEM, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %7, align 4
  %13 = load i64, i64* @apparmor_tfm, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  store i8* null, i8** %3, align 8
  br label %55

16:                                               ; preds = %2
  %17 = load i32, i32* @apparmor_hash_size, align 4
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call i8* @kzalloc(i32 %17, i32 %18)
  store i8* %19, i8** %6, align 8
  %20 = load i8*, i8** %6, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %16
  br label %50

23:                                               ; preds = %16
  %24 = load i64, i64* @apparmor_tfm, align 8
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** @desc, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  store i64 %24, i64* %26, align 8
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** @desc, align 8
  %28 = call i32 @crypto_shash_init(%struct.TYPE_6__* %27)
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %23
  br label %50

32:                                               ; preds = %23
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** @desc, align 8
  %34 = load i8*, i8** %4, align 8
  %35 = bitcast i8* %34 to i32*
  %36 = load i64, i64* %5, align 8
  %37 = call i32 @crypto_shash_update(%struct.TYPE_6__* %33, i32* %35, i64 %36)
  store i32 %37, i32* %7, align 4
  %38 = load i32, i32* %7, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %32
  br label %50

41:                                               ; preds = %32
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** @desc, align 8
  %43 = load i8*, i8** %6, align 8
  %44 = call i32 @crypto_shash_final(%struct.TYPE_6__* %42, i8* %43)
  store i32 %44, i32* %7, align 4
  %45 = load i32, i32* %7, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %41
  br label %50

48:                                               ; preds = %41
  %49 = load i8*, i8** %6, align 8
  store i8* %49, i8** %3, align 8
  br label %55

50:                                               ; preds = %47, %40, %31, %22
  %51 = load i8*, i8** %6, align 8
  %52 = call i32 @kfree(i8* %51)
  %53 = load i32, i32* %7, align 4
  %54 = call i8* @ERR_PTR(i32 %53)
  store i8* %54, i8** %3, align 8
  br label %55

55:                                               ; preds = %50, %48, %15
  %56 = load i8*, i8** %3, align 8
  ret i8* %56
}

declare dso_local i32 @SHASH_DESC_ON_STACK(%struct.TYPE_6__*, i64) #1

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @crypto_shash_init(%struct.TYPE_6__*) #1

declare dso_local i32 @crypto_shash_update(%struct.TYPE_6__*, i32*, i64) #1

declare dso_local i32 @crypto_shash_final(%struct.TYPE_6__*, i8*) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i8* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
