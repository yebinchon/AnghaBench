; ModuleID = '/home/carl/AnghaBench/linux/net/xdp/extr_xsk.c_xsk_delete_from_maps.c'
source_filename = "/home/carl/AnghaBench/linux/net/xdp/extr_xsk.c_xsk_delete_from_maps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xdp_sock = type { i32 }
%struct.xsk_map = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xdp_sock*)* @xsk_delete_from_maps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xsk_delete_from_maps(%struct.xdp_sock* %0) #0 {
  %2 = alloca %struct.xdp_sock*, align 8
  %3 = alloca %struct.xdp_sock**, align 8
  %4 = alloca %struct.xsk_map*, align 8
  store %struct.xdp_sock* %0, %struct.xdp_sock** %2, align 8
  store %struct.xdp_sock** null, %struct.xdp_sock*** %3, align 8
  br label %5

5:                                                ; preds = %9, %1
  %6 = load %struct.xdp_sock*, %struct.xdp_sock** %2, align 8
  %7 = call %struct.xsk_map* @xsk_get_map_list_entry(%struct.xdp_sock* %6, %struct.xdp_sock*** %3)
  store %struct.xsk_map* %7, %struct.xsk_map** %4, align 8
  %8 = icmp ne %struct.xsk_map* %7, null
  br i1 %8, label %9, label %16

9:                                                ; preds = %5
  %10 = load %struct.xsk_map*, %struct.xsk_map** %4, align 8
  %11 = load %struct.xdp_sock*, %struct.xdp_sock** %2, align 8
  %12 = load %struct.xdp_sock**, %struct.xdp_sock*** %3, align 8
  %13 = call i32 @xsk_map_try_sock_delete(%struct.xsk_map* %10, %struct.xdp_sock* %11, %struct.xdp_sock** %12)
  %14 = load %struct.xsk_map*, %struct.xsk_map** %4, align 8
  %15 = call i32 @xsk_map_put(%struct.xsk_map* %14)
  br label %5

16:                                               ; preds = %5
  ret void
}

declare dso_local %struct.xsk_map* @xsk_get_map_list_entry(%struct.xdp_sock*, %struct.xdp_sock***) #1

declare dso_local i32 @xsk_map_try_sock_delete(%struct.xsk_map*, %struct.xdp_sock*, %struct.xdp_sock**) #1

declare dso_local i32 @xsk_map_put(%struct.xsk_map*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
