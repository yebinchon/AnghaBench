; ModuleID = '/home/carl/AnghaBench/linux/kernel/bpf/extr_syscall.c_bpf_raw_tracepoint_release.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/bpf/extr_syscall.c_bpf_raw_tracepoint_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { %struct.bpf_raw_tracepoint* }
%struct.bpf_raw_tracepoint = type { i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @bpf_raw_tracepoint_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bpf_raw_tracepoint_release(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.bpf_raw_tracepoint*, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.file* %1, %struct.file** %4, align 8
  %6 = load %struct.file*, %struct.file** %4, align 8
  %7 = getelementptr inbounds %struct.file, %struct.file* %6, i32 0, i32 0
  %8 = load %struct.bpf_raw_tracepoint*, %struct.bpf_raw_tracepoint** %7, align 8
  store %struct.bpf_raw_tracepoint* %8, %struct.bpf_raw_tracepoint** %5, align 8
  %9 = load %struct.bpf_raw_tracepoint*, %struct.bpf_raw_tracepoint** %5, align 8
  %10 = getelementptr inbounds %struct.bpf_raw_tracepoint, %struct.bpf_raw_tracepoint* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %25

13:                                               ; preds = %2
  %14 = load %struct.bpf_raw_tracepoint*, %struct.bpf_raw_tracepoint** %5, align 8
  %15 = getelementptr inbounds %struct.bpf_raw_tracepoint, %struct.bpf_raw_tracepoint* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.bpf_raw_tracepoint*, %struct.bpf_raw_tracepoint** %5, align 8
  %18 = getelementptr inbounds %struct.bpf_raw_tracepoint, %struct.bpf_raw_tracepoint* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = call i32 @bpf_probe_unregister(i32 %16, i64 %19)
  %21 = load %struct.bpf_raw_tracepoint*, %struct.bpf_raw_tracepoint** %5, align 8
  %22 = getelementptr inbounds %struct.bpf_raw_tracepoint, %struct.bpf_raw_tracepoint* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = call i32 @bpf_prog_put(i64 %23)
  br label %25

25:                                               ; preds = %13, %2
  %26 = load %struct.bpf_raw_tracepoint*, %struct.bpf_raw_tracepoint** %5, align 8
  %27 = getelementptr inbounds %struct.bpf_raw_tracepoint, %struct.bpf_raw_tracepoint* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @bpf_put_raw_tracepoint(i32 %28)
  %30 = load %struct.bpf_raw_tracepoint*, %struct.bpf_raw_tracepoint** %5, align 8
  %31 = call i32 @kfree(%struct.bpf_raw_tracepoint* %30)
  ret i32 0
}

declare dso_local i32 @bpf_probe_unregister(i32, i64) #1

declare dso_local i32 @bpf_prog_put(i64) #1

declare dso_local i32 @bpf_put_raw_tracepoint(i32) #1

declare dso_local i32 @kfree(%struct.bpf_raw_tracepoint*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
