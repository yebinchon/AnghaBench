; ModuleID = '/home/carl/AnghaBench/linux/net/tls/extr_tls_device.c_tls_do_allocation.c'
source_filename = "/home/carl/AnghaBench/linux/net/tls/extr_tls_device.c_tls_do_allocation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 (%struct.sock*)* }
%struct.tls_offload_context_tx = type { i32 }
%struct.page_frag = type { i64, i64 }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, %struct.tls_offload_context_tx*, %struct.page_frag*, i64)* @tls_do_allocation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tls_do_allocation(%struct.sock* %0, %struct.tls_offload_context_tx* %1, %struct.page_frag* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sock*, align 8
  %7 = alloca %struct.tls_offload_context_tx*, align 8
  %8 = alloca %struct.page_frag*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %6, align 8
  store %struct.tls_offload_context_tx* %1, %struct.tls_offload_context_tx** %7, align 8
  store %struct.page_frag* %2, %struct.page_frag** %8, align 8
  store i64 %3, i64* %9, align 8
  %11 = load %struct.tls_offload_context_tx*, %struct.tls_offload_context_tx** %7, align 8
  %12 = getelementptr inbounds %struct.tls_offload_context_tx, %struct.tls_offload_context_tx* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %58, label %15

15:                                               ; preds = %4
  %16 = load i64, i64* %9, align 8
  %17 = load %struct.page_frag*, %struct.page_frag** %8, align 8
  %18 = load %struct.sock*, %struct.sock** %6, align 8
  %19 = getelementptr inbounds %struct.sock, %struct.sock* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @skb_page_frag_refill(i64 %16, %struct.page_frag* %17, i32 %20)
  %22 = icmp ne i32 %21, 0
  %23 = xor i1 %22, true
  %24 = zext i1 %23 to i32
  %25 = call i64 @unlikely(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %39

27:                                               ; preds = %15
  %28 = load %struct.sock*, %struct.sock** %6, align 8
  %29 = getelementptr inbounds %struct.sock, %struct.sock* %28, i32 0, i32 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32 (%struct.sock*)*, i32 (%struct.sock*)** %31, align 8
  %33 = load %struct.sock*, %struct.sock** %6, align 8
  %34 = call i32 %32(%struct.sock* %33)
  %35 = load %struct.sock*, %struct.sock** %6, align 8
  %36 = call i32 @sk_stream_moderate_sndbuf(%struct.sock* %35)
  %37 = load i32, i32* @ENOMEM, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %5, align 4
  br label %67

39:                                               ; preds = %15
  %40 = load %struct.tls_offload_context_tx*, %struct.tls_offload_context_tx** %7, align 8
  %41 = load %struct.page_frag*, %struct.page_frag** %8, align 8
  %42 = load i64, i64* %9, align 8
  %43 = call i32 @tls_create_new_record(%struct.tls_offload_context_tx* %40, %struct.page_frag* %41, i64 %42)
  store i32 %43, i32* %10, align 4
  %44 = load i32, i32* %10, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %39
  %47 = load i32, i32* %10, align 4
  store i32 %47, i32* %5, align 4
  br label %67

48:                                               ; preds = %39
  %49 = load %struct.page_frag*, %struct.page_frag** %8, align 8
  %50 = getelementptr inbounds %struct.page_frag, %struct.page_frag* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.page_frag*, %struct.page_frag** %8, align 8
  %53 = getelementptr inbounds %struct.page_frag, %struct.page_frag* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = icmp sgt i64 %51, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %48
  store i32 0, i32* %5, align 4
  br label %67

57:                                               ; preds = %48
  br label %58

58:                                               ; preds = %57, %4
  %59 = load %struct.sock*, %struct.sock** %6, align 8
  %60 = load %struct.page_frag*, %struct.page_frag** %8, align 8
  %61 = call i32 @sk_page_frag_refill(%struct.sock* %59, %struct.page_frag* %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %66, label %63

63:                                               ; preds = %58
  %64 = load i32, i32* @ENOMEM, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %5, align 4
  br label %67

66:                                               ; preds = %58
  store i32 0, i32* %5, align 4
  br label %67

67:                                               ; preds = %66, %63, %56, %46, %27
  %68 = load i32, i32* %5, align 4
  ret i32 %68
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @skb_page_frag_refill(i64, %struct.page_frag*, i32) #1

declare dso_local i32 @sk_stream_moderate_sndbuf(%struct.sock*) #1

declare dso_local i32 @tls_create_new_record(%struct.tls_offload_context_tx*, %struct.page_frag*, i64) #1

declare dso_local i32 @sk_page_frag_refill(%struct.sock*, %struct.page_frag*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
