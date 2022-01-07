; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_dev.c_skb_loop_sk.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_dev.c_skb_loop_sk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.packet_type = type { i32 (%struct.packet_type*, %struct.sock*)*, i64 }
%struct.sock = type { i32 }
%struct.sk_buff = type { %struct.sock* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.packet_type*, %struct.sk_buff*)* @skb_loop_sk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @skb_loop_sk(%struct.packet_type* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.packet_type*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  store %struct.packet_type* %0, %struct.packet_type** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %6 = load %struct.packet_type*, %struct.packet_type** %4, align 8
  %7 = getelementptr inbounds %struct.packet_type, %struct.packet_type* %6, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %15

10:                                               ; preds = %2
  %11 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %12 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %11, i32 0, i32 0
  %13 = load %struct.sock*, %struct.sock** %12, align 8
  %14 = icmp ne %struct.sock* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %10, %2
  store i32 0, i32* %3, align 4
  br label %42

16:                                               ; preds = %10
  %17 = load %struct.packet_type*, %struct.packet_type** %4, align 8
  %18 = getelementptr inbounds %struct.packet_type, %struct.packet_type* %17, i32 0, i32 0
  %19 = load i32 (%struct.packet_type*, %struct.sock*)*, i32 (%struct.packet_type*, %struct.sock*)** %18, align 8
  %20 = icmp ne i32 (%struct.packet_type*, %struct.sock*)* %19, null
  br i1 %20, label %21, label %30

21:                                               ; preds = %16
  %22 = load %struct.packet_type*, %struct.packet_type** %4, align 8
  %23 = getelementptr inbounds %struct.packet_type, %struct.packet_type* %22, i32 0, i32 0
  %24 = load i32 (%struct.packet_type*, %struct.sock*)*, i32 (%struct.packet_type*, %struct.sock*)** %23, align 8
  %25 = load %struct.packet_type*, %struct.packet_type** %4, align 8
  %26 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %27 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %26, i32 0, i32 0
  %28 = load %struct.sock*, %struct.sock** %27, align 8
  %29 = call i32 %24(%struct.packet_type* %25, %struct.sock* %28)
  store i32 %29, i32* %3, align 4
  br label %42

30:                                               ; preds = %16
  %31 = load %struct.packet_type*, %struct.packet_type** %4, align 8
  %32 = getelementptr inbounds %struct.packet_type, %struct.packet_type* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = inttoptr i64 %33 to %struct.sock*
  %35 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %36 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %35, i32 0, i32 0
  %37 = load %struct.sock*, %struct.sock** %36, align 8
  %38 = icmp eq %struct.sock* %34, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %30
  store i32 1, i32* %3, align 4
  br label %42

40:                                               ; preds = %30
  br label %41

41:                                               ; preds = %40
  store i32 0, i32* %3, align 4
  br label %42

42:                                               ; preds = %41, %39, %21, %15
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
