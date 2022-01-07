; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_esp4.c_esp_ssg_unref.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_esp4.c_esp_ssg_unref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfrm_state = type { %struct.TYPE_2__, %struct.crypto_aead* }
%struct.TYPE_2__ = type { i32 }
%struct.crypto_aead = type { i32 }
%struct.esp_output_extra = type { i32 }
%struct.aead_request = type { i64, i64 }
%struct.scatterlist = type { i32 }

@XFRM_STATE_ESN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xfrm_state*, i8*)* @esp_ssg_unref to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @esp_ssg_unref(%struct.xfrm_state* %0, i8* %1) #0 {
  %3 = alloca %struct.xfrm_state*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.esp_output_extra*, align 8
  %6 = alloca %struct.crypto_aead*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.aead_request*, align 8
  %10 = alloca %struct.scatterlist*, align 8
  store %struct.xfrm_state* %0, %struct.xfrm_state** %3, align 8
  store i8* %1, i8** %4, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = call %struct.esp_output_extra* @esp_tmp_extra(i8* %11)
  store %struct.esp_output_extra* %12, %struct.esp_output_extra** %5, align 8
  %13 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %14 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %13, i32 0, i32 1
  %15 = load %struct.crypto_aead*, %struct.crypto_aead** %14, align 8
  store %struct.crypto_aead* %15, %struct.crypto_aead** %6, align 8
  store i32 0, i32* %7, align 4
  %16 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %17 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @XFRM_STATE_ESN, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %2
  %24 = load i32, i32* %7, align 4
  %25 = sext i32 %24 to i64
  %26 = add i64 %25, 4
  %27 = trunc i64 %26 to i32
  store i32 %27, i32* %7, align 4
  br label %28

28:                                               ; preds = %23, %2
  %29 = load i8*, i8** %4, align 8
  %30 = call %struct.esp_output_extra* @esp_tmp_extra(i8* %29)
  store %struct.esp_output_extra* %30, %struct.esp_output_extra** %5, align 8
  %31 = load %struct.crypto_aead*, %struct.crypto_aead** %6, align 8
  %32 = load i8*, i8** %4, align 8
  %33 = load i32, i32* %7, align 4
  %34 = call i32* @esp_tmp_iv(%struct.crypto_aead* %31, i8* %32, i32 %33)
  store i32* %34, i32** %8, align 8
  %35 = load %struct.crypto_aead*, %struct.crypto_aead** %6, align 8
  %36 = load i32*, i32** %8, align 8
  %37 = call %struct.aead_request* @esp_tmp_req(%struct.crypto_aead* %35, i32* %36)
  store %struct.aead_request* %37, %struct.aead_request** %9, align 8
  %38 = load %struct.aead_request*, %struct.aead_request** %9, align 8
  %39 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.aead_request*, %struct.aead_request** %9, align 8
  %42 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %40, %43
  br i1 %44, label %45, label %62

45:                                               ; preds = %28
  %46 = load %struct.aead_request*, %struct.aead_request** %9, align 8
  %47 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = inttoptr i64 %48 to %struct.scatterlist*
  %50 = call %struct.scatterlist* @sg_next(%struct.scatterlist* %49)
  store %struct.scatterlist* %50, %struct.scatterlist** %10, align 8
  br label %51

51:                                               ; preds = %58, %45
  %52 = load %struct.scatterlist*, %struct.scatterlist** %10, align 8
  %53 = icmp ne %struct.scatterlist* %52, null
  br i1 %53, label %54, label %61

54:                                               ; preds = %51
  %55 = load %struct.scatterlist*, %struct.scatterlist** %10, align 8
  %56 = call i32 @sg_page(%struct.scatterlist* %55)
  %57 = call i32 @put_page(i32 %56)
  br label %58

58:                                               ; preds = %54
  %59 = load %struct.scatterlist*, %struct.scatterlist** %10, align 8
  %60 = call %struct.scatterlist* @sg_next(%struct.scatterlist* %59)
  store %struct.scatterlist* %60, %struct.scatterlist** %10, align 8
  br label %51

61:                                               ; preds = %51
  br label %62

62:                                               ; preds = %61, %28
  ret void
}

declare dso_local %struct.esp_output_extra* @esp_tmp_extra(i8*) #1

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
