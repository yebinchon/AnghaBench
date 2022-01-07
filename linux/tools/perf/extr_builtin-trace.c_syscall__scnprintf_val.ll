; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/extr_builtin-trace.c_syscall__scnprintf_val.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/extr_builtin-trace.c_syscall__scnprintf_val.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.syscall = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 (i8*, i64, %struct.syscall_arg*)*, i64 }
%struct.syscall_arg = type { i64, i64, i64 }

@.str = private unnamed_addr constant [4 x i8] c"%ld\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.syscall*, i8*, i64, %struct.syscall_arg*, i64)* @syscall__scnprintf_val to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @syscall__scnprintf_val(%struct.syscall* %0, i8* %1, i64 %2, %struct.syscall_arg* %3, i64 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.syscall*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.syscall_arg*, align 8
  %11 = alloca i64, align 8
  store %struct.syscall* %0, %struct.syscall** %7, align 8
  store i8* %1, i8** %8, align 8
  store i64 %2, i64* %9, align 8
  store %struct.syscall_arg* %3, %struct.syscall_arg** %10, align 8
  store i64 %4, i64* %11, align 8
  %12 = load %struct.syscall*, %struct.syscall** %7, align 8
  %13 = getelementptr inbounds %struct.syscall, %struct.syscall* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = icmp ne %struct.TYPE_2__* %14, null
  br i1 %15, label %16, label %67

16:                                               ; preds = %5
  %17 = load %struct.syscall*, %struct.syscall** %7, align 8
  %18 = getelementptr inbounds %struct.syscall, %struct.syscall* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = load %struct.syscall_arg*, %struct.syscall_arg** %10, align 8
  %21 = getelementptr inbounds %struct.syscall_arg, %struct.syscall_arg* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i64 (i8*, i64, %struct.syscall_arg*)*, i64 (i8*, i64, %struct.syscall_arg*)** %24, align 8
  %26 = icmp ne i64 (i8*, i64, %struct.syscall_arg*)* %25, null
  br i1 %26, label %27, label %67

27:                                               ; preds = %16
  %28 = load i64, i64* %11, align 8
  %29 = load %struct.syscall_arg*, %struct.syscall_arg** %10, align 8
  %30 = getelementptr inbounds %struct.syscall_arg, %struct.syscall_arg* %29, i32 0, i32 1
  store i64 %28, i64* %30, align 8
  %31 = load %struct.syscall*, %struct.syscall** %7, align 8
  %32 = getelementptr inbounds %struct.syscall, %struct.syscall* %31, i32 0, i32 0
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = load %struct.syscall_arg*, %struct.syscall_arg** %10, align 8
  %35 = getelementptr inbounds %struct.syscall_arg, %struct.syscall_arg* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %53

41:                                               ; preds = %27
  %42 = load %struct.syscall*, %struct.syscall** %7, align 8
  %43 = getelementptr inbounds %struct.syscall, %struct.syscall* %42, i32 0, i32 0
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = load %struct.syscall_arg*, %struct.syscall_arg** %10, align 8
  %46 = getelementptr inbounds %struct.syscall_arg, %struct.syscall_arg* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.syscall_arg*, %struct.syscall_arg** %10, align 8
  %52 = getelementptr inbounds %struct.syscall_arg, %struct.syscall_arg* %51, i32 0, i32 2
  store i64 %50, i64* %52, align 8
  br label %53

53:                                               ; preds = %41, %27
  %54 = load %struct.syscall*, %struct.syscall** %7, align 8
  %55 = getelementptr inbounds %struct.syscall, %struct.syscall* %54, i32 0, i32 0
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = load %struct.syscall_arg*, %struct.syscall_arg** %10, align 8
  %58 = getelementptr inbounds %struct.syscall_arg, %struct.syscall_arg* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i64 (i8*, i64, %struct.syscall_arg*)*, i64 (i8*, i64, %struct.syscall_arg*)** %61, align 8
  %63 = load i8*, i8** %8, align 8
  %64 = load i64, i64* %9, align 8
  %65 = load %struct.syscall_arg*, %struct.syscall_arg** %10, align 8
  %66 = call i64 %62(i8* %63, i64 %64, %struct.syscall_arg* %65)
  store i64 %66, i64* %6, align 8
  br label %72

67:                                               ; preds = %16, %5
  %68 = load i8*, i8** %8, align 8
  %69 = load i64, i64* %9, align 8
  %70 = load i64, i64* %11, align 8
  %71 = call i64 @scnprintf(i8* %68, i64 %69, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i64 %70)
  store i64 %71, i64* %6, align 8
  br label %72

72:                                               ; preds = %67, %53
  %73 = load i64, i64* %6, align 8
  ret i64 %73
}

declare dso_local i64 @scnprintf(i8*, i64, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
