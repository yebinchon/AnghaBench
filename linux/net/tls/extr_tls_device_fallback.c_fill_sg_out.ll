; ModuleID = '/home/carl/AnghaBench/linux/net/tls/extr_tls_device_fallback.c_fill_sg_out.c'
source_filename = "/home/carl/AnghaBench/linux/net/tls/extr_tls_device_fallback.c_fill_sg_out.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scatterlist = type { i32 }
%struct.tls_context = type { i32 }
%struct.sk_buff = type { i8* }

@TLS_CIPHER_AES_GCM_128_TAG_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.scatterlist*, i8*, %struct.tls_context*, %struct.sk_buff*, i32, i32, i32, i8*)* @fill_sg_out to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fill_sg_out(%struct.scatterlist* %0, i8* %1, %struct.tls_context* %2, %struct.sk_buff* %3, i32 %4, i32 %5, i32 %6, i8* %7) #0 {
  %9 = alloca %struct.scatterlist*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.tls_context*, align 8
  %12 = alloca %struct.sk_buff*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  store %struct.scatterlist* %0, %struct.scatterlist** %9, align 8
  store i8* %1, i8** %10, align 8
  store %struct.tls_context* %2, %struct.tls_context** %11, align 8
  store %struct.sk_buff* %3, %struct.sk_buff** %12, align 8
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i8* %7, i8** %16, align 8
  %17 = load %struct.scatterlist*, %struct.scatterlist** %9, align 8
  %18 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %17, i64 0
  %19 = load i8*, i8** %16, align 8
  %20 = load i32, i32* %15, align 4
  %21 = call i32 @sg_set_buf(%struct.scatterlist* %18, i8* %19, i32 %20)
  %22 = load %struct.scatterlist*, %struct.scatterlist** %9, align 8
  %23 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %22, i64 1
  %24 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %25 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  %27 = load i32, i32* %13, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr i8, i8* %26, i64 %28
  %30 = load i32, i32* %14, align 4
  %31 = call i32 @sg_set_buf(%struct.scatterlist* %23, i8* %29, i32 %30)
  %32 = load i32, i32* %15, align 4
  %33 = load i8*, i8** %16, align 8
  %34 = sext i32 %32 to i64
  %35 = getelementptr i8, i8* %33, i64 %34
  store i8* %35, i8** %16, align 8
  %36 = load %struct.scatterlist*, %struct.scatterlist** %9, align 8
  %37 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %36, i64 2
  %38 = load i8*, i8** %16, align 8
  %39 = load i32, i32* @TLS_CIPHER_AES_GCM_128_TAG_SIZE, align 4
  %40 = call i32 @sg_set_buf(%struct.scatterlist* %37, i8* %38, i32 %39)
  ret void
}

declare dso_local i32 @sg_set_buf(%struct.scatterlist*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
