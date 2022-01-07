; ModuleID = '/home/carl/AnghaBench/linux/net/tls/extr_tls_sw.c_tls_sw_advance_skb.c'
source_filename = "/home/carl/AnghaBench/linux/net/tls/extr_tls_sw.c_tls_sw_advance_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.sk_buff = type { i32 }
%struct.tls_context = type { i32 }
%struct.tls_sw_context_rx = type { i32, i32* }
%struct.strp_msg = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, %struct.sk_buff*, i32)* @tls_sw_advance_skb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tls_sw_advance_skb(%struct.sock* %0, %struct.sk_buff* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sock*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.tls_context*, align 8
  %9 = alloca %struct.tls_sw_context_rx*, align 8
  %10 = alloca %struct.strp_msg*, align 8
  store %struct.sock* %0, %struct.sock** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.sock*, %struct.sock** %5, align 8
  %12 = call %struct.tls_context* @tls_get_ctx(%struct.sock* %11)
  store %struct.tls_context* %12, %struct.tls_context** %8, align 8
  %13 = load %struct.tls_context*, %struct.tls_context** %8, align 8
  %14 = call %struct.tls_sw_context_rx* @tls_sw_ctx_rx(%struct.tls_context* %13)
  store %struct.tls_sw_context_rx* %14, %struct.tls_sw_context_rx** %9, align 8
  %15 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %16 = icmp ne %struct.sk_buff* %15, null
  br i1 %16, label %17, label %39

17:                                               ; preds = %3
  %18 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %19 = call %struct.strp_msg* @strp_msg(%struct.sk_buff* %18)
  store %struct.strp_msg* %19, %struct.strp_msg** %10, align 8
  %20 = load i32, i32* %7, align 4
  %21 = load %struct.strp_msg*, %struct.strp_msg** %10, align 8
  %22 = getelementptr inbounds %struct.strp_msg, %struct.strp_msg* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp ult i32 %20, %23
  br i1 %24, label %25, label %36

25:                                               ; preds = %17
  %26 = load i32, i32* %7, align 4
  %27 = load %struct.strp_msg*, %struct.strp_msg** %10, align 8
  %28 = getelementptr inbounds %struct.strp_msg, %struct.strp_msg* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = add i32 %29, %26
  store i32 %30, i32* %28, align 4
  %31 = load i32, i32* %7, align 4
  %32 = load %struct.strp_msg*, %struct.strp_msg** %10, align 8
  %33 = getelementptr inbounds %struct.strp_msg, %struct.strp_msg* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = sub i32 %34, %31
  store i32 %35, i32* %33, align 4
  store i32 0, i32* %4, align 4
  br label %45

36:                                               ; preds = %17
  %37 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %38 = call i32 @consume_skb(%struct.sk_buff* %37)
  br label %39

39:                                               ; preds = %36, %3
  %40 = load %struct.tls_sw_context_rx*, %struct.tls_sw_context_rx** %9, align 8
  %41 = getelementptr inbounds %struct.tls_sw_context_rx, %struct.tls_sw_context_rx* %40, i32 0, i32 1
  store i32* null, i32** %41, align 8
  %42 = load %struct.tls_sw_context_rx*, %struct.tls_sw_context_rx** %9, align 8
  %43 = getelementptr inbounds %struct.tls_sw_context_rx, %struct.tls_sw_context_rx* %42, i32 0, i32 0
  %44 = call i32 @__strp_unpause(i32* %43)
  store i32 1, i32* %4, align 4
  br label %45

45:                                               ; preds = %39, %25
  %46 = load i32, i32* %4, align 4
  ret i32 %46
}

declare dso_local %struct.tls_context* @tls_get_ctx(%struct.sock*) #1

declare dso_local %struct.tls_sw_context_rx* @tls_sw_ctx_rx(%struct.tls_context*) #1

declare dso_local %struct.strp_msg* @strp_msg(%struct.sk_buff*) #1

declare dso_local i32 @consume_skb(%struct.sk_buff*) #1

declare dso_local i32 @__strp_unpause(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
