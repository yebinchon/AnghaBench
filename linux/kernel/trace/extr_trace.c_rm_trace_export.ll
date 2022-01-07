; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace.c_rm_trace_export.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace.c_rm_trace_export.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trace_export = type { %struct.trace_export* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.trace_export**, %struct.trace_export*)* @rm_trace_export to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rm_trace_export(%struct.trace_export** %0, %struct.trace_export* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.trace_export**, align 8
  %5 = alloca %struct.trace_export*, align 8
  %6 = alloca %struct.trace_export**, align 8
  store %struct.trace_export** %0, %struct.trace_export*** %4, align 8
  store %struct.trace_export* %1, %struct.trace_export** %5, align 8
  %7 = load %struct.trace_export**, %struct.trace_export*** %4, align 8
  store %struct.trace_export** %7, %struct.trace_export*** %6, align 8
  br label %8

8:                                                ; preds = %19, %2
  %9 = load %struct.trace_export**, %struct.trace_export*** %6, align 8
  %10 = load %struct.trace_export*, %struct.trace_export** %9, align 8
  %11 = icmp ne %struct.trace_export* %10, null
  br i1 %11, label %12, label %23

12:                                               ; preds = %8
  %13 = load %struct.trace_export**, %struct.trace_export*** %6, align 8
  %14 = load %struct.trace_export*, %struct.trace_export** %13, align 8
  %15 = load %struct.trace_export*, %struct.trace_export** %5, align 8
  %16 = icmp eq %struct.trace_export* %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %12
  br label %23

18:                                               ; preds = %12
  br label %19

19:                                               ; preds = %18
  %20 = load %struct.trace_export**, %struct.trace_export*** %6, align 8
  %21 = load %struct.trace_export*, %struct.trace_export** %20, align 8
  %22 = getelementptr inbounds %struct.trace_export, %struct.trace_export* %21, i32 0, i32 0
  store %struct.trace_export** %22, %struct.trace_export*** %6, align 8
  br label %8

23:                                               ; preds = %17, %8
  %24 = load %struct.trace_export**, %struct.trace_export*** %6, align 8
  %25 = load %struct.trace_export*, %struct.trace_export** %24, align 8
  %26 = load %struct.trace_export*, %struct.trace_export** %5, align 8
  %27 = icmp ne %struct.trace_export* %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %23
  store i32 -1, i32* %3, align 4
  br label %37

29:                                               ; preds = %23
  %30 = load %struct.trace_export**, %struct.trace_export*** %6, align 8
  %31 = load %struct.trace_export*, %struct.trace_export** %30, align 8
  %32 = load %struct.trace_export**, %struct.trace_export*** %6, align 8
  %33 = load %struct.trace_export*, %struct.trace_export** %32, align 8
  %34 = getelementptr inbounds %struct.trace_export, %struct.trace_export* %33, i32 0, i32 0
  %35 = load %struct.trace_export*, %struct.trace_export** %34, align 8
  %36 = call i32 @rcu_assign_pointer(%struct.trace_export* %31, %struct.trace_export* %35)
  store i32 0, i32* %3, align 4
  br label %37

37:                                               ; preds = %29, %28
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local i32 @rcu_assign_pointer(%struct.trace_export*, %struct.trace_export*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
