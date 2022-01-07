; ModuleID = '/home/carl/AnghaBench/linux/net/decnet/extr_dn_route.c_dn_dst_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/net/decnet/extr_dn_route.c_dn_dst_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dst_entry = type { i32 }
%struct.dn_route = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dst_entry*)* @dn_dst_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dn_dst_destroy(%struct.dst_entry* %0) #0 {
  %2 = alloca %struct.dst_entry*, align 8
  %3 = alloca %struct.dn_route*, align 8
  store %struct.dst_entry* %0, %struct.dst_entry** %2, align 8
  %4 = load %struct.dst_entry*, %struct.dst_entry** %2, align 8
  %5 = bitcast %struct.dst_entry* %4 to %struct.dn_route*
  store %struct.dn_route* %5, %struct.dn_route** %3, align 8
  %6 = load %struct.dn_route*, %struct.dn_route** %3, align 8
  %7 = getelementptr inbounds %struct.dn_route, %struct.dn_route* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %15

10:                                               ; preds = %1
  %11 = load %struct.dn_route*, %struct.dn_route** %3, align 8
  %12 = getelementptr inbounds %struct.dn_route, %struct.dn_route* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = call i32 @neigh_release(i64 %13)
  br label %15

15:                                               ; preds = %10, %1
  %16 = load %struct.dst_entry*, %struct.dst_entry** %2, align 8
  %17 = call i32 @dst_destroy_metrics_generic(%struct.dst_entry* %16)
  ret void
}

declare dso_local i32 @neigh_release(i64) #1

declare dso_local i32 @dst_destroy_metrics_generic(%struct.dst_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
