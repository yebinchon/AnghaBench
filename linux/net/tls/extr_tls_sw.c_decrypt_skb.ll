; ModuleID = '/home/carl/AnghaBench/linux/net/tls/extr_tls_sw.c_decrypt_skb.c'
source_filename = "/home/carl/AnghaBench/linux/net/tls/extr_tls_sw.c_decrypt_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.sk_buff = type { i32 }
%struct.scatterlist = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @decrypt_skb(%struct.sock* %0, %struct.sk_buff* %1, %struct.scatterlist* %2) #0 {
  %4 = alloca %struct.sock*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.scatterlist*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  store %struct.scatterlist* %2, %struct.scatterlist** %6, align 8
  store i32 1, i32* %7, align 4
  %9 = load %struct.sock*, %struct.sock** %4, align 8
  %10 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %11 = load %struct.scatterlist*, %struct.scatterlist** %6, align 8
  %12 = call i32 @decrypt_internal(%struct.sock* %9, %struct.sk_buff* %10, i32* null, %struct.scatterlist* %11, i32* %8, i32* %7, i32 0)
  ret i32 %12
}

declare dso_local i32 @decrypt_internal(%struct.sock*, %struct.sk_buff*, i32*, %struct.scatterlist*, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
