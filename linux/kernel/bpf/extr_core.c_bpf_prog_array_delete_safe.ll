; ModuleID = '/home/carl/AnghaBench/linux/kernel/bpf/extr_core.c_bpf_prog_array_delete_safe.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/bpf/extr_core.c_bpf_prog_array_delete_safe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.bpf_prog_array = type { %struct.bpf_prog_array_item* }
%struct.bpf_prog_array_item = type { %struct.bpf_prog* }
%struct.bpf_prog = type { i32 }

@dummy_bpf_prog = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bpf_prog_array_delete_safe(%struct.bpf_prog_array* %0, %struct.bpf_prog* %1) #0 {
  %3 = alloca %struct.bpf_prog_array*, align 8
  %4 = alloca %struct.bpf_prog*, align 8
  %5 = alloca %struct.bpf_prog_array_item*, align 8
  store %struct.bpf_prog_array* %0, %struct.bpf_prog_array** %3, align 8
  store %struct.bpf_prog* %1, %struct.bpf_prog** %4, align 8
  %6 = load %struct.bpf_prog_array*, %struct.bpf_prog_array** %3, align 8
  %7 = getelementptr inbounds %struct.bpf_prog_array, %struct.bpf_prog_array* %6, i32 0, i32 0
  %8 = load %struct.bpf_prog_array_item*, %struct.bpf_prog_array_item** %7, align 8
  store %struct.bpf_prog_array_item* %8, %struct.bpf_prog_array_item** %5, align 8
  br label %9

9:                                                ; preds = %26, %2
  %10 = load %struct.bpf_prog_array_item*, %struct.bpf_prog_array_item** %5, align 8
  %11 = getelementptr inbounds %struct.bpf_prog_array_item, %struct.bpf_prog_array_item* %10, i32 0, i32 0
  %12 = load %struct.bpf_prog*, %struct.bpf_prog** %11, align 8
  %13 = icmp ne %struct.bpf_prog* %12, null
  br i1 %13, label %14, label %29

14:                                               ; preds = %9
  %15 = load %struct.bpf_prog_array_item*, %struct.bpf_prog_array_item** %5, align 8
  %16 = getelementptr inbounds %struct.bpf_prog_array_item, %struct.bpf_prog_array_item* %15, i32 0, i32 0
  %17 = load %struct.bpf_prog*, %struct.bpf_prog** %16, align 8
  %18 = load %struct.bpf_prog*, %struct.bpf_prog** %4, align 8
  %19 = icmp eq %struct.bpf_prog* %17, %18
  br i1 %19, label %20, label %25

20:                                               ; preds = %14
  %21 = load %struct.bpf_prog_array_item*, %struct.bpf_prog_array_item** %5, align 8
  %22 = getelementptr inbounds %struct.bpf_prog_array_item, %struct.bpf_prog_array_item* %21, i32 0, i32 0
  %23 = load %struct.bpf_prog*, %struct.bpf_prog** %22, align 8
  %24 = call i32 @WRITE_ONCE(%struct.bpf_prog* %23, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dummy_bpf_prog, i32 0, i32 0))
  br label %29

25:                                               ; preds = %14
  br label %26

26:                                               ; preds = %25
  %27 = load %struct.bpf_prog_array_item*, %struct.bpf_prog_array_item** %5, align 8
  %28 = getelementptr inbounds %struct.bpf_prog_array_item, %struct.bpf_prog_array_item* %27, i32 1
  store %struct.bpf_prog_array_item* %28, %struct.bpf_prog_array_item** %5, align 8
  br label %9

29:                                               ; preds = %20, %9
  ret void
}

declare dso_local i32 @WRITE_ONCE(%struct.bpf_prog*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
