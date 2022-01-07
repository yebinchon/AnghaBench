; ModuleID = '/home/carl/AnghaBench/linux/net/xdp/extr_xsk.c_xsk_is_setup_for_bpf_map.c'
source_filename = "/home/carl/AnghaBench/linux/net/xdp/extr_xsk.c_xsk_is_setup_for_bpf_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xdp_sock = type { %struct.TYPE_2__*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.TYPE_2__* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xsk_is_setup_for_bpf_map(%struct.xdp_sock* %0) #0 {
  %2 = alloca %struct.xdp_sock*, align 8
  store %struct.xdp_sock* %0, %struct.xdp_sock** %2, align 8
  %3 = load %struct.xdp_sock*, %struct.xdp_sock** %2, align 8
  %4 = getelementptr inbounds %struct.xdp_sock, %struct.xdp_sock* %3, i32 0, i32 1
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %6 = call i64 @READ_ONCE(%struct.TYPE_2__* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %22

8:                                                ; preds = %1
  %9 = load %struct.xdp_sock*, %struct.xdp_sock** %2, align 8
  %10 = getelementptr inbounds %struct.xdp_sock, %struct.xdp_sock* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = call i64 @READ_ONCE(%struct.TYPE_2__* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %22

14:                                               ; preds = %8
  %15 = load %struct.xdp_sock*, %struct.xdp_sock** %2, align 8
  %16 = getelementptr inbounds %struct.xdp_sock, %struct.xdp_sock* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = call i64 @READ_ONCE(%struct.TYPE_2__* %19)
  %21 = icmp ne i64 %20, 0
  br label %22

22:                                               ; preds = %14, %8, %1
  %23 = phi i1 [ false, %8 ], [ false, %1 ], [ %21, %14 ]
  %24 = zext i1 %23 to i32
  ret i32 %24
}

declare dso_local i64 @READ_ONCE(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
