; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_route.c_ipv4_dst_check.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_route.c_ipv4_dst_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dst_entry = type { i64 }
%struct.rtable = type { i32 }

@DST_OBSOLETE_FORCE_CHK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dst_entry* (%struct.dst_entry*, i32)* @ipv4_dst_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dst_entry* @ipv4_dst_check(%struct.dst_entry* %0, i32 %1) #0 {
  %3 = alloca %struct.dst_entry*, align 8
  %4 = alloca %struct.dst_entry*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.rtable*, align 8
  store %struct.dst_entry* %0, %struct.dst_entry** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.dst_entry*, %struct.dst_entry** %4, align 8
  %8 = bitcast %struct.dst_entry* %7 to %struct.rtable*
  store %struct.rtable* %8, %struct.rtable** %6, align 8
  %9 = load %struct.dst_entry*, %struct.dst_entry** %4, align 8
  %10 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @DST_OBSOLETE_FORCE_CHK, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %18, label %14

14:                                               ; preds = %2
  %15 = load %struct.rtable*, %struct.rtable** %6, align 8
  %16 = call i64 @rt_is_expired(%struct.rtable* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %14, %2
  store %struct.dst_entry* null, %struct.dst_entry** %3, align 8
  br label %21

19:                                               ; preds = %14
  %20 = load %struct.dst_entry*, %struct.dst_entry** %4, align 8
  store %struct.dst_entry* %20, %struct.dst_entry** %3, align 8
  br label %21

21:                                               ; preds = %19, %18
  %22 = load %struct.dst_entry*, %struct.dst_entry** %3, align 8
  ret %struct.dst_entry* %22
}

declare dso_local i64 @rt_is_expired(%struct.rtable*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
