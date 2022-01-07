; ModuleID = '/home/carl/AnghaBench/linux/net/packet/extr_af_packet.c_packet_alloc_skb.c'
source_filename = "/home/carl/AnghaBench/linux/net/packet/extr_af_packet.c_packet_alloc_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64, i64 }
%struct.sock = type { i32 }

@PAGE_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.sock*, i64, i64, i64, i64, i32, i32*)* @packet_alloc_skb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @packet_alloc_skb(%struct.sock* %0, i64 %1, i64 %2, i64 %3, i64 %4, i32 %5, i32* %6) #0 {
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.sock*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca %struct.sk_buff*, align 8
  store %struct.sock* %0, %struct.sock** %9, align 8
  store i64 %1, i64* %10, align 8
  store i64 %2, i64* %11, align 8
  store i64 %3, i64* %12, align 8
  store i64 %4, i64* %13, align 8
  store i32 %5, i32* %14, align 4
  store i32* %6, i32** %15, align 8
  %17 = load i64, i64* %10, align 8
  %18 = load i64, i64* %12, align 8
  %19 = add i64 %17, %18
  %20 = load i64, i64* @PAGE_SIZE, align 8
  %21 = icmp ult i64 %19, %20
  br i1 %21, label %25, label %22

22:                                               ; preds = %7
  %23 = load i64, i64* %13, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %22, %7
  %26 = load i64, i64* %12, align 8
  store i64 %26, i64* %13, align 8
  br label %27

27:                                               ; preds = %25, %22
  %28 = load %struct.sock*, %struct.sock** %9, align 8
  %29 = load i64, i64* %10, align 8
  %30 = load i64, i64* %13, align 8
  %31 = add i64 %29, %30
  %32 = load i64, i64* %12, align 8
  %33 = load i64, i64* %13, align 8
  %34 = sub i64 %32, %33
  %35 = load i32, i32* %14, align 4
  %36 = load i32*, i32** %15, align 8
  %37 = call %struct.sk_buff* @sock_alloc_send_pskb(%struct.sock* %28, i64 %31, i64 %34, i32 %35, i32* %36, i32 0)
  store %struct.sk_buff* %37, %struct.sk_buff** %16, align 8
  %38 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %39 = icmp ne %struct.sk_buff* %38, null
  br i1 %39, label %41, label %40

40:                                               ; preds = %27
  store %struct.sk_buff* null, %struct.sk_buff** %8, align 8
  br label %61

41:                                               ; preds = %27
  %42 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %43 = load i64, i64* %11, align 8
  %44 = call i32 @skb_reserve(%struct.sk_buff* %42, i64 %43)
  %45 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %46 = load i64, i64* %13, align 8
  %47 = call i32 @skb_put(%struct.sk_buff* %45, i64 %46)
  %48 = load i64, i64* %12, align 8
  %49 = load i64, i64* %13, align 8
  %50 = sub i64 %48, %49
  %51 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %52 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %51, i32 0, i32 0
  store i64 %50, i64* %52, align 8
  %53 = load i64, i64* %12, align 8
  %54 = load i64, i64* %13, align 8
  %55 = sub i64 %53, %54
  %56 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %57 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = add i64 %58, %55
  store i64 %59, i64* %57, align 8
  %60 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  store %struct.sk_buff* %60, %struct.sk_buff** %8, align 8
  br label %61

61:                                               ; preds = %41, %40
  %62 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  ret %struct.sk_buff* %62
}

declare dso_local %struct.sk_buff* @sock_alloc_send_pskb(%struct.sock*, i64, i64, i32, i32*, i32) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i64) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
