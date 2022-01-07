; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_ip6_output.c_ip6_sk_dst_check.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_ip6_output.c_ip6_sk_dst_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.dst_entry = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i64 }
%struct.flowi6 = type { i32, i64, i32, i32 }
%struct.ipv6_pinfo = type { i32, i32 }
%struct.rt6_info = type { i32, i32 }

@AF_INET6 = common dso_local global i64 0, align 8
@FLOWI_FLAG_SKIP_NH_OIF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dst_entry* (%struct.sock*, %struct.dst_entry*, %struct.flowi6*)* @ip6_sk_dst_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dst_entry* @ip6_sk_dst_check(%struct.sock* %0, %struct.dst_entry* %1, %struct.flowi6* %2) #0 {
  %4 = alloca %struct.dst_entry*, align 8
  %5 = alloca %struct.sock*, align 8
  %6 = alloca %struct.dst_entry*, align 8
  %7 = alloca %struct.flowi6*, align 8
  %8 = alloca %struct.ipv6_pinfo*, align 8
  %9 = alloca %struct.rt6_info*, align 8
  store %struct.sock* %0, %struct.sock** %5, align 8
  store %struct.dst_entry* %1, %struct.dst_entry** %6, align 8
  store %struct.flowi6* %2, %struct.flowi6** %7, align 8
  %10 = load %struct.sock*, %struct.sock** %5, align 8
  %11 = call %struct.ipv6_pinfo* @inet6_sk(%struct.sock* %10)
  store %struct.ipv6_pinfo* %11, %struct.ipv6_pinfo** %8, align 8
  %12 = load %struct.dst_entry*, %struct.dst_entry** %6, align 8
  %13 = icmp ne %struct.dst_entry* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %3
  br label %64

15:                                               ; preds = %3
  %16 = load %struct.dst_entry*, %struct.dst_entry** %6, align 8
  %17 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %16, i32 0, i32 1
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @AF_INET6, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %15
  %24 = load %struct.dst_entry*, %struct.dst_entry** %6, align 8
  %25 = call i32 @dst_release(%struct.dst_entry* %24)
  store %struct.dst_entry* null, %struct.dst_entry** %4, align 8
  br label %66

26:                                               ; preds = %15
  %27 = load %struct.dst_entry*, %struct.dst_entry** %6, align 8
  %28 = bitcast %struct.dst_entry* %27 to %struct.rt6_info*
  store %struct.rt6_info* %28, %struct.rt6_info** %9, align 8
  %29 = load %struct.rt6_info*, %struct.rt6_info** %9, align 8
  %30 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %29, i32 0, i32 1
  %31 = load %struct.flowi6*, %struct.flowi6** %7, align 8
  %32 = getelementptr inbounds %struct.flowi6, %struct.flowi6* %31, i32 0, i32 3
  %33 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %8, align 8
  %34 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i64 @ip6_rt_check(i32* %30, i32* %32, i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %60, label %38

38:                                               ; preds = %26
  %39 = load %struct.flowi6*, %struct.flowi6** %7, align 8
  %40 = getelementptr inbounds %struct.flowi6, %struct.flowi6* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @FLOWI_FLAG_SKIP_NH_OIF, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %63, label %45

45:                                               ; preds = %38
  %46 = load %struct.flowi6*, %struct.flowi6** %7, align 8
  %47 = getelementptr inbounds %struct.flowi6, %struct.flowi6* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %63

50:                                               ; preds = %45
  %51 = load %struct.flowi6*, %struct.flowi6** %7, align 8
  %52 = getelementptr inbounds %struct.flowi6, %struct.flowi6* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.dst_entry*, %struct.dst_entry** %6, align 8
  %55 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %54, i32 0, i32 0
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %53, %58
  br i1 %59, label %60, label %63

60:                                               ; preds = %50, %26
  %61 = load %struct.dst_entry*, %struct.dst_entry** %6, align 8
  %62 = call i32 @dst_release(%struct.dst_entry* %61)
  store %struct.dst_entry* null, %struct.dst_entry** %6, align 8
  br label %63

63:                                               ; preds = %60, %50, %45, %38
  br label %64

64:                                               ; preds = %63, %14
  %65 = load %struct.dst_entry*, %struct.dst_entry** %6, align 8
  store %struct.dst_entry* %65, %struct.dst_entry** %4, align 8
  br label %66

66:                                               ; preds = %64, %23
  %67 = load %struct.dst_entry*, %struct.dst_entry** %4, align 8
  ret %struct.dst_entry* %67
}

declare dso_local %struct.ipv6_pinfo* @inet6_sk(%struct.sock*) #1

declare dso_local i32 @dst_release(%struct.dst_entry*) #1

declare dso_local i64 @ip6_rt_check(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
