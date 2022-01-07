; ModuleID = '/home/carl/AnghaBench/linux/net/xdp/extr_xsk_queue.h_xskq_is_valid_desc.c'
source_filename = "/home/carl/AnghaBench/linux/net/xdp/extr_xsk_queue.h_xskq_is_valid_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xsk_queue = type { i32, i32 }
%struct.xdp_desc = type { i32, i32, i64 }
%struct.xdp_umem = type { i32, i32 }

@XDP_UMEM_UNALIGNED_CHUNK_FLAG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xsk_queue*, %struct.xdp_desc*, %struct.xdp_umem*)* @xskq_is_valid_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xskq_is_valid_desc(%struct.xsk_queue* %0, %struct.xdp_desc* %1, %struct.xdp_umem* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.xsk_queue*, align 8
  %6 = alloca %struct.xdp_desc*, align 8
  %7 = alloca %struct.xdp_umem*, align 8
  store %struct.xsk_queue* %0, %struct.xsk_queue** %5, align 8
  store %struct.xdp_desc* %1, %struct.xdp_desc** %6, align 8
  store %struct.xdp_umem* %2, %struct.xdp_umem** %7, align 8
  %8 = load %struct.xdp_umem*, %struct.xdp_umem** %7, align 8
  %9 = getelementptr inbounds %struct.xdp_umem, %struct.xdp_umem* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @XDP_UMEM_UNALIGNED_CHUNK_FLAG, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %45

14:                                               ; preds = %3
  %15 = load %struct.xsk_queue*, %struct.xsk_queue** %5, align 8
  %16 = load %struct.xdp_desc*, %struct.xdp_desc** %6, align 8
  %17 = getelementptr inbounds %struct.xdp_desc, %struct.xdp_desc* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.xdp_desc*, %struct.xdp_desc** %6, align 8
  %20 = getelementptr inbounds %struct.xdp_desc, %struct.xdp_desc* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.xdp_umem*, %struct.xdp_umem** %7, align 8
  %23 = call i32 @xskq_is_valid_addr_unaligned(%struct.xsk_queue* %15, i32 %18, i32 %21, %struct.xdp_umem* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %14
  store i32 0, i32* %4, align 4
  br label %84

26:                                               ; preds = %14
  %27 = load %struct.xdp_desc*, %struct.xdp_desc** %6, align 8
  %28 = getelementptr inbounds %struct.xdp_desc, %struct.xdp_desc* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.xdp_umem*, %struct.xdp_umem** %7, align 8
  %31 = getelementptr inbounds %struct.xdp_umem, %struct.xdp_umem* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = icmp sgt i32 %29, %32
  br i1 %33, label %39, label %34

34:                                               ; preds = %26
  %35 = load %struct.xdp_desc*, %struct.xdp_desc** %6, align 8
  %36 = getelementptr inbounds %struct.xdp_desc, %struct.xdp_desc* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %34, %26
  %40 = load %struct.xsk_queue*, %struct.xsk_queue** %5, align 8
  %41 = getelementptr inbounds %struct.xsk_queue, %struct.xsk_queue* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %41, align 4
  store i32 0, i32* %4, align 4
  br label %84

44:                                               ; preds = %34
  store i32 1, i32* %4, align 4
  br label %84

45:                                               ; preds = %3
  %46 = load %struct.xsk_queue*, %struct.xsk_queue** %5, align 8
  %47 = load %struct.xdp_desc*, %struct.xdp_desc** %6, align 8
  %48 = getelementptr inbounds %struct.xdp_desc, %struct.xdp_desc* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @xskq_is_valid_addr(%struct.xsk_queue* %46, i32 %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %45
  store i32 0, i32* %4, align 4
  br label %84

53:                                               ; preds = %45
  %54 = load %struct.xdp_desc*, %struct.xdp_desc** %6, align 8
  %55 = getelementptr inbounds %struct.xdp_desc, %struct.xdp_desc* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.xdp_desc*, %struct.xdp_desc** %6, align 8
  %58 = getelementptr inbounds %struct.xdp_desc, %struct.xdp_desc* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = add nsw i32 %56, %59
  %61 = load %struct.xsk_queue*, %struct.xsk_queue** %5, align 8
  %62 = getelementptr inbounds %struct.xsk_queue, %struct.xsk_queue* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = and i32 %60, %63
  %65 = load %struct.xdp_desc*, %struct.xdp_desc** %6, align 8
  %66 = getelementptr inbounds %struct.xdp_desc, %struct.xdp_desc* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.xsk_queue*, %struct.xsk_queue** %5, align 8
  %69 = getelementptr inbounds %struct.xsk_queue, %struct.xsk_queue* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = and i32 %67, %70
  %72 = icmp ne i32 %64, %71
  br i1 %72, label %78, label %73

73:                                               ; preds = %53
  %74 = load %struct.xdp_desc*, %struct.xdp_desc** %6, align 8
  %75 = getelementptr inbounds %struct.xdp_desc, %struct.xdp_desc* %74, i32 0, i32 2
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %83

78:                                               ; preds = %73, %53
  %79 = load %struct.xsk_queue*, %struct.xsk_queue** %5, align 8
  %80 = getelementptr inbounds %struct.xsk_queue, %struct.xsk_queue* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %80, align 4
  store i32 0, i32* %4, align 4
  br label %84

83:                                               ; preds = %73
  store i32 1, i32* %4, align 4
  br label %84

84:                                               ; preds = %83, %78, %52, %44, %39, %25
  %85 = load i32, i32* %4, align 4
  ret i32 %85
}

declare dso_local i32 @xskq_is_valid_addr_unaligned(%struct.xsk_queue*, i32, i32, %struct.xdp_umem*) #1

declare dso_local i32 @xskq_is_valid_addr(%struct.xsk_queue*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
