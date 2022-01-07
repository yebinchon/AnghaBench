; ModuleID = '/home/carl/AnghaBench/linux/fs/fscache/extr_operation.c_fscache_operation_init.c'
source_filename = "/home/carl/AnghaBench/linux/fs/fscache/extr_operation.c_fscache_operation_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fscache_cookie = type { i32 }
%struct.fscache_operation = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@fscache_op_work_func = common dso_local global i32 0, align 4
@FSCACHE_OP_ST_INITIALISED = common dso_local global i32 0, align 4
@fscache_op_debug_id = common dso_local global i32 0, align 4
@fscache_operation_dummy_cancel = common dso_local global i32 0, align 4
@fscache_n_op_initialised = common dso_local global i32 0, align 4
@fscache_op_init = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fscache_operation_init(%struct.fscache_cookie* %0, %struct.fscache_operation* %1, i32 %2, i64 %3, i32 %4) #0 {
  %6 = alloca %struct.fscache_cookie*, align 8
  %7 = alloca %struct.fscache_operation*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.fscache_cookie* %0, %struct.fscache_cookie** %6, align 8
  store %struct.fscache_operation* %1, %struct.fscache_operation** %7, align 8
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  store i32 %4, i32* %10, align 4
  %11 = load %struct.fscache_operation*, %struct.fscache_operation** %7, align 8
  %12 = getelementptr inbounds %struct.fscache_operation, %struct.fscache_operation* %11, i32 0, i32 7
  %13 = load i32, i32* @fscache_op_work_func, align 4
  %14 = call i32 @INIT_WORK(i32* %12, i32 %13)
  %15 = load %struct.fscache_operation*, %struct.fscache_operation** %7, align 8
  %16 = getelementptr inbounds %struct.fscache_operation, %struct.fscache_operation* %15, i32 0, i32 6
  %17 = call i32 @atomic_set(i32* %16, i32 1)
  %18 = load i32, i32* @FSCACHE_OP_ST_INITIALISED, align 4
  %19 = load %struct.fscache_operation*, %struct.fscache_operation** %7, align 8
  %20 = getelementptr inbounds %struct.fscache_operation, %struct.fscache_operation* %19, i32 0, i32 5
  store i32 %18, i32* %20, align 4
  %21 = call i32 @atomic_inc_return(i32* @fscache_op_debug_id)
  %22 = load %struct.fscache_operation*, %struct.fscache_operation** %7, align 8
  %23 = getelementptr inbounds %struct.fscache_operation, %struct.fscache_operation* %22, i32 0, i32 4
  store i32 %21, i32* %23, align 4
  %24 = load i32, i32* %8, align 4
  %25 = load %struct.fscache_operation*, %struct.fscache_operation** %7, align 8
  %26 = getelementptr inbounds %struct.fscache_operation, %struct.fscache_operation* %25, i32 0, i32 3
  store i32 %24, i32* %26, align 4
  %27 = load i64, i64* %9, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %5
  br label %33

30:                                               ; preds = %5
  %31 = load i32, i32* @fscache_operation_dummy_cancel, align 4
  %32 = sext i32 %31 to i64
  br label %33

33:                                               ; preds = %30, %29
  %34 = phi i64 [ %27, %29 ], [ %32, %30 ]
  %35 = trunc i64 %34 to i32
  %36 = load %struct.fscache_operation*, %struct.fscache_operation** %7, align 8
  %37 = getelementptr inbounds %struct.fscache_operation, %struct.fscache_operation* %36, i32 0, i32 2
  store i32 %35, i32* %37, align 4
  %38 = load i32, i32* %10, align 4
  %39 = load %struct.fscache_operation*, %struct.fscache_operation** %7, align 8
  %40 = getelementptr inbounds %struct.fscache_operation, %struct.fscache_operation* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 4
  %41 = load %struct.fscache_operation*, %struct.fscache_operation** %7, align 8
  %42 = getelementptr inbounds %struct.fscache_operation, %struct.fscache_operation* %41, i32 0, i32 0
  %43 = call i32 @INIT_LIST_HEAD(i32* %42)
  %44 = call i32 @fscache_stat(i32* @fscache_n_op_initialised)
  %45 = load %struct.fscache_cookie*, %struct.fscache_cookie** %6, align 8
  %46 = load %struct.fscache_operation*, %struct.fscache_operation** %7, align 8
  %47 = load i32, i32* @fscache_op_init, align 4
  %48 = call i32 @trace_fscache_op(%struct.fscache_cookie* %45, %struct.fscache_operation* %46, i32 %47)
  ret void
}

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @atomic_inc_return(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @fscache_stat(i32*) #1

declare dso_local i32 @trace_fscache_op(%struct.fscache_cookie*, %struct.fscache_operation*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
