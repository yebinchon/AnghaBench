; ModuleID = '/home/carl/AnghaBench/linux/net/xdp/extr_xsk.c_xsk_check_page_contiguity.c'
source_filename = "/home/carl/AnghaBench/linux/net/xdp/extr_xsk.c_xsk_check_page_contiguity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xdp_umem = type { i32, %struct.xdp_umem_page* }
%struct.xdp_umem_page = type { i64, i64 }

@XDP_ZEROCOPY = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8
@XSK_NEXT_PG_CONTIG_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xdp_umem*, i32)* @xsk_check_page_contiguity to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xsk_check_page_contiguity(%struct.xdp_umem* %0, i32 %1) #0 {
  %3 = alloca %struct.xdp_umem*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.xdp_umem_page*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.xdp_umem* %0, %struct.xdp_umem** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.xdp_umem*, %struct.xdp_umem** %3, align 8
  %9 = getelementptr inbounds %struct.xdp_umem, %struct.xdp_umem* %8, i32 0, i32 1
  %10 = load %struct.xdp_umem_page*, %struct.xdp_umem_page** %9, align 8
  store %struct.xdp_umem_page* %10, %struct.xdp_umem_page** %5, align 8
  store i32 0, i32* %6, align 4
  br label %11

11:                                               ; preds = %72, %2
  %12 = load i32, i32* %6, align 4
  %13 = load %struct.xdp_umem*, %struct.xdp_umem** %3, align 8
  %14 = getelementptr inbounds %struct.xdp_umem, %struct.xdp_umem* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = sub nsw i32 %15, 1
  %17 = icmp slt i32 %12, %16
  br i1 %17, label %18, label %75

18:                                               ; preds = %11
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* @XDP_ZEROCOPY, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %41

23:                                               ; preds = %18
  %24 = load %struct.xdp_umem_page*, %struct.xdp_umem_page** %5, align 8
  %25 = load i32, i32* %6, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.xdp_umem_page, %struct.xdp_umem_page* %24, i64 %26
  %28 = getelementptr inbounds %struct.xdp_umem_page, %struct.xdp_umem_page* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @PAGE_SIZE, align 8
  %31 = add nsw i64 %29, %30
  %32 = load %struct.xdp_umem_page*, %struct.xdp_umem_page** %5, align 8
  %33 = load i32, i32* %6, align 4
  %34 = add nsw i32 %33, 1
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.xdp_umem_page, %struct.xdp_umem_page* %32, i64 %35
  %37 = getelementptr inbounds %struct.xdp_umem_page, %struct.xdp_umem_page* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp eq i64 %31, %38
  %40 = zext i1 %39 to i32
  br label %59

41:                                               ; preds = %18
  %42 = load %struct.xdp_umem_page*, %struct.xdp_umem_page** %5, align 8
  %43 = load i32, i32* %6, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.xdp_umem_page, %struct.xdp_umem_page* %42, i64 %44
  %46 = getelementptr inbounds %struct.xdp_umem_page, %struct.xdp_umem_page* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @PAGE_SIZE, align 8
  %49 = add nsw i64 %47, %48
  %50 = load %struct.xdp_umem_page*, %struct.xdp_umem_page** %5, align 8
  %51 = load i32, i32* %6, align 4
  %52 = add nsw i32 %51, 1
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.xdp_umem_page, %struct.xdp_umem_page* %50, i64 %53
  %55 = getelementptr inbounds %struct.xdp_umem_page, %struct.xdp_umem_page* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = icmp eq i64 %49, %56
  %58 = zext i1 %57 to i32
  br label %59

59:                                               ; preds = %41, %23
  %60 = phi i32 [ %40, %23 ], [ %58, %41 ]
  store i32 %60, i32* %7, align 4
  %61 = load i32, i32* %7, align 4
  %62 = load i32, i32* @XSK_NEXT_PG_CONTIG_SHIFT, align 4
  %63 = shl i32 %61, %62
  %64 = sext i32 %63 to i64
  %65 = load %struct.xdp_umem_page*, %struct.xdp_umem_page** %5, align 8
  %66 = load i32, i32* %6, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.xdp_umem_page, %struct.xdp_umem_page* %65, i64 %67
  %69 = getelementptr inbounds %struct.xdp_umem_page, %struct.xdp_umem_page* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = add nsw i64 %70, %64
  store i64 %71, i64* %69, align 8
  br label %72

72:                                               ; preds = %59
  %73 = load i32, i32* %6, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %6, align 4
  br label %11

75:                                               ; preds = %11
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
