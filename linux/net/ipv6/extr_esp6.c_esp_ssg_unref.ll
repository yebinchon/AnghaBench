; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_esp6.c_esp_ssg_unref.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_esp6.c_esp_ssg_unref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfrm_state = type { %struct.TYPE_2__, %struct.crypto_aead* }
%struct.TYPE_2__ = type { i32 }
%struct.crypto_aead = type { i32 }
%struct.aead_request = type { i64, i64 }
%struct.scatterlist = type { i32 }

@XFRM_STATE_ESN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xfrm_state*, i8*)* @esp_ssg_unref to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @esp_ssg_unref(%struct.xfrm_state* %0, i8* %1) #0 {
  %3 = alloca %struct.xfrm_state*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.crypto_aead*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.aead_request*, align 8
  %9 = alloca %struct.scatterlist*, align 8
  store %struct.xfrm_state* %0, %struct.xfrm_state** %3, align 8
  store i8* %1, i8** %4, align 8
  %10 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %11 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %10, i32 0, i32 1
  %12 = load %struct.crypto_aead*, %struct.crypto_aead** %11, align 8
  store %struct.crypto_aead* %12, %struct.crypto_aead** %5, align 8
  store i32 0, i32* %6, align 4
  %13 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %14 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @XFRM_STATE_ESN, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %2
  %21 = load i32, i32* %6, align 4
  %22 = sext i32 %21 to i64
  %23 = add i64 %22, 4
  %24 = trunc i64 %23 to i32
  store i32 %24, i32* %6, align 4
  br label %25

25:                                               ; preds = %20, %2
  %26 = load %struct.crypto_aead*, %struct.crypto_aead** %5, align 8
  %27 = load i8*, i8** %4, align 8
  %28 = load i32, i32* %6, align 4
  %29 = call i32* @esp_tmp_iv(%struct.crypto_aead* %26, i8* %27, i32 %28)
  store i32* %29, i32** %7, align 8
  %30 = load %struct.crypto_aead*, %struct.crypto_aead** %5, align 8
  %31 = load i32*, i32** %7, align 8
  %32 = call %struct.aead_request* @esp_tmp_req(%struct.crypto_aead* %30, i32* %31)
  store %struct.aead_request* %32, %struct.aead_request** %8, align 8
  %33 = load %struct.aead_request*, %struct.aead_request** %8, align 8
  %34 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.aead_request*, %struct.aead_request** %8, align 8
  %37 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %35, %38
  br i1 %39, label %40, label %57

40:                                               ; preds = %25
  %41 = load %struct.aead_request*, %struct.aead_request** %8, align 8
  %42 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = inttoptr i64 %43 to %struct.scatterlist*
  %45 = call %struct.scatterlist* @sg_next(%struct.scatterlist* %44)
  store %struct.scatterlist* %45, %struct.scatterlist** %9, align 8
  br label %46

46:                                               ; preds = %53, %40
  %47 = load %struct.scatterlist*, %struct.scatterlist** %9, align 8
  %48 = icmp ne %struct.scatterlist* %47, null
  br i1 %48, label %49, label %56

49:                                               ; preds = %46
  %50 = load %struct.scatterlist*, %struct.scatterlist** %9, align 8
  %51 = call i32 @sg_page(%struct.scatterlist* %50)
  %52 = call i32 @put_page(i32 %51)
  br label %53

53:                                               ; preds = %49
  %54 = load %struct.scatterlist*, %struct.scatterlist** %9, align 8
  %55 = call %struct.scatterlist* @sg_next(%struct.scatterlist* %54)
  store %struct.scatterlist* %55, %struct.scatterlist** %9, align 8
  br label %46

56:                                               ; preds = %46
  br label %57

57:                                               ; preds = %56, %25
  ret void
}

declare dso_local i32* @esp_tmp_iv(%struct.crypto_aead*, i8*, i32) #1

declare dso_local %struct.aead_request* @esp_tmp_req(%struct.crypto_aead*, i32*) #1

declare dso_local %struct.scatterlist* @sg_next(%struct.scatterlist*) #1

declare dso_local i32 @put_page(i32) #1

declare dso_local i32 @sg_page(%struct.scatterlist*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
