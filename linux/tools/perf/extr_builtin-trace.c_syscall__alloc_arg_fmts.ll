; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/extr_builtin-trace.c_syscall__alloc_arg_fmts.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/extr_builtin-trace.c_syscall__alloc_arg_fmts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.syscall = type { i32, %struct.TYPE_2__*, i32* }
%struct.TYPE_2__ = type { i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.syscall*, i32)* @syscall__alloc_arg_fmts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @syscall__alloc_arg_fmts(%struct.syscall* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.syscall*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.syscall* %0, %struct.syscall** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = icmp eq i32 %7, 6
  br i1 %8, label %9, label %27

9:                                                ; preds = %2
  %10 = load %struct.syscall*, %struct.syscall** %4, align 8
  %11 = getelementptr inbounds %struct.syscall, %struct.syscall* %10, i32 0, i32 1
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = icmp ne %struct.TYPE_2__* %12, null
  br i1 %13, label %14, label %27

14:                                               ; preds = %9
  %15 = load %struct.syscall*, %struct.syscall** %4, align 8
  %16 = getelementptr inbounds %struct.syscall, %struct.syscall* %15, i32 0, i32 1
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %14
  %22 = load %struct.syscall*, %struct.syscall** %4, align 8
  %23 = getelementptr inbounds %struct.syscall, %struct.syscall* %22, i32 0, i32 1
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  store i32 %26, i32* %5, align 4
  br label %27

27:                                               ; preds = %21, %14, %9, %2
  %28 = load i32, i32* %5, align 4
  %29 = call i32* @calloc(i32 %28, i32 4)
  %30 = load %struct.syscall*, %struct.syscall** %4, align 8
  %31 = getelementptr inbounds %struct.syscall, %struct.syscall* %30, i32 0, i32 2
  store i32* %29, i32** %31, align 8
  %32 = load %struct.syscall*, %struct.syscall** %4, align 8
  %33 = getelementptr inbounds %struct.syscall, %struct.syscall* %32, i32 0, i32 2
  %34 = load i32*, i32** %33, align 8
  %35 = icmp eq i32* %34, null
  br i1 %35, label %36, label %37

36:                                               ; preds = %27
  store i32 -1, i32* %3, align 4
  br label %71

37:                                               ; preds = %27
  store i32 0, i32* %6, align 4
  br label %38

38:                                               ; preds = %64, %37
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* %5, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %67

42:                                               ; preds = %38
  %43 = load %struct.syscall*, %struct.syscall** %4, align 8
  %44 = getelementptr inbounds %struct.syscall, %struct.syscall* %43, i32 0, i32 1
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = icmp ne %struct.TYPE_2__* %45, null
  br i1 %46, label %47, label %63

47:                                               ; preds = %42
  %48 = load %struct.syscall*, %struct.syscall** %4, align 8
  %49 = getelementptr inbounds %struct.syscall, %struct.syscall* %48, i32 0, i32 1
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 1
  %52 = load i32*, i32** %51, align 8
  %53 = load i32, i32* %6, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.syscall*, %struct.syscall** %4, align 8
  %58 = getelementptr inbounds %struct.syscall, %struct.syscall* %57, i32 0, i32 2
  %59 = load i32*, i32** %58, align 8
  %60 = load i32, i32* %6, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  store i32 %56, i32* %62, align 4
  br label %63

63:                                               ; preds = %47, %42
  br label %64

64:                                               ; preds = %63
  %65 = load i32, i32* %6, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %6, align 4
  br label %38

67:                                               ; preds = %38
  %68 = load i32, i32* %5, align 4
  %69 = load %struct.syscall*, %struct.syscall** %4, align 8
  %70 = getelementptr inbounds %struct.syscall, %struct.syscall* %69, i32 0, i32 0
  store i32 %68, i32* %70, align 8
  store i32 0, i32* %3, align 4
  br label %71

71:                                               ; preds = %67, %36
  %72 = load i32, i32* %3, align 4
  ret i32 %72
}

declare dso_local i32* @calloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
