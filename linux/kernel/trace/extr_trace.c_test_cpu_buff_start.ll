; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace.c_test_cpu_buff_start.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace.c_test_cpu_buff_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trace_iterator = type { i32, i32, i32, i32, %struct.TYPE_3__*, %struct.trace_array*, %struct.trace_seq }
%struct.TYPE_3__ = type { i32 }
%struct.trace_array = type { i32 }
%struct.trace_seq = type { i32 }
%struct.TYPE_4__ = type { i64 }

@TRACE_ITER_ANNOTATE = common dso_local global i32 0, align 4
@TRACE_FILE_ANNOTATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"##### CPU %u buffer started ####\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.trace_iterator*)* @test_cpu_buff_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_cpu_buff_start(%struct.trace_iterator* %0) #0 {
  %2 = alloca %struct.trace_iterator*, align 8
  %3 = alloca %struct.trace_seq*, align 8
  %4 = alloca %struct.trace_array*, align 8
  store %struct.trace_iterator* %0, %struct.trace_iterator** %2, align 8
  %5 = load %struct.trace_iterator*, %struct.trace_iterator** %2, align 8
  %6 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %5, i32 0, i32 6
  store %struct.trace_seq* %6, %struct.trace_seq** %3, align 8
  %7 = load %struct.trace_iterator*, %struct.trace_iterator** %2, align 8
  %8 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %7, i32 0, i32 5
  %9 = load %struct.trace_array*, %struct.trace_array** %8, align 8
  store %struct.trace_array* %9, %struct.trace_array** %4, align 8
  %10 = load %struct.trace_array*, %struct.trace_array** %4, align 8
  %11 = getelementptr inbounds %struct.trace_array, %struct.trace_array* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @TRACE_ITER_ANNOTATE, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %1
  br label %80

17:                                               ; preds = %1
  %18 = load %struct.trace_iterator*, %struct.trace_iterator** %2, align 8
  %19 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @TRACE_FILE_ANNOTATE, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %17
  br label %80

25:                                               ; preds = %17
  %26 = load %struct.trace_iterator*, %struct.trace_iterator** %2, align 8
  %27 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = call i64 @cpumask_available(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %41

31:                                               ; preds = %25
  %32 = load %struct.trace_iterator*, %struct.trace_iterator** %2, align 8
  %33 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.trace_iterator*, %struct.trace_iterator** %2, align 8
  %36 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = call i64 @cpumask_test_cpu(i32 %34, i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %31
  br label %80

41:                                               ; preds = %31, %25
  %42 = load %struct.trace_iterator*, %struct.trace_iterator** %2, align 8
  %43 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %42, i32 0, i32 4
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.trace_iterator*, %struct.trace_iterator** %2, align 8
  %48 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = call %struct.TYPE_4__* @per_cpu_ptr(i32 %46, i32 %49)
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %41
  br label %80

55:                                               ; preds = %41
  %56 = load %struct.trace_iterator*, %struct.trace_iterator** %2, align 8
  %57 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 4
  %59 = call i64 @cpumask_available(i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %69

61:                                               ; preds = %55
  %62 = load %struct.trace_iterator*, %struct.trace_iterator** %2, align 8
  %63 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.trace_iterator*, %struct.trace_iterator** %2, align 8
  %66 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @cpumask_set_cpu(i32 %64, i32 %67)
  br label %69

69:                                               ; preds = %61, %55
  %70 = load %struct.trace_iterator*, %struct.trace_iterator** %2, align 8
  %71 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = icmp sgt i32 %72, 1
  br i1 %73, label %74, label %80

74:                                               ; preds = %69
  %75 = load %struct.trace_seq*, %struct.trace_seq** %3, align 8
  %76 = load %struct.trace_iterator*, %struct.trace_iterator** %2, align 8
  %77 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @trace_seq_printf(%struct.trace_seq* %75, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %78)
  br label %80

80:                                               ; preds = %16, %24, %40, %54, %74, %69
  ret void
}

declare dso_local i64 @cpumask_available(i32) #1

declare dso_local i64 @cpumask_test_cpu(i32, i32) #1

declare dso_local %struct.TYPE_4__* @per_cpu_ptr(i32, i32) #1

declare dso_local i32 @cpumask_set_cpu(i32, i32) #1

declare dso_local i32 @trace_seq_printf(%struct.trace_seq*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
