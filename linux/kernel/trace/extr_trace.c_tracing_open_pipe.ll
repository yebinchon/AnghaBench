; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace.c_tracing_open_pipe.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace.c_tracing_open_pipe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }
%struct.inode = type { %struct.trace_array* }
%struct.trace_array = type { i32, i64, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32, i32 (%struct.trace_iterator*)* }
%struct.trace_iterator = type { %struct.TYPE_3__*, i32, i32, i32*, %struct.trace_array*, i32, i32, i32 }
%struct.file = type { %struct.trace_iterator* }

@trace_types_lock = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@TRACE_ITER_LATENCY_FMT = common dso_local global i32 0, align 4
@TRACE_FILE_LAT_FMT = common dso_local global i32 0, align 4
@trace_clocks = common dso_local global %struct.TYPE_4__* null, align 8
@TRACE_FILE_TIME_IN_NS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @tracing_open_pipe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tracing_open_pipe(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.trace_array*, align 8
  %7 = alloca %struct.trace_iterator*, align 8
  %8 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  %9 = load %struct.inode*, %struct.inode** %4, align 8
  %10 = getelementptr inbounds %struct.inode, %struct.inode* %9, i32 0, i32 0
  %11 = load %struct.trace_array*, %struct.trace_array** %10, align 8
  store %struct.trace_array* %11, %struct.trace_array** %6, align 8
  %12 = load %struct.trace_array*, %struct.trace_array** %6, align 8
  %13 = call i32 @tracing_check_open_get_tr(%struct.trace_array* %12)
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %8, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i32, i32* %8, align 4
  store i32 %17, i32* %3, align 4
  br label %130

18:                                               ; preds = %2
  %19 = call i32 @mutex_lock(i32* @trace_types_lock)
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call %struct.trace_iterator* @kzalloc(i32 48, i32 %20)
  store %struct.trace_iterator* %21, %struct.trace_iterator** %7, align 8
  %22 = load %struct.trace_iterator*, %struct.trace_iterator** %7, align 8
  %23 = icmp ne %struct.trace_iterator* %22, null
  br i1 %23, label %29, label %24

24:                                               ; preds = %18
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %8, align 4
  %27 = load %struct.trace_array*, %struct.trace_array** %6, align 8
  %28 = call i32 @__trace_array_put(%struct.trace_array* %27)
  br label %120

29:                                               ; preds = %18
  %30 = load %struct.trace_iterator*, %struct.trace_iterator** %7, align 8
  %31 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %30, i32 0, i32 7
  %32 = call i32 @trace_seq_init(i32* %31)
  %33 = load %struct.trace_array*, %struct.trace_array** %6, align 8
  %34 = getelementptr inbounds %struct.trace_array, %struct.trace_array* %33, i32 0, i32 2
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %34, align 8
  %36 = load %struct.trace_iterator*, %struct.trace_iterator** %7, align 8
  %37 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %36, i32 0, i32 0
  store %struct.TYPE_3__* %35, %struct.TYPE_3__** %37, align 8
  %38 = load %struct.trace_iterator*, %struct.trace_iterator** %7, align 8
  %39 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %38, i32 0, i32 6
  %40 = load i32, i32* @GFP_KERNEL, align 4
  %41 = call i32 @alloc_cpumask_var(i32* %39, i32 %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %29
  %44 = load i32, i32* @ENOMEM, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %8, align 4
  br label %123

46:                                               ; preds = %29
  %47 = load %struct.trace_iterator*, %struct.trace_iterator** %7, align 8
  %48 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %47, i32 0, i32 6
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @cpumask_setall(i32 %49)
  %51 = load %struct.trace_array*, %struct.trace_array** %6, align 8
  %52 = getelementptr inbounds %struct.trace_array, %struct.trace_array* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @TRACE_ITER_LATENCY_FMT, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %46
  %58 = load i32, i32* @TRACE_FILE_LAT_FMT, align 4
  %59 = load %struct.trace_iterator*, %struct.trace_iterator** %7, align 8
  %60 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %59, i32 0, i32 5
  %61 = load i32, i32* %60, align 8
  %62 = or i32 %61, %58
  store i32 %62, i32* %60, align 8
  br label %63

63:                                               ; preds = %57, %46
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** @trace_clocks, align 8
  %65 = load %struct.trace_array*, %struct.trace_array** %6, align 8
  %66 = getelementptr inbounds %struct.trace_array, %struct.trace_array* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %78

72:                                               ; preds = %63
  %73 = load i32, i32* @TRACE_FILE_TIME_IN_NS, align 4
  %74 = load %struct.trace_iterator*, %struct.trace_iterator** %7, align 8
  %75 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %74, i32 0, i32 5
  %76 = load i32, i32* %75, align 8
  %77 = or i32 %76, %73
  store i32 %77, i32* %75, align 8
  br label %78

78:                                               ; preds = %72, %63
  %79 = load %struct.trace_array*, %struct.trace_array** %6, align 8
  %80 = load %struct.trace_iterator*, %struct.trace_iterator** %7, align 8
  %81 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %80, i32 0, i32 4
  store %struct.trace_array* %79, %struct.trace_array** %81, align 8
  %82 = load %struct.trace_array*, %struct.trace_array** %6, align 8
  %83 = getelementptr inbounds %struct.trace_array, %struct.trace_array* %82, i32 0, i32 3
  %84 = load %struct.trace_iterator*, %struct.trace_iterator** %7, align 8
  %85 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %84, i32 0, i32 3
  store i32* %83, i32** %85, align 8
  %86 = load %struct.inode*, %struct.inode** %4, align 8
  %87 = call i32 @tracing_get_cpu(%struct.inode* %86)
  %88 = load %struct.trace_iterator*, %struct.trace_iterator** %7, align 8
  %89 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %88, i32 0, i32 2
  store i32 %87, i32* %89, align 4
  %90 = load %struct.trace_iterator*, %struct.trace_iterator** %7, align 8
  %91 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %90, i32 0, i32 1
  %92 = call i32 @mutex_init(i32* %91)
  %93 = load %struct.trace_iterator*, %struct.trace_iterator** %7, align 8
  %94 = load %struct.file*, %struct.file** %5, align 8
  %95 = getelementptr inbounds %struct.file, %struct.file* %94, i32 0, i32 0
  store %struct.trace_iterator* %93, %struct.trace_iterator** %95, align 8
  %96 = load %struct.trace_iterator*, %struct.trace_iterator** %7, align 8
  %97 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %96, i32 0, i32 0
  %98 = load %struct.TYPE_3__*, %struct.TYPE_3__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 1
  %100 = load i32 (%struct.trace_iterator*)*, i32 (%struct.trace_iterator*)** %99, align 8
  %101 = icmp ne i32 (%struct.trace_iterator*)* %100, null
  br i1 %101, label %102, label %110

102:                                              ; preds = %78
  %103 = load %struct.trace_iterator*, %struct.trace_iterator** %7, align 8
  %104 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %103, i32 0, i32 0
  %105 = load %struct.TYPE_3__*, %struct.TYPE_3__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 1
  %107 = load i32 (%struct.trace_iterator*)*, i32 (%struct.trace_iterator*)** %106, align 8
  %108 = load %struct.trace_iterator*, %struct.trace_iterator** %7, align 8
  %109 = call i32 %107(%struct.trace_iterator* %108)
  br label %110

110:                                              ; preds = %102, %78
  %111 = load %struct.inode*, %struct.inode** %4, align 8
  %112 = load %struct.file*, %struct.file** %5, align 8
  %113 = call i32 @nonseekable_open(%struct.inode* %111, %struct.file* %112)
  %114 = load %struct.trace_array*, %struct.trace_array** %6, align 8
  %115 = getelementptr inbounds %struct.trace_array, %struct.trace_array* %114, i32 0, i32 2
  %116 = load %struct.TYPE_3__*, %struct.TYPE_3__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %117, align 8
  br label %120

120:                                              ; preds = %110, %24
  %121 = call i32 @mutex_unlock(i32* @trace_types_lock)
  %122 = load i32, i32* %8, align 4
  store i32 %122, i32* %3, align 4
  br label %130

123:                                              ; preds = %43
  %124 = load %struct.trace_iterator*, %struct.trace_iterator** %7, align 8
  %125 = call i32 @kfree(%struct.trace_iterator* %124)
  %126 = load %struct.trace_array*, %struct.trace_array** %6, align 8
  %127 = call i32 @__trace_array_put(%struct.trace_array* %126)
  %128 = call i32 @mutex_unlock(i32* @trace_types_lock)
  %129 = load i32, i32* %8, align 4
  store i32 %129, i32* %3, align 4
  br label %130

130:                                              ; preds = %123, %120, %16
  %131 = load i32, i32* %3, align 4
  ret i32 %131
}

declare dso_local i32 @tracing_check_open_get_tr(%struct.trace_array*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.trace_iterator* @kzalloc(i32, i32) #1

declare dso_local i32 @__trace_array_put(%struct.trace_array*) #1

declare dso_local i32 @trace_seq_init(i32*) #1

declare dso_local i32 @alloc_cpumask_var(i32*, i32) #1

declare dso_local i32 @cpumask_setall(i32) #1

declare dso_local i32 @tracing_get_cpu(%struct.inode*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @nonseekable_open(%struct.inode*, %struct.file*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @kfree(%struct.trace_iterator*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
