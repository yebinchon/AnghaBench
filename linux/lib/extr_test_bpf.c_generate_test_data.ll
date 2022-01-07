; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_test_bpf.c_generate_test_data.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_test_bpf.c_generate_test_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_test = type { i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.sk_buff = type opaque
%struct.page = type { i32 }

@FLAG_NO_DATA = common dso_local global i32 0, align 4
@FLAG_SKB_FRAG = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@MAX_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.bpf_test*, i32)* @generate_test_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @generate_test_data(%struct.bpf_test* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.bpf_test*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.page*, align 8
  %8 = alloca i8*, align 8
  store %struct.bpf_test* %0, %struct.bpf_test** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.bpf_test*, %struct.bpf_test** %4, align 8
  %10 = getelementptr inbounds %struct.bpf_test, %struct.bpf_test* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @FLAG_NO_DATA, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store i8* null, i8** %3, align 8
  br label %77

16:                                               ; preds = %2
  %17 = load %struct.bpf_test*, %struct.bpf_test** %4, align 8
  %18 = getelementptr inbounds %struct.bpf_test, %struct.bpf_test* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.bpf_test*, %struct.bpf_test** %4, align 8
  %21 = getelementptr inbounds %struct.bpf_test, %struct.bpf_test* %20, i32 0, i32 2
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = load i32, i32* %5, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i8* @populate_skb(i32 %19, i32 %27)
  %29 = bitcast i8* %28 to %struct.sk_buff*
  store %struct.sk_buff* %29, %struct.sk_buff** %6, align 8
  %30 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %31 = icmp ne %struct.sk_buff* %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %16
  store i8* null, i8** %3, align 8
  br label %77

33:                                               ; preds = %16
  %34 = load %struct.bpf_test*, %struct.bpf_test** %4, align 8
  %35 = getelementptr inbounds %struct.bpf_test, %struct.bpf_test* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @FLAG_SKB_FRAG, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %67

40:                                               ; preds = %33
  %41 = load i32, i32* @GFP_KERNEL, align 4
  %42 = call %struct.page* @alloc_page(i32 %41)
  store %struct.page* %42, %struct.page** %7, align 8
  %43 = load %struct.page*, %struct.page** %7, align 8
  %44 = icmp ne %struct.page* %43, null
  br i1 %44, label %46, label %45

45:                                               ; preds = %40
  br label %73

46:                                               ; preds = %40
  %47 = load %struct.page*, %struct.page** %7, align 8
  %48 = call i8* @kmap(%struct.page* %47)
  store i8* %48, i8** %8, align 8
  %49 = load i8*, i8** %8, align 8
  %50 = icmp ne i8* %49, null
  br i1 %50, label %52, label %51

51:                                               ; preds = %46
  br label %70

52:                                               ; preds = %46
  %53 = load i8*, i8** %8, align 8
  %54 = load %struct.bpf_test*, %struct.bpf_test** %4, align 8
  %55 = getelementptr inbounds %struct.bpf_test, %struct.bpf_test* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @MAX_DATA, align 4
  %58 = call i32 @memcpy(i8* %53, i32 %56, i32 %57)
  %59 = load %struct.page*, %struct.page** %7, align 8
  %60 = call i32 @kunmap(%struct.page* %59)
  %61 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %62 = bitcast %struct.sk_buff* %61 to i8*
  %63 = load %struct.page*, %struct.page** %7, align 8
  %64 = load i32, i32* @MAX_DATA, align 4
  %65 = load i32, i32* @MAX_DATA, align 4
  %66 = call i32 @skb_add_rx_frag(i8* %62, i32 0, %struct.page* %63, i32 0, i32 %64, i32 %65)
  br label %67

67:                                               ; preds = %52, %33
  %68 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %69 = bitcast %struct.sk_buff* %68 to i8*
  store i8* %69, i8** %3, align 8
  br label %77

70:                                               ; preds = %51
  %71 = load %struct.page*, %struct.page** %7, align 8
  %72 = call i32 @__free_page(%struct.page* %71)
  br label %73

73:                                               ; preds = %70, %45
  %74 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %75 = bitcast %struct.sk_buff* %74 to i8*
  %76 = call i32 @kfree_skb(i8* %75)
  store i8* null, i8** %3, align 8
  br label %77

77:                                               ; preds = %73, %67, %32, %15
  %78 = load i8*, i8** %3, align 8
  ret i8* %78
}

declare dso_local i8* @populate_skb(i32, i32) #1

declare dso_local %struct.page* @alloc_page(i32) #1

declare dso_local i8* @kmap(%struct.page*) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

declare dso_local i32 @kunmap(%struct.page*) #1

declare dso_local i32 @skb_add_rx_frag(i8*, i32, %struct.page*, i32, i32, i32) #1

declare dso_local i32 @__free_page(%struct.page*) #1

declare dso_local i32 @kfree_skb(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
