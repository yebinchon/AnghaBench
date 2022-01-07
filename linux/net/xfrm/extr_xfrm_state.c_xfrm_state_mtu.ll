; ModuleID = '/home/carl/AnghaBench/linux/net/xfrm/extr_xfrm_state.c_xfrm_state_mtu.c'
source_filename = "/home/carl/AnghaBench/linux/net/xfrm/extr_xfrm_state.c_xfrm_state_mtu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfrm_state = type { %struct.TYPE_4__, %struct.crypto_aead*, %struct.TYPE_3__, i32 }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.crypto_aead = type { i32 }
%struct.TYPE_3__ = type { i64 }
%struct.xfrm_type = type { i64 }

@XFRM_STATE_VALID = common dso_local global i64 0, align 8
@IPPROTO_ESP = common dso_local global i64 0, align 8
@AF_INET = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfrm_state_mtu(%struct.xfrm_state* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.xfrm_state*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.xfrm_type*, align 8
  %7 = alloca %struct.crypto_aead*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.xfrm_state* %0, %struct.xfrm_state** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.xfrm_state*, %struct.xfrm_state** %4, align 8
  %11 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 8
  %13 = call %struct.xfrm_type* @READ_ONCE(i32 %12)
  store %struct.xfrm_type* %13, %struct.xfrm_type** %6, align 8
  store i32 0, i32* %9, align 4
  %14 = load %struct.xfrm_state*, %struct.xfrm_state** %4, align 8
  %15 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @XFRM_STATE_VALID, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %29, label %20

20:                                               ; preds = %2
  %21 = load %struct.xfrm_type*, %struct.xfrm_type** %6, align 8
  %22 = icmp ne %struct.xfrm_type* %21, null
  br i1 %22, label %23, label %29

23:                                               ; preds = %20
  %24 = load %struct.xfrm_type*, %struct.xfrm_type** %6, align 8
  %25 = getelementptr inbounds %struct.xfrm_type, %struct.xfrm_type* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @IPPROTO_ESP, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %36

29:                                               ; preds = %23, %20, %2
  %30 = load i32, i32* %5, align 4
  %31 = load %struct.xfrm_state*, %struct.xfrm_state** %4, align 8
  %32 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = sub nsw i32 %30, %34
  store i32 %35, i32* %3, align 4
  br label %87

36:                                               ; preds = %23
  %37 = load %struct.xfrm_state*, %struct.xfrm_state** %4, align 8
  %38 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %37, i32 0, i32 1
  %39 = load %struct.crypto_aead*, %struct.crypto_aead** %38, align 8
  store %struct.crypto_aead* %39, %struct.crypto_aead** %7, align 8
  %40 = load %struct.crypto_aead*, %struct.crypto_aead** %7, align 8
  %41 = call i32 @crypto_aead_blocksize(%struct.crypto_aead* %40)
  %42 = call i32 @ALIGN(i32 %41, i32 4)
  store i32 %42, i32* %8, align 4
  %43 = load %struct.xfrm_state*, %struct.xfrm_state** %4, align 8
  %44 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  switch i32 %46, label %66 [
    i32 129, label %47
    i32 130, label %47
    i32 128, label %65
  ]

47:                                               ; preds = %36, %36
  %48 = load %struct.xfrm_state*, %struct.xfrm_state** %4, align 8
  %49 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @AF_INET, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %47
  store i32 4, i32* %9, align 4
  br label %64

55:                                               ; preds = %47
  %56 = load %struct.xfrm_state*, %struct.xfrm_state** %4, align 8
  %57 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @AF_INET6, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %55
  store i32 4, i32* %9, align 4
  br label %63

63:                                               ; preds = %62, %55
  br label %64

64:                                               ; preds = %63, %54
  br label %68

65:                                               ; preds = %36
  br label %68

66:                                               ; preds = %36
  %67 = call i32 @WARN_ON_ONCE(i32 1)
  br label %68

68:                                               ; preds = %66, %65, %64
  %69 = load i32, i32* %5, align 4
  %70 = load %struct.xfrm_state*, %struct.xfrm_state** %4, align 8
  %71 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = sub nsw i32 %69, %73
  %75 = load %struct.crypto_aead*, %struct.crypto_aead** %7, align 8
  %76 = call i32 @crypto_aead_authsize(%struct.crypto_aead* %75)
  %77 = sub nsw i32 %74, %76
  %78 = load i32, i32* %9, align 4
  %79 = sub nsw i32 %77, %78
  %80 = load i32, i32* %8, align 4
  %81 = sub nsw i32 %80, 1
  %82 = xor i32 %81, -1
  %83 = and i32 %79, %82
  %84 = load i32, i32* %9, align 4
  %85 = add nsw i32 %83, %84
  %86 = sub nsw i32 %85, 2
  store i32 %86, i32* %3, align 4
  br label %87

87:                                               ; preds = %68, %29
  %88 = load i32, i32* %3, align 4
  ret i32 %88
}

declare dso_local %struct.xfrm_type* @READ_ONCE(i32) #1

declare dso_local i32 @ALIGN(i32, i32) #1

declare dso_local i32 @crypto_aead_blocksize(%struct.crypto_aead*) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @crypto_aead_authsize(%struct.crypto_aead*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
