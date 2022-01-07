; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_route.c___ip_rt_update_pmtu.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_route.c___ip_rt_update_pmtu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtable = type { i64, %struct.dst_entry }
%struct.dst_entry = type { i32, i64 }
%struct.flowi4 = type { i32 }
%struct.fib_result = type { i32 }
%struct.fib_nh_common = type { i32 }

@ip_rt_min_pmtu = common dso_local global i64 0, align 8
@jiffies = common dso_local global i64 0, align 8
@ip_rt_mtu_expires = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtable*, %struct.flowi4*, i64)* @__ip_rt_update_pmtu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__ip_rt_update_pmtu(%struct.rtable* %0, %struct.flowi4* %1, i64 %2) #0 {
  %4 = alloca %struct.rtable*, align 8
  %5 = alloca %struct.flowi4*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.dst_entry*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.fib_result, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.fib_nh_common*, align 8
  store %struct.rtable* %0, %struct.rtable** %4, align 8
  store %struct.flowi4* %1, %struct.flowi4** %5, align 8
  store i64 %2, i64* %6, align 8
  %12 = load %struct.rtable*, %struct.rtable** %4, align 8
  %13 = getelementptr inbounds %struct.rtable, %struct.rtable* %12, i32 0, i32 1
  store %struct.dst_entry* %13, %struct.dst_entry** %7, align 8
  %14 = load %struct.dst_entry*, %struct.dst_entry** %7, align 8
  %15 = call i64 @ipv4_mtu(%struct.dst_entry* %14)
  store i64 %15, i64* %8, align 8
  store i32 0, i32* %10, align 4
  %16 = load %struct.dst_entry*, %struct.dst_entry** %7, align 8
  %17 = call i64 @ip_mtu_locked(%struct.dst_entry* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %3
  br label %80

20:                                               ; preds = %3
  %21 = load i64, i64* %8, align 8
  %22 = load i64, i64* %6, align 8
  %23 = icmp slt i64 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %20
  br label %80

25:                                               ; preds = %20
  %26 = load i64, i64* %6, align 8
  %27 = load i64, i64* @ip_rt_min_pmtu, align 8
  %28 = icmp slt i64 %26, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %25
  store i32 1, i32* %10, align 4
  %30 = load i64, i64* %8, align 8
  %31 = load i64, i64* @ip_rt_min_pmtu, align 8
  %32 = call i64 @min(i64 %30, i64 %31)
  store i64 %32, i64* %6, align 8
  br label %33

33:                                               ; preds = %29, %25
  %34 = load %struct.rtable*, %struct.rtable** %4, align 8
  %35 = getelementptr inbounds %struct.rtable, %struct.rtable* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* %6, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %54

39:                                               ; preds = %33
  %40 = load i32, i32* %10, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %54, label %42

42:                                               ; preds = %39
  %43 = load i64, i64* @jiffies, align 8
  %44 = load %struct.dst_entry*, %struct.dst_entry** %7, align 8
  %45 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load i32, i32* @ip_rt_mtu_expires, align 4
  %48 = sdiv i32 %47, 2
  %49 = sext i32 %48 to i64
  %50 = sub nsw i64 %46, %49
  %51 = call i64 @time_before(i64 %43, i64 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %42
  br label %80

54:                                               ; preds = %42, %39, %33
  %55 = call i32 (...) @rcu_read_lock()
  %56 = load %struct.dst_entry*, %struct.dst_entry** %7, align 8
  %57 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @dev_net(i32 %58)
  %60 = load %struct.flowi4*, %struct.flowi4** %5, align 8
  %61 = call i64 @fib_lookup(i32 %59, %struct.flowi4* %60, %struct.fib_result* %9, i32 0)
  %62 = icmp eq i64 %61, 0
  br i1 %62, label %63, label %78

63:                                               ; preds = %54
  %64 = getelementptr inbounds %struct.fib_result, %struct.fib_result* %9, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call %struct.fib_nh_common* @FIB_RES_NHC(i32 %65)
  store %struct.fib_nh_common* %66, %struct.fib_nh_common** %11, align 8
  %67 = load %struct.fib_nh_common*, %struct.fib_nh_common** %11, align 8
  %68 = load %struct.flowi4*, %struct.flowi4** %5, align 8
  %69 = getelementptr inbounds %struct.flowi4, %struct.flowi4* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i64, i64* %6, align 8
  %72 = load i32, i32* %10, align 4
  %73 = load i64, i64* @jiffies, align 8
  %74 = load i32, i32* @ip_rt_mtu_expires, align 4
  %75 = sext i32 %74 to i64
  %76 = add nsw i64 %73, %75
  %77 = call i32 @update_or_create_fnhe(%struct.fib_nh_common* %67, i32 %70, i32 0, i64 %71, i32 %72, i64 %76)
  br label %78

78:                                               ; preds = %63, %54
  %79 = call i32 (...) @rcu_read_unlock()
  br label %80

80:                                               ; preds = %78, %53, %24, %19
  ret void
}

declare dso_local i64 @ipv4_mtu(%struct.dst_entry*) #1

declare dso_local i64 @ip_mtu_locked(%struct.dst_entry*) #1

declare dso_local i64 @min(i64, i64) #1

declare dso_local i64 @time_before(i64, i64) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local i64 @fib_lookup(i32, %struct.flowi4*, %struct.fib_result*, i32) #1

declare dso_local i32 @dev_net(i32) #1

declare dso_local %struct.fib_nh_common* @FIB_RES_NHC(i32) #1

declare dso_local i32 @update_or_create_fnhe(%struct.fib_nh_common*, i32, i32, i64, i32, i64) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
