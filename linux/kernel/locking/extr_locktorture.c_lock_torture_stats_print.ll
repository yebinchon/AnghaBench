; ModuleID = '/home/carl/AnghaBench/linux/kernel/locking/extr_locktorture.c_lock_torture_stats_print.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/locking/extr_locktorture.c_lock_torture_stats_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i64 }

@cxt = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"lock_torture_stats_print: Out of memory, need: %d\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @lock_torture_stats_print to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lock_torture_stats_print() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cxt, i32 0, i32 0), align 8
  %4 = mul nsw i32 %3, 200
  %5 = add nsw i32 %4, 8192
  store i32 %5, i32* %1, align 4
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cxt, i32 0, i32 3), align 8
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %16

10:                                               ; preds = %0
  %11 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cxt, i32 0, i32 1), align 4
  %12 = mul nsw i32 %11, 200
  %13 = add nsw i32 %12, 8192
  %14 = load i32, i32* %1, align 4
  %15 = add nsw i32 %14, %13
  store i32 %15, i32* %1, align 4
  br label %16

16:                                               ; preds = %10, %0
  %17 = load i32, i32* %1, align 4
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call i8* @kmalloc(i32 %17, i32 %18)
  store i8* %19, i8** %2, align 8
  %20 = load i8*, i8** %2, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %16
  %23 = load i32, i32* %1, align 4
  %24 = call i32 @pr_err(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %23)
  br label %54

25:                                               ; preds = %16
  %26 = load i8*, i8** %2, align 8
  %27 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cxt, i32 0, i32 4), align 8
  %28 = call i32 @__torture_print_stats(i8* %26, i32 %27, i32 1)
  %29 = load i8*, i8** %2, align 8
  %30 = call i32 @pr_alert(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %29)
  %31 = load i8*, i8** %2, align 8
  %32 = call i32 @kfree(i8* %31)
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cxt, i32 0, i32 3), align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %54

37:                                               ; preds = %25
  %38 = load i32, i32* %1, align 4
  %39 = load i32, i32* @GFP_KERNEL, align 4
  %40 = call i8* @kmalloc(i32 %38, i32 %39)
  store i8* %40, i8** %2, align 8
  %41 = load i8*, i8** %2, align 8
  %42 = icmp ne i8* %41, null
  br i1 %42, label %46, label %43

43:                                               ; preds = %37
  %44 = load i32, i32* %1, align 4
  %45 = call i32 @pr_err(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %44)
  br label %54

46:                                               ; preds = %37
  %47 = load i8*, i8** %2, align 8
  %48 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cxt, i32 0, i32 2), align 8
  %49 = call i32 @__torture_print_stats(i8* %47, i32 %48, i32 0)
  %50 = load i8*, i8** %2, align 8
  %51 = call i32 @pr_alert(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %50)
  %52 = load i8*, i8** %2, align 8
  %53 = call i32 @kfree(i8* %52)
  br label %54

54:                                               ; preds = %22, %43, %46, %25
  ret void
}

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @__torture_print_stats(i8*, i32, i32) #1

declare dso_local i32 @pr_alert(i8*, i8*) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
