; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_fail_function.c_fei_attr_new.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_fail_function.c_fei_attr_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fei_attr = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@fei_kprobe_handler = common dso_local global i32 0, align 4
@fei_post_handler = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.fei_attr* (i8*, i64)* @fei_attr_new to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.fei_attr* @fei_attr_new(i8* %0, i64 %1) #0 {
  %3 = alloca %struct.fei_attr*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.fei_attr*, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.fei_attr* @kzalloc(i32 20, i32 %7)
  store %struct.fei_attr* %8, %struct.fei_attr** %6, align 8
  %9 = load %struct.fei_attr*, %struct.fei_attr** %6, align 8
  %10 = icmp ne %struct.fei_attr* %9, null
  br i1 %10, label %11, label %42

11:                                               ; preds = %2
  %12 = load i8*, i8** %4, align 8
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call i32 @kstrdup(i8* %12, i32 %13)
  %15 = load %struct.fei_attr*, %struct.fei_attr** %6, align 8
  %16 = getelementptr inbounds %struct.fei_attr, %struct.fei_attr* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 2
  store i32 %14, i32* %17, align 4
  %18 = load %struct.fei_attr*, %struct.fei_attr** %6, align 8
  %19 = getelementptr inbounds %struct.fei_attr, %struct.fei_attr* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %11
  %24 = load %struct.fei_attr*, %struct.fei_attr** %6, align 8
  %25 = call i32 @kfree(%struct.fei_attr* %24)
  store %struct.fei_attr* null, %struct.fei_attr** %3, align 8
  br label %44

26:                                               ; preds = %11
  %27 = load i32, i32* @fei_kprobe_handler, align 4
  %28 = load %struct.fei_attr*, %struct.fei_attr** %6, align 8
  %29 = getelementptr inbounds %struct.fei_attr, %struct.fei_attr* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  store i32 %27, i32* %30, align 4
  %31 = load i32, i32* @fei_post_handler, align 4
  %32 = load %struct.fei_attr*, %struct.fei_attr** %6, align 8
  %33 = getelementptr inbounds %struct.fei_attr, %struct.fei_attr* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  store i32 %31, i32* %34, align 4
  %35 = load i64, i64* %5, align 8
  %36 = call i32 @adjust_error_retval(i64 %35, i32 0)
  %37 = load %struct.fei_attr*, %struct.fei_attr** %6, align 8
  %38 = getelementptr inbounds %struct.fei_attr, %struct.fei_attr* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 4
  %39 = load %struct.fei_attr*, %struct.fei_attr** %6, align 8
  %40 = getelementptr inbounds %struct.fei_attr, %struct.fei_attr* %39, i32 0, i32 0
  %41 = call i32 @INIT_LIST_HEAD(i32* %40)
  br label %42

42:                                               ; preds = %26, %2
  %43 = load %struct.fei_attr*, %struct.fei_attr** %6, align 8
  store %struct.fei_attr* %43, %struct.fei_attr** %3, align 8
  br label %44

44:                                               ; preds = %42, %23
  %45 = load %struct.fei_attr*, %struct.fei_attr** %3, align 8
  ret %struct.fei_attr* %45
}

declare dso_local %struct.fei_attr* @kzalloc(i32, i32) #1

declare dso_local i32 @kstrdup(i8*, i32) #1

declare dso_local i32 @kfree(%struct.fei_attr*) #1

declare dso_local i32 @adjust_error_retval(i64, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
