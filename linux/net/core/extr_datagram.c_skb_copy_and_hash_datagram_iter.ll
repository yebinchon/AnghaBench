; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_datagram.c_skb_copy_and_hash_datagram_iter.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_datagram.c_skb_copy_and_hash_datagram_iter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.iov_iter = type { i32 }
%struct.ahash_request = type { i32 }

@hash_and_copy_to_iter = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @skb_copy_and_hash_datagram_iter(%struct.sk_buff* %0, i32 %1, %struct.iov_iter* %2, i32 %3, %struct.ahash_request* %4) #0 {
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.iov_iter*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.ahash_request*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.iov_iter* %2, %struct.iov_iter** %8, align 8
  store i32 %3, i32* %9, align 4
  store %struct.ahash_request* %4, %struct.ahash_request** %10, align 8
  %11 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %12 = load i32, i32* %7, align 4
  %13 = load %struct.iov_iter*, %struct.iov_iter** %8, align 8
  %14 = load i32, i32* %9, align 4
  %15 = load i32, i32* @hash_and_copy_to_iter, align 4
  %16 = load %struct.ahash_request*, %struct.ahash_request** %10, align 8
  %17 = call i32 @__skb_datagram_iter(%struct.sk_buff* %11, i32 %12, %struct.iov_iter* %13, i32 %14, i32 1, i32 %15, %struct.ahash_request* %16)
  ret i32 %17
}

declare dso_local i32 @__skb_datagram_iter(%struct.sk_buff*, i32, %struct.iov_iter*, i32, i32, i32, %struct.ahash_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
