; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/ipvs/extr_ip_vs_xmit.c___ip_vs_dst_check.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/ipvs/extr_ip_vs_xmit.c___ip_vs_dst_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_vs_dest_dst = type { i32, %struct.dst_entry* }
%struct.dst_entry = type { %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32* (%struct.dst_entry*, i32)* }
%struct.ip_vs_dest = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ip_vs_dest_dst* (%struct.ip_vs_dest*)* @__ip_vs_dst_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ip_vs_dest_dst* @__ip_vs_dst_check(%struct.ip_vs_dest* %0) #0 {
  %2 = alloca %struct.ip_vs_dest_dst*, align 8
  %3 = alloca %struct.ip_vs_dest*, align 8
  %4 = alloca %struct.ip_vs_dest_dst*, align 8
  %5 = alloca %struct.dst_entry*, align 8
  store %struct.ip_vs_dest* %0, %struct.ip_vs_dest** %3, align 8
  %6 = load %struct.ip_vs_dest*, %struct.ip_vs_dest** %3, align 8
  %7 = getelementptr inbounds %struct.ip_vs_dest, %struct.ip_vs_dest* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call %struct.ip_vs_dest_dst* @rcu_dereference(i32 %8)
  store %struct.ip_vs_dest_dst* %9, %struct.ip_vs_dest_dst** %4, align 8
  %10 = load %struct.ip_vs_dest_dst*, %struct.ip_vs_dest_dst** %4, align 8
  %11 = icmp ne %struct.ip_vs_dest_dst* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  store %struct.ip_vs_dest_dst* null, %struct.ip_vs_dest_dst** %2, align 8
  br label %36

13:                                               ; preds = %1
  %14 = load %struct.ip_vs_dest_dst*, %struct.ip_vs_dest_dst** %4, align 8
  %15 = getelementptr inbounds %struct.ip_vs_dest_dst, %struct.ip_vs_dest_dst* %14, i32 0, i32 1
  %16 = load %struct.dst_entry*, %struct.dst_entry** %15, align 8
  store %struct.dst_entry* %16, %struct.dst_entry** %5, align 8
  %17 = load %struct.dst_entry*, %struct.dst_entry** %5, align 8
  %18 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %34

21:                                               ; preds = %13
  %22 = load %struct.dst_entry*, %struct.dst_entry** %5, align 8
  %23 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32* (%struct.dst_entry*, i32)*, i32* (%struct.dst_entry*, i32)** %25, align 8
  %27 = load %struct.dst_entry*, %struct.dst_entry** %5, align 8
  %28 = load %struct.ip_vs_dest_dst*, %struct.ip_vs_dest_dst** %4, align 8
  %29 = getelementptr inbounds %struct.ip_vs_dest_dst, %struct.ip_vs_dest_dst* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i32* %26(%struct.dst_entry* %27, i32 %30)
  %32 = icmp eq i32* %31, null
  br i1 %32, label %33, label %34

33:                                               ; preds = %21
  store %struct.ip_vs_dest_dst* null, %struct.ip_vs_dest_dst** %2, align 8
  br label %36

34:                                               ; preds = %21, %13
  %35 = load %struct.ip_vs_dest_dst*, %struct.ip_vs_dest_dst** %4, align 8
  store %struct.ip_vs_dest_dst* %35, %struct.ip_vs_dest_dst** %2, align 8
  br label %36

36:                                               ; preds = %34, %33, %12
  %37 = load %struct.ip_vs_dest_dst*, %struct.ip_vs_dest_dst** %2, align 8
  ret %struct.ip_vs_dest_dst* %37
}

declare dso_local %struct.ip_vs_dest_dst* @rcu_dereference(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
