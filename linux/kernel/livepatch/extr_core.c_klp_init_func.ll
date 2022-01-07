; ModuleID = '/home/carl/AnghaBench/linux/kernel/livepatch/extr_core.c_klp_init_func.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/livepatch/extr_core.c_klp_init_func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.klp_object = type { i32 }
%struct.klp_func = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@KSYM_NAME_LEN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [7 x i8] c"%s,%lu\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.klp_object*, %struct.klp_func*)* @klp_init_func to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @klp_init_func(%struct.klp_object* %0, %struct.klp_func* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.klp_object*, align 8
  %5 = alloca %struct.klp_func*, align 8
  store %struct.klp_object* %0, %struct.klp_object** %4, align 8
  store %struct.klp_func* %1, %struct.klp_func** %5, align 8
  %6 = load %struct.klp_func*, %struct.klp_func** %5, align 8
  %7 = getelementptr inbounds %struct.klp_func, %struct.klp_func* %6, i32 0, i32 3
  %8 = load i32, i32* %7, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %2
  %11 = load i32, i32* @EINVAL, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %3, align 4
  br label %63

13:                                               ; preds = %2
  %14 = load %struct.klp_func*, %struct.klp_func** %5, align 8
  %15 = getelementptr inbounds %struct.klp_func, %struct.klp_func* %14, i32 0, i32 7
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %26, label %18

18:                                               ; preds = %13
  %19 = load %struct.klp_func*, %struct.klp_func** %5, align 8
  %20 = getelementptr inbounds %struct.klp_func, %struct.klp_func* %19, i32 0, i32 6
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %18
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %63

26:                                               ; preds = %18, %13
  %27 = load %struct.klp_func*, %struct.klp_func** %5, align 8
  %28 = getelementptr inbounds %struct.klp_func, %struct.klp_func* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  %30 = call i64 @strlen(i32 %29)
  %31 = load i64, i64* @KSYM_NAME_LEN, align 8
  %32 = icmp sge i64 %30, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %26
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %3, align 4
  br label %63

36:                                               ; preds = %26
  %37 = load %struct.klp_func*, %struct.klp_func** %5, align 8
  %38 = getelementptr inbounds %struct.klp_func, %struct.klp_func* %37, i32 0, i32 5
  %39 = call i32 @INIT_LIST_HEAD(i32* %38)
  %40 = load %struct.klp_func*, %struct.klp_func** %5, align 8
  %41 = getelementptr inbounds %struct.klp_func, %struct.klp_func* %40, i32 0, i32 0
  store i32 0, i32* %41, align 4
  %42 = load %struct.klp_func*, %struct.klp_func** %5, align 8
  %43 = getelementptr inbounds %struct.klp_func, %struct.klp_func* %42, i32 0, i32 1
  store i32 0, i32* %43, align 4
  %44 = load %struct.klp_func*, %struct.klp_func** %5, align 8
  %45 = getelementptr inbounds %struct.klp_func, %struct.klp_func* %44, i32 0, i32 4
  %46 = load %struct.klp_object*, %struct.klp_object** %4, align 8
  %47 = getelementptr inbounds %struct.klp_object, %struct.klp_object* %46, i32 0, i32 0
  %48 = load %struct.klp_func*, %struct.klp_func** %5, align 8
  %49 = getelementptr inbounds %struct.klp_func, %struct.klp_func* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.klp_func*, %struct.klp_func** %5, align 8
  %52 = getelementptr inbounds %struct.klp_func, %struct.klp_func* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %36
  %56 = load %struct.klp_func*, %struct.klp_func** %5, align 8
  %57 = getelementptr inbounds %struct.klp_func, %struct.klp_func* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  br label %60

59:                                               ; preds = %36
  br label %60

60:                                               ; preds = %59, %55
  %61 = phi i32 [ %58, %55 ], [ 1, %59 ]
  %62 = call i32 @kobject_add(i32* %45, i32* %47, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %50, i32 %61)
  store i32 %62, i32* %3, align 4
  br label %63

63:                                               ; preds = %60, %33, %23, %10
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local i64 @strlen(i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @kobject_add(i32*, i32*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
