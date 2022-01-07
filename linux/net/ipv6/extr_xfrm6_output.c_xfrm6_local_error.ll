; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_xfrm6_output.c_xfrm6_local_error.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_xfrm6_output.c_xfrm6_local_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64, %struct.sock* }
%struct.sock = type { i32 }
%struct.flowi6 = type { i32, i32 }
%struct.ipv6hdr = type { i32 }
%struct.TYPE_2__ = type { i32 }

@EMSGSIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xfrm6_local_error(%struct.sk_buff* %0, i32 %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.flowi6, align 4
  %6 = alloca %struct.ipv6hdr*, align 8
  %7 = alloca %struct.sock*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %9 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %8, i32 0, i32 1
  %10 = load %struct.sock*, %struct.sock** %9, align 8
  store %struct.sock* %10, %struct.sock** %7, align 8
  %11 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %12 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %17 = call %struct.ipv6hdr* @inner_ipv6_hdr(%struct.sk_buff* %16)
  br label %21

18:                                               ; preds = %2
  %19 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %20 = call %struct.ipv6hdr* @ipv6_hdr(%struct.sk_buff* %19)
  br label %21

21:                                               ; preds = %18, %15
  %22 = phi %struct.ipv6hdr* [ %17, %15 ], [ %20, %18 ]
  store %struct.ipv6hdr* %22, %struct.ipv6hdr** %6, align 8
  %23 = load %struct.sock*, %struct.sock** %7, align 8
  %24 = call %struct.TYPE_2__* @inet_sk(%struct.sock* %23)
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = getelementptr inbounds %struct.flowi6, %struct.flowi6* %5, i32 0, i32 1
  store i32 %26, i32* %27, align 4
  %28 = load %struct.ipv6hdr*, %struct.ipv6hdr** %6, align 8
  %29 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = getelementptr inbounds %struct.flowi6, %struct.flowi6* %5, i32 0, i32 0
  store i32 %30, i32* %31, align 4
  %32 = load %struct.sock*, %struct.sock** %7, align 8
  %33 = load i32, i32* @EMSGSIZE, align 4
  %34 = load i32, i32* %4, align 4
  %35 = call i32 @ipv6_local_error(%struct.sock* %32, i32 %33, %struct.flowi6* %5, i32 %34)
  ret void
}

declare dso_local %struct.ipv6hdr* @inner_ipv6_hdr(%struct.sk_buff*) #1

declare dso_local %struct.ipv6hdr* @ipv6_hdr(%struct.sk_buff*) #1

declare dso_local %struct.TYPE_2__* @inet_sk(%struct.sock*) #1

declare dso_local i32 @ipv6_local_error(%struct.sock*, i32, %struct.flowi6*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
