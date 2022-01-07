; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_kobject.c_kobject_init.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_kobject.c_kobject_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kobject = type { %struct.kobj_type*, i64 }
%struct.kobj_type = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"invalid kobject pointer!\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"must have a ktype to be initialized properly!\0A\00", align 1
@.str.2 = private unnamed_addr constant [82 x i8] c"kobject (%p): tried to init an initialized object, something is seriously wrong.\0A\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"kobject (%p): %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kobject_init(%struct.kobject* %0, %struct.kobj_type* %1) #0 {
  %3 = alloca %struct.kobject*, align 8
  %4 = alloca %struct.kobj_type*, align 8
  %5 = alloca i8*, align 8
  store %struct.kobject* %0, %struct.kobject** %3, align 8
  store %struct.kobj_type* %1, %struct.kobj_type** %4, align 8
  %6 = load %struct.kobject*, %struct.kobject** %3, align 8
  %7 = icmp ne %struct.kobject* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  store i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8** %5, align 8
  br label %28

9:                                                ; preds = %2
  %10 = load %struct.kobj_type*, %struct.kobj_type** %4, align 8
  %11 = icmp ne %struct.kobj_type* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %9
  store i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i8** %5, align 8
  br label %28

13:                                               ; preds = %9
  %14 = load %struct.kobject*, %struct.kobject** %3, align 8
  %15 = getelementptr inbounds %struct.kobject, %struct.kobject* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %13
  %19 = load %struct.kobject*, %struct.kobject** %3, align 8
  %20 = call i32 (i8*, %struct.kobject*, ...) @pr_err(i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.2, i64 0, i64 0), %struct.kobject* %19)
  %21 = call i32 (...) @dump_stack()
  br label %22

22:                                               ; preds = %18, %13
  %23 = load %struct.kobject*, %struct.kobject** %3, align 8
  %24 = call i32 @kobject_init_internal(%struct.kobject* %23)
  %25 = load %struct.kobj_type*, %struct.kobj_type** %4, align 8
  %26 = load %struct.kobject*, %struct.kobject** %3, align 8
  %27 = getelementptr inbounds %struct.kobject, %struct.kobject* %26, i32 0, i32 0
  store %struct.kobj_type* %25, %struct.kobj_type** %27, align 8
  br label %33

28:                                               ; preds = %12, %8
  %29 = load %struct.kobject*, %struct.kobject** %3, align 8
  %30 = load i8*, i8** %5, align 8
  %31 = call i32 (i8*, %struct.kobject*, ...) @pr_err(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), %struct.kobject* %29, i8* %30)
  %32 = call i32 (...) @dump_stack()
  br label %33

33:                                               ; preds = %28, %22
  ret void
}

declare dso_local i32 @pr_err(i8*, %struct.kobject*, ...) #1

declare dso_local i32 @dump_stack(...) #1

declare dso_local i32 @kobject_init_internal(%struct.kobject*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
