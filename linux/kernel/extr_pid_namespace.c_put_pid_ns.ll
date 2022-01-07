; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_pid_namespace.c_put_pid_ns.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_pid_namespace.c_put_pid_ns.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pid_namespace = type { i32, %struct.pid_namespace* }

@init_pid_ns = common dso_local global %struct.pid_namespace zeroinitializer, align 8
@free_pid_ns = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @put_pid_ns(%struct.pid_namespace* %0) #0 {
  %2 = alloca %struct.pid_namespace*, align 8
  %3 = alloca %struct.pid_namespace*, align 8
  store %struct.pid_namespace* %0, %struct.pid_namespace** %2, align 8
  br label %4

4:                                                ; preds = %17, %1
  %5 = load %struct.pid_namespace*, %struct.pid_namespace** %2, align 8
  %6 = icmp ne %struct.pid_namespace* %5, @init_pid_ns
  br i1 %6, label %7, label %19

7:                                                ; preds = %4
  %8 = load %struct.pid_namespace*, %struct.pid_namespace** %2, align 8
  %9 = getelementptr inbounds %struct.pid_namespace, %struct.pid_namespace* %8, i32 0, i32 1
  %10 = load %struct.pid_namespace*, %struct.pid_namespace** %9, align 8
  store %struct.pid_namespace* %10, %struct.pid_namespace** %3, align 8
  %11 = load %struct.pid_namespace*, %struct.pid_namespace** %2, align 8
  %12 = getelementptr inbounds %struct.pid_namespace, %struct.pid_namespace* %11, i32 0, i32 0
  %13 = load i32, i32* @free_pid_ns, align 4
  %14 = call i32 @kref_put(i32* %12, i32 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %7
  br label %19

17:                                               ; preds = %7
  %18 = load %struct.pid_namespace*, %struct.pid_namespace** %3, align 8
  store %struct.pid_namespace* %18, %struct.pid_namespace** %2, align 8
  br label %4

19:                                               ; preds = %16, %4
  ret void
}

declare dso_local i32 @kref_put(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
