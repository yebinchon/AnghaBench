; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_xdp.c_xdp_attachment_query.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_xdp.c_xdp_attachment_query.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xdp_attachment_info = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.netdev_bpf = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xdp_attachment_query(%struct.xdp_attachment_info* %0, %struct.netdev_bpf* %1) #0 {
  %3 = alloca %struct.xdp_attachment_info*, align 8
  %4 = alloca %struct.netdev_bpf*, align 8
  store %struct.xdp_attachment_info* %0, %struct.xdp_attachment_info** %3, align 8
  store %struct.netdev_bpf* %1, %struct.netdev_bpf** %4, align 8
  %5 = load %struct.xdp_attachment_info*, %struct.xdp_attachment_info** %3, align 8
  %6 = getelementptr inbounds %struct.xdp_attachment_info, %struct.xdp_attachment_info* %5, i32 0, i32 1
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %8 = icmp ne %struct.TYPE_4__* %7, null
  br i1 %8, label %9, label %17

9:                                                ; preds = %2
  %10 = load %struct.xdp_attachment_info*, %struct.xdp_attachment_info** %3, align 8
  %11 = getelementptr inbounds %struct.xdp_attachment_info, %struct.xdp_attachment_info* %10, i32 0, i32 1
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  br label %18

17:                                               ; preds = %2
  br label %18

18:                                               ; preds = %17, %9
  %19 = phi i32 [ %16, %9 ], [ 0, %17 ]
  %20 = load %struct.netdev_bpf*, %struct.netdev_bpf** %4, align 8
  %21 = getelementptr inbounds %struct.netdev_bpf, %struct.netdev_bpf* %20, i32 0, i32 1
  store i32 %19, i32* %21, align 4
  %22 = load %struct.xdp_attachment_info*, %struct.xdp_attachment_info** %3, align 8
  %23 = getelementptr inbounds %struct.xdp_attachment_info, %struct.xdp_attachment_info* %22, i32 0, i32 1
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = icmp ne %struct.TYPE_4__* %24, null
  br i1 %25, label %26, label %30

26:                                               ; preds = %18
  %27 = load %struct.xdp_attachment_info*, %struct.xdp_attachment_info** %3, align 8
  %28 = getelementptr inbounds %struct.xdp_attachment_info, %struct.xdp_attachment_info* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  br label %31

30:                                               ; preds = %18
  br label %31

31:                                               ; preds = %30, %26
  %32 = phi i32 [ %29, %26 ], [ 0, %30 ]
  %33 = load %struct.netdev_bpf*, %struct.netdev_bpf** %4, align 8
  %34 = getelementptr inbounds %struct.netdev_bpf, %struct.netdev_bpf* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 4
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
