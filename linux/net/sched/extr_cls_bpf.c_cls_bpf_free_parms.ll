; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_cls_bpf.c_cls_bpf_free_parms.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_cls_bpf.c_cls_bpf_free_parms.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cls_bpf_prog = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cls_bpf_prog*)* @cls_bpf_free_parms to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cls_bpf_free_parms(%struct.cls_bpf_prog* %0) #0 {
  %2 = alloca %struct.cls_bpf_prog*, align 8
  store %struct.cls_bpf_prog* %0, %struct.cls_bpf_prog** %2, align 8
  %3 = load %struct.cls_bpf_prog*, %struct.cls_bpf_prog** %2, align 8
  %4 = call i64 @cls_bpf_is_ebpf(%struct.cls_bpf_prog* %3)
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %11

6:                                                ; preds = %1
  %7 = load %struct.cls_bpf_prog*, %struct.cls_bpf_prog** %2, align 8
  %8 = getelementptr inbounds %struct.cls_bpf_prog, %struct.cls_bpf_prog* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @bpf_prog_put(i32 %9)
  br label %16

11:                                               ; preds = %1
  %12 = load %struct.cls_bpf_prog*, %struct.cls_bpf_prog** %2, align 8
  %13 = getelementptr inbounds %struct.cls_bpf_prog, %struct.cls_bpf_prog* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @bpf_prog_destroy(i32 %14)
  br label %16

16:                                               ; preds = %11, %6
  %17 = load %struct.cls_bpf_prog*, %struct.cls_bpf_prog** %2, align 8
  %18 = getelementptr inbounds %struct.cls_bpf_prog, %struct.cls_bpf_prog* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @kfree(i32 %19)
  %21 = load %struct.cls_bpf_prog*, %struct.cls_bpf_prog** %2, align 8
  %22 = getelementptr inbounds %struct.cls_bpf_prog, %struct.cls_bpf_prog* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @kfree(i32 %23)
  ret void
}

declare dso_local i64 @cls_bpf_is_ebpf(%struct.cls_bpf_prog*) #1

declare dso_local i32 @bpf_prog_put(i32) #1

declare dso_local i32 @bpf_prog_destroy(i32) #1

declare dso_local i32 @kfree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
