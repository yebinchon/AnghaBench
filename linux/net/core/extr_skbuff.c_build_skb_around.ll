; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_skbuff.c_build_skb_around.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_skbuff.c_build_skb_around.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sk_buff* @build_skb_around(%struct.sk_buff* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %9 = icmp ne %struct.sk_buff* %8, null
  %10 = xor i1 %9, true
  %11 = zext i1 %10 to i32
  %12 = call i64 @unlikely(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  store %struct.sk_buff* null, %struct.sk_buff** %4, align 8
  br label %38

15:                                               ; preds = %3
  %16 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %17 = load i8*, i8** %6, align 8
  %18 = load i32, i32* %7, align 4
  %19 = call %struct.sk_buff* @__build_skb_around(%struct.sk_buff* %16, i8* %17, i32 %18)
  store %struct.sk_buff* %19, %struct.sk_buff** %5, align 8
  %20 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %21 = icmp ne %struct.sk_buff* %20, null
  br i1 %21, label %22, label %36

22:                                               ; preds = %15
  %23 = load i32, i32* %7, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %36

25:                                               ; preds = %22
  %26 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %27 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %26, i32 0, i32 0
  store i32 1, i32* %27, align 4
  %28 = load i8*, i8** %6, align 8
  %29 = call i32 @virt_to_head_page(i8* %28)
  %30 = call i64 @page_is_pfmemalloc(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %25
  %33 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %34 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %33, i32 0, i32 1
  store i32 1, i32* %34, align 4
  br label %35

35:                                               ; preds = %32, %25
  br label %36

36:                                               ; preds = %35, %22, %15
  %37 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  store %struct.sk_buff* %37, %struct.sk_buff** %4, align 8
  br label %38

38:                                               ; preds = %36, %14
  %39 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  ret %struct.sk_buff* %39
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.sk_buff* @__build_skb_around(%struct.sk_buff*, i8*, i32) #1

declare dso_local i64 @page_is_pfmemalloc(i32) #1

declare dso_local i32 @virt_to_head_page(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
