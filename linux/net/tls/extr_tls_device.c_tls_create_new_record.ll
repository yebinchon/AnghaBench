; ModuleID = '/home/carl/AnghaBench/linux/net/tls/extr_tls_device.c_tls_create_new_record.c'
source_filename = "/home/carl/AnghaBench/linux/net/tls/extr_tls_device.c_tls_create_new_record.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tls_offload_context_tx = type { %struct.tls_record_info* }
%struct.tls_record_info = type { i32, i64, i32* }
%struct.page_frag = type { i64, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tls_offload_context_tx*, %struct.page_frag*, i64)* @tls_create_new_record to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tls_create_new_record(%struct.tls_offload_context_tx* %0, %struct.page_frag* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.tls_offload_context_tx*, align 8
  %6 = alloca %struct.page_frag*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.tls_record_info*, align 8
  %9 = alloca i32*, align 8
  store %struct.tls_offload_context_tx* %0, %struct.tls_offload_context_tx** %5, align 8
  store %struct.page_frag* %1, %struct.page_frag** %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.tls_record_info* @kmalloc(i32 24, i32 %10)
  store %struct.tls_record_info* %11, %struct.tls_record_info** %8, align 8
  %12 = load %struct.tls_record_info*, %struct.tls_record_info** %8, align 8
  %13 = icmp ne %struct.tls_record_info* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %3
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %4, align 4
  br label %52

17:                                               ; preds = %3
  %18 = load %struct.tls_record_info*, %struct.tls_record_info** %8, align 8
  %19 = getelementptr inbounds %struct.tls_record_info, %struct.tls_record_info* %18, i32 0, i32 2
  %20 = load i32*, i32** %19, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 0
  store i32* %21, i32** %9, align 8
  %22 = load i32*, i32** %9, align 8
  %23 = load %struct.page_frag*, %struct.page_frag** %6, align 8
  %24 = getelementptr inbounds %struct.page_frag, %struct.page_frag* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @__skb_frag_set_page(i32* %22, i32 %25)
  %27 = load i32*, i32** %9, align 8
  %28 = load %struct.page_frag*, %struct.page_frag** %6, align 8
  %29 = getelementptr inbounds %struct.page_frag, %struct.page_frag* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = call i32 @skb_frag_off_set(i32* %27, i64 %30)
  %32 = load i32*, i32** %9, align 8
  %33 = load i64, i64* %7, align 8
  %34 = call i32 @skb_frag_size_set(i32* %32, i64 %33)
  %35 = load %struct.page_frag*, %struct.page_frag** %6, align 8
  %36 = getelementptr inbounds %struct.page_frag, %struct.page_frag* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @get_page(i32 %37)
  %39 = load i64, i64* %7, align 8
  %40 = load %struct.page_frag*, %struct.page_frag** %6, align 8
  %41 = getelementptr inbounds %struct.page_frag, %struct.page_frag* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = add i64 %42, %39
  store i64 %43, i64* %41, align 8
  %44 = load %struct.tls_record_info*, %struct.tls_record_info** %8, align 8
  %45 = getelementptr inbounds %struct.tls_record_info, %struct.tls_record_info* %44, i32 0, i32 0
  store i32 1, i32* %45, align 8
  %46 = load i64, i64* %7, align 8
  %47 = load %struct.tls_record_info*, %struct.tls_record_info** %8, align 8
  %48 = getelementptr inbounds %struct.tls_record_info, %struct.tls_record_info* %47, i32 0, i32 1
  store i64 %46, i64* %48, align 8
  %49 = load %struct.tls_record_info*, %struct.tls_record_info** %8, align 8
  %50 = load %struct.tls_offload_context_tx*, %struct.tls_offload_context_tx** %5, align 8
  %51 = getelementptr inbounds %struct.tls_offload_context_tx, %struct.tls_offload_context_tx* %50, i32 0, i32 0
  store %struct.tls_record_info* %49, %struct.tls_record_info** %51, align 8
  store i32 0, i32* %4, align 4
  br label %52

52:                                               ; preds = %17, %14
  %53 = load i32, i32* %4, align 4
  ret i32 %53
}

declare dso_local %struct.tls_record_info* @kmalloc(i32, i32) #1

declare dso_local i32 @__skb_frag_set_page(i32*, i32) #1

declare dso_local i32 @skb_frag_off_set(i32*, i64) #1

declare dso_local i32 @skb_frag_size_set(i32*, i64) #1

declare dso_local i32 @get_page(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
