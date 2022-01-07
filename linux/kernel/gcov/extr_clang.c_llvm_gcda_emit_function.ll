; ModuleID = '/home/carl/AnghaBench/linux/kernel/gcov/extr_clang.c_llvm_gcda_emit_function.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/gcov/extr_clang.c_llvm_gcda_emit_function.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.gcov_fn_info = type { i32, i32, i8*, i32, i8*, i8* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@current_info = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @llvm_gcda_emit_function(i8* %0, i8* %1, i8* %2, i32 %3, i8* %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %struct.gcov_fn_info*, align 8
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store i8* %4, i8** %10, align 8
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.gcov_fn_info* @kzalloc(i32 40, i32 %12)
  store %struct.gcov_fn_info* %13, %struct.gcov_fn_info** %11, align 8
  %14 = load %struct.gcov_fn_info*, %struct.gcov_fn_info** %11, align 8
  %15 = icmp ne %struct.gcov_fn_info* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %5
  br label %47

17:                                               ; preds = %5
  %18 = load %struct.gcov_fn_info*, %struct.gcov_fn_info** %11, align 8
  %19 = getelementptr inbounds %struct.gcov_fn_info, %struct.gcov_fn_info* %18, i32 0, i32 0
  %20 = call i32 @INIT_LIST_HEAD(i32* %19)
  %21 = load i8*, i8** %6, align 8
  %22 = load %struct.gcov_fn_info*, %struct.gcov_fn_info** %11, align 8
  %23 = getelementptr inbounds %struct.gcov_fn_info, %struct.gcov_fn_info* %22, i32 0, i32 5
  store i8* %21, i8** %23, align 8
  %24 = load i8*, i8** %8, align 8
  %25 = load %struct.gcov_fn_info*, %struct.gcov_fn_info** %11, align 8
  %26 = getelementptr inbounds %struct.gcov_fn_info, %struct.gcov_fn_info* %25, i32 0, i32 4
  store i8* %24, i8** %26, align 8
  %27 = load i32, i32* %9, align 4
  %28 = load %struct.gcov_fn_info*, %struct.gcov_fn_info** %11, align 8
  %29 = getelementptr inbounds %struct.gcov_fn_info, %struct.gcov_fn_info* %28, i32 0, i32 3
  store i32 %27, i32* %29, align 8
  %30 = load i8*, i8** %10, align 8
  %31 = load %struct.gcov_fn_info*, %struct.gcov_fn_info** %11, align 8
  %32 = getelementptr inbounds %struct.gcov_fn_info, %struct.gcov_fn_info* %31, i32 0, i32 2
  store i8* %30, i8** %32, align 8
  %33 = load i8*, i8** %7, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %35, label %41

35:                                               ; preds = %17
  %36 = load i8*, i8** %7, align 8
  %37 = load i32, i32* @GFP_KERNEL, align 4
  %38 = call i32 @kstrdup(i8* %36, i32 %37)
  %39 = load %struct.gcov_fn_info*, %struct.gcov_fn_info** %11, align 8
  %40 = getelementptr inbounds %struct.gcov_fn_info, %struct.gcov_fn_info* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 4
  br label %41

41:                                               ; preds = %35, %17
  %42 = load %struct.gcov_fn_info*, %struct.gcov_fn_info** %11, align 8
  %43 = getelementptr inbounds %struct.gcov_fn_info, %struct.gcov_fn_info* %42, i32 0, i32 0
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current_info, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = call i32 @list_add_tail(i32* %43, i32* %45)
  br label %47

47:                                               ; preds = %41, %16
  ret void
}

declare dso_local %struct.gcov_fn_info* @kzalloc(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @kstrdup(i8*, i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
