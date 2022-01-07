; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_test_rhashtable.c_insert_retry.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_test_rhashtable.c_insert_retry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rhashtable = type { i32 }
%struct.test_obj = type { i32 }
%struct.rhashtable_params = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@enomem_retry = common dso_local global i64 0, align 8
@EBUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c" %u insertions retried after -ENOMEM\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rhashtable*, %struct.test_obj*, i32)* @insert_retry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @insert_retry(%struct.rhashtable* %0, %struct.test_obj* %1, i32 %2) #0 {
  %4 = alloca %struct.rhashtable_params, align 4
  %5 = alloca %struct.rhashtable*, align 8
  %6 = alloca %struct.test_obj*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = getelementptr inbounds %struct.rhashtable_params, %struct.rhashtable_params* %4, i32 0, i32 0
  store i32 %2, i32* %10, align 4
  store %struct.rhashtable* %0, %struct.rhashtable** %5, align 8
  store %struct.test_obj* %1, %struct.test_obj** %6, align 8
  store i32 -1, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %11

11:                                               ; preds = %34, %3
  %12 = load i32, i32* %8, align 4
  %13 = add nsw i32 %12, 1
  store i32 %13, i32* %8, align 4
  %14 = call i32 (...) @cond_resched()
  %15 = load %struct.rhashtable*, %struct.rhashtable** %5, align 8
  %16 = load %struct.test_obj*, %struct.test_obj** %6, align 8
  %17 = getelementptr inbounds %struct.test_obj, %struct.test_obj* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.rhashtable_params, %struct.rhashtable_params* %4, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @rhashtable_insert_fast(%struct.rhashtable* %15, i32* %17, i32 %19)
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  %24 = icmp eq i32 %21, %23
  br i1 %24, label %25, label %33

25:                                               ; preds = %11
  %26 = load i64, i64* @enomem_retry, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %25
  %29 = load i32, i32* %9, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* @EBUSY, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %7, align 4
  br label %33

33:                                               ; preds = %28, %25, %11
  br label %34

34:                                               ; preds = %33
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* @EBUSY, align 4
  %37 = sub nsw i32 0, %36
  %38 = icmp eq i32 %35, %37
  br i1 %38, label %11, label %39

39:                                               ; preds = %34
  %40 = load i32, i32* %9, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %39
  %43 = load i32, i32* %9, align 4
  %44 = call i32 @pr_info(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %43)
  br label %45

45:                                               ; preds = %42, %39
  %46 = load i32, i32* %7, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %45
  br label %51

49:                                               ; preds = %45
  %50 = load i32, i32* %8, align 4
  br label %51

51:                                               ; preds = %49, %48
  %52 = phi i32 [ %46, %48 ], [ %50, %49 ]
  ret i32 %52
}

declare dso_local i32 @cond_resched(...) #1

declare dso_local i32 @rhashtable_insert_fast(%struct.rhashtable*, i32*, i32) #1

declare dso_local i32 @pr_info(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
