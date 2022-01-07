; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_ecdh_helper.c_set_ecdh_privkey.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_ecdh_helper.c_set_ecdh_privkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_kpp = type { i32 }
%struct.ecdh = type { i32, i32*, i32, i32 }

@ECC_CURVE_NIST_P256 = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @set_ecdh_privkey(%struct.crypto_kpp* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.crypto_kpp*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.ecdh, align 8
  store %struct.crypto_kpp* %0, %struct.crypto_kpp** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* null, i32** %7, align 8
  %11 = bitcast %struct.ecdh* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %11, i8 0, i64 24, i1 false)
  %12 = load i32, i32* @ECC_CURVE_NIST_P256, align 4
  %13 = getelementptr inbounds %struct.ecdh, %struct.ecdh* %10, i32 0, i32 2
  store i32 %12, i32* %13, align 8
  %14 = load i32*, i32** %5, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %16, label %31

16:                                               ; preds = %2
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call i32* @kmalloc(i32 32, i32 %17)
  store i32* %18, i32** %7, align 8
  %19 = load i32*, i32** %7, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %16
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %60

24:                                               ; preds = %16
  %25 = load i32*, i32** %5, align 8
  %26 = load i32*, i32** %7, align 8
  %27 = call i32 @swap_digits(i32* %25, i32* %26, i32 4)
  %28 = load i32*, i32** %7, align 8
  %29 = getelementptr inbounds %struct.ecdh, %struct.ecdh* %10, i32 0, i32 1
  store i32* %28, i32** %29, align 8
  %30 = getelementptr inbounds %struct.ecdh, %struct.ecdh* %10, i32 0, i32 0
  store i32 32, i32* %30, align 8
  br label %31

31:                                               ; preds = %24, %2
  %32 = call i32 @crypto_ecdh_key_len(%struct.ecdh* %10)
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* @GFP_KERNEL, align 4
  %35 = call i32* @kmalloc(i32 %33, i32 %34)
  store i32* %35, i32** %6, align 8
  %36 = load i32*, i32** %6, align 8
  %37 = icmp ne i32* %36, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %31
  %39 = load i32, i32* @ENOMEM, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %9, align 4
  br label %56

41:                                               ; preds = %31
  %42 = load i32*, i32** %6, align 8
  %43 = load i32, i32* %8, align 4
  %44 = call i32 @crypto_ecdh_encode_key(i32* %42, i32 %43, %struct.ecdh* %10)
  store i32 %44, i32* %9, align 4
  %45 = load i32, i32* %9, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %41
  br label %53

48:                                               ; preds = %41
  %49 = load %struct.crypto_kpp*, %struct.crypto_kpp** %4, align 8
  %50 = load i32*, i32** %6, align 8
  %51 = load i32, i32* %8, align 4
  %52 = call i32 @crypto_kpp_set_secret(%struct.crypto_kpp* %49, i32* %50, i32 %51)
  store i32 %52, i32* %9, align 4
  br label %53

53:                                               ; preds = %48, %47
  %54 = load i32*, i32** %6, align 8
  %55 = call i32 @kzfree(i32* %54)
  br label %56

56:                                               ; preds = %53, %38
  %57 = load i32*, i32** %7, align 8
  %58 = call i32 @kzfree(i32* %57)
  %59 = load i32, i32* %9, align 4
  store i32 %59, i32* %3, align 4
  br label %60

60:                                               ; preds = %56, %21
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32* @kmalloc(i32, i32) #2

declare dso_local i32 @swap_digits(i32*, i32*, i32) #2

declare dso_local i32 @crypto_ecdh_key_len(%struct.ecdh*) #2

declare dso_local i32 @crypto_ecdh_encode_key(i32*, i32, %struct.ecdh*) #2

declare dso_local i32 @crypto_kpp_set_secret(%struct.crypto_kpp*, i32*, i32) #2

declare dso_local i32 @kzfree(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
