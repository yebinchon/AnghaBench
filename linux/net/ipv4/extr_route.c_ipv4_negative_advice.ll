; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_route.c_ipv4_negative_advice.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_route.c_ipv4_negative_advice.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dst_entry = type { i64 }
%struct.rtable = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@RTCF_REDIRECTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dst_entry* (%struct.dst_entry*)* @ipv4_negative_advice to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dst_entry* @ipv4_negative_advice(%struct.dst_entry* %0) #0 {
  %2 = alloca %struct.dst_entry*, align 8
  %3 = alloca %struct.rtable*, align 8
  %4 = alloca %struct.dst_entry*, align 8
  store %struct.dst_entry* %0, %struct.dst_entry** %2, align 8
  %5 = load %struct.dst_entry*, %struct.dst_entry** %2, align 8
  %6 = bitcast %struct.dst_entry* %5 to %struct.rtable*
  store %struct.rtable* %6, %struct.rtable** %3, align 8
  %7 = load %struct.dst_entry*, %struct.dst_entry** %2, align 8
  store %struct.dst_entry* %7, %struct.dst_entry** %4, align 8
  %8 = load %struct.rtable*, %struct.rtable** %3, align 8
  %9 = icmp ne %struct.rtable* %8, null
  br i1 %9, label %10, label %36

10:                                               ; preds = %1
  %11 = load %struct.dst_entry*, %struct.dst_entry** %2, align 8
  %12 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp sgt i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %10
  %16 = load %struct.rtable*, %struct.rtable** %3, align 8
  %17 = call i32 @ip_rt_put(%struct.rtable* %16)
  store %struct.dst_entry* null, %struct.dst_entry** %4, align 8
  br label %35

18:                                               ; preds = %10
  %19 = load %struct.rtable*, %struct.rtable** %3, align 8
  %20 = getelementptr inbounds %struct.rtable, %struct.rtable* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @RTCF_REDIRECTED, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %31, label %25

25:                                               ; preds = %18
  %26 = load %struct.rtable*, %struct.rtable** %3, align 8
  %27 = getelementptr inbounds %struct.rtable, %struct.rtable* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %25, %18
  %32 = load %struct.rtable*, %struct.rtable** %3, align 8
  %33 = call i32 @ip_rt_put(%struct.rtable* %32)
  store %struct.dst_entry* null, %struct.dst_entry** %4, align 8
  br label %34

34:                                               ; preds = %31, %25
  br label %35

35:                                               ; preds = %34, %15
  br label %36

36:                                               ; preds = %35, %1
  %37 = load %struct.dst_entry*, %struct.dst_entry** %4, align 8
  ret %struct.dst_entry* %37
}

declare dso_local i32 @ip_rt_put(%struct.rtable*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
