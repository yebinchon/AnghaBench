; ModuleID = '/home/carl/AnghaBench/linux/samples/bpf/extr_xdpsock_user.c_tx_only.c'
source_filename = "/home/carl/AnghaBench/linux/samples/bpf/extr_xdpsock_user.c_tx_only.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xsk_socket_info = type { i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@BATCH_SIZE = common dso_local global i32 0, align 4
@XSK_UMEM__DEFAULT_FRAME_SHIFT = common dso_local global i32 0, align 4
@NUM_FRAMES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xsk_socket_info*, i32)* @tx_only to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tx_only(%struct.xsk_socket_info* %0, i32 %1) #0 {
  %3 = alloca %struct.xsk_socket_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.xsk_socket_info* %0, %struct.xsk_socket_info** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.xsk_socket_info*, %struct.xsk_socket_info** %3, align 8
  %8 = getelementptr inbounds %struct.xsk_socket_info, %struct.xsk_socket_info* %7, i32 0, i32 1
  %9 = load i32, i32* @BATCH_SIZE, align 4
  %10 = call i32 @xsk_ring_prod__reserve(i32* %8, i32 %9, i32* %5)
  %11 = load i32, i32* @BATCH_SIZE, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %13, label %57

13:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %14

14:                                               ; preds = %38, %13
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* @BATCH_SIZE, align 4
  %17 = icmp ult i32 %15, %16
  br i1 %17, label %18, label %41

18:                                               ; preds = %14
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* %6, align 4
  %21 = add i32 %19, %20
  %22 = load i32, i32* @XSK_UMEM__DEFAULT_FRAME_SHIFT, align 4
  %23 = shl i32 %21, %22
  %24 = load %struct.xsk_socket_info*, %struct.xsk_socket_info** %3, align 8
  %25 = getelementptr inbounds %struct.xsk_socket_info, %struct.xsk_socket_info* %24, i32 0, i32 1
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* %6, align 4
  %28 = add i32 %26, %27
  %29 = call %struct.TYPE_2__* @xsk_ring_prod__tx_desc(i32* %25, i32 %28)
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  store i32 %23, i32* %30, align 4
  %31 = load %struct.xsk_socket_info*, %struct.xsk_socket_info** %3, align 8
  %32 = getelementptr inbounds %struct.xsk_socket_info, %struct.xsk_socket_info* %31, i32 0, i32 1
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* %6, align 4
  %35 = add i32 %33, %34
  %36 = call %struct.TYPE_2__* @xsk_ring_prod__tx_desc(i32* %32, i32 %35)
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  store i32 3, i32* %37, align 4
  br label %38

38:                                               ; preds = %18
  %39 = load i32, i32* %6, align 4
  %40 = add i32 %39, 1
  store i32 %40, i32* %6, align 4
  br label %14

41:                                               ; preds = %14
  %42 = load %struct.xsk_socket_info*, %struct.xsk_socket_info** %3, align 8
  %43 = getelementptr inbounds %struct.xsk_socket_info, %struct.xsk_socket_info* %42, i32 0, i32 1
  %44 = load i32, i32* @BATCH_SIZE, align 4
  %45 = call i32 @xsk_ring_prod__submit(i32* %43, i32 %44)
  %46 = load i32, i32* @BATCH_SIZE, align 4
  %47 = load %struct.xsk_socket_info*, %struct.xsk_socket_info** %3, align 8
  %48 = getelementptr inbounds %struct.xsk_socket_info, %struct.xsk_socket_info* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = add i32 %49, %46
  store i32 %50, i32* %48, align 4
  %51 = load i32, i32* @BATCH_SIZE, align 4
  %52 = load i32, i32* %4, align 4
  %53 = add i32 %52, %51
  store i32 %53, i32* %4, align 4
  %54 = load i32, i32* @NUM_FRAMES, align 4
  %55 = load i32, i32* %4, align 4
  %56 = urem i32 %55, %54
  store i32 %56, i32* %4, align 4
  br label %57

57:                                               ; preds = %41, %2
  %58 = load %struct.xsk_socket_info*, %struct.xsk_socket_info** %3, align 8
  %59 = call i32 @complete_tx_only(%struct.xsk_socket_info* %58)
  ret void
}

declare dso_local i32 @xsk_ring_prod__reserve(i32*, i32, i32*) #1

declare dso_local %struct.TYPE_2__* @xsk_ring_prod__tx_desc(i32*, i32) #1

declare dso_local i32 @xsk_ring_prod__submit(i32*, i32) #1

declare dso_local i32 @complete_tx_only(%struct.xsk_socket_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
