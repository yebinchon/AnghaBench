; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/bpf/extr_xsk.c_xsk_umem__delete.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/bpf/extr_xsk.c_xsk_umem__delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xsk_umem = type { i32, %struct.TYPE_10__, %struct.TYPE_8__*, %struct.TYPE_6__*, i64 }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_6__ = type { i64 }
%struct.xdp_mmap_offsets = type { %struct.TYPE_9__, %struct.TYPE_7__ }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_7__ = type { i64 }

@EBUSY = common dso_local global i32 0, align 4
@SOL_XDP = common dso_local global i32 0, align 4
@XDP_MMAP_OFFSETS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xsk_umem__delete(%struct.xsk_umem* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.xsk_umem*, align 8
  %4 = alloca %struct.xdp_mmap_offsets, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.xsk_umem* %0, %struct.xsk_umem** %3, align 8
  %7 = load %struct.xsk_umem*, %struct.xsk_umem** %3, align 8
  %8 = icmp ne %struct.xsk_umem* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %75

10:                                               ; preds = %1
  %11 = load %struct.xsk_umem*, %struct.xsk_umem** %3, align 8
  %12 = getelementptr inbounds %struct.xsk_umem, %struct.xsk_umem* %11, i32 0, i32 4
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %10
  %16 = load i32, i32* @EBUSY, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %75

18:                                               ; preds = %10
  store i32 16, i32* %5, align 4
  %19 = load %struct.xsk_umem*, %struct.xsk_umem** %3, align 8
  %20 = getelementptr inbounds %struct.xsk_umem, %struct.xsk_umem* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @SOL_XDP, align 4
  %23 = load i32, i32* @XDP_MMAP_OFFSETS, align 4
  %24 = call i32 @getsockopt(i32 %21, i32 %22, i32 %23, %struct.xdp_mmap_offsets* %4, i32* %5)
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %68, label %27

27:                                               ; preds = %18
  %28 = load %struct.xsk_umem*, %struct.xsk_umem** %3, align 8
  %29 = getelementptr inbounds %struct.xsk_umem, %struct.xsk_umem* %28, i32 0, i32 3
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = getelementptr inbounds %struct.xdp_mmap_offsets, %struct.xdp_mmap_offsets* %4, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = sub nsw i64 %32, %35
  %37 = getelementptr inbounds %struct.xdp_mmap_offsets, %struct.xdp_mmap_offsets* %4, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.xsk_umem*, %struct.xsk_umem** %3, align 8
  %41 = getelementptr inbounds %struct.xsk_umem, %struct.xsk_umem* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = sext i32 %43 to i64
  %45 = mul i64 %44, 4
  %46 = add i64 %39, %45
  %47 = call i32 @munmap(i64 %36, i64 %46)
  %48 = load %struct.xsk_umem*, %struct.xsk_umem** %3, align 8
  %49 = getelementptr inbounds %struct.xsk_umem, %struct.xsk_umem* %48, i32 0, i32 2
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = getelementptr inbounds %struct.xdp_mmap_offsets, %struct.xdp_mmap_offsets* %4, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = sub nsw i64 %52, %55
  %57 = getelementptr inbounds %struct.xdp_mmap_offsets, %struct.xdp_mmap_offsets* %4, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.xsk_umem*, %struct.xsk_umem** %3, align 8
  %61 = getelementptr inbounds %struct.xsk_umem, %struct.xsk_umem* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = sext i32 %63 to i64
  %65 = mul i64 %64, 4
  %66 = add i64 %59, %65
  %67 = call i32 @munmap(i64 %56, i64 %66)
  br label %68

68:                                               ; preds = %27, %18
  %69 = load %struct.xsk_umem*, %struct.xsk_umem** %3, align 8
  %70 = getelementptr inbounds %struct.xsk_umem, %struct.xsk_umem* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @close(i32 %71)
  %73 = load %struct.xsk_umem*, %struct.xsk_umem** %3, align 8
  %74 = call i32 @free(%struct.xsk_umem* %73)
  store i32 0, i32* %2, align 4
  br label %75

75:                                               ; preds = %68, %15, %9
  %76 = load i32, i32* %2, align 4
  ret i32 %76
}

declare dso_local i32 @getsockopt(i32, i32, i32, %struct.xdp_mmap_offsets*, i32*) #1

declare dso_local i32 @munmap(i64, i64) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @free(%struct.xsk_umem*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
