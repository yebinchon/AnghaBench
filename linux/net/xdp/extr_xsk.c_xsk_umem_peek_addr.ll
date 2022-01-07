; ModuleID = '/home/carl/AnghaBench/linux/net/xdp/extr_xsk.c_xsk_umem_peek_addr.c'
source_filename = "/home/carl/AnghaBench/linux/net/xdp/extr_xsk.c_xsk_umem_peek_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xdp_umem = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @xsk_umem_peek_addr(%struct.xdp_umem* %0, i32* %1) #0 {
  %3 = alloca %struct.xdp_umem*, align 8
  %4 = alloca i32*, align 8
  store %struct.xdp_umem* %0, %struct.xdp_umem** %3, align 8
  store i32* %1, i32** %4, align 8
  %5 = load %struct.xdp_umem*, %struct.xdp_umem** %3, align 8
  %6 = getelementptr inbounds %struct.xdp_umem, %struct.xdp_umem* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32*, i32** %4, align 8
  %9 = load %struct.xdp_umem*, %struct.xdp_umem** %3, align 8
  %10 = call i32* @xskq_peek_addr(i32 %7, i32* %8, %struct.xdp_umem* %9)
  ret i32* %10
}

declare dso_local i32* @xskq_peek_addr(i32, i32*, %struct.xdp_umem*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
