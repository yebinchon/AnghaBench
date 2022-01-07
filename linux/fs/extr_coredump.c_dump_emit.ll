; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_coredump.c_dump_emit.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_coredump.c_dump_emit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.coredump_params = type { i64, i64, i32, %struct.file* }
%struct.file = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dump_emit(%struct.coredump_params* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.coredump_params*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.file*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.coredump_params* %0, %struct.coredump_params** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.coredump_params*, %struct.coredump_params** %5, align 8
  %12 = getelementptr inbounds %struct.coredump_params, %struct.coredump_params* %11, i32 0, i32 3
  %13 = load %struct.file*, %struct.file** %12, align 8
  store %struct.file* %13, %struct.file** %8, align 8
  %14 = load %struct.file*, %struct.file** %8, align 8
  %15 = getelementptr inbounds %struct.file, %struct.file* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %9, align 4
  %17 = load %struct.coredump_params*, %struct.coredump_params** %5, align 8
  %18 = getelementptr inbounds %struct.coredump_params, %struct.coredump_params* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i32, i32* %7, align 4
  %21 = sext i32 %20 to i64
  %22 = add nsw i64 %19, %21
  %23 = load %struct.coredump_params*, %struct.coredump_params** %5, align 8
  %24 = getelementptr inbounds %struct.coredump_params, %struct.coredump_params* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp sgt i64 %22, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %66

28:                                               ; preds = %3
  br label %29

29:                                               ; preds = %44, %28
  %30 = load i32, i32* %7, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %65

32:                                               ; preds = %29
  %33 = call i64 (...) @dump_interrupted()
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %32
  store i32 0, i32* %4, align 4
  br label %66

36:                                               ; preds = %32
  %37 = load %struct.file*, %struct.file** %8, align 8
  %38 = load i8*, i8** %6, align 8
  %39 = load i32, i32* %7, align 4
  %40 = call i64 @__kernel_write(%struct.file* %37, i8* %38, i32 %39, i32* %9)
  store i64 %40, i64* %10, align 8
  %41 = load i64, i64* %10, align 8
  %42 = icmp sle i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %36
  store i32 0, i32* %4, align 4
  br label %66

44:                                               ; preds = %36
  %45 = load i32, i32* %9, align 4
  %46 = load %struct.file*, %struct.file** %8, align 8
  %47 = getelementptr inbounds %struct.file, %struct.file* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 4
  %48 = load i64, i64* %10, align 8
  %49 = load %struct.coredump_params*, %struct.coredump_params** %5, align 8
  %50 = getelementptr inbounds %struct.coredump_params, %struct.coredump_params* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = add nsw i64 %51, %48
  store i64 %52, i64* %50, align 8
  %53 = load i64, i64* %10, align 8
  %54 = load %struct.coredump_params*, %struct.coredump_params** %5, align 8
  %55 = getelementptr inbounds %struct.coredump_params, %struct.coredump_params* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = sext i32 %56 to i64
  %58 = add nsw i64 %57, %53
  %59 = trunc i64 %58 to i32
  store i32 %59, i32* %55, align 8
  %60 = load i64, i64* %10, align 8
  %61 = load i32, i32* %7, align 4
  %62 = sext i32 %61 to i64
  %63 = sub nsw i64 %62, %60
  %64 = trunc i64 %63 to i32
  store i32 %64, i32* %7, align 4
  br label %29

65:                                               ; preds = %29
  store i32 1, i32* %4, align 4
  br label %66

66:                                               ; preds = %65, %43, %35, %27
  %67 = load i32, i32* %4, align 4
  ret i32 %67
}

declare dso_local i64 @dump_interrupted(...) #1

declare dso_local i64 @__kernel_write(%struct.file*, i8*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
