; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_page_alloc.c_check_retry_cpuset.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_page_alloc.c_check_retry_cpuset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.alloc_context = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.alloc_context*)* @check_retry_cpuset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_retry_cpuset(i32 %0, %struct.alloc_context* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.alloc_context*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.alloc_context* %1, %struct.alloc_context** %5, align 8
  %6 = call i64 (...) @cpusets_enabled()
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %22

8:                                                ; preds = %2
  %9 = load %struct.alloc_context*, %struct.alloc_context** %5, align 8
  %10 = getelementptr inbounds %struct.alloc_context, %struct.alloc_context* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %13, label %22

13:                                               ; preds = %8
  %14 = load %struct.alloc_context*, %struct.alloc_context** %5, align 8
  %15 = getelementptr inbounds %struct.alloc_context, %struct.alloc_context* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = call i32 @cpuset_nodemask_valid_mems_allowed(i32* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %13
  %20 = load %struct.alloc_context*, %struct.alloc_context** %5, align 8
  %21 = getelementptr inbounds %struct.alloc_context, %struct.alloc_context* %20, i32 0, i32 0
  store i32* null, i32** %21, align 8
  store i32 1, i32* %3, align 4
  br label %28

22:                                               ; preds = %13, %8, %2
  %23 = load i32, i32* %4, align 4
  %24 = call i64 @read_mems_allowed_retry(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %22
  store i32 1, i32* %3, align 4
  br label %28

27:                                               ; preds = %22
  store i32 0, i32* %3, align 4
  br label %28

28:                                               ; preds = %27, %26, %19
  %29 = load i32, i32* %3, align 4
  ret i32 %29
}

declare dso_local i64 @cpusets_enabled(...) #1

declare dso_local i32 @cpuset_nodemask_valid_mems_allowed(i32*) #1

declare dso_local i64 @read_mems_allowed_retry(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
