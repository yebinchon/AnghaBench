; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/ipvs/extr_ip_vs_lblc.c_ip_vs_lblc_new.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/ipvs/extr_ip_vs_lblc.c_ip_vs_lblc_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_vs_lblc_entry = type { %struct.ip_vs_dest*, i32, i32, i32 }
%struct.ip_vs_lblc_table = type { i32 }
%union.nf_inet_addr = type { i32 }
%struct.ip_vs_dest = type { i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ip_vs_lblc_entry* (%struct.ip_vs_lblc_table*, %union.nf_inet_addr*, i32, %struct.ip_vs_dest*)* @ip_vs_lblc_new to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ip_vs_lblc_entry* @ip_vs_lblc_new(%struct.ip_vs_lblc_table* %0, %union.nf_inet_addr* %1, i32 %2, %struct.ip_vs_dest* %3) #0 {
  %5 = alloca %struct.ip_vs_lblc_entry*, align 8
  %6 = alloca %struct.ip_vs_lblc_table*, align 8
  %7 = alloca %union.nf_inet_addr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ip_vs_dest*, align 8
  %10 = alloca %struct.ip_vs_lblc_entry*, align 8
  store %struct.ip_vs_lblc_table* %0, %struct.ip_vs_lblc_table** %6, align 8
  store %union.nf_inet_addr* %1, %union.nf_inet_addr** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.ip_vs_dest* %3, %struct.ip_vs_dest** %9, align 8
  %11 = load i32, i32* %8, align 4
  %12 = load %struct.ip_vs_lblc_table*, %struct.ip_vs_lblc_table** %6, align 8
  %13 = load %union.nf_inet_addr*, %union.nf_inet_addr** %7, align 8
  %14 = call %struct.ip_vs_lblc_entry* @ip_vs_lblc_get(i32 %11, %struct.ip_vs_lblc_table* %12, %union.nf_inet_addr* %13)
  store %struct.ip_vs_lblc_entry* %14, %struct.ip_vs_lblc_entry** %10, align 8
  %15 = load %struct.ip_vs_lblc_entry*, %struct.ip_vs_lblc_entry** %10, align 8
  %16 = icmp ne %struct.ip_vs_lblc_entry* %15, null
  br i1 %16, label %17, label %28

17:                                               ; preds = %4
  %18 = load %struct.ip_vs_lblc_entry*, %struct.ip_vs_lblc_entry** %10, align 8
  %19 = getelementptr inbounds %struct.ip_vs_lblc_entry, %struct.ip_vs_lblc_entry* %18, i32 0, i32 0
  %20 = load %struct.ip_vs_dest*, %struct.ip_vs_dest** %19, align 8
  %21 = load %struct.ip_vs_dest*, %struct.ip_vs_dest** %9, align 8
  %22 = icmp eq %struct.ip_vs_dest* %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %17
  %24 = load %struct.ip_vs_lblc_entry*, %struct.ip_vs_lblc_entry** %10, align 8
  store %struct.ip_vs_lblc_entry* %24, %struct.ip_vs_lblc_entry** %5, align 8
  br label %55

25:                                               ; preds = %17
  %26 = load %struct.ip_vs_lblc_entry*, %struct.ip_vs_lblc_entry** %10, align 8
  %27 = call i32 @ip_vs_lblc_del(%struct.ip_vs_lblc_entry* %26)
  br label %28

28:                                               ; preds = %25, %4
  %29 = load i32, i32* @GFP_ATOMIC, align 4
  %30 = call %struct.ip_vs_lblc_entry* @kmalloc(i32 24, i32 %29)
  store %struct.ip_vs_lblc_entry* %30, %struct.ip_vs_lblc_entry** %10, align 8
  %31 = load %struct.ip_vs_lblc_entry*, %struct.ip_vs_lblc_entry** %10, align 8
  %32 = icmp ne %struct.ip_vs_lblc_entry* %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %28
  store %struct.ip_vs_lblc_entry* null, %struct.ip_vs_lblc_entry** %5, align 8
  br label %55

34:                                               ; preds = %28
  %35 = load i32, i32* %8, align 4
  %36 = load %struct.ip_vs_lblc_entry*, %struct.ip_vs_lblc_entry** %10, align 8
  %37 = getelementptr inbounds %struct.ip_vs_lblc_entry, %struct.ip_vs_lblc_entry* %36, i32 0, i32 3
  store i32 %35, i32* %37, align 8
  %38 = load i32, i32* %8, align 4
  %39 = load %struct.ip_vs_lblc_entry*, %struct.ip_vs_lblc_entry** %10, align 8
  %40 = getelementptr inbounds %struct.ip_vs_lblc_entry, %struct.ip_vs_lblc_entry* %39, i32 0, i32 2
  %41 = load %union.nf_inet_addr*, %union.nf_inet_addr** %7, align 8
  %42 = call i32 @ip_vs_addr_copy(i32 %38, i32* %40, %union.nf_inet_addr* %41)
  %43 = load i32, i32* @jiffies, align 4
  %44 = load %struct.ip_vs_lblc_entry*, %struct.ip_vs_lblc_entry** %10, align 8
  %45 = getelementptr inbounds %struct.ip_vs_lblc_entry, %struct.ip_vs_lblc_entry* %44, i32 0, i32 1
  store i32 %43, i32* %45, align 8
  %46 = load %struct.ip_vs_dest*, %struct.ip_vs_dest** %9, align 8
  %47 = call i32 @ip_vs_dest_hold(%struct.ip_vs_dest* %46)
  %48 = load %struct.ip_vs_dest*, %struct.ip_vs_dest** %9, align 8
  %49 = load %struct.ip_vs_lblc_entry*, %struct.ip_vs_lblc_entry** %10, align 8
  %50 = getelementptr inbounds %struct.ip_vs_lblc_entry, %struct.ip_vs_lblc_entry* %49, i32 0, i32 0
  store %struct.ip_vs_dest* %48, %struct.ip_vs_dest** %50, align 8
  %51 = load %struct.ip_vs_lblc_table*, %struct.ip_vs_lblc_table** %6, align 8
  %52 = load %struct.ip_vs_lblc_entry*, %struct.ip_vs_lblc_entry** %10, align 8
  %53 = call i32 @ip_vs_lblc_hash(%struct.ip_vs_lblc_table* %51, %struct.ip_vs_lblc_entry* %52)
  %54 = load %struct.ip_vs_lblc_entry*, %struct.ip_vs_lblc_entry** %10, align 8
  store %struct.ip_vs_lblc_entry* %54, %struct.ip_vs_lblc_entry** %5, align 8
  br label %55

55:                                               ; preds = %34, %33, %23
  %56 = load %struct.ip_vs_lblc_entry*, %struct.ip_vs_lblc_entry** %5, align 8
  ret %struct.ip_vs_lblc_entry* %56
}

declare dso_local %struct.ip_vs_lblc_entry* @ip_vs_lblc_get(i32, %struct.ip_vs_lblc_table*, %union.nf_inet_addr*) #1

declare dso_local i32 @ip_vs_lblc_del(%struct.ip_vs_lblc_entry*) #1

declare dso_local %struct.ip_vs_lblc_entry* @kmalloc(i32, i32) #1

declare dso_local i32 @ip_vs_addr_copy(i32, i32*, %union.nf_inet_addr*) #1

declare dso_local i32 @ip_vs_dest_hold(%struct.ip_vs_dest*) #1

declare dso_local i32 @ip_vs_lblc_hash(%struct.ip_vs_lblc_table*, %struct.ip_vs_lblc_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
