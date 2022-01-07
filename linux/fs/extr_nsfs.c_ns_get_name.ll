; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_nsfs.c_ns_get_name.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_nsfs.c_ns_get_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32 }
%struct.proc_ns_operations = type { i8*, i32 (%struct.ns_common*)*, i64, %struct.ns_common.0* (%struct.task_struct*)* }
%struct.ns_common = type opaque
%struct.ns_common.0 = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"%s:[%u]\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ns_get_name(i8* %0, i64 %1, %struct.task_struct* %2, %struct.proc_ns_operations* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.task_struct*, align 8
  %8 = alloca %struct.proc_ns_operations*, align 8
  %9 = alloca %struct.ns_common.0*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.task_struct* %2, %struct.task_struct** %7, align 8
  store %struct.proc_ns_operations* %3, %struct.proc_ns_operations** %8, align 8
  %12 = load i32, i32* @ENOENT, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %10, align 4
  %14 = load %struct.proc_ns_operations*, %struct.proc_ns_operations** %8, align 8
  %15 = getelementptr inbounds %struct.proc_ns_operations, %struct.proc_ns_operations* %14, i32 0, i32 3
  %16 = load %struct.ns_common.0* (%struct.task_struct*)*, %struct.ns_common.0* (%struct.task_struct*)** %15, align 8
  %17 = load %struct.task_struct*, %struct.task_struct** %7, align 8
  %18 = call %struct.ns_common.0* %16(%struct.task_struct* %17)
  store %struct.ns_common.0* %18, %struct.ns_common.0** %9, align 8
  %19 = load %struct.ns_common.0*, %struct.ns_common.0** %9, align 8
  %20 = icmp ne %struct.ns_common.0* %19, null
  br i1 %20, label %21, label %47

21:                                               ; preds = %4
  %22 = load %struct.proc_ns_operations*, %struct.proc_ns_operations** %8, align 8
  %23 = getelementptr inbounds %struct.proc_ns_operations, %struct.proc_ns_operations* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %21
  %27 = inttoptr i64 %24 to i8*
  br label %32

28:                                               ; preds = %21
  %29 = load %struct.proc_ns_operations*, %struct.proc_ns_operations** %8, align 8
  %30 = getelementptr inbounds %struct.proc_ns_operations, %struct.proc_ns_operations* %29, i32 0, i32 0
  %31 = load i8*, i8** %30, align 8
  br label %32

32:                                               ; preds = %28, %26
  %33 = phi i8* [ %27, %26 ], [ %31, %28 ]
  store i8* %33, i8** %11, align 8
  %34 = load i8*, i8** %5, align 8
  %35 = load i64, i64* %6, align 8
  %36 = load i8*, i8** %11, align 8
  %37 = load %struct.ns_common.0*, %struct.ns_common.0** %9, align 8
  %38 = getelementptr inbounds %struct.ns_common.0, %struct.ns_common.0* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @snprintf(i8* %34, i64 %35, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* %36, i32 %39)
  store i32 %40, i32* %10, align 4
  %41 = load %struct.proc_ns_operations*, %struct.proc_ns_operations** %8, align 8
  %42 = getelementptr inbounds %struct.proc_ns_operations, %struct.proc_ns_operations* %41, i32 0, i32 1
  %43 = load i32 (%struct.ns_common*)*, i32 (%struct.ns_common*)** %42, align 8
  %44 = load %struct.ns_common.0*, %struct.ns_common.0** %9, align 8
  %45 = bitcast %struct.ns_common.0* %44 to %struct.ns_common*
  %46 = call i32 %43(%struct.ns_common* %45)
  br label %47

47:                                               ; preds = %32, %4
  %48 = load i32, i32* %10, align 4
  ret i32 %48
}

declare dso_local i32 @snprintf(i8*, i64, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
