; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/bpf/extr_xsk.c_xsk_socket__delete.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/bpf/extr_xsk.c_xsk_socket__delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xsk_socket = type { i32, i64, %struct.TYPE_12__*, %struct.TYPE_11__, %struct.TYPE_9__*, %struct.TYPE_7__* }
%struct.TYPE_12__ = type { i64, i32 }
%struct.TYPE_11__ = type { i64, i64 }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_7__ = type { i64 }
%struct.xdp_mmap_offsets = type { %struct.TYPE_10__, %struct.TYPE_8__ }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_8__ = type { i64 }

@SOL_XDP = common dso_local global i32 0, align 4
@XDP_MMAP_OFFSETS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xsk_socket__delete(%struct.xsk_socket* %0) #0 {
  %2 = alloca %struct.xsk_socket*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.xdp_mmap_offsets, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.xsk_socket* %0, %struct.xsk_socket** %2, align 8
  store i64 4, i64* %3, align 8
  %7 = load %struct.xsk_socket*, %struct.xsk_socket** %2, align 8
  %8 = icmp ne %struct.xsk_socket* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %109

10:                                               ; preds = %1
  %11 = load %struct.xsk_socket*, %struct.xsk_socket** %2, align 8
  %12 = getelementptr inbounds %struct.xsk_socket, %struct.xsk_socket* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, -1
  br i1 %14, label %15, label %23

15:                                               ; preds = %10
  %16 = load %struct.xsk_socket*, %struct.xsk_socket** %2, align 8
  %17 = call i32 @xsk_delete_bpf_maps(%struct.xsk_socket* %16)
  %18 = load %struct.xsk_socket*, %struct.xsk_socket** %2, align 8
  %19 = getelementptr inbounds %struct.xsk_socket, %struct.xsk_socket* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = sext i32 %20 to i64
  %22 = call i32 @close(i64 %21)
  br label %23

23:                                               ; preds = %15, %10
  store i32 16, i32* %5, align 4
  %24 = load %struct.xsk_socket*, %struct.xsk_socket** %2, align 8
  %25 = getelementptr inbounds %struct.xsk_socket, %struct.xsk_socket* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load i32, i32* @SOL_XDP, align 4
  %28 = load i32, i32* @XDP_MMAP_OFFSETS, align 4
  %29 = call i32 @getsockopt(i64 %26, i32 %27, i32 %28, %struct.xdp_mmap_offsets* %4, i32* %5)
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %6, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %85, label %32

32:                                               ; preds = %23
  %33 = load %struct.xsk_socket*, %struct.xsk_socket** %2, align 8
  %34 = getelementptr inbounds %struct.xsk_socket, %struct.xsk_socket* %33, i32 0, i32 5
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %34, align 8
  %36 = icmp ne %struct.TYPE_7__* %35, null
  br i1 %36, label %37, label %58

37:                                               ; preds = %32
  %38 = load %struct.xsk_socket*, %struct.xsk_socket** %2, align 8
  %39 = getelementptr inbounds %struct.xsk_socket, %struct.xsk_socket* %38, i32 0, i32 5
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = getelementptr inbounds %struct.xdp_mmap_offsets, %struct.xdp_mmap_offsets* %4, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = sub nsw i64 %42, %45
  %47 = getelementptr inbounds %struct.xdp_mmap_offsets, %struct.xdp_mmap_offsets* %4, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.xsk_socket*, %struct.xsk_socket** %2, align 8
  %51 = getelementptr inbounds %struct.xsk_socket, %struct.xsk_socket* %50, i32 0, i32 3
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* %3, align 8
  %55 = mul i64 %53, %54
  %56 = add i64 %49, %55
  %57 = call i32 @munmap(i64 %46, i64 %56)
  br label %58

58:                                               ; preds = %37, %32
  %59 = load %struct.xsk_socket*, %struct.xsk_socket** %2, align 8
  %60 = getelementptr inbounds %struct.xsk_socket, %struct.xsk_socket* %59, i32 0, i32 4
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %60, align 8
  %62 = icmp ne %struct.TYPE_9__* %61, null
  br i1 %62, label %63, label %84

63:                                               ; preds = %58
  %64 = load %struct.xsk_socket*, %struct.xsk_socket** %2, align 8
  %65 = getelementptr inbounds %struct.xsk_socket, %struct.xsk_socket* %64, i32 0, i32 4
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = getelementptr inbounds %struct.xdp_mmap_offsets, %struct.xdp_mmap_offsets* %4, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = sub nsw i64 %68, %71
  %73 = getelementptr inbounds %struct.xdp_mmap_offsets, %struct.xdp_mmap_offsets* %4, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load %struct.xsk_socket*, %struct.xsk_socket** %2, align 8
  %77 = getelementptr inbounds %struct.xsk_socket, %struct.xsk_socket* %76, i32 0, i32 3
  %78 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* %3, align 8
  %81 = mul i64 %79, %80
  %82 = add i64 %75, %81
  %83 = call i32 @munmap(i64 %72, i64 %82)
  br label %84

84:                                               ; preds = %63, %58
  br label %85

85:                                               ; preds = %84, %23
  %86 = load %struct.xsk_socket*, %struct.xsk_socket** %2, align 8
  %87 = getelementptr inbounds %struct.xsk_socket, %struct.xsk_socket* %86, i32 0, i32 2
  %88 = load %struct.TYPE_12__*, %struct.TYPE_12__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  %91 = add nsw i32 %90, -1
  store i32 %91, i32* %89, align 8
  %92 = load %struct.xsk_socket*, %struct.xsk_socket** %2, align 8
  %93 = getelementptr inbounds %struct.xsk_socket, %struct.xsk_socket* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = load %struct.xsk_socket*, %struct.xsk_socket** %2, align 8
  %96 = getelementptr inbounds %struct.xsk_socket, %struct.xsk_socket* %95, i32 0, i32 2
  %97 = load %struct.TYPE_12__*, %struct.TYPE_12__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = icmp ne i64 %94, %99
  br i1 %100, label %101, label %106

101:                                              ; preds = %85
  %102 = load %struct.xsk_socket*, %struct.xsk_socket** %2, align 8
  %103 = getelementptr inbounds %struct.xsk_socket, %struct.xsk_socket* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = call i32 @close(i64 %104)
  br label %106

106:                                              ; preds = %101, %85
  %107 = load %struct.xsk_socket*, %struct.xsk_socket** %2, align 8
  %108 = call i32 @free(%struct.xsk_socket* %107)
  br label %109

109:                                              ; preds = %106, %9
  ret void
}

declare dso_local i32 @xsk_delete_bpf_maps(%struct.xsk_socket*) #1

declare dso_local i32 @close(i64) #1

declare dso_local i32 @getsockopt(i64, i32, i32, %struct.xdp_mmap_offsets*, i32*) #1

declare dso_local i32 @munmap(i64, i64) #1

declare dso_local i32 @free(%struct.xsk_socket*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
