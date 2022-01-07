; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/bpf/extr_xsk.c_xsk_set_umem_config.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/bpf/extr_xsk.c_xsk_set_umem_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xsk_umem_config = type { i32, i32, i32, i32, i32 }

@XSK_RING_PROD__DEFAULT_NUM_DESCS = common dso_local global i32 0, align 4
@XSK_RING_CONS__DEFAULT_NUM_DESCS = common dso_local global i32 0, align 4
@XSK_UMEM__DEFAULT_FRAME_SIZE = common dso_local global i32 0, align 4
@XSK_UMEM__DEFAULT_FRAME_HEADROOM = common dso_local global i32 0, align 4
@XSK_UMEM__DEFAULT_FLAGS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xsk_umem_config*, %struct.xsk_umem_config*)* @xsk_set_umem_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xsk_set_umem_config(%struct.xsk_umem_config* %0, %struct.xsk_umem_config* %1) #0 {
  %3 = alloca %struct.xsk_umem_config*, align 8
  %4 = alloca %struct.xsk_umem_config*, align 8
  store %struct.xsk_umem_config* %0, %struct.xsk_umem_config** %3, align 8
  store %struct.xsk_umem_config* %1, %struct.xsk_umem_config** %4, align 8
  %5 = load %struct.xsk_umem_config*, %struct.xsk_umem_config** %4, align 8
  %6 = icmp ne %struct.xsk_umem_config* %5, null
  br i1 %6, label %23, label %7

7:                                                ; preds = %2
  %8 = load i32, i32* @XSK_RING_PROD__DEFAULT_NUM_DESCS, align 4
  %9 = load %struct.xsk_umem_config*, %struct.xsk_umem_config** %3, align 8
  %10 = getelementptr inbounds %struct.xsk_umem_config, %struct.xsk_umem_config* %9, i32 0, i32 4
  store i32 %8, i32* %10, align 4
  %11 = load i32, i32* @XSK_RING_CONS__DEFAULT_NUM_DESCS, align 4
  %12 = load %struct.xsk_umem_config*, %struct.xsk_umem_config** %3, align 8
  %13 = getelementptr inbounds %struct.xsk_umem_config, %struct.xsk_umem_config* %12, i32 0, i32 3
  store i32 %11, i32* %13, align 4
  %14 = load i32, i32* @XSK_UMEM__DEFAULT_FRAME_SIZE, align 4
  %15 = load %struct.xsk_umem_config*, %struct.xsk_umem_config** %3, align 8
  %16 = getelementptr inbounds %struct.xsk_umem_config, %struct.xsk_umem_config* %15, i32 0, i32 2
  store i32 %14, i32* %16, align 4
  %17 = load i32, i32* @XSK_UMEM__DEFAULT_FRAME_HEADROOM, align 4
  %18 = load %struct.xsk_umem_config*, %struct.xsk_umem_config** %3, align 8
  %19 = getelementptr inbounds %struct.xsk_umem_config, %struct.xsk_umem_config* %18, i32 0, i32 1
  store i32 %17, i32* %19, align 4
  %20 = load i32, i32* @XSK_UMEM__DEFAULT_FLAGS, align 4
  %21 = load %struct.xsk_umem_config*, %struct.xsk_umem_config** %3, align 8
  %22 = getelementptr inbounds %struct.xsk_umem_config, %struct.xsk_umem_config* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 4
  br label %49

23:                                               ; preds = %2
  %24 = load %struct.xsk_umem_config*, %struct.xsk_umem_config** %4, align 8
  %25 = getelementptr inbounds %struct.xsk_umem_config, %struct.xsk_umem_config* %24, i32 0, i32 4
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.xsk_umem_config*, %struct.xsk_umem_config** %3, align 8
  %28 = getelementptr inbounds %struct.xsk_umem_config, %struct.xsk_umem_config* %27, i32 0, i32 4
  store i32 %26, i32* %28, align 4
  %29 = load %struct.xsk_umem_config*, %struct.xsk_umem_config** %4, align 8
  %30 = getelementptr inbounds %struct.xsk_umem_config, %struct.xsk_umem_config* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.xsk_umem_config*, %struct.xsk_umem_config** %3, align 8
  %33 = getelementptr inbounds %struct.xsk_umem_config, %struct.xsk_umem_config* %32, i32 0, i32 3
  store i32 %31, i32* %33, align 4
  %34 = load %struct.xsk_umem_config*, %struct.xsk_umem_config** %4, align 8
  %35 = getelementptr inbounds %struct.xsk_umem_config, %struct.xsk_umem_config* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.xsk_umem_config*, %struct.xsk_umem_config** %3, align 8
  %38 = getelementptr inbounds %struct.xsk_umem_config, %struct.xsk_umem_config* %37, i32 0, i32 2
  store i32 %36, i32* %38, align 4
  %39 = load %struct.xsk_umem_config*, %struct.xsk_umem_config** %4, align 8
  %40 = getelementptr inbounds %struct.xsk_umem_config, %struct.xsk_umem_config* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.xsk_umem_config*, %struct.xsk_umem_config** %3, align 8
  %43 = getelementptr inbounds %struct.xsk_umem_config, %struct.xsk_umem_config* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 4
  %44 = load %struct.xsk_umem_config*, %struct.xsk_umem_config** %4, align 8
  %45 = getelementptr inbounds %struct.xsk_umem_config, %struct.xsk_umem_config* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.xsk_umem_config*, %struct.xsk_umem_config** %3, align 8
  %48 = getelementptr inbounds %struct.xsk_umem_config, %struct.xsk_umem_config* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 4
  br label %49

49:                                               ; preds = %23, %7
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
