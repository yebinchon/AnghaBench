; ModuleID = '/home/carl/AnghaBench/linux/samples/bpf/extr_xdpsock_user.c_complete_tx_only.c'
source_filename = "/home/carl/AnghaBench/linux/samples/bpf/extr_xdpsock_user.c_complete_tx_only.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xsk_socket_info = type { i32, i64, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@opt_need_wakeup = common dso_local global i32 0, align 4
@BATCH_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xsk_socket_info*)* @complete_tx_only to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @complete_tx_only(%struct.xsk_socket_info* %0) #0 {
  %2 = alloca %struct.xsk_socket_info*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.xsk_socket_info* %0, %struct.xsk_socket_info** %2, align 8
  %5 = load %struct.xsk_socket_info*, %struct.xsk_socket_info** %2, align 8
  %6 = getelementptr inbounds %struct.xsk_socket_info, %struct.xsk_socket_info* %5, i32 0, i32 1
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %48

10:                                               ; preds = %1
  %11 = load i32, i32* @opt_need_wakeup, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %10
  %14 = load %struct.xsk_socket_info*, %struct.xsk_socket_info** %2, align 8
  %15 = getelementptr inbounds %struct.xsk_socket_info, %struct.xsk_socket_info* %14, i32 0, i32 3
  %16 = call i64 @xsk_ring_prod__needs_wakeup(i32* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %13, %10
  %19 = load %struct.xsk_socket_info*, %struct.xsk_socket_info** %2, align 8
  %20 = call i32 @kick_tx(%struct.xsk_socket_info* %19)
  br label %21

21:                                               ; preds = %18, %13
  %22 = load %struct.xsk_socket_info*, %struct.xsk_socket_info** %2, align 8
  %23 = getelementptr inbounds %struct.xsk_socket_info, %struct.xsk_socket_info* %22, i32 0, i32 2
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* @BATCH_SIZE, align 4
  %27 = call i32 @xsk_ring_cons__peek(i32* %25, i32 %26, i32* %4)
  store i32 %27, i32* %3, align 4
  %28 = load i32, i32* %3, align 4
  %29 = icmp ugt i32 %28, 0
  br i1 %29, label %30, label %48

30:                                               ; preds = %21
  %31 = load %struct.xsk_socket_info*, %struct.xsk_socket_info** %2, align 8
  %32 = getelementptr inbounds %struct.xsk_socket_info, %struct.xsk_socket_info* %31, i32 0, i32 2
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %3, align 4
  %36 = call i32 @xsk_ring_cons__release(i32* %34, i32 %35)
  %37 = load i32, i32* %3, align 4
  %38 = zext i32 %37 to i64
  %39 = load %struct.xsk_socket_info*, %struct.xsk_socket_info** %2, align 8
  %40 = getelementptr inbounds %struct.xsk_socket_info, %struct.xsk_socket_info* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = sub nsw i64 %41, %38
  store i64 %42, i64* %40, align 8
  %43 = load i32, i32* %3, align 4
  %44 = load %struct.xsk_socket_info*, %struct.xsk_socket_info** %2, align 8
  %45 = getelementptr inbounds %struct.xsk_socket_info, %struct.xsk_socket_info* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = add i32 %46, %43
  store i32 %47, i32* %45, align 8
  br label %48

48:                                               ; preds = %9, %30, %21
  ret void
}

declare dso_local i64 @xsk_ring_prod__needs_wakeup(i32*) #1

declare dso_local i32 @kick_tx(%struct.xsk_socket_info*) #1

declare dso_local i32 @xsk_ring_cons__peek(i32*, i32, i32*) #1

declare dso_local i32 @xsk_ring_cons__release(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
