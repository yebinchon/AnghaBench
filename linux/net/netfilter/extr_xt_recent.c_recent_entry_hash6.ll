; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_xt_recent.c_recent_entry_hash6.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_xt_recent.c_recent_entry_hash6.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.nf_inet_addr = type { i64 }

@hash_rnd = common dso_local global i32 0, align 4
@ip_list_hash_size = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%union.nf_inet_addr*)* @recent_entry_hash6 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @recent_entry_hash6(%union.nf_inet_addr* %0) #0 {
  %2 = alloca %union.nf_inet_addr*, align 8
  store %union.nf_inet_addr* %0, %union.nf_inet_addr** %2, align 8
  %3 = load %union.nf_inet_addr*, %union.nf_inet_addr** %2, align 8
  %4 = bitcast %union.nf_inet_addr* %3 to i64*
  %5 = load i64, i64* %4, align 8
  %6 = inttoptr i64 %5 to i32*
  %7 = load %union.nf_inet_addr*, %union.nf_inet_addr** %2, align 8
  %8 = bitcast %union.nf_inet_addr* %7 to i64*
  %9 = load i64, i64* %8, align 8
  %10 = call i32 @ARRAY_SIZE(i64 %9)
  %11 = load i32, i32* @hash_rnd, align 4
  %12 = call i32 @jhash2(i32* %6, i32 %10, i32 %11)
  %13 = load i32, i32* @ip_list_hash_size, align 4
  %14 = sub nsw i32 %13, 1
  %15 = and i32 %12, %14
  ret i32 %15
}

declare dso_local i32 @jhash2(i32*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
