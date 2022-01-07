; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_log_cil.c_xlog_cil_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_log_cil.c_xlog_cil_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xlog = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, %struct.TYPE_2__*, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xlog_cil_destroy(%struct.xlog* %0) #0 {
  %2 = alloca %struct.xlog*, align 8
  store %struct.xlog* %0, %struct.xlog** %2, align 8
  %3 = load %struct.xlog*, %struct.xlog** %2, align 8
  %4 = getelementptr inbounds %struct.xlog, %struct.xlog* %3, i32 0, i32 0
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 1
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = icmp ne %struct.TYPE_2__* %7, null
  br i1 %8, label %9, label %34

9:                                                ; preds = %1
  %10 = load %struct.xlog*, %struct.xlog** %2, align 8
  %11 = getelementptr inbounds %struct.xlog, %struct.xlog* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %27

18:                                               ; preds = %9
  %19 = load %struct.xlog*, %struct.xlog** %2, align 8
  %20 = getelementptr inbounds %struct.xlog, %struct.xlog* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = call i32 @xfs_log_ticket_put(i64 %25)
  br label %27

27:                                               ; preds = %18, %9
  %28 = load %struct.xlog*, %struct.xlog** %2, align 8
  %29 = getelementptr inbounds %struct.xlog, %struct.xlog* %28, i32 0, i32 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = call i32 @kmem_free(%struct.TYPE_2__* %32)
  br label %34

34:                                               ; preds = %27, %1
  %35 = load %struct.xlog*, %struct.xlog** %2, align 8
  %36 = getelementptr inbounds %struct.xlog, %struct.xlog* %35, i32 0, i32 0
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = call i32 @list_empty(i32* %38)
  %40 = call i32 @ASSERT(i32 %39)
  %41 = load %struct.xlog*, %struct.xlog** %2, align 8
  %42 = getelementptr inbounds %struct.xlog, %struct.xlog* %41, i32 0, i32 0
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = call i32 @kmem_free(%struct.TYPE_2__* %43)
  ret void
}

declare dso_local i32 @xfs_log_ticket_put(i64) #1

declare dso_local i32 @kmem_free(%struct.TYPE_2__*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @list_empty(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
