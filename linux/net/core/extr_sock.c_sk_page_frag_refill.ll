; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_sock.c_sk_page_frag_refill.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_sock.c_sk_page_frag_refill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.page_frag = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sk_page_frag_refill(%struct.sock* %0, %struct.page_frag* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sock*, align 8
  %5 = alloca %struct.page_frag*, align 8
  store %struct.sock* %0, %struct.sock** %4, align 8
  store %struct.page_frag* %1, %struct.page_frag** %5, align 8
  %6 = load %struct.page_frag*, %struct.page_frag** %5, align 8
  %7 = load %struct.sock*, %struct.sock** %4, align 8
  %8 = getelementptr inbounds %struct.sock, %struct.sock* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @skb_page_frag_refill(i32 32, %struct.page_frag* %6, i32 %9)
  %11 = call i64 @likely(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %19

14:                                               ; preds = %2
  %15 = load %struct.sock*, %struct.sock** %4, align 8
  %16 = call i32 @sk_enter_memory_pressure(%struct.sock* %15)
  %17 = load %struct.sock*, %struct.sock** %4, align 8
  %18 = call i32 @sk_stream_moderate_sndbuf(%struct.sock* %17)
  store i32 0, i32* %3, align 4
  br label %19

19:                                               ; preds = %14, %13
  %20 = load i32, i32* %3, align 4
  ret i32 %20
}

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @skb_page_frag_refill(i32, %struct.page_frag*, i32) #1

declare dso_local i32 @sk_enter_memory_pressure(%struct.sock*) #1

declare dso_local i32 @sk_stream_moderate_sndbuf(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
