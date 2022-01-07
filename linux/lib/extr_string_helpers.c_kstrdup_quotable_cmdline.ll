; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_string_helpers.c_kstrdup_quotable_cmdline.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_string_helpers.c_kstrdup_quotable_cmdline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32 }

@PAGE_SIZE = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @kstrdup_quotable_cmdline(%struct.task_struct* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.task_struct*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.task_struct* %0, %struct.task_struct** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load i64, i64* @PAGE_SIZE, align 8
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call i8* @kmalloc(i64 %10, i32 %11)
  store i8* %12, i8** %6, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  store i8* null, i8** %3, align 8
  br label %70

16:                                               ; preds = %2
  %17 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %18 = load i8*, i8** %6, align 8
  %19 = load i64, i64* @PAGE_SIZE, align 8
  %20 = sub nsw i64 %19, 1
  %21 = call i32 @get_cmdline(%struct.task_struct* %17, i8* %18, i64 %20)
  store i32 %21, i32* %9, align 4
  %22 = load i8*, i8** %6, align 8
  %23 = load i32, i32* %9, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i8, i8* %22, i64 %24
  store i8 0, i8* %25, align 1
  br label %26

26:                                               ; preds = %40, %16
  %27 = load i32, i32* %9, align 4
  %28 = add nsw i32 %27, -1
  store i32 %28, i32* %9, align 4
  %29 = icmp sge i32 %28, 0
  br i1 %29, label %30, label %38

30:                                               ; preds = %26
  %31 = load i8*, i8** %6, align 8
  %32 = load i32, i32* %9, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i8, i8* %31, i64 %33
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp eq i32 %36, 0
  br label %38

38:                                               ; preds = %30, %26
  %39 = phi i1 [ false, %26 ], [ %37, %30 ]
  br i1 %39, label %40, label %41

40:                                               ; preds = %38
  br label %26

41:                                               ; preds = %38
  store i32 0, i32* %8, align 4
  br label %42

42:                                               ; preds = %60, %41
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* %9, align 4
  %45 = icmp sle i32 %43, %44
  br i1 %45, label %46, label %63

46:                                               ; preds = %42
  %47 = load i8*, i8** %6, align 8
  %48 = load i32, i32* %8, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i8, i8* %47, i64 %49
  %51 = load i8, i8* %50, align 1
  %52 = sext i8 %51 to i32
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %46
  %55 = load i8*, i8** %6, align 8
  %56 = load i32, i32* %8, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i8, i8* %55, i64 %57
  store i8 32, i8* %58, align 1
  br label %59

59:                                               ; preds = %54, %46
  br label %60

60:                                               ; preds = %59
  %61 = load i32, i32* %8, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %8, align 4
  br label %42

63:                                               ; preds = %42
  %64 = load i8*, i8** %6, align 8
  %65 = load i32, i32* %5, align 4
  %66 = call i8* @kstrdup_quotable(i8* %64, i32 %65)
  store i8* %66, i8** %7, align 8
  %67 = load i8*, i8** %6, align 8
  %68 = call i32 @kfree(i8* %67)
  %69 = load i8*, i8** %7, align 8
  store i8* %69, i8** %3, align 8
  br label %70

70:                                               ; preds = %63, %15
  %71 = load i8*, i8** %3, align 8
  ret i8* %71
}

declare dso_local i8* @kmalloc(i64, i32) #1

declare dso_local i32 @get_cmdline(%struct.task_struct*, i8*, i64) #1

declare dso_local i8* @kstrdup_quotable(i8*, i32) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
