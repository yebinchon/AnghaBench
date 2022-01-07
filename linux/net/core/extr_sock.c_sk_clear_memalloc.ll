; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_sock.c_sk_clear_memalloc.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_sock.c_sk_clear_memalloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }

@SOCK_MEMALLOC = common dso_local global i32 0, align 4
@__GFP_MEMALLOC = common dso_local global i32 0, align 4
@memalloc_socks_key = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sk_clear_memalloc(%struct.sock* %0) #0 {
  %2 = alloca %struct.sock*, align 8
  store %struct.sock* %0, %struct.sock** %2, align 8
  %3 = load %struct.sock*, %struct.sock** %2, align 8
  %4 = load i32, i32* @SOCK_MEMALLOC, align 4
  %5 = call i32 @sock_reset_flag(%struct.sock* %3, i32 %4)
  %6 = load i32, i32* @__GFP_MEMALLOC, align 4
  %7 = xor i32 %6, -1
  %8 = load %struct.sock*, %struct.sock** %2, align 8
  %9 = getelementptr inbounds %struct.sock, %struct.sock* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = and i32 %10, %7
  store i32 %11, i32* %9, align 4
  %12 = call i32 @static_branch_dec(i32* @memalloc_socks_key)
  %13 = load %struct.sock*, %struct.sock** %2, align 8
  %14 = call i32 @sk_mem_reclaim(%struct.sock* %13)
  ret void
}

declare dso_local i32 @sock_reset_flag(%struct.sock*, i32) #1

declare dso_local i32 @static_branch_dec(i32*) #1

declare dso_local i32 @sk_mem_reclaim(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
