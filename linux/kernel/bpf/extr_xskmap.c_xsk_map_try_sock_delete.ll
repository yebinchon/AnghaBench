; ModuleID = '/home/carl/AnghaBench/linux/kernel/bpf/extr_xskmap.c_xsk_map_try_sock_delete.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/bpf/extr_xskmap.c_xsk_map_try_sock_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xsk_map = type { i32 }
%struct.xdp_sock = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xsk_map_try_sock_delete(%struct.xsk_map* %0, %struct.xdp_sock* %1, %struct.xdp_sock** %2) #0 {
  %4 = alloca %struct.xsk_map*, align 8
  %5 = alloca %struct.xdp_sock*, align 8
  %6 = alloca %struct.xdp_sock**, align 8
  store %struct.xsk_map* %0, %struct.xsk_map** %4, align 8
  store %struct.xdp_sock* %1, %struct.xdp_sock** %5, align 8
  store %struct.xdp_sock** %2, %struct.xdp_sock*** %6, align 8
  %7 = load %struct.xsk_map*, %struct.xsk_map** %4, align 8
  %8 = getelementptr inbounds %struct.xsk_map, %struct.xsk_map* %7, i32 0, i32 0
  %9 = call i32 @spin_lock_bh(i32* %8)
  %10 = load %struct.xdp_sock**, %struct.xdp_sock*** %6, align 8
  %11 = load %struct.xdp_sock*, %struct.xdp_sock** %10, align 8
  %12 = call %struct.xdp_sock* @READ_ONCE(%struct.xdp_sock* %11)
  %13 = load %struct.xdp_sock*, %struct.xdp_sock** %5, align 8
  %14 = icmp eq %struct.xdp_sock* %12, %13
  br i1 %14, label %15, label %22

15:                                               ; preds = %3
  %16 = load %struct.xdp_sock**, %struct.xdp_sock*** %6, align 8
  %17 = load %struct.xdp_sock*, %struct.xdp_sock** %16, align 8
  %18 = call i32 @WRITE_ONCE(%struct.xdp_sock* %17, i32* null)
  %19 = load %struct.xdp_sock*, %struct.xdp_sock** %5, align 8
  %20 = load %struct.xdp_sock**, %struct.xdp_sock*** %6, align 8
  %21 = call i32 @xsk_map_sock_delete(%struct.xdp_sock* %19, %struct.xdp_sock** %20)
  br label %22

22:                                               ; preds = %15, %3
  %23 = load %struct.xsk_map*, %struct.xsk_map** %4, align 8
  %24 = getelementptr inbounds %struct.xsk_map, %struct.xsk_map* %23, i32 0, i32 0
  %25 = call i32 @spin_unlock_bh(i32* %24)
  ret void
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local %struct.xdp_sock* @READ_ONCE(%struct.xdp_sock*) #1

declare dso_local i32 @WRITE_ONCE(%struct.xdp_sock*, i32*) #1

declare dso_local i32 @xsk_map_sock_delete(%struct.xdp_sock*, %struct.xdp_sock**) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
