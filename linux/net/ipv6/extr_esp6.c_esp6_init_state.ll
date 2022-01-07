; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_esp6.c_esp6_init_state.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_esp6.c_esp6_init_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfrm_state = type { %struct.TYPE_4__, %struct.TYPE_3__, %struct.crypto_aead*, i64, i64 }
%struct.TYPE_4__ = type { i32, i64, i64 }
%struct.TYPE_3__ = type { i32 }
%struct.crypto_aead = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i32 0, align 4
@IPV4_BEET_PHMAXLEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xfrm_state*)* @esp6_init_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @esp6_init_state(%struct.xfrm_state* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.xfrm_state*, align 8
  %4 = alloca %struct.crypto_aead*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.xfrm_state* %0, %struct.xfrm_state** %3, align 8
  %7 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %8 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %7, i32 0, i32 4
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load i32, i32* @EINVAL, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %2, align 4
  br label %84

14:                                               ; preds = %1
  %15 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %16 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %15, i32 0, i32 2
  store %struct.crypto_aead* null, %struct.crypto_aead** %16, align 8
  %17 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %18 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %17, i32 0, i32 3
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %14
  %22 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %23 = call i32 @esp_init_aead(%struct.xfrm_state* %22)
  store i32 %23, i32* %6, align 4
  br label %27

24:                                               ; preds = %14
  %25 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %26 = call i32 @esp_init_authenc(%struct.xfrm_state* %25)
  store i32 %26, i32* %6, align 4
  br label %27

27:                                               ; preds = %24, %21
  %28 = load i32, i32* %6, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %27
  br label %82

31:                                               ; preds = %27
  %32 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %33 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %32, i32 0, i32 2
  %34 = load %struct.crypto_aead*, %struct.crypto_aead** %33, align 8
  store %struct.crypto_aead* %34, %struct.crypto_aead** %4, align 8
  %35 = load %struct.crypto_aead*, %struct.crypto_aead** %4, align 8
  %36 = call i64 @crypto_aead_ivsize(%struct.crypto_aead* %35)
  %37 = add i64 4, %36
  %38 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %39 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 2
  store i64 %37, i64* %40, align 8
  %41 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %42 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  switch i32 %44, label %62 [
    i32 130, label %45
    i32 129, label %63
    i32 128, label %64
  ]

45:                                               ; preds = %31
  %46 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %47 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @AF_INET6, align 4
  %51 = icmp ne i32 %49, %50
  br i1 %51, label %52, label %61

52:                                               ; preds = %45
  %53 = load i32, i32* @IPV4_BEET_PHMAXLEN, align 4
  %54 = sext i32 %53 to i64
  %55 = add i64 %54, 0
  %56 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %57 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  %60 = add i64 %59, %55
  store i64 %60, i64* %58, align 8
  br label %61

61:                                               ; preds = %52, %45
  br label %70

62:                                               ; preds = %31
  br label %63

63:                                               ; preds = %31, %62
  br label %70

64:                                               ; preds = %31
  %65 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %66 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 2
  %68 = load i64, i64* %67, align 8
  %69 = add i64 %68, 4
  store i64 %69, i64* %67, align 8
  br label %70

70:                                               ; preds = %64, %63, %61
  %71 = load %struct.crypto_aead*, %struct.crypto_aead** %4, align 8
  %72 = call i32 @crypto_aead_blocksize(%struct.crypto_aead* %71)
  %73 = call i64 @ALIGN(i32 %72, i32 4)
  store i64 %73, i64* %5, align 8
  %74 = load i64, i64* %5, align 8
  %75 = add nsw i64 %74, 1
  %76 = load %struct.crypto_aead*, %struct.crypto_aead** %4, align 8
  %77 = call i64 @crypto_aead_authsize(%struct.crypto_aead* %76)
  %78 = add nsw i64 %75, %77
  %79 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %80 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 1
  store i64 %78, i64* %81, align 8
  br label %82

82:                                               ; preds = %70, %30
  %83 = load i32, i32* %6, align 4
  store i32 %83, i32* %2, align 4
  br label %84

84:                                               ; preds = %82, %11
  %85 = load i32, i32* %2, align 4
  ret i32 %85
}

declare dso_local i32 @esp_init_aead(%struct.xfrm_state*) #1

declare dso_local i32 @esp_init_authenc(%struct.xfrm_state*) #1

declare dso_local i64 @crypto_aead_ivsize(%struct.crypto_aead*) #1

declare dso_local i64 @ALIGN(i32, i32) #1

declare dso_local i32 @crypto_aead_blocksize(%struct.crypto_aead*) #1

declare dso_local i64 @crypto_aead_authsize(%struct.crypto_aead*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
