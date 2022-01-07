; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace_kprobe.c___unregister_trace_kprobe.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace_kprobe.c___unregister_trace_kprobe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trace_kprobe = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32*, i64, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.trace_kprobe*)* @__unregister_trace_kprobe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__unregister_trace_kprobe(%struct.trace_kprobe* %0) #0 {
  %2 = alloca %struct.trace_kprobe*, align 8
  store %struct.trace_kprobe* %0, %struct.trace_kprobe** %2, align 8
  %3 = load %struct.trace_kprobe*, %struct.trace_kprobe** %2, align 8
  %4 = call i64 @trace_kprobe_is_registered(%struct.trace_kprobe* %3)
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %42

6:                                                ; preds = %1
  %7 = load %struct.trace_kprobe*, %struct.trace_kprobe** %2, align 8
  %8 = call i64 @trace_kprobe_is_return(%struct.trace_kprobe* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %6
  %11 = load %struct.trace_kprobe*, %struct.trace_kprobe** %2, align 8
  %12 = getelementptr inbounds %struct.trace_kprobe, %struct.trace_kprobe* %11, i32 0, i32 0
  %13 = call i32 @unregister_kretprobe(%struct.TYPE_3__* %12)
  br label %19

14:                                               ; preds = %6
  %15 = load %struct.trace_kprobe*, %struct.trace_kprobe** %2, align 8
  %16 = getelementptr inbounds %struct.trace_kprobe, %struct.trace_kprobe* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = call i32 @unregister_kprobe(%struct.TYPE_4__* %17)
  br label %19

19:                                               ; preds = %14, %10
  %20 = load %struct.trace_kprobe*, %struct.trace_kprobe** %2, align 8
  %21 = getelementptr inbounds %struct.trace_kprobe, %struct.trace_kprobe* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 3
  %24 = call i32 @INIT_HLIST_NODE(i32* %23)
  %25 = load %struct.trace_kprobe*, %struct.trace_kprobe** %2, align 8
  %26 = getelementptr inbounds %struct.trace_kprobe, %struct.trace_kprobe* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 2
  %29 = call i32 @INIT_LIST_HEAD(i32* %28)
  %30 = load %struct.trace_kprobe*, %struct.trace_kprobe** %2, align 8
  %31 = getelementptr inbounds %struct.trace_kprobe, %struct.trace_kprobe* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %19
  %37 = load %struct.trace_kprobe*, %struct.trace_kprobe** %2, align 8
  %38 = getelementptr inbounds %struct.trace_kprobe, %struct.trace_kprobe* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  store i32* null, i32** %40, align 8
  br label %41

41:                                               ; preds = %36, %19
  br label %42

42:                                               ; preds = %41, %1
  ret void
}

declare dso_local i64 @trace_kprobe_is_registered(%struct.trace_kprobe*) #1

declare dso_local i64 @trace_kprobe_is_return(%struct.trace_kprobe*) #1

declare dso_local i32 @unregister_kretprobe(%struct.TYPE_3__*) #1

declare dso_local i32 @unregister_kprobe(%struct.TYPE_4__*) #1

declare dso_local i32 @INIT_HLIST_NODE(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
