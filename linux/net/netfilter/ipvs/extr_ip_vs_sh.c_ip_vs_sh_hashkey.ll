; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/ipvs/extr_ip_vs_sh.c_ip_vs_sh_hashkey.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/ipvs/extr_ip_vs_sh.c_ip_vs_sh_hashkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.nf_inet_addr = type { i32* }

@IP_VS_SH_TAB_BITS = common dso_local global i32 0, align 4
@IP_VS_SH_TAB_MASK = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %union.nf_inet_addr*, i32, i32)* @ip_vs_sh_hashkey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ip_vs_sh_hashkey(i32 %0, %union.nf_inet_addr* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %union.nf_inet_addr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store %union.nf_inet_addr* %1, %union.nf_inet_addr** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load %union.nf_inet_addr*, %union.nf_inet_addr** %6, align 8
  %11 = bitcast %union.nf_inet_addr* %10 to i32*
  %12 = load i32, i32* %11, align 8
  store i32 %12, i32* %9, align 4
  %13 = load i32, i32* %8, align 4
  %14 = load i32, i32* %7, align 4
  %15 = call i64 @ntohs(i32 %14)
  %16 = load i32, i32* %9, align 4
  %17 = call i64 @ntohl(i32 %16)
  %18 = add nsw i64 %15, %17
  %19 = load i32, i32* @IP_VS_SH_TAB_BITS, align 4
  %20 = call i32 @hash_32(i64 %18, i32 %19)
  %21 = add i32 %13, %20
  %22 = load i32, i32* @IP_VS_SH_TAB_MASK, align 4
  %23 = and i32 %21, %22
  ret i32 %23
}

declare dso_local i32 @hash_32(i64, i32) #1

declare dso_local i64 @ntohs(i32) #1

declare dso_local i64 @ntohl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
