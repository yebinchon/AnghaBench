; ModuleID = '/home/carl/AnghaBench/linux/net/xdp/extr_xsk_queue.h_xskq_validate_addr.c'
source_filename = "/home/carl/AnghaBench/linux/net/xdp/extr_xsk_queue.h_xskq_validate_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xsk_queue = type { i32, i32, i32, i32, i64 }
%struct.xdp_umem = type { i32, i32 }
%struct.xdp_umem_ring = type { i32* }

@XDP_UMEM_UNALIGNED_CHUNK_FLAG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.xsk_queue*, i32*, %struct.xdp_umem*)* @xskq_validate_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @xskq_validate_addr(%struct.xsk_queue* %0, i32* %1, %struct.xdp_umem* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.xsk_queue*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.xdp_umem*, align 8
  %8 = alloca %struct.xdp_umem_ring*, align 8
  %9 = alloca i32, align 4
  store %struct.xsk_queue* %0, %struct.xsk_queue** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.xdp_umem* %2, %struct.xdp_umem** %7, align 8
  br label %10

10:                                               ; preds = %71, %3
  %11 = load %struct.xsk_queue*, %struct.xsk_queue** %5, align 8
  %12 = getelementptr inbounds %struct.xsk_queue, %struct.xsk_queue* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.xsk_queue*, %struct.xsk_queue** %5, align 8
  %15 = getelementptr inbounds %struct.xsk_queue, %struct.xsk_queue* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %13, %16
  br i1 %17, label %18, label %76

18:                                               ; preds = %10
  %19 = load %struct.xsk_queue*, %struct.xsk_queue** %5, align 8
  %20 = getelementptr inbounds %struct.xsk_queue, %struct.xsk_queue* %19, i32 0, i32 4
  %21 = load i64, i64* %20, align 8
  %22 = inttoptr i64 %21 to %struct.xdp_umem_ring*
  store %struct.xdp_umem_ring* %22, %struct.xdp_umem_ring** %8, align 8
  %23 = load %struct.xsk_queue*, %struct.xsk_queue** %5, align 8
  %24 = getelementptr inbounds %struct.xsk_queue, %struct.xsk_queue* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.xsk_queue*, %struct.xsk_queue** %5, align 8
  %27 = getelementptr inbounds %struct.xsk_queue, %struct.xsk_queue* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = and i32 %25, %28
  store i32 %29, i32* %9, align 4
  %30 = load %struct.xdp_umem_ring*, %struct.xdp_umem_ring** %8, align 8
  %31 = getelementptr inbounds %struct.xdp_umem_ring, %struct.xdp_umem_ring* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = load i32, i32* %9, align 4
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @READ_ONCE(i32 %36)
  %38 = load %struct.xsk_queue*, %struct.xsk_queue** %5, align 8
  %39 = getelementptr inbounds %struct.xsk_queue, %struct.xsk_queue* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = and i32 %37, %40
  %42 = load i32*, i32** %6, align 8
  store i32 %41, i32* %42, align 4
  %43 = load %struct.xdp_umem*, %struct.xdp_umem** %7, align 8
  %44 = getelementptr inbounds %struct.xdp_umem, %struct.xdp_umem* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @XDP_UMEM_UNALIGNED_CHUNK_FLAG, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %62

49:                                               ; preds = %18
  %50 = load %struct.xsk_queue*, %struct.xsk_queue** %5, align 8
  %51 = load i32*, i32** %6, align 8
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.xdp_umem*, %struct.xdp_umem** %7, align 8
  %54 = getelementptr inbounds %struct.xdp_umem, %struct.xdp_umem* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.xdp_umem*, %struct.xdp_umem** %7, align 8
  %57 = call i64 @xskq_is_valid_addr_unaligned(%struct.xsk_queue* %50, i32 %52, i32 %55, %struct.xdp_umem* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %49
  %60 = load i32*, i32** %6, align 8
  store i32* %60, i32** %4, align 8
  br label %77

61:                                               ; preds = %49
  br label %71

62:                                               ; preds = %18
  %63 = load %struct.xsk_queue*, %struct.xsk_queue** %5, align 8
  %64 = load i32*, i32** %6, align 8
  %65 = load i32, i32* %64, align 4
  %66 = call i64 @xskq_is_valid_addr(%struct.xsk_queue* %63, i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %62
  %69 = load i32*, i32** %6, align 8
  store i32* %69, i32** %4, align 8
  br label %77

70:                                               ; preds = %62
  br label %71

71:                                               ; preds = %70, %61
  %72 = load %struct.xsk_queue*, %struct.xsk_queue** %5, align 8
  %73 = getelementptr inbounds %struct.xsk_queue, %struct.xsk_queue* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = add i32 %74, 1
  store i32 %75, i32* %73, align 8
  br label %10

76:                                               ; preds = %10
  store i32* null, i32** %4, align 8
  br label %77

77:                                               ; preds = %76, %68, %59
  %78 = load i32*, i32** %4, align 8
  ret i32* %78
}

declare dso_local i32 @READ_ONCE(i32) #1

declare dso_local i64 @xskq_is_valid_addr_unaligned(%struct.xsk_queue*, i32, i32, %struct.xdp_umem*) #1

declare dso_local i64 @xskq_is_valid_addr(%struct.xsk_queue*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
