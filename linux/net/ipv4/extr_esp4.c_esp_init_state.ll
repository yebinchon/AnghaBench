; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_esp4.c_esp_init_state.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_esp4.c_esp_init_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfrm_state = type { %struct.TYPE_4__, %struct.xfrm_encap_tmpl*, %struct.TYPE_3__, %struct.crypto_aead*, i64 }
%struct.TYPE_4__ = type { i64, i64, i64 }
%struct.xfrm_encap_tmpl = type { i32 }
%struct.TYPE_3__ = type { i64 }
%struct.crypto_aead = type { i32 }

@XFRM_MODE_TUNNEL = common dso_local global i64 0, align 8
@XFRM_MODE_BEET = common dso_local global i64 0, align 8
@AF_INET6 = common dso_local global i64 0, align 8
@IPV4_BEET_PHMAXLEN = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xfrm_state*)* @esp_init_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @esp_init_state(%struct.xfrm_state* %0) #0 {
  %2 = alloca %struct.xfrm_state*, align 8
  %3 = alloca %struct.crypto_aead*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.xfrm_encap_tmpl*, align 8
  store %struct.xfrm_state* %0, %struct.xfrm_state** %2, align 8
  %7 = load %struct.xfrm_state*, %struct.xfrm_state** %2, align 8
  %8 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %7, i32 0, i32 3
  store %struct.crypto_aead* null, %struct.crypto_aead** %8, align 8
  %9 = load %struct.xfrm_state*, %struct.xfrm_state** %2, align 8
  %10 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %9, i32 0, i32 4
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load %struct.xfrm_state*, %struct.xfrm_state** %2, align 8
  %15 = call i32 @esp_init_aead(%struct.xfrm_state* %14)
  store i32 %15, i32* %5, align 4
  br label %19

16:                                               ; preds = %1
  %17 = load %struct.xfrm_state*, %struct.xfrm_state** %2, align 8
  %18 = call i32 @esp_init_authenc(%struct.xfrm_state* %17)
  store i32 %18, i32* %5, align 4
  br label %19

19:                                               ; preds = %16, %13
  %20 = load i32, i32* %5, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %19
  br label %107

23:                                               ; preds = %19
  %24 = load %struct.xfrm_state*, %struct.xfrm_state** %2, align 8
  %25 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %24, i32 0, i32 3
  %26 = load %struct.crypto_aead*, %struct.crypto_aead** %25, align 8
  store %struct.crypto_aead* %26, %struct.crypto_aead** %3, align 8
  %27 = load %struct.crypto_aead*, %struct.crypto_aead** %3, align 8
  %28 = call i64 @crypto_aead_ivsize(%struct.crypto_aead* %27)
  %29 = add i64 4, %28
  %30 = load %struct.xfrm_state*, %struct.xfrm_state** %2, align 8
  %31 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 2
  store i64 %29, i64* %32, align 8
  %33 = load %struct.xfrm_state*, %struct.xfrm_state** %2, align 8
  %34 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @XFRM_MODE_TUNNEL, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %45

39:                                               ; preds = %23
  %40 = load %struct.xfrm_state*, %struct.xfrm_state** %2, align 8
  %41 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = add i64 %43, 4
  store i64 %44, i64* %42, align 8
  br label %67

45:                                               ; preds = %23
  %46 = load %struct.xfrm_state*, %struct.xfrm_state** %2, align 8
  %47 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @XFRM_MODE_BEET, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %66

52:                                               ; preds = %45
  %53 = load %struct.xfrm_state*, %struct.xfrm_state** %2, align 8
  %54 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %53, i32 0, i32 2
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @AF_INET6, align 8
  %58 = icmp ne i64 %56, %57
  br i1 %58, label %59, label %66

59:                                               ; preds = %52
  %60 = load i64, i64* @IPV4_BEET_PHMAXLEN, align 8
  %61 = load %struct.xfrm_state*, %struct.xfrm_state** %2, align 8
  %62 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 2
  %64 = load i64, i64* %63, align 8
  %65 = add nsw i64 %64, %60
  store i64 %65, i64* %63, align 8
  br label %66

66:                                               ; preds = %59, %52, %45
  br label %67

67:                                               ; preds = %66, %39
  %68 = load %struct.xfrm_state*, %struct.xfrm_state** %2, align 8
  %69 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %68, i32 0, i32 1
  %70 = load %struct.xfrm_encap_tmpl*, %struct.xfrm_encap_tmpl** %69, align 8
  %71 = icmp ne %struct.xfrm_encap_tmpl* %70, null
  br i1 %71, label %72, label %95

72:                                               ; preds = %67
  %73 = load %struct.xfrm_state*, %struct.xfrm_state** %2, align 8
  %74 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %73, i32 0, i32 1
  %75 = load %struct.xfrm_encap_tmpl*, %struct.xfrm_encap_tmpl** %74, align 8
  store %struct.xfrm_encap_tmpl* %75, %struct.xfrm_encap_tmpl** %6, align 8
  %76 = load %struct.xfrm_encap_tmpl*, %struct.xfrm_encap_tmpl** %6, align 8
  %77 = getelementptr inbounds %struct.xfrm_encap_tmpl, %struct.xfrm_encap_tmpl* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  switch i32 %78, label %79 [
    i32 129, label %82
    i32 128, label %88
  ]

79:                                               ; preds = %72
  %80 = load i32, i32* @EINVAL, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %5, align 4
  br label %107

82:                                               ; preds = %72
  %83 = load %struct.xfrm_state*, %struct.xfrm_state** %2, align 8
  %84 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 2
  %86 = load i64, i64* %85, align 8
  %87 = add i64 %86, 4
  store i64 %87, i64* %85, align 8
  br label %94

88:                                               ; preds = %72
  %89 = load %struct.xfrm_state*, %struct.xfrm_state** %2, align 8
  %90 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 2
  %92 = load i64, i64* %91, align 8
  %93 = add i64 %92, 20
  store i64 %93, i64* %91, align 8
  br label %94

94:                                               ; preds = %88, %82
  br label %95

95:                                               ; preds = %94, %67
  %96 = load %struct.crypto_aead*, %struct.crypto_aead** %3, align 8
  %97 = call i32 @crypto_aead_blocksize(%struct.crypto_aead* %96)
  %98 = call i64 @ALIGN(i32 %97, i32 4)
  store i64 %98, i64* %4, align 8
  %99 = load i64, i64* %4, align 8
  %100 = add nsw i64 %99, 1
  %101 = load %struct.crypto_aead*, %struct.crypto_aead** %3, align 8
  %102 = call i64 @crypto_aead_authsize(%struct.crypto_aead* %101)
  %103 = add nsw i64 %100, %102
  %104 = load %struct.xfrm_state*, %struct.xfrm_state** %2, align 8
  %105 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 1
  store i64 %103, i64* %106, align 8
  br label %107

107:                                              ; preds = %95, %79, %22
  %108 = load i32, i32* %5, align 4
  ret i32 %108
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
