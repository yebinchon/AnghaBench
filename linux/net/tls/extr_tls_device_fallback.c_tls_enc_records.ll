; ModuleID = '/home/carl/AnghaBench/linux/net/tls/extr_tls_device_fallback.c_tls_enc_records.c'
source_filename = "/home/carl/AnghaBench/linux/net/tls/extr_tls_device_fallback.c_tls_enc_records.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aead_request = type { i32 }
%struct.crypto_aead = type { i32 }
%struct.scatterlist = type { i32 }
%struct.scatter_walk = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aead_request*, %struct.crypto_aead*, %struct.scatterlist*, %struct.scatterlist*, i8*, i8*, i32, i32)* @tls_enc_records to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tls_enc_records(%struct.aead_request* %0, %struct.crypto_aead* %1, %struct.scatterlist* %2, %struct.scatterlist* %3, i8* %4, i8* %5, i32 %6, i32 %7) #0 {
  %9 = alloca %struct.aead_request*, align 8
  %10 = alloca %struct.crypto_aead*, align 8
  %11 = alloca %struct.scatterlist*, align 8
  %12 = alloca %struct.scatterlist*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.scatter_walk, align 4
  %18 = alloca %struct.scatter_walk, align 4
  %19 = alloca i32, align 4
  store %struct.aead_request* %0, %struct.aead_request** %9, align 8
  store %struct.crypto_aead* %1, %struct.crypto_aead** %10, align 8
  store %struct.scatterlist* %2, %struct.scatterlist** %11, align 8
  store %struct.scatterlist* %3, %struct.scatterlist** %12, align 8
  store i8* %4, i8** %13, align 8
  store i8* %5, i8** %14, align 8
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  %20 = load %struct.scatterlist*, %struct.scatterlist** %11, align 8
  %21 = call i32 @scatterwalk_start(%struct.scatter_walk* %18, %struct.scatterlist* %20)
  %22 = load %struct.scatterlist*, %struct.scatterlist** %12, align 8
  %23 = call i32 @scatterwalk_start(%struct.scatter_walk* %17, %struct.scatterlist* %22)
  br label %24

24:                                               ; preds = %40, %8
  %25 = load %struct.aead_request*, %struct.aead_request** %9, align 8
  %26 = load %struct.crypto_aead*, %struct.crypto_aead** %10, align 8
  %27 = load i8*, i8** %13, align 8
  %28 = load i8*, i8** %14, align 8
  %29 = load i32, i32* %15, align 4
  %30 = call i32 @cpu_to_be64(i32 %29)
  %31 = call i32 @tls_enc_record(%struct.aead_request* %25, %struct.crypto_aead* %26, i8* %27, i8* %28, i32 %30, %struct.scatter_walk* %18, %struct.scatter_walk* %17, i32* %16)
  store i32 %31, i32* %19, align 4
  %32 = load i32, i32* %15, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %15, align 4
  br label %34

34:                                               ; preds = %24
  %35 = load i32, i32* %19, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %34
  %38 = load i32, i32* %16, align 4
  %39 = icmp ne i32 %38, 0
  br label %40

40:                                               ; preds = %37, %34
  %41 = phi i1 [ false, %34 ], [ %39, %37 ]
  br i1 %41, label %24, label %42

42:                                               ; preds = %40
  %43 = call i32 @scatterwalk_done(%struct.scatter_walk* %18, i32 0, i32 0)
  %44 = call i32 @scatterwalk_done(%struct.scatter_walk* %17, i32 1, i32 0)
  %45 = load i32, i32* %19, align 4
  ret i32 %45
}

declare dso_local i32 @scatterwalk_start(%struct.scatter_walk*, %struct.scatterlist*) #1

declare dso_local i32 @tls_enc_record(%struct.aead_request*, %struct.crypto_aead*, i8*, i8*, i32, %struct.scatter_walk*, %struct.scatter_walk*, i32*) #1

declare dso_local i32 @cpu_to_be64(i32) #1

declare dso_local i32 @scatterwalk_done(%struct.scatter_walk*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
