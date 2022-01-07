; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_output_core.c_ip6_local_out.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_output_core.c_ip6_local_out.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.sock = type { i32 }
%struct.sk_buff = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ip6_local_out(%struct.net* %0, %struct.sock* %1, %struct.sk_buff* %2) #0 {
  %4 = alloca %struct.net*, align 8
  %5 = alloca %struct.sock*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32, align 4
  store %struct.net* %0, %struct.net** %4, align 8
  store %struct.sock* %1, %struct.sock** %5, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %6, align 8
  %8 = load %struct.net*, %struct.net** %4, align 8
  %9 = load %struct.sock*, %struct.sock** %5, align 8
  %10 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %11 = call i32 @__ip6_local_out(%struct.net* %8, %struct.sock* %9, %struct.sk_buff* %10)
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* %7, align 4
  %13 = icmp eq i32 %12, 1
  %14 = zext i1 %13 to i32
  %15 = call i64 @likely(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %3
  %18 = load %struct.net*, %struct.net** %4, align 8
  %19 = load %struct.sock*, %struct.sock** %5, align 8
  %20 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %21 = call i32 @dst_output(%struct.net* %18, %struct.sock* %19, %struct.sk_buff* %20)
  store i32 %21, i32* %7, align 4
  br label %22

22:                                               ; preds = %17, %3
  %23 = load i32, i32* %7, align 4
  ret i32 %23
}

declare dso_local i32 @__ip6_local_out(%struct.net*, %struct.sock*, %struct.sk_buff*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @dst_output(%struct.net*, %struct.sock*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
