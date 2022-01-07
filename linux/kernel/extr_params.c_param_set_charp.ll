; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_params.c_param_set_charp.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_params.c_param_set_charp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kernel_param = type { i64, i32 }

@.str = private unnamed_addr constant [31 x i8] c"%s: string parameter too long\0A\00", align 1
@ENOSPC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @param_set_charp(i8* %0, %struct.kernel_param* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.kernel_param*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.kernel_param* %1, %struct.kernel_param** %5, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = call i32 @strlen(i8* %6)
  %8 = icmp sgt i32 %7, 1024
  br i1 %8, label %9, label %16

9:                                                ; preds = %2
  %10 = load %struct.kernel_param*, %struct.kernel_param** %5, align 8
  %11 = getelementptr inbounds %struct.kernel_param, %struct.kernel_param* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @pr_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %12)
  %14 = load i32, i32* @ENOSPC, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %58

16:                                               ; preds = %2
  %17 = load %struct.kernel_param*, %struct.kernel_param** %5, align 8
  %18 = getelementptr inbounds %struct.kernel_param, %struct.kernel_param* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to i8**
  %21 = load i8*, i8** %20, align 8
  %22 = call i32 @maybe_kfree_parameter(i8* %21)
  %23 = call i64 (...) @slab_is_available()
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %51

25:                                               ; preds = %16
  %26 = load i8*, i8** %4, align 8
  %27 = call i32 @strlen(i8* %26)
  %28 = add nsw i32 %27, 1
  %29 = call i8* @kmalloc_parameter(i32 %28)
  %30 = load %struct.kernel_param*, %struct.kernel_param** %5, align 8
  %31 = getelementptr inbounds %struct.kernel_param, %struct.kernel_param* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = inttoptr i64 %32 to i8**
  store i8* %29, i8** %33, align 8
  %34 = load %struct.kernel_param*, %struct.kernel_param** %5, align 8
  %35 = getelementptr inbounds %struct.kernel_param, %struct.kernel_param* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = inttoptr i64 %36 to i8**
  %38 = load i8*, i8** %37, align 8
  %39 = icmp ne i8* %38, null
  br i1 %39, label %43, label %40

40:                                               ; preds = %25
  %41 = load i32, i32* @ENOMEM, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %3, align 4
  br label %58

43:                                               ; preds = %25
  %44 = load %struct.kernel_param*, %struct.kernel_param** %5, align 8
  %45 = getelementptr inbounds %struct.kernel_param, %struct.kernel_param* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = inttoptr i64 %46 to i8**
  %48 = load i8*, i8** %47, align 8
  %49 = load i8*, i8** %4, align 8
  %50 = call i32 @strcpy(i8* %48, i8* %49)
  br label %57

51:                                               ; preds = %16
  %52 = load i8*, i8** %4, align 8
  %53 = load %struct.kernel_param*, %struct.kernel_param** %5, align 8
  %54 = getelementptr inbounds %struct.kernel_param, %struct.kernel_param* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = inttoptr i64 %55 to i8**
  store i8* %52, i8** %56, align 8
  br label %57

57:                                               ; preds = %51, %43
  store i32 0, i32* %3, align 4
  br label %58

58:                                               ; preds = %57, %40, %9
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @maybe_kfree_parameter(i8*) #1

declare dso_local i64 @slab_is_available(...) #1

declare dso_local i8* @kmalloc_parameter(i32) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
