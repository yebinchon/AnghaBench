; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace.c_tracing_open.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace.c_tracing_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.trace_array* }
%struct.trace_array = type { i32, %struct.trace_buffer, %struct.TYPE_2__*, %struct.trace_buffer }
%struct.TYPE_2__ = type { i64 }
%struct.trace_buffer = type { i32 }
%struct.file = type { i32, i32 }
%struct.trace_iterator = type { i32 }

@FMODE_WRITE = common dso_local global i32 0, align 4
@O_TRUNC = common dso_local global i32 0, align 4
@RING_BUFFER_ALL_CPUS = common dso_local global i32 0, align 4
@FMODE_READ = common dso_local global i32 0, align 4
@TRACE_ITER_LATENCY_FMT = common dso_local global i32 0, align 4
@TRACE_FILE_LAT_FMT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @tracing_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tracing_open(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.trace_array*, align 8
  %7 = alloca %struct.trace_iterator*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.trace_buffer*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  %11 = load %struct.inode*, %struct.inode** %4, align 8
  %12 = getelementptr inbounds %struct.inode, %struct.inode* %11, i32 0, i32 0
  %13 = load %struct.trace_array*, %struct.trace_array** %12, align 8
  store %struct.trace_array* %13, %struct.trace_array** %6, align 8
  %14 = load %struct.trace_array*, %struct.trace_array** %6, align 8
  %15 = call i32 @tracing_check_open_get_tr(%struct.trace_array* %14)
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %8, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = load i32, i32* %8, align 4
  store i32 %19, i32* %3, align 4
  br label %90

20:                                               ; preds = %2
  %21 = load %struct.file*, %struct.file** %5, align 8
  %22 = getelementptr inbounds %struct.file, %struct.file* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @FMODE_WRITE, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %50

27:                                               ; preds = %20
  %28 = load %struct.file*, %struct.file** %5, align 8
  %29 = getelementptr inbounds %struct.file, %struct.file* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @O_TRUNC, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %50

34:                                               ; preds = %27
  %35 = load %struct.inode*, %struct.inode** %4, align 8
  %36 = call i32 @tracing_get_cpu(%struct.inode* %35)
  store i32 %36, i32* %9, align 4
  %37 = load %struct.trace_array*, %struct.trace_array** %6, align 8
  %38 = getelementptr inbounds %struct.trace_array, %struct.trace_array* %37, i32 0, i32 3
  store %struct.trace_buffer* %38, %struct.trace_buffer** %10, align 8
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* @RING_BUFFER_ALL_CPUS, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %34
  %43 = load %struct.trace_buffer*, %struct.trace_buffer** %10, align 8
  %44 = call i32 @tracing_reset_online_cpus(%struct.trace_buffer* %43)
  br label %49

45:                                               ; preds = %34
  %46 = load %struct.trace_buffer*, %struct.trace_buffer** %10, align 8
  %47 = load i32, i32* %9, align 4
  %48 = call i32 @tracing_reset_cpu(%struct.trace_buffer* %46, i32 %47)
  br label %49

49:                                               ; preds = %45, %42
  br label %50

50:                                               ; preds = %49, %27, %20
  %51 = load %struct.file*, %struct.file** %5, align 8
  %52 = getelementptr inbounds %struct.file, %struct.file* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @FMODE_READ, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %82

57:                                               ; preds = %50
  %58 = load %struct.inode*, %struct.inode** %4, align 8
  %59 = load %struct.file*, %struct.file** %5, align 8
  %60 = call %struct.trace_iterator* @__tracing_open(%struct.inode* %58, %struct.file* %59, i32 0)
  store %struct.trace_iterator* %60, %struct.trace_iterator** %7, align 8
  %61 = load %struct.trace_iterator*, %struct.trace_iterator** %7, align 8
  %62 = call i64 @IS_ERR(%struct.trace_iterator* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %57
  %65 = load %struct.trace_iterator*, %struct.trace_iterator** %7, align 8
  %66 = call i32 @PTR_ERR(%struct.trace_iterator* %65)
  store i32 %66, i32* %8, align 4
  br label %81

67:                                               ; preds = %57
  %68 = load %struct.trace_array*, %struct.trace_array** %6, align 8
  %69 = getelementptr inbounds %struct.trace_array, %struct.trace_array* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @TRACE_ITER_LATENCY_FMT, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %80

74:                                               ; preds = %67
  %75 = load i32, i32* @TRACE_FILE_LAT_FMT, align 4
  %76 = load %struct.trace_iterator*, %struct.trace_iterator** %7, align 8
  %77 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = or i32 %78, %75
  store i32 %79, i32* %77, align 4
  br label %80

80:                                               ; preds = %74, %67
  br label %81

81:                                               ; preds = %80, %64
  br label %82

82:                                               ; preds = %81, %50
  %83 = load i32, i32* %8, align 4
  %84 = icmp slt i32 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %82
  %86 = load %struct.trace_array*, %struct.trace_array** %6, align 8
  %87 = call i32 @trace_array_put(%struct.trace_array* %86)
  br label %88

88:                                               ; preds = %85, %82
  %89 = load i32, i32* %8, align 4
  store i32 %89, i32* %3, align 4
  br label %90

90:                                               ; preds = %88, %18
  %91 = load i32, i32* %3, align 4
  ret i32 %91
}

declare dso_local i32 @tracing_check_open_get_tr(%struct.trace_array*) #1

declare dso_local i32 @tracing_get_cpu(%struct.inode*) #1

declare dso_local i32 @tracing_reset_online_cpus(%struct.trace_buffer*) #1

declare dso_local i32 @tracing_reset_cpu(%struct.trace_buffer*, i32) #1

declare dso_local %struct.trace_iterator* @__tracing_open(%struct.inode*, %struct.file*, i32) #1

declare dso_local i64 @IS_ERR(%struct.trace_iterator*) #1

declare dso_local i32 @PTR_ERR(%struct.trace_iterator*) #1

declare dso_local i32 @trace_array_put(%struct.trace_array*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
