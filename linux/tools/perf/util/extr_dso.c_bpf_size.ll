; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_dso.c_bpf_size.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_dso.c_bpf_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dso = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.bpf_prog_info_node = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }

@DSO_DATA_STATUS_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dso*)* @bpf_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bpf_size(%struct.dso* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dso*, align 8
  %4 = alloca %struct.bpf_prog_info_node*, align 8
  store %struct.dso* %0, %struct.dso** %3, align 8
  %5 = load %struct.dso*, %struct.dso** %3, align 8
  %6 = getelementptr inbounds %struct.dso, %struct.dso* %5, i32 0, i32 1
  %7 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.dso*, %struct.dso** %3, align 8
  %10 = getelementptr inbounds %struct.dso, %struct.dso* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.bpf_prog_info_node* @perf_env__find_bpf_prog_info(i32 %8, i32 %12)
  store %struct.bpf_prog_info_node* %13, %struct.bpf_prog_info_node** %4, align 8
  %14 = load %struct.bpf_prog_info_node*, %struct.bpf_prog_info_node** %4, align 8
  %15 = icmp ne %struct.bpf_prog_info_node* %14, null
  br i1 %15, label %16, label %21

16:                                               ; preds = %1
  %17 = load %struct.bpf_prog_info_node*, %struct.bpf_prog_info_node** %4, align 8
  %18 = getelementptr inbounds %struct.bpf_prog_info_node, %struct.bpf_prog_info_node* %17, i32 0, i32 0
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %20 = icmp ne %struct.TYPE_7__* %19, null
  br i1 %20, label %26, label %21

21:                                               ; preds = %16, %1
  %22 = load i32, i32* @DSO_DATA_STATUS_ERROR, align 4
  %23 = load %struct.dso*, %struct.dso** %3, align 8
  %24 = getelementptr inbounds %struct.dso, %struct.dso* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 1
  store i32 %22, i32* %25, align 4
  store i32 -1, i32* %2, align 4
  br label %36

26:                                               ; preds = %16
  %27 = load %struct.bpf_prog_info_node*, %struct.bpf_prog_info_node** %4, align 8
  %28 = getelementptr inbounds %struct.bpf_prog_info_node, %struct.bpf_prog_info_node* %27, i32 0, i32 0
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.dso*, %struct.dso** %3, align 8
  %34 = getelementptr inbounds %struct.dso, %struct.dso* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  store i32 %32, i32* %35, align 4
  store i32 0, i32* %2, align 4
  br label %36

36:                                               ; preds = %26, %21
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

declare dso_local %struct.bpf_prog_info_node* @perf_env__find_bpf_prog_info(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
