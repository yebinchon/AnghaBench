; ModuleID = '/home/carl/AnghaBench/linux/kernel/bpf/extr_offload.c___bpf_prog_offload_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/bpf/extr_offload.c___bpf_prog_offload_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_prog = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.bpf_prog_offload* }
%struct.bpf_prog_offload = type { i32, %struct.TYPE_5__*, i64 }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.bpf_prog*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bpf_prog*)* @__bpf_prog_offload_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__bpf_prog_offload_destroy(%struct.bpf_prog* %0) #0 {
  %2 = alloca %struct.bpf_prog*, align 8
  %3 = alloca %struct.bpf_prog_offload*, align 8
  store %struct.bpf_prog* %0, %struct.bpf_prog** %2, align 8
  %4 = load %struct.bpf_prog*, %struct.bpf_prog** %2, align 8
  %5 = getelementptr inbounds %struct.bpf_prog, %struct.bpf_prog* %4, i32 0, i32 0
  %6 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  %8 = load %struct.bpf_prog_offload*, %struct.bpf_prog_offload** %7, align 8
  store %struct.bpf_prog_offload* %8, %struct.bpf_prog_offload** %3, align 8
  %9 = load %struct.bpf_prog_offload*, %struct.bpf_prog_offload** %3, align 8
  %10 = getelementptr inbounds %struct.bpf_prog_offload, %struct.bpf_prog_offload* %9, i32 0, i32 2
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %23

13:                                               ; preds = %1
  %14 = load %struct.bpf_prog_offload*, %struct.bpf_prog_offload** %3, align 8
  %15 = getelementptr inbounds %struct.bpf_prog_offload, %struct.bpf_prog_offload* %14, i32 0, i32 1
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32 (%struct.bpf_prog*)*, i32 (%struct.bpf_prog*)** %19, align 8
  %21 = load %struct.bpf_prog*, %struct.bpf_prog** %2, align 8
  %22 = call i32 %20(%struct.bpf_prog* %21)
  br label %23

23:                                               ; preds = %13, %1
  %24 = load %struct.bpf_prog*, %struct.bpf_prog** %2, align 8
  %25 = call i32 @bpf_prog_free_id(%struct.bpf_prog* %24, i32 1)
  %26 = load %struct.bpf_prog_offload*, %struct.bpf_prog_offload** %3, align 8
  %27 = getelementptr inbounds %struct.bpf_prog_offload, %struct.bpf_prog_offload* %26, i32 0, i32 0
  %28 = call i32 @list_del_init(i32* %27)
  %29 = load %struct.bpf_prog_offload*, %struct.bpf_prog_offload** %3, align 8
  %30 = call i32 @kfree(%struct.bpf_prog_offload* %29)
  %31 = load %struct.bpf_prog*, %struct.bpf_prog** %2, align 8
  %32 = getelementptr inbounds %struct.bpf_prog, %struct.bpf_prog* %31, i32 0, i32 0
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  store %struct.bpf_prog_offload* null, %struct.bpf_prog_offload** %34, align 8
  ret void
}

declare dso_local i32 @bpf_prog_free_id(%struct.bpf_prog*, i32) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @kfree(%struct.bpf_prog_offload*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
