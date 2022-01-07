; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_seq_file.c_single_open_size.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_seq_file.c_single_open_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i64 }
%struct.seq_file = type { i8*, i64 }

@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @single_open_size(%struct.file* %0, i32 (%struct.seq_file*, i8*)* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.file*, align 8
  %7 = alloca i32 (%struct.seq_file*, i8*)*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %6, align 8
  store i32 (%struct.seq_file*, i8*)* %1, i32 (%struct.seq_file*, i8*)** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %12 = load i64, i64* %9, align 8
  %13 = call i8* @seq_buf_alloc(i64 %12)
  store i8* %13, i8** %10, align 8
  %14 = load i8*, i8** %10, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %4
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %5, align 4
  br label %43

19:                                               ; preds = %4
  %20 = load %struct.file*, %struct.file** %6, align 8
  %21 = load i32 (%struct.seq_file*, i8*)*, i32 (%struct.seq_file*, i8*)** %7, align 8
  %22 = load i8*, i8** %8, align 8
  %23 = call i32 @single_open(%struct.file* %20, i32 (%struct.seq_file*, i8*)* %21, i8* %22)
  store i32 %23, i32* %11, align 4
  %24 = load i32, i32* %11, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %19
  %27 = load i8*, i8** %10, align 8
  %28 = call i32 @kvfree(i8* %27)
  %29 = load i32, i32* %11, align 4
  store i32 %29, i32* %5, align 4
  br label %43

30:                                               ; preds = %19
  %31 = load i8*, i8** %10, align 8
  %32 = load %struct.file*, %struct.file** %6, align 8
  %33 = getelementptr inbounds %struct.file, %struct.file* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = inttoptr i64 %34 to %struct.seq_file*
  %36 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %35, i32 0, i32 0
  store i8* %31, i8** %36, align 8
  %37 = load i64, i64* %9, align 8
  %38 = load %struct.file*, %struct.file** %6, align 8
  %39 = getelementptr inbounds %struct.file, %struct.file* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = inttoptr i64 %40 to %struct.seq_file*
  %42 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %41, i32 0, i32 1
  store i64 %37, i64* %42, align 8
  store i32 0, i32* %5, align 4
  br label %43

43:                                               ; preds = %30, %26, %16
  %44 = load i32, i32* %5, align 4
  ret i32 %44
}

declare dso_local i8* @seq_buf_alloc(i64) #1

declare dso_local i32 @single_open(%struct.file*, i32 (%struct.seq_file*, i8*)*, i8*) #1

declare dso_local i32 @kvfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
