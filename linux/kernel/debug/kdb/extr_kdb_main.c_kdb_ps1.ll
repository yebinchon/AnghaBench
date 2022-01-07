; ModuleID = '/home/carl/AnghaBench/linux/kernel/debug/kdb/extr_kdb_main.c_kdb_ps1.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/debug/kdb/extr_kdb_main.c_kdb_ps1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [40 x i8] c"0x%px %8d %8d  %d %4d   %c  0x%px %c%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"  Error: no saved data for this cpu\0A\00", align 1
@.str.2 = private unnamed_addr constant [55 x i8] c"  Error: does not match running process table (0x%px)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kdb_ps1(%struct.task_struct* %0) #0 {
  %2 = alloca %struct.task_struct*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  store %struct.task_struct* %0, %struct.task_struct** %2, align 8
  %5 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %6 = icmp ne %struct.task_struct* %5, null
  br i1 %6, label %7, label %12

7:                                                ; preds = %1
  %8 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %9 = bitcast %struct.task_struct* %8 to i8*
  %10 = call i64 @probe_kernel_read(i64* %4, i8* %9, i32 8)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %7, %1
  br label %65

13:                                               ; preds = %7
  %14 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %15 = call i32 @kdb_process_cpu(%struct.task_struct* %14)
  store i32 %15, i32* %3, align 4
  %16 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %17 = bitcast %struct.task_struct* %16 to i8*
  %18 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %19 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %22 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %21, i32 0, i32 2
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %27 = call i64 @kdb_task_has_cpu(%struct.task_struct* %26)
  %28 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %29 = call i32 @kdb_process_cpu(%struct.task_struct* %28)
  %30 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %31 = call i32 @kdb_task_state_char(%struct.task_struct* %30)
  %32 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %33 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %32, i32 0, i32 1
  %34 = bitcast i32* %33 to i8*
  %35 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %36 = call i32 (...) @raw_smp_processor_id()
  %37 = call %struct.task_struct* @kdb_curr_task(i32 %36)
  %38 = icmp eq %struct.task_struct* %35, %37
  %39 = zext i1 %38 to i64
  %40 = select i1 %38, i32 42, i32 32
  %41 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %42 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i32 (i8*, ...) @kdb_printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i8* %17, i32 %20, i32 %25, i64 %27, i32 %29, i32 %31, i8* %34, i32 %40, i32 %43)
  %45 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %46 = call i64 @kdb_task_has_cpu(%struct.task_struct* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %65

48:                                               ; preds = %13
  %49 = load i32, i32* %3, align 4
  %50 = call %struct.task_struct* @KDB_TSK(i32 %49)
  %51 = icmp ne %struct.task_struct* %50, null
  br i1 %51, label %54, label %52

52:                                               ; preds = %48
  %53 = call i32 (i8*, ...) @kdb_printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  br label %64

54:                                               ; preds = %48
  %55 = load i32, i32* %3, align 4
  %56 = call %struct.task_struct* @KDB_TSK(i32 %55)
  %57 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %58 = icmp ne %struct.task_struct* %56, %57
  br i1 %58, label %59, label %63

59:                                               ; preds = %54
  %60 = load i32, i32* %3, align 4
  %61 = call %struct.task_struct* @KDB_TSK(i32 %60)
  %62 = call i32 (i8*, ...) @kdb_printf(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.2, i64 0, i64 0), %struct.task_struct* %61)
  br label %63

63:                                               ; preds = %59, %54
  br label %64

64:                                               ; preds = %63, %52
  br label %65

65:                                               ; preds = %12, %64, %13
  ret void
}

declare dso_local i64 @probe_kernel_read(i64*, i8*, i32) #1

declare dso_local i32 @kdb_process_cpu(%struct.task_struct*) #1

declare dso_local i32 @kdb_printf(i8*, ...) #1

declare dso_local i64 @kdb_task_has_cpu(%struct.task_struct*) #1

declare dso_local i32 @kdb_task_state_char(%struct.task_struct*) #1

declare dso_local %struct.task_struct* @kdb_curr_task(i32) #1

declare dso_local i32 @raw_smp_processor_id(...) #1

declare dso_local %struct.task_struct* @KDB_TSK(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
