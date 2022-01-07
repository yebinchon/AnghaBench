; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/ipset/extr_ip_set_hash_ipportip.c_hash_ipportip6_data_next.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/ipset/extr_ip_set_hash_ipportip.c_hash_ipportip6_data_next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hash_ipportip6_elem = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hash_ipportip6_elem*, %struct.hash_ipportip6_elem*)* @hash_ipportip6_data_next to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hash_ipportip6_data_next(%struct.hash_ipportip6_elem* %0, %struct.hash_ipportip6_elem* %1) #0 {
  %3 = alloca %struct.hash_ipportip6_elem*, align 8
  %4 = alloca %struct.hash_ipportip6_elem*, align 8
  store %struct.hash_ipportip6_elem* %0, %struct.hash_ipportip6_elem** %3, align 8
  store %struct.hash_ipportip6_elem* %1, %struct.hash_ipportip6_elem** %4, align 8
  %5 = load %struct.hash_ipportip6_elem*, %struct.hash_ipportip6_elem** %4, align 8
  %6 = getelementptr inbounds %struct.hash_ipportip6_elem, %struct.hash_ipportip6_elem* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.hash_ipportip6_elem*, %struct.hash_ipportip6_elem** %3, align 8
  %9 = getelementptr inbounds %struct.hash_ipportip6_elem, %struct.hash_ipportip6_elem* %8, i32 0, i32 0
  store i32 %7, i32* %9, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
