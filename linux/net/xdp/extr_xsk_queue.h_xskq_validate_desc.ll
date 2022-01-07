; ModuleID = '/home/carl/AnghaBench/linux/net/xdp/extr_xsk_queue.h_xskq_validate_desc.c'
source_filename = "/home/carl/AnghaBench/linux/net/xdp/extr_xsk_queue.h_xskq_validate_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xsk_queue = type { i32, i32, i32, i64 }
%struct.xdp_desc = type { i32 }
%struct.xdp_umem = type { i32 }
%struct.xdp_rxtx_ring = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.xdp_desc* (%struct.xsk_queue*, %struct.xdp_desc*, %struct.xdp_umem*)* @xskq_validate_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.xdp_desc* @xskq_validate_desc(%struct.xsk_queue* %0, %struct.xdp_desc* %1, %struct.xdp_umem* %2) #0 {
  %4 = alloca %struct.xdp_desc*, align 8
  %5 = alloca %struct.xsk_queue*, align 8
  %6 = alloca %struct.xdp_desc*, align 8
  %7 = alloca %struct.xdp_umem*, align 8
  %8 = alloca %struct.xdp_rxtx_ring*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.xdp_desc, align 4
  store %struct.xsk_queue* %0, %struct.xsk_queue** %5, align 8
  store %struct.xdp_desc* %1, %struct.xdp_desc** %6, align 8
  store %struct.xdp_umem* %2, %struct.xdp_umem** %7, align 8
  br label %11

11:                                               ; preds = %50, %3
  %12 = load %struct.xsk_queue*, %struct.xsk_queue** %5, align 8
  %13 = getelementptr inbounds %struct.xsk_queue, %struct.xsk_queue* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.xsk_queue*, %struct.xsk_queue** %5, align 8
  %16 = getelementptr inbounds %struct.xsk_queue, %struct.xsk_queue* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %14, %17
  br i1 %18, label %19, label %55

19:                                               ; preds = %11
  %20 = load %struct.xsk_queue*, %struct.xsk_queue** %5, align 8
  %21 = getelementptr inbounds %struct.xsk_queue, %struct.xsk_queue* %20, i32 0, i32 3
  %22 = load i64, i64* %21, align 8
  %23 = inttoptr i64 %22 to %struct.xdp_rxtx_ring*
  store %struct.xdp_rxtx_ring* %23, %struct.xdp_rxtx_ring** %8, align 8
  %24 = load %struct.xsk_queue*, %struct.xsk_queue** %5, align 8
  %25 = getelementptr inbounds %struct.xsk_queue, %struct.xsk_queue* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.xsk_queue*, %struct.xsk_queue** %5, align 8
  %28 = getelementptr inbounds %struct.xsk_queue, %struct.xsk_queue* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = and i32 %26, %29
  store i32 %30, i32* %9, align 4
  %31 = load %struct.xdp_desc*, %struct.xdp_desc** %6, align 8
  %32 = load %struct.xdp_rxtx_ring*, %struct.xdp_rxtx_ring** %8, align 8
  %33 = getelementptr inbounds %struct.xdp_rxtx_ring, %struct.xdp_rxtx_ring* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = load i32, i32* %9, align 4
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @READ_ONCE(i32 %38)
  %40 = getelementptr inbounds %struct.xdp_desc, %struct.xdp_desc* %10, i32 0, i32 0
  store i32 %39, i32* %40, align 4
  %41 = bitcast %struct.xdp_desc* %31 to i8*
  %42 = bitcast %struct.xdp_desc* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %41, i8* align 4 %42, i64 4, i1 false)
  %43 = load %struct.xsk_queue*, %struct.xsk_queue** %5, align 8
  %44 = load %struct.xdp_desc*, %struct.xdp_desc** %6, align 8
  %45 = load %struct.xdp_umem*, %struct.xdp_umem** %7, align 8
  %46 = call i64 @xskq_is_valid_desc(%struct.xsk_queue* %43, %struct.xdp_desc* %44, %struct.xdp_umem* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %19
  %49 = load %struct.xdp_desc*, %struct.xdp_desc** %6, align 8
  store %struct.xdp_desc* %49, %struct.xdp_desc** %4, align 8
  br label %56

50:                                               ; preds = %19
  %51 = load %struct.xsk_queue*, %struct.xsk_queue** %5, align 8
  %52 = getelementptr inbounds %struct.xsk_queue, %struct.xsk_queue* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = add i32 %53, 1
  store i32 %54, i32* %52, align 8
  br label %11

55:                                               ; preds = %11
  store %struct.xdp_desc* null, %struct.xdp_desc** %4, align 8
  br label %56

56:                                               ; preds = %55, %48
  %57 = load %struct.xdp_desc*, %struct.xdp_desc** %4, align 8
  ret %struct.xdp_desc* %57
}

declare dso_local i32 @READ_ONCE(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @xskq_is_valid_desc(%struct.xsk_queue*, %struct.xdp_desc*, %struct.xdp_umem*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
