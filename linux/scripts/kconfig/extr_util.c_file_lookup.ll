; ModuleID = '/home/carl/AnghaBench/linux/scripts/kconfig/extr_util.c_file_lookup.c'
source_filename = "/home/carl/AnghaBench/linux/scripts/kconfig/extr_util.c_file_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.file*, i32 }

@file_list = common dso_local global %struct.file* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.file* @file_lookup(i8* %0) #0 {
  %2 = alloca %struct.file*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.file*, align 8
  store i8* %0, i8** %3, align 8
  %5 = load %struct.file*, %struct.file** @file_list, align 8
  store %struct.file* %5, %struct.file** %4, align 8
  br label %6

6:                                                ; preds = %19, %1
  %7 = load %struct.file*, %struct.file** %4, align 8
  %8 = icmp ne %struct.file* %7, null
  br i1 %8, label %9, label %23

9:                                                ; preds = %6
  %10 = load i8*, i8** %3, align 8
  %11 = load %struct.file*, %struct.file** %4, align 8
  %12 = getelementptr inbounds %struct.file, %struct.file* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @strcmp(i8* %10, i32 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %9
  %17 = load %struct.file*, %struct.file** %4, align 8
  store %struct.file* %17, %struct.file** %2, align 8
  br label %36

18:                                               ; preds = %9
  br label %19

19:                                               ; preds = %18
  %20 = load %struct.file*, %struct.file** %4, align 8
  %21 = getelementptr inbounds %struct.file, %struct.file* %20, i32 0, i32 0
  %22 = load %struct.file*, %struct.file** %21, align 8
  store %struct.file* %22, %struct.file** %4, align 8
  br label %6

23:                                               ; preds = %6
  %24 = call %struct.file* @xmalloc(i32 16)
  store %struct.file* %24, %struct.file** %4, align 8
  %25 = load %struct.file*, %struct.file** %4, align 8
  %26 = call i32 @memset(%struct.file* %25, i32 0, i32 16)
  %27 = load i8*, i8** %3, align 8
  %28 = call i32 @xstrdup(i8* %27)
  %29 = load %struct.file*, %struct.file** %4, align 8
  %30 = getelementptr inbounds %struct.file, %struct.file* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 8
  %31 = load %struct.file*, %struct.file** @file_list, align 8
  %32 = load %struct.file*, %struct.file** %4, align 8
  %33 = getelementptr inbounds %struct.file, %struct.file* %32, i32 0, i32 0
  store %struct.file* %31, %struct.file** %33, align 8
  %34 = load %struct.file*, %struct.file** %4, align 8
  store %struct.file* %34, %struct.file** @file_list, align 8
  %35 = load %struct.file*, %struct.file** %4, align 8
  store %struct.file* %35, %struct.file** %2, align 8
  br label %36

36:                                               ; preds = %23, %16
  %37 = load %struct.file*, %struct.file** %2, align 8
  ret %struct.file* %37
}

declare dso_local i32 @strcmp(i8*, i32) #1

declare dso_local %struct.file* @xmalloc(i32) #1

declare dso_local i32 @memset(%struct.file*, i32, i32) #1

declare dso_local i32 @xstrdup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
