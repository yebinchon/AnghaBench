; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_debugobjects.c_debug_object_is_on_stack.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_debugobjects.c_debug_object_is_on_stack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@debug_object_is_on_stack.limit = internal global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"object %p is on stack %p, but NOT annotated.\0A\00", align 1
@current = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"object %p is NOT on stack %p, but annotated.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @debug_object_is_on_stack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @debug_object_is_on_stack(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* @debug_object_is_on_stack.limit, align 4
  %7 = icmp sgt i32 %6, 4
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  br label %33

9:                                                ; preds = %2
  %10 = load i8*, i8** %3, align 8
  %11 = call i32 @object_is_on_stack(i8* %10)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %9
  br label %33

16:                                               ; preds = %9
  %17 = load i32, i32* @debug_object_is_on_stack.limit, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* @debug_object_is_on_stack.limit, align 4
  %19 = load i32, i32* %5, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %16
  %22 = load i8*, i8** %3, align 8
  %23 = load i32, i32* @current, align 4
  %24 = call i32 @task_stack_page(i32 %23)
  %25 = call i32 @pr_warn(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i8* %22, i32 %24)
  br label %31

26:                                               ; preds = %16
  %27 = load i8*, i8** %3, align 8
  %28 = load i32, i32* @current, align 4
  %29 = call i32 @task_stack_page(i32 %28)
  %30 = call i32 @pr_warn(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i8* %27, i32 %29)
  br label %31

31:                                               ; preds = %26, %21
  %32 = call i32 @WARN_ON(i32 1)
  br label %33

33:                                               ; preds = %31, %15, %8
  ret void
}

declare dso_local i32 @object_is_on_stack(i8*) #1

declare dso_local i32 @pr_warn(i8*, i8*, i32) #1

declare dso_local i32 @task_stack_page(i32) #1

declare dso_local i32 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
