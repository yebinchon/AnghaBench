; ModuleID = '/home/carl/AnghaBench/linux/net/tls/extr_tls_device.c_tls_append_frag.c'
source_filename = "/home/carl/AnghaBench/linux/net/tls/extr_tls_device.c_tls_append_frag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tls_record_info = type { i32, i32, i32* }
%struct.page_frag = type { i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tls_record_info*, %struct.page_frag*, i32)* @tls_append_frag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tls_append_frag(%struct.tls_record_info* %0, %struct.page_frag* %1, i32 %2) #0 {
  %4 = alloca %struct.tls_record_info*, align 8
  %5 = alloca %struct.page_frag*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  store %struct.tls_record_info* %0, %struct.tls_record_info** %4, align 8
  store %struct.page_frag* %1, %struct.page_frag** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.tls_record_info*, %struct.tls_record_info** %4, align 8
  %9 = getelementptr inbounds %struct.tls_record_info, %struct.tls_record_info* %8, i32 0, i32 2
  %10 = load i32*, i32** %9, align 8
  %11 = load %struct.tls_record_info*, %struct.tls_record_info** %4, align 8
  %12 = getelementptr inbounds %struct.tls_record_info, %struct.tls_record_info* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = sub nsw i32 %13, 1
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i32, i32* %10, i64 %15
  store i32* %16, i32** %7, align 8
  %17 = load i32*, i32** %7, align 8
  %18 = call i32 @skb_frag_page(i32* %17)
  %19 = load %struct.page_frag*, %struct.page_frag** %5, align 8
  %20 = getelementptr inbounds %struct.page_frag, %struct.page_frag* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = icmp eq i32 %18, %21
  br i1 %22, label %23, label %37

23:                                               ; preds = %3
  %24 = load i32*, i32** %7, align 8
  %25 = call i64 @skb_frag_off(i32* %24)
  %26 = load i32*, i32** %7, align 8
  %27 = call i64 @skb_frag_size(i32* %26)
  %28 = add nsw i64 %25, %27
  %29 = load %struct.page_frag*, %struct.page_frag** %5, align 8
  %30 = getelementptr inbounds %struct.page_frag, %struct.page_frag* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp eq i64 %28, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %23
  %34 = load i32*, i32** %7, align 8
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @skb_frag_size_add(i32* %34, i32 %35)
  br label %61

37:                                               ; preds = %23, %3
  %38 = load i32*, i32** %7, align 8
  %39 = getelementptr inbounds i32, i32* %38, i32 1
  store i32* %39, i32** %7, align 8
  %40 = load i32*, i32** %7, align 8
  %41 = load %struct.page_frag*, %struct.page_frag** %5, align 8
  %42 = getelementptr inbounds %struct.page_frag, %struct.page_frag* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @__skb_frag_set_page(i32* %40, i32 %43)
  %45 = load i32*, i32** %7, align 8
  %46 = load %struct.page_frag*, %struct.page_frag** %5, align 8
  %47 = getelementptr inbounds %struct.page_frag, %struct.page_frag* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = call i32 @skb_frag_off_set(i32* %45, i64 %48)
  %50 = load i32*, i32** %7, align 8
  %51 = load i32, i32* %6, align 4
  %52 = call i32 @skb_frag_size_set(i32* %50, i32 %51)
  %53 = load %struct.tls_record_info*, %struct.tls_record_info** %4, align 8
  %54 = getelementptr inbounds %struct.tls_record_info, %struct.tls_record_info* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %54, align 8
  %57 = load %struct.page_frag*, %struct.page_frag** %5, align 8
  %58 = getelementptr inbounds %struct.page_frag, %struct.page_frag* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @get_page(i32 %59)
  br label %61

61:                                               ; preds = %37, %33
  %62 = load i32, i32* %6, align 4
  %63 = sext i32 %62 to i64
  %64 = load %struct.page_frag*, %struct.page_frag** %5, align 8
  %65 = getelementptr inbounds %struct.page_frag, %struct.page_frag* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = add nsw i64 %66, %63
  store i64 %67, i64* %65, align 8
  %68 = load i32, i32* %6, align 4
  %69 = load %struct.tls_record_info*, %struct.tls_record_info** %4, align 8
  %70 = getelementptr inbounds %struct.tls_record_info, %struct.tls_record_info* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = add nsw i32 %71, %68
  store i32 %72, i32* %70, align 4
  ret void
}

declare dso_local i32 @skb_frag_page(i32*) #1

declare dso_local i64 @skb_frag_off(i32*) #1

declare dso_local i64 @skb_frag_size(i32*) #1

declare dso_local i32 @skb_frag_size_add(i32*, i32) #1

declare dso_local i32 @__skb_frag_set_page(i32*, i32) #1

declare dso_local i32 @skb_frag_off_set(i32*, i64) #1

declare dso_local i32 @skb_frag_size_set(i32*, i32) #1

declare dso_local i32 @get_page(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
