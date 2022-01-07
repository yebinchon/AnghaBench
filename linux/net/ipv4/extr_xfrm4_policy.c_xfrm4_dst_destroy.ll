; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_xfrm4_policy.c_xfrm4_dst_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_xfrm4_policy.c_xfrm4_dst_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dst_entry = type { i32 }
%struct.xfrm_dst = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dst_entry*)* @xfrm4_dst_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xfrm4_dst_destroy(%struct.dst_entry* %0) #0 {
  %2 = alloca %struct.dst_entry*, align 8
  %3 = alloca %struct.xfrm_dst*, align 8
  store %struct.dst_entry* %0, %struct.dst_entry** %2, align 8
  %4 = load %struct.dst_entry*, %struct.dst_entry** %2, align 8
  %5 = bitcast %struct.dst_entry* %4 to %struct.xfrm_dst*
  store %struct.xfrm_dst* %5, %struct.xfrm_dst** %3, align 8
  %6 = load %struct.dst_entry*, %struct.dst_entry** %2, align 8
  %7 = call i32 @dst_destroy_metrics_generic(%struct.dst_entry* %6)
  %8 = load %struct.xfrm_dst*, %struct.xfrm_dst** %3, align 8
  %9 = getelementptr inbounds %struct.xfrm_dst, %struct.xfrm_dst* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %1
  %15 = load %struct.xfrm_dst*, %struct.xfrm_dst** %3, align 8
  %16 = getelementptr inbounds %struct.xfrm_dst, %struct.xfrm_dst* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = call i32 @rt_del_uncached_list(%struct.TYPE_4__* %17)
  br label %19

19:                                               ; preds = %14, %1
  %20 = load %struct.xfrm_dst*, %struct.xfrm_dst** %3, align 8
  %21 = call i32 @xfrm_dst_destroy(%struct.xfrm_dst* %20)
  ret void
}

declare dso_local i32 @dst_destroy_metrics_generic(%struct.dst_entry*) #1

declare dso_local i32 @rt_del_uncached_list(%struct.TYPE_4__*) #1

declare dso_local i32 @xfrm_dst_destroy(%struct.xfrm_dst*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
