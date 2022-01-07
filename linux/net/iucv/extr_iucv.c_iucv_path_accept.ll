; ModuleID = '/home/carl/AnghaBench/linux/net/iucv/extr_iucv.c_iucv_path_accept.c'
source_filename = "/home/carl/AnghaBench/linux/net/iucv/extr_iucv.c_iucv_path_accept.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.iucv_param = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }
%struct.iucv_path = type { i32, i32, i8*, i32 }
%struct.iucv_handler = type { i32 }

@iucv_buffer_cpumask = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@iucv_param = common dso_local global %union.iucv_param** null, align 8
@IUCV_ACCEPT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iucv_path_accept(%struct.iucv_path* %0, %struct.iucv_handler* %1, i32* %2, i8* %3) #0 {
  %5 = alloca %struct.iucv_path*, align 8
  %6 = alloca %struct.iucv_handler*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %union.iucv_param*, align 8
  %10 = alloca i32, align 4
  store %struct.iucv_path* %0, %struct.iucv_path** %5, align 8
  store %struct.iucv_handler* %1, %struct.iucv_handler** %6, align 8
  store i32* %2, i32** %7, align 8
  store i8* %3, i8** %8, align 8
  %11 = call i32 (...) @local_bh_disable()
  %12 = call i64 @cpumask_empty(i32* @iucv_buffer_cpumask)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %4
  %15 = load i32, i32* @EIO, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %10, align 4
  br label %74

17:                                               ; preds = %4
  %18 = load %union.iucv_param**, %union.iucv_param*** @iucv_param, align 8
  %19 = call i64 (...) @smp_processor_id()
  %20 = getelementptr inbounds %union.iucv_param*, %union.iucv_param** %18, i64 %19
  %21 = load %union.iucv_param*, %union.iucv_param** %20, align 8
  store %union.iucv_param* %21, %union.iucv_param** %9, align 8
  %22 = load %union.iucv_param*, %union.iucv_param** %9, align 8
  %23 = call i32 @memset(%union.iucv_param* %22, i32 0, i32 16)
  %24 = load %struct.iucv_path*, %struct.iucv_path** %5, align 8
  %25 = getelementptr inbounds %struct.iucv_path, %struct.iucv_path* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 8
  %27 = load %union.iucv_param*, %union.iucv_param** %9, align 8
  %28 = bitcast %union.iucv_param* %27 to %struct.TYPE_2__*
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 3
  store i32 %26, i32* %29, align 4
  %30 = load %struct.iucv_path*, %struct.iucv_path** %5, align 8
  %31 = getelementptr inbounds %struct.iucv_path, %struct.iucv_path* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %union.iucv_param*, %union.iucv_param** %9, align 8
  %34 = bitcast %union.iucv_param* %33 to %struct.TYPE_2__*
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  store i32 %32, i32* %35, align 4
  %36 = load i32*, i32** %7, align 8
  %37 = icmp ne i32* %36, null
  br i1 %37, label %38, label %45

38:                                               ; preds = %17
  %39 = load %union.iucv_param*, %union.iucv_param** %9, align 8
  %40 = bitcast %union.iucv_param* %39 to %struct.TYPE_2__*
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = load i32*, i32** %7, align 8
  %44 = call i32 @memcpy(i32 %42, i32* %43, i32 4)
  br label %45

45:                                               ; preds = %38, %17
  %46 = load %struct.iucv_path*, %struct.iucv_path** %5, align 8
  %47 = getelementptr inbounds %struct.iucv_path, %struct.iucv_path* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load %union.iucv_param*, %union.iucv_param** %9, align 8
  %50 = bitcast %union.iucv_param* %49 to %struct.TYPE_2__*
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  store i32 %48, i32* %51, align 4
  %52 = load i32, i32* @IUCV_ACCEPT, align 4
  %53 = load %union.iucv_param*, %union.iucv_param** %9, align 8
  %54 = call i32 @iucv_call_b2f0(i32 %52, %union.iucv_param* %53)
  store i32 %54, i32* %10, align 4
  %55 = load i32, i32* %10, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %73, label %57

57:                                               ; preds = %45
  %58 = load i8*, i8** %8, align 8
  %59 = load %struct.iucv_path*, %struct.iucv_path** %5, align 8
  %60 = getelementptr inbounds %struct.iucv_path, %struct.iucv_path* %59, i32 0, i32 2
  store i8* %58, i8** %60, align 8
  %61 = load %union.iucv_param*, %union.iucv_param** %9, align 8
  %62 = bitcast %union.iucv_param* %61 to %struct.TYPE_2__*
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.iucv_path*, %struct.iucv_path** %5, align 8
  %66 = getelementptr inbounds %struct.iucv_path, %struct.iucv_path* %65, i32 0, i32 1
  store i32 %64, i32* %66, align 4
  %67 = load %union.iucv_param*, %union.iucv_param** %9, align 8
  %68 = bitcast %union.iucv_param* %67 to %struct.TYPE_2__*
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.iucv_path*, %struct.iucv_path** %5, align 8
  %72 = getelementptr inbounds %struct.iucv_path, %struct.iucv_path* %71, i32 0, i32 0
  store i32 %70, i32* %72, align 8
  br label %73

73:                                               ; preds = %57, %45
  br label %74

74:                                               ; preds = %73, %14
  %75 = call i32 (...) @local_bh_enable()
  %76 = load i32, i32* %10, align 4
  ret i32 %76
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
