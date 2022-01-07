; ModuleID = '/home/carl/AnghaBench/linux/fs/fscache/extr_page.c_fscache_wait_for_operation_activation.c'
source_filename = "/home/carl/AnghaBench/linux/fs/fscache/extr_page.c_fscache_wait_for_operation_activation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fscache_object = type { i32 }
%struct.fscache_operation = type { i64, i32 }

@FSCACHE_OP_WAITING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c">>> WT\00", align 1
@TASK_INTERRUPTIBLE = common dso_local global i32 0, align 4
@fscache_op_signal = common dso_local global i32 0, align 4
@ERESTARTSYS = common dso_local global i32 0, align 4
@TASK_UNINTERRUPTIBLE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"<<< GO\00", align 1
@FSCACHE_OP_ST_CANCELLED = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [24 x i8] c" = -ENOBUFS [cancelled]\00", align 1
@ENOBUFS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [26 x i8] c" = -ENOBUFS [obj dead %d]\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fscache_wait_for_operation_activation(%struct.fscache_object* %0, %struct.fscache_operation* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.fscache_object*, align 8
  %7 = alloca %struct.fscache_operation*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.fscache_object* %0, %struct.fscache_object** %6, align 8
  store %struct.fscache_operation* %1, %struct.fscache_operation** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %12 = load i32, i32* @FSCACHE_OP_WAITING, align 4
  %13 = load %struct.fscache_operation*, %struct.fscache_operation** %7, align 8
  %14 = getelementptr inbounds %struct.fscache_operation, %struct.fscache_operation* %13, i32 0, i32 1
  %15 = call i32 @test_bit(i32 %12, i32* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %4
  br label %54

18:                                               ; preds = %4
  %19 = call i32 @_debug(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %20 = load i32*, i32** %8, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %18
  %23 = load i32*, i32** %8, align 8
  %24 = call i32 @fscache_stat(i32* %23)
  br label %25

25:                                               ; preds = %22, %18
  %26 = load %struct.fscache_operation*, %struct.fscache_operation** %7, align 8
  %27 = getelementptr inbounds %struct.fscache_operation, %struct.fscache_operation* %26, i32 0, i32 1
  %28 = load i32, i32* @FSCACHE_OP_WAITING, align 4
  %29 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %30 = call i64 @wait_on_bit(i32* %27, i32 %28, i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %52

32:                                               ; preds = %25
  %33 = load %struct.fscache_object*, %struct.fscache_object** %6, align 8
  %34 = getelementptr inbounds %struct.fscache_object, %struct.fscache_object* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.fscache_operation*, %struct.fscache_operation** %7, align 8
  %37 = load i32, i32* @fscache_op_signal, align 4
  %38 = call i32 @trace_fscache_op(i32 %35, %struct.fscache_operation* %36, i32 %37)
  %39 = load %struct.fscache_operation*, %struct.fscache_operation** %7, align 8
  %40 = call i32 @fscache_cancel_op(%struct.fscache_operation* %39, i32 0)
  store i32 %40, i32* %10, align 4
  %41 = load i32, i32* %10, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %32
  %44 = load i32, i32* @ERESTARTSYS, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %5, align 4
  br label %107

46:                                               ; preds = %32
  %47 = load %struct.fscache_operation*, %struct.fscache_operation** %7, align 8
  %48 = getelementptr inbounds %struct.fscache_operation, %struct.fscache_operation* %47, i32 0, i32 1
  %49 = load i32, i32* @FSCACHE_OP_WAITING, align 4
  %50 = load i32, i32* @TASK_UNINTERRUPTIBLE, align 4
  %51 = call i64 @wait_on_bit(i32* %48, i32 %49, i32 %50)
  br label %52

52:                                               ; preds = %46, %25
  %53 = call i32 @_debug(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  br label %54

54:                                               ; preds = %52, %17
  %55 = load %struct.fscache_operation*, %struct.fscache_operation** %7, align 8
  %56 = getelementptr inbounds %struct.fscache_operation, %struct.fscache_operation* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @FSCACHE_OP_ST_CANCELLED, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %70

60:                                               ; preds = %54
  %61 = load i32*, i32** %9, align 8
  %62 = icmp ne i32* %61, null
  br i1 %62, label %63, label %66

63:                                               ; preds = %60
  %64 = load i32*, i32** %9, align 8
  %65 = call i32 @fscache_stat(i32* %64)
  br label %66

66:                                               ; preds = %63, %60
  %67 = call i32 (i8*, ...) @_leave(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %68 = load i32, i32* @ENOBUFS, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %5, align 4
  br label %107

70:                                               ; preds = %54
  %71 = load %struct.fscache_object*, %struct.fscache_object** %6, align 8
  %72 = call i64 @fscache_object_is_dying(%struct.fscache_object* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %78, label %74

74:                                               ; preds = %70
  %75 = load %struct.fscache_object*, %struct.fscache_object** %6, align 8
  %76 = call i64 @fscache_cache_is_broken(%struct.fscache_object* %75)
  %77 = icmp ne i64 %76, 0
  br label %78

78:                                               ; preds = %74, %70
  %79 = phi i1 [ true, %70 ], [ %77, %74 ]
  %80 = zext i1 %79 to i32
  %81 = call i64 @unlikely(i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %106

83:                                               ; preds = %78
  %84 = load %struct.fscache_operation*, %struct.fscache_operation** %7, align 8
  %85 = getelementptr inbounds %struct.fscache_operation, %struct.fscache_operation* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = trunc i64 %86 to i32
  store i32 %87, i32* %11, align 4
  %88 = load %struct.fscache_object*, %struct.fscache_object** %6, align 8
  %89 = getelementptr inbounds %struct.fscache_object, %struct.fscache_object* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.fscache_operation*, %struct.fscache_operation** %7, align 8
  %92 = load i32, i32* @fscache_op_signal, align 4
  %93 = call i32 @trace_fscache_op(i32 %90, %struct.fscache_operation* %91, i32 %92)
  %94 = load %struct.fscache_operation*, %struct.fscache_operation** %7, align 8
  %95 = call i32 @fscache_cancel_op(%struct.fscache_operation* %94, i32 1)
  %96 = load i32*, i32** %9, align 8
  %97 = icmp ne i32* %96, null
  br i1 %97, label %98, label %101

98:                                               ; preds = %83
  %99 = load i32*, i32** %9, align 8
  %100 = call i32 @fscache_stat(i32* %99)
  br label %101

101:                                              ; preds = %98, %83
  %102 = load i32, i32* %11, align 4
  %103 = call i32 (i8*, ...) @_leave(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 %102)
  %104 = load i32, i32* @ENOBUFS, align 4
  %105 = sub nsw i32 0, %104
  store i32 %105, i32* %5, align 4
  br label %107

106:                                              ; preds = %78
  store i32 0, i32* %5, align 4
  br label %107

107:                                              ; preds = %106, %101, %66, %43
  %108 = load i32, i32* %5, align 4
  ret i32 %108
}

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @_debug(i8*) #1

declare dso_local i32 @fscache_stat(i32*) #1

declare dso_local i64 @wait_on_bit(i32*, i32, i32) #1

declare dso_local i32 @trace_fscache_op(i32, %struct.fscache_operation*, i32) #1

declare dso_local i32 @fscache_cancel_op(%struct.fscache_operation*, i32) #1

declare dso_local i32 @_leave(i8*, ...) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @fscache_object_is_dying(%struct.fscache_object*) #1

declare dso_local i64 @fscache_cache_is_broken(%struct.fscache_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
