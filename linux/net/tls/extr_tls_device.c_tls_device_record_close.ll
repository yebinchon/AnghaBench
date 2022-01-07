; ModuleID = '/home/carl/AnghaBench/linux/net/tls/extr_tls_device.c_tls_device_record_close.c'
source_filename = "/home/carl/AnghaBench/linux/net/tls/extr_tls_device.c_tls_device_record_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.tls_context = type { %struct.tls_prot_info }
%struct.tls_prot_info = type { i32, i64, i32 }
%struct.tls_record_info = type { i64, i32* }
%struct.page_frag = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, %struct.tls_context*, %struct.tls_record_info*, %struct.page_frag*, i8)* @tls_device_record_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tls_device_record_close(%struct.sock* %0, %struct.tls_context* %1, %struct.tls_record_info* %2, %struct.page_frag* %3, i8 zeroext %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.sock*, align 8
  %8 = alloca %struct.tls_context*, align 8
  %9 = alloca %struct.tls_record_info*, align 8
  %10 = alloca %struct.page_frag*, align 8
  %11 = alloca i8, align 1
  %12 = alloca %struct.tls_prot_info*, align 8
  %13 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %7, align 8
  store %struct.tls_context* %1, %struct.tls_context** %8, align 8
  store %struct.tls_record_info* %2, %struct.tls_record_info** %9, align 8
  store %struct.page_frag* %3, %struct.page_frag** %10, align 8
  store i8 %4, i8* %11, align 1
  %14 = load %struct.tls_context*, %struct.tls_context** %8, align 8
  %15 = getelementptr inbounds %struct.tls_context, %struct.tls_context* %14, i32 0, i32 0
  store %struct.tls_prot_info* %15, %struct.tls_prot_info** %12, align 8
  %16 = load %struct.tls_prot_info*, %struct.tls_prot_info** %12, align 8
  %17 = getelementptr inbounds %struct.tls_prot_info, %struct.tls_prot_info* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.page_frag*, %struct.page_frag** %10, align 8
  %20 = load %struct.sock*, %struct.sock** %7, align 8
  %21 = getelementptr inbounds %struct.sock, %struct.sock* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @skb_page_frag_refill(i32 %18, %struct.page_frag* %19, i32 %22)
  %24 = call i64 @likely(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %5
  store i32 0, i32* %13, align 4
  %27 = load %struct.tls_record_info*, %struct.tls_record_info** %9, align 8
  %28 = load %struct.page_frag*, %struct.page_frag** %10, align 8
  %29 = load %struct.tls_prot_info*, %struct.tls_prot_info** %12, align 8
  %30 = getelementptr inbounds %struct.tls_prot_info, %struct.tls_prot_info* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @tls_append_frag(%struct.tls_record_info* %27, %struct.page_frag* %28, i32 %31)
  br label %48

33:                                               ; preds = %5
  %34 = load %struct.tls_prot_info*, %struct.tls_prot_info** %12, align 8
  %35 = getelementptr inbounds %struct.tls_prot_info, %struct.tls_prot_info* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  store i32 %36, i32* %13, align 4
  %37 = load %struct.tls_record_info*, %struct.tls_record_info** %9, align 8
  %38 = getelementptr inbounds %struct.tls_record_info, %struct.tls_record_info* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.tls_prot_info*, %struct.tls_prot_info** %12, align 8
  %41 = getelementptr inbounds %struct.tls_prot_info, %struct.tls_prot_info* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = icmp sle i64 %39, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %33
  %45 = load i32, i32* @ENOMEM, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %6, align 4
  br label %68

47:                                               ; preds = %33
  br label %48

48:                                               ; preds = %47, %26
  %49 = load %struct.tls_context*, %struct.tls_context** %8, align 8
  %50 = load %struct.tls_record_info*, %struct.tls_record_info** %9, align 8
  %51 = getelementptr inbounds %struct.tls_record_info, %struct.tls_record_info* %50, i32 0, i32 1
  %52 = load i32*, i32** %51, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 0
  %54 = call i32 @skb_frag_address(i32* %53)
  %55 = load %struct.tls_record_info*, %struct.tls_record_info** %9, align 8
  %56 = getelementptr inbounds %struct.tls_record_info, %struct.tls_record_info* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.tls_prot_info*, %struct.tls_prot_info** %12, align 8
  %59 = getelementptr inbounds %struct.tls_prot_info, %struct.tls_prot_info* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = sub nsw i64 %57, %60
  %62 = load i8, i8* %11, align 1
  %63 = load %struct.tls_prot_info*, %struct.tls_prot_info** %12, align 8
  %64 = getelementptr inbounds %struct.tls_prot_info, %struct.tls_prot_info* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @tls_fill_prepend(%struct.tls_context* %49, i32 %54, i64 %61, i8 zeroext %62, i32 %65)
  %67 = load i32, i32* %13, align 4
  store i32 %67, i32* %6, align 4
  br label %68

68:                                               ; preds = %48, %44
  %69 = load i32, i32* %6, align 4
  ret i32 %69
}

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @skb_page_frag_refill(i32, %struct.page_frag*, i32) #1

declare dso_local i32 @tls_append_frag(%struct.tls_record_info*, %struct.page_frag*, i32) #1

declare dso_local i32 @tls_fill_prepend(%struct.tls_context*, i32, i64, i8 zeroext, i32) #1

declare dso_local i32 @skb_frag_address(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
