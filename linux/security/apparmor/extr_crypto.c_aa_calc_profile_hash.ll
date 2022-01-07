; ModuleID = '/home/carl/AnghaBench/linux/security/apparmor/extr_crypto.c_aa_calc_profile_hash.c'
source_filename = "/home/carl/AnghaBench/linux/security/apparmor/extr_crypto.c_aa_calc_profile_hash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64 }
%struct.aa_profile = type { i32* }

@desc = common dso_local global %struct.TYPE_6__* null, align 8
@apparmor_tfm = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@aa_g_hash_policy = common dso_local global i32 0, align 4
@apparmor_hash_size = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @aa_calc_profile_hash(%struct.aa_profile* %0, i32 %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.aa_profile*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.aa_profile* %0, %struct.aa_profile** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** @desc, align 8
  %13 = load i64, i64* @apparmor_tfm, align 8
  %14 = call i32 @SHASH_DESC_ON_STACK(%struct.TYPE_6__* %12, i64 %13)
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %10, align 4
  %17 = load i32, i32* %7, align 4
  %18 = call i32 @cpu_to_le32(i32 %17)
  store i32 %18, i32* %11, align 4
  %19 = load i32, i32* @aa_g_hash_policy, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %79

22:                                               ; preds = %4
  %23 = load i64, i64* @apparmor_tfm, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %22
  store i32 0, i32* %5, align 4
  br label %79

26:                                               ; preds = %22
  %27 = load i32, i32* @apparmor_hash_size, align 4
  %28 = load i32, i32* @GFP_KERNEL, align 4
  %29 = call i32* @kzalloc(i32 %27, i32 %28)
  %30 = load %struct.aa_profile*, %struct.aa_profile** %6, align 8
  %31 = getelementptr inbounds %struct.aa_profile, %struct.aa_profile* %30, i32 0, i32 0
  store i32* %29, i32** %31, align 8
  %32 = load %struct.aa_profile*, %struct.aa_profile** %6, align 8
  %33 = getelementptr inbounds %struct.aa_profile, %struct.aa_profile* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %37, label %36

36:                                               ; preds = %26
  br label %71

37:                                               ; preds = %26
  %38 = load i64, i64* @apparmor_tfm, align 8
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** @desc, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  store i64 %38, i64* %40, align 8
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** @desc, align 8
  %42 = call i32 @crypto_shash_init(%struct.TYPE_6__* %41)
  store i32 %42, i32* %10, align 4
  %43 = load i32, i32* %10, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %37
  br label %71

46:                                               ; preds = %37
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** @desc, align 8
  %48 = call i32 @crypto_shash_update(%struct.TYPE_6__* %47, i32* %11, i64 4)
  store i32 %48, i32* %10, align 4
  %49 = load i32, i32* %10, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %46
  br label %71

52:                                               ; preds = %46
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** @desc, align 8
  %54 = load i8*, i8** %8, align 8
  %55 = bitcast i8* %54 to i32*
  %56 = load i64, i64* %9, align 8
  %57 = call i32 @crypto_shash_update(%struct.TYPE_6__* %53, i32* %55, i64 %56)
  store i32 %57, i32* %10, align 4
  %58 = load i32, i32* %10, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %52
  br label %71

61:                                               ; preds = %52
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** @desc, align 8
  %63 = load %struct.aa_profile*, %struct.aa_profile** %6, align 8
  %64 = getelementptr inbounds %struct.aa_profile, %struct.aa_profile* %63, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = call i32 @crypto_shash_final(%struct.TYPE_6__* %62, i32* %65)
  store i32 %66, i32* %10, align 4
  %67 = load i32, i32* %10, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %61
  br label %71

70:                                               ; preds = %61
  store i32 0, i32* %5, align 4
  br label %79

71:                                               ; preds = %69, %60, %51, %45, %36
  %72 = load %struct.aa_profile*, %struct.aa_profile** %6, align 8
  %73 = getelementptr inbounds %struct.aa_profile, %struct.aa_profile* %72, i32 0, i32 0
  %74 = load i32*, i32** %73, align 8
  %75 = call i32 @kfree(i32* %74)
  %76 = load %struct.aa_profile*, %struct.aa_profile** %6, align 8
  %77 = getelementptr inbounds %struct.aa_profile, %struct.aa_profile* %76, i32 0, i32 0
  store i32* null, i32** %77, align 8
  %78 = load i32, i32* %10, align 4
  store i32 %78, i32* %5, align 4
  br label %79

79:                                               ; preds = %71, %70, %25, %21
  %80 = load i32, i32* %5, align 4
  ret i32 %80
}

declare dso_local i32 @SHASH_DESC_ON_STACK(%struct.TYPE_6__*, i64) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32* @kzalloc(i32, i32) #1

declare dso_local i32 @crypto_shash_init(%struct.TYPE_6__*) #1

declare dso_local i32 @crypto_shash_update(%struct.TYPE_6__*, i32*, i64) #1

declare dso_local i32 @crypto_shash_final(%struct.TYPE_6__*, i32*) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
