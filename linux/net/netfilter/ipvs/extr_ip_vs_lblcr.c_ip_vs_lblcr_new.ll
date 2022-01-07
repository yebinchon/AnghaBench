; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/ipvs/extr_ip_vs_lblcr.c_ip_vs_lblcr_new.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/ipvs/extr_ip_vs_lblcr.c_ip_vs_lblcr_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_vs_lblcr_entry = type { %struct.TYPE_2__, i32, i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.ip_vs_lblcr_table = type { i32 }
%union.nf_inet_addr = type { i32 }
%struct.ip_vs_dest = type { i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ip_vs_lblcr_entry* (%struct.ip_vs_lblcr_table*, %union.nf_inet_addr*, i32, %struct.ip_vs_dest*)* @ip_vs_lblcr_new to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ip_vs_lblcr_entry* @ip_vs_lblcr_new(%struct.ip_vs_lblcr_table* %0, %union.nf_inet_addr* %1, i32 %2, %struct.ip_vs_dest* %3) #0 {
  %5 = alloca %struct.ip_vs_lblcr_entry*, align 8
  %6 = alloca %struct.ip_vs_lblcr_table*, align 8
  %7 = alloca %union.nf_inet_addr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ip_vs_dest*, align 8
  %10 = alloca %struct.ip_vs_lblcr_entry*, align 8
  store %struct.ip_vs_lblcr_table* %0, %struct.ip_vs_lblcr_table** %6, align 8
  store %union.nf_inet_addr* %1, %union.nf_inet_addr** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.ip_vs_dest* %3, %struct.ip_vs_dest** %9, align 8
  %11 = load i32, i32* %8, align 4
  %12 = load %struct.ip_vs_lblcr_table*, %struct.ip_vs_lblcr_table** %6, align 8
  %13 = load %union.nf_inet_addr*, %union.nf_inet_addr** %7, align 8
  %14 = call %struct.ip_vs_lblcr_entry* @ip_vs_lblcr_get(i32 %11, %struct.ip_vs_lblcr_table* %12, %union.nf_inet_addr* %13)
  store %struct.ip_vs_lblcr_entry* %14, %struct.ip_vs_lblcr_entry** %10, align 8
  %15 = load %struct.ip_vs_lblcr_entry*, %struct.ip_vs_lblcr_entry** %10, align 8
  %16 = icmp ne %struct.ip_vs_lblcr_entry* %15, null
  br i1 %16, label %51, label %17

17:                                               ; preds = %4
  %18 = load i32, i32* @GFP_ATOMIC, align 4
  %19 = call %struct.ip_vs_lblcr_entry* @kmalloc(i32 20, i32 %18)
  store %struct.ip_vs_lblcr_entry* %19, %struct.ip_vs_lblcr_entry** %10, align 8
  %20 = load %struct.ip_vs_lblcr_entry*, %struct.ip_vs_lblcr_entry** %10, align 8
  %21 = icmp ne %struct.ip_vs_lblcr_entry* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %17
  store %struct.ip_vs_lblcr_entry* null, %struct.ip_vs_lblcr_entry** %5, align 8
  br label %57

23:                                               ; preds = %17
  %24 = load i32, i32* %8, align 4
  %25 = load %struct.ip_vs_lblcr_entry*, %struct.ip_vs_lblcr_entry** %10, align 8
  %26 = getelementptr inbounds %struct.ip_vs_lblcr_entry, %struct.ip_vs_lblcr_entry* %25, i32 0, i32 3
  store i32 %24, i32* %26, align 4
  %27 = load i32, i32* %8, align 4
  %28 = load %struct.ip_vs_lblcr_entry*, %struct.ip_vs_lblcr_entry** %10, align 8
  %29 = getelementptr inbounds %struct.ip_vs_lblcr_entry, %struct.ip_vs_lblcr_entry* %28, i32 0, i32 2
  %30 = load %union.nf_inet_addr*, %union.nf_inet_addr** %7, align 8
  %31 = call i32 @ip_vs_addr_copy(i32 %27, i32* %29, %union.nf_inet_addr* %30)
  %32 = load i32, i32* @jiffies, align 4
  %33 = load %struct.ip_vs_lblcr_entry*, %struct.ip_vs_lblcr_entry** %10, align 8
  %34 = getelementptr inbounds %struct.ip_vs_lblcr_entry, %struct.ip_vs_lblcr_entry* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 4
  %35 = load %struct.ip_vs_lblcr_entry*, %struct.ip_vs_lblcr_entry** %10, align 8
  %36 = getelementptr inbounds %struct.ip_vs_lblcr_entry, %struct.ip_vs_lblcr_entry* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  %38 = call i32 @atomic_set(i32* %37, i32 0)
  %39 = load %struct.ip_vs_lblcr_entry*, %struct.ip_vs_lblcr_entry** %10, align 8
  %40 = getelementptr inbounds %struct.ip_vs_lblcr_entry, %struct.ip_vs_lblcr_entry* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = call i32 @INIT_LIST_HEAD(i32* %41)
  %43 = load %struct.ip_vs_lblcr_entry*, %struct.ip_vs_lblcr_entry** %10, align 8
  %44 = getelementptr inbounds %struct.ip_vs_lblcr_entry, %struct.ip_vs_lblcr_entry* %43, i32 0, i32 0
  %45 = load %struct.ip_vs_dest*, %struct.ip_vs_dest** %9, align 8
  %46 = call i32 @ip_vs_dest_set_insert(%struct.TYPE_2__* %44, %struct.ip_vs_dest* %45, i32 0)
  %47 = load %struct.ip_vs_lblcr_table*, %struct.ip_vs_lblcr_table** %6, align 8
  %48 = load %struct.ip_vs_lblcr_entry*, %struct.ip_vs_lblcr_entry** %10, align 8
  %49 = call i32 @ip_vs_lblcr_hash(%struct.ip_vs_lblcr_table* %47, %struct.ip_vs_lblcr_entry* %48)
  %50 = load %struct.ip_vs_lblcr_entry*, %struct.ip_vs_lblcr_entry** %10, align 8
  store %struct.ip_vs_lblcr_entry* %50, %struct.ip_vs_lblcr_entry** %5, align 8
  br label %57

51:                                               ; preds = %4
  %52 = load %struct.ip_vs_lblcr_entry*, %struct.ip_vs_lblcr_entry** %10, align 8
  %53 = getelementptr inbounds %struct.ip_vs_lblcr_entry, %struct.ip_vs_lblcr_entry* %52, i32 0, i32 0
  %54 = load %struct.ip_vs_dest*, %struct.ip_vs_dest** %9, align 8
  %55 = call i32 @ip_vs_dest_set_insert(%struct.TYPE_2__* %53, %struct.ip_vs_dest* %54, i32 1)
  %56 = load %struct.ip_vs_lblcr_entry*, %struct.ip_vs_lblcr_entry** %10, align 8
  store %struct.ip_vs_lblcr_entry* %56, %struct.ip_vs_lblcr_entry** %5, align 8
  br label %57

57:                                               ; preds = %51, %23, %22
  %58 = load %struct.ip_vs_lblcr_entry*, %struct.ip_vs_lblcr_entry** %5, align 8
  ret %struct.ip_vs_lblcr_entry* %58
}

declare dso_local %struct.ip_vs_lblcr_entry* @ip_vs_lblcr_get(i32, %struct.ip_vs_lblcr_table*, %union.nf_inet_addr*) #1

declare dso_local %struct.ip_vs_lblcr_entry* @kmalloc(i32, i32) #1

declare dso_local i32 @ip_vs_addr_copy(i32, i32*, %union.nf_inet_addr*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @ip_vs_dest_set_insert(%struct.TYPE_2__*, %struct.ip_vs_dest*, i32) #1

declare dso_local i32 @ip_vs_lblcr_hash(%struct.ip_vs_lblcr_table*, %struct.ip_vs_lblcr_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
