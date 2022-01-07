; ModuleID = '/home/carl/AnghaBench/linux/kernel/gcov/extr_gcc_4_7.c_gcov_iter_new.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/gcov/extr_gcc_4_7.c_gcov_iter_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gcov_iterator = type { i32*, i32, %struct.gcov_info* }
%struct.gcov_info = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.gcov_iterator* @gcov_iter_new(%struct.gcov_info* %0) #0 {
  %2 = alloca %struct.gcov_iterator*, align 8
  %3 = alloca %struct.gcov_info*, align 8
  %4 = alloca %struct.gcov_iterator*, align 8
  store %struct.gcov_info* %0, %struct.gcov_info** %3, align 8
  %5 = load i32, i32* @GFP_KERNEL, align 4
  %6 = call %struct.gcov_iterator* @kzalloc(i32 24, i32 %5)
  store %struct.gcov_iterator* %6, %struct.gcov_iterator** %4, align 8
  %7 = load %struct.gcov_iterator*, %struct.gcov_iterator** %4, align 8
  %8 = icmp ne %struct.gcov_iterator* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %36

10:                                               ; preds = %1
  %11 = load %struct.gcov_info*, %struct.gcov_info** %3, align 8
  %12 = load %struct.gcov_iterator*, %struct.gcov_iterator** %4, align 8
  %13 = getelementptr inbounds %struct.gcov_iterator, %struct.gcov_iterator* %12, i32 0, i32 2
  store %struct.gcov_info* %11, %struct.gcov_info** %13, align 8
  %14 = load %struct.gcov_info*, %struct.gcov_info** %3, align 8
  %15 = call i32 @convert_to_gcda(i32* null, %struct.gcov_info* %14)
  %16 = load %struct.gcov_iterator*, %struct.gcov_iterator** %4, align 8
  %17 = getelementptr inbounds %struct.gcov_iterator, %struct.gcov_iterator* %16, i32 0, i32 1
  store i32 %15, i32* %17, align 8
  %18 = load %struct.gcov_iterator*, %struct.gcov_iterator** %4, align 8
  %19 = getelementptr inbounds %struct.gcov_iterator, %struct.gcov_iterator* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = call i32* @vmalloc(i32 %20)
  %22 = load %struct.gcov_iterator*, %struct.gcov_iterator** %4, align 8
  %23 = getelementptr inbounds %struct.gcov_iterator, %struct.gcov_iterator* %22, i32 0, i32 0
  store i32* %21, i32** %23, align 8
  %24 = load %struct.gcov_iterator*, %struct.gcov_iterator** %4, align 8
  %25 = getelementptr inbounds %struct.gcov_iterator, %struct.gcov_iterator* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %10
  br label %36

29:                                               ; preds = %10
  %30 = load %struct.gcov_iterator*, %struct.gcov_iterator** %4, align 8
  %31 = getelementptr inbounds %struct.gcov_iterator, %struct.gcov_iterator* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = load %struct.gcov_info*, %struct.gcov_info** %3, align 8
  %34 = call i32 @convert_to_gcda(i32* %32, %struct.gcov_info* %33)
  %35 = load %struct.gcov_iterator*, %struct.gcov_iterator** %4, align 8
  store %struct.gcov_iterator* %35, %struct.gcov_iterator** %2, align 8
  br label %39

36:                                               ; preds = %28, %9
  %37 = load %struct.gcov_iterator*, %struct.gcov_iterator** %4, align 8
  %38 = call i32 @kfree(%struct.gcov_iterator* %37)
  store %struct.gcov_iterator* null, %struct.gcov_iterator** %2, align 8
  br label %39

39:                                               ; preds = %36, %29
  %40 = load %struct.gcov_iterator*, %struct.gcov_iterator** %2, align 8
  ret %struct.gcov_iterator* %40
}

declare dso_local %struct.gcov_iterator* @kzalloc(i32, i32) #1

declare dso_local i32 @convert_to_gcda(i32*, %struct.gcov_info*) #1

declare dso_local i32* @vmalloc(i32) #1

declare dso_local i32 @kfree(%struct.gcov_iterator*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
