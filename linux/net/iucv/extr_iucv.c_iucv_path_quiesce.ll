; ModuleID = '/home/carl/AnghaBench/linux/net/iucv/extr_iucv.c_iucv_path_quiesce.c'
source_filename = "/home/carl/AnghaBench/linux/net/iucv/extr_iucv.c_iucv_path_quiesce.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.iucv_param = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.iucv_path = type { i32 }

@iucv_buffer_cpumask = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@iucv_param = common dso_local global %union.iucv_param** null, align 8
@IUCV_QUIESCE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iucv_path_quiesce(%struct.iucv_path* %0, i32* %1) #0 {
  %3 = alloca %struct.iucv_path*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %union.iucv_param*, align 8
  %6 = alloca i32, align 4
  store %struct.iucv_path* %0, %struct.iucv_path** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = call i32 (...) @local_bh_disable()
  %8 = call i64 @cpumask_empty(i32* @iucv_buffer_cpumask)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = load i32, i32* @EIO, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %6, align 4
  br label %39

13:                                               ; preds = %2
  %14 = load %union.iucv_param**, %union.iucv_param*** @iucv_param, align 8
  %15 = call i64 (...) @smp_processor_id()
  %16 = getelementptr inbounds %union.iucv_param*, %union.iucv_param** %14, i64 %15
  %17 = load %union.iucv_param*, %union.iucv_param** %16, align 8
  store %union.iucv_param* %17, %union.iucv_param** %5, align 8
  %18 = load %union.iucv_param*, %union.iucv_param** %5, align 8
  %19 = call i32 @memset(%union.iucv_param* %18, i32 0, i32 8)
  %20 = load i32*, i32** %4, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %22, label %29

22:                                               ; preds = %13
  %23 = load %union.iucv_param*, %union.iucv_param** %5, align 8
  %24 = bitcast %union.iucv_param* %23 to %struct.TYPE_2__*
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load i32*, i32** %4, align 8
  %28 = call i32 @memcpy(i32 %26, i32* %27, i32 4)
  br label %29

29:                                               ; preds = %22, %13
  %30 = load %struct.iucv_path*, %struct.iucv_path** %3, align 8
  %31 = getelementptr inbounds %struct.iucv_path, %struct.iucv_path* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %union.iucv_param*, %union.iucv_param** %5, align 8
  %34 = bitcast %union.iucv_param* %33 to %struct.TYPE_2__*
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  store i32 %32, i32* %35, align 4
  %36 = load i32, i32* @IUCV_QUIESCE, align 4
  %37 = load %union.iucv_param*, %union.iucv_param** %5, align 8
  %38 = call i32 @iucv_call_b2f0(i32 %36, %union.iucv_param* %37)
  store i32 %38, i32* %6, align 4
  br label %39

39:                                               ; preds = %29, %10
  %40 = call i32 (...) @local_bh_enable()
  %41 = load i32, i32* %6, align 4
  ret i32 %41
}

declare dso_local i32 @local_bh_disable(...) #1

declare dso_local i64 @cpumask_empty(i32*) #1

declare dso_local i64 @smp_processor_id(...) #1

declare dso_local i32 @memset(%union.iucv_param*, i32, i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @iucv_call_b2f0(i32, %union.iucv_param*) #1

declare dso_local i32 @local_bh_enable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
