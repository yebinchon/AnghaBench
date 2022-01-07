; ModuleID = '/home/carl/AnghaBench/linux/kernel/bpf/extr_devmap.c_bq_xmit_all.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/bpf/extr_devmap.c_bq_xmit_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xdp_bulk_queue = type { i32, %struct.xdp_frame**, i32, i32*, %struct.bpf_dtab_netdev* }
%struct.xdp_frame = type { i32 }
%struct.bpf_dtab_netdev = type { i32, %struct.TYPE_4__*, %struct.net_device* }
%struct.TYPE_4__ = type { i32 }
%struct.net_device = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.net_device*, i32, %struct.xdp_frame**, i32)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xdp_bulk_queue*, i32, i32)* @bq_xmit_all to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bq_xmit_all(%struct.xdp_bulk_queue* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.xdp_bulk_queue*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.bpf_dtab_netdev*, align 8
  %9 = alloca %struct.net_device*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.xdp_frame*, align 8
  %15 = alloca %struct.xdp_frame*, align 8
  store %struct.xdp_bulk_queue* %0, %struct.xdp_bulk_queue** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %16 = load %struct.xdp_bulk_queue*, %struct.xdp_bulk_queue** %5, align 8
  %17 = getelementptr inbounds %struct.xdp_bulk_queue, %struct.xdp_bulk_queue* %16, i32 0, i32 4
  %18 = load %struct.bpf_dtab_netdev*, %struct.bpf_dtab_netdev** %17, align 8
  store %struct.bpf_dtab_netdev* %18, %struct.bpf_dtab_netdev** %8, align 8
  %19 = load %struct.bpf_dtab_netdev*, %struct.bpf_dtab_netdev** %8, align 8
  %20 = getelementptr inbounds %struct.bpf_dtab_netdev, %struct.bpf_dtab_netdev* %19, i32 0, i32 2
  %21 = load %struct.net_device*, %struct.net_device** %20, align 8
  store %struct.net_device* %21, %struct.net_device** %9, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %22 = load %struct.xdp_bulk_queue*, %struct.xdp_bulk_queue** %5, align 8
  %23 = getelementptr inbounds %struct.xdp_bulk_queue, %struct.xdp_bulk_queue* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 0
  %26 = xor i1 %25, true
  %27 = zext i1 %26 to i32
  %28 = call i64 @unlikely(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %130

31:                                               ; preds = %3
  store i32 0, i32* %13, align 4
  br label %32

32:                                               ; preds = %48, %31
  %33 = load i32, i32* %13, align 4
  %34 = load %struct.xdp_bulk_queue*, %struct.xdp_bulk_queue** %5, align 8
  %35 = getelementptr inbounds %struct.xdp_bulk_queue, %struct.xdp_bulk_queue* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp slt i32 %33, %36
  br i1 %37, label %38, label %51

38:                                               ; preds = %32
  %39 = load %struct.xdp_bulk_queue*, %struct.xdp_bulk_queue** %5, align 8
  %40 = getelementptr inbounds %struct.xdp_bulk_queue, %struct.xdp_bulk_queue* %39, i32 0, i32 1
  %41 = load %struct.xdp_frame**, %struct.xdp_frame*** %40, align 8
  %42 = load i32, i32* %13, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.xdp_frame*, %struct.xdp_frame** %41, i64 %43
  %45 = load %struct.xdp_frame*, %struct.xdp_frame** %44, align 8
  store %struct.xdp_frame* %45, %struct.xdp_frame** %14, align 8
  %46 = load %struct.xdp_frame*, %struct.xdp_frame** %14, align 8
  %47 = call i32 @prefetch(%struct.xdp_frame* %46)
  br label %48

48:                                               ; preds = %38
  %49 = load i32, i32* %13, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %13, align 4
  br label %32

51:                                               ; preds = %32
  %52 = load %struct.net_device*, %struct.net_device** %9, align 8
  %53 = getelementptr inbounds %struct.net_device, %struct.net_device* %52, i32 0, i32 0
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = load i32 (%struct.net_device*, i32, %struct.xdp_frame**, i32)*, i32 (%struct.net_device*, i32, %struct.xdp_frame**, i32)** %55, align 8
  %57 = load %struct.net_device*, %struct.net_device** %9, align 8
  %58 = load %struct.xdp_bulk_queue*, %struct.xdp_bulk_queue** %5, align 8
  %59 = getelementptr inbounds %struct.xdp_bulk_queue, %struct.xdp_bulk_queue* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.xdp_bulk_queue*, %struct.xdp_bulk_queue** %5, align 8
  %62 = getelementptr inbounds %struct.xdp_bulk_queue, %struct.xdp_bulk_queue* %61, i32 0, i32 1
  %63 = load %struct.xdp_frame**, %struct.xdp_frame*** %62, align 8
  %64 = load i32, i32* %6, align 4
  %65 = call i32 %56(%struct.net_device* %57, i32 %60, %struct.xdp_frame** %63, i32 %64)
  store i32 %65, i32* %10, align 4
  %66 = load i32, i32* %10, align 4
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %51
  %69 = load i32, i32* %10, align 4
  store i32 %69, i32* %12, align 4
  store i32 0, i32* %10, align 4
  br label %99

70:                                               ; preds = %51
  %71 = load %struct.xdp_bulk_queue*, %struct.xdp_bulk_queue** %5, align 8
  %72 = getelementptr inbounds %struct.xdp_bulk_queue, %struct.xdp_bulk_queue* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* %10, align 4
  %75 = sub nsw i32 %73, %74
  store i32 %75, i32* %11, align 4
  br label %76

76:                                               ; preds = %129, %70
  %77 = load %struct.xdp_bulk_queue*, %struct.xdp_bulk_queue** %5, align 8
  %78 = getelementptr inbounds %struct.xdp_bulk_queue, %struct.xdp_bulk_queue* %77, i32 0, i32 0
  store i32 0, i32* %78, align 8
  %79 = load %struct.bpf_dtab_netdev*, %struct.bpf_dtab_netdev** %8, align 8
  %80 = getelementptr inbounds %struct.bpf_dtab_netdev, %struct.bpf_dtab_netdev* %79, i32 0, i32 1
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  %83 = load %struct.bpf_dtab_netdev*, %struct.bpf_dtab_netdev** %8, align 8
  %84 = getelementptr inbounds %struct.bpf_dtab_netdev, %struct.bpf_dtab_netdev* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* %10, align 4
  %87 = load i32, i32* %11, align 4
  %88 = load %struct.xdp_bulk_queue*, %struct.xdp_bulk_queue** %5, align 8
  %89 = getelementptr inbounds %struct.xdp_bulk_queue, %struct.xdp_bulk_queue* %88, i32 0, i32 3
  %90 = load i32*, i32** %89, align 8
  %91 = load %struct.net_device*, %struct.net_device** %9, align 8
  %92 = load i32, i32* %12, align 4
  %93 = call i32 @trace_xdp_devmap_xmit(i32* %82, i32 %85, i32 %86, i32 %87, i32* %90, %struct.net_device* %91, i32 %92)
  %94 = load %struct.xdp_bulk_queue*, %struct.xdp_bulk_queue** %5, align 8
  %95 = getelementptr inbounds %struct.xdp_bulk_queue, %struct.xdp_bulk_queue* %94, i32 0, i32 3
  store i32* null, i32** %95, align 8
  %96 = load %struct.xdp_bulk_queue*, %struct.xdp_bulk_queue** %5, align 8
  %97 = getelementptr inbounds %struct.xdp_bulk_queue, %struct.xdp_bulk_queue* %96, i32 0, i32 2
  %98 = call i32 @__list_del_clearprev(i32* %97)
  store i32 0, i32* %4, align 4
  br label %130

99:                                               ; preds = %68
  store i32 0, i32* %13, align 4
  br label %100

100:                                              ; preds = %126, %99
  %101 = load i32, i32* %13, align 4
  %102 = load %struct.xdp_bulk_queue*, %struct.xdp_bulk_queue** %5, align 8
  %103 = getelementptr inbounds %struct.xdp_bulk_queue, %struct.xdp_bulk_queue* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = icmp slt i32 %101, %104
  br i1 %105, label %106, label %129

106:                                              ; preds = %100
  %107 = load %struct.xdp_bulk_queue*, %struct.xdp_bulk_queue** %5, align 8
  %108 = getelementptr inbounds %struct.xdp_bulk_queue, %struct.xdp_bulk_queue* %107, i32 0, i32 1
  %109 = load %struct.xdp_frame**, %struct.xdp_frame*** %108, align 8
  %110 = load i32, i32* %13, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.xdp_frame*, %struct.xdp_frame** %109, i64 %111
  %113 = load %struct.xdp_frame*, %struct.xdp_frame** %112, align 8
  store %struct.xdp_frame* %113, %struct.xdp_frame** %15, align 8
  %114 = load i32, i32* %7, align 4
  %115 = call i64 @likely(i32 %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %120

117:                                              ; preds = %106
  %118 = load %struct.xdp_frame*, %struct.xdp_frame** %15, align 8
  %119 = call i32 @xdp_return_frame_rx_napi(%struct.xdp_frame* %118)
  br label %123

120:                                              ; preds = %106
  %121 = load %struct.xdp_frame*, %struct.xdp_frame** %15, align 8
  %122 = call i32 @xdp_return_frame(%struct.xdp_frame* %121)
  br label %123

123:                                              ; preds = %120, %117
  %124 = load i32, i32* %11, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %11, align 4
  br label %126

126:                                              ; preds = %123
  %127 = load i32, i32* %13, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %13, align 4
  br label %100

129:                                              ; preds = %100
  br label %76

130:                                              ; preds = %76, %30
  %131 = load i32, i32* %4, align 4
  ret i32 %131
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @prefetch(%struct.xdp_frame*) #1

declare dso_local i32 @trace_xdp_devmap_xmit(i32*, i32, i32, i32, i32*, %struct.net_device*, i32) #1

declare dso_local i32 @__list_del_clearprev(i32*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @xdp_return_frame_rx_napi(%struct.xdp_frame*) #1

declare dso_local i32 @xdp_return_frame(%struct.xdp_frame*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
