; ModuleID = '/home/carl/AnghaBench/linux/kernel/cgroup/extr_cgroup.c_cgroup_exit_cftypes.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/cgroup/extr_cgroup.c_cgroup_exit_cftypes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cftype = type { i8*, i64, i32, i32*, i32* }

@PAGE_SIZE = common dso_local global i64 0, align 8
@__CFTYPE_ONLY_ON_DFL = common dso_local global i32 0, align 4
@__CFTYPE_NOT_ON_DFL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cftype*)* @cgroup_exit_cftypes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cgroup_exit_cftypes(%struct.cftype* %0) #0 {
  %2 = alloca %struct.cftype*, align 8
  %3 = alloca %struct.cftype*, align 8
  store %struct.cftype* %0, %struct.cftype** %2, align 8
  %4 = load %struct.cftype*, %struct.cftype** %2, align 8
  store %struct.cftype* %4, %struct.cftype** %3, align 8
  br label %5

5:                                                ; preds = %42, %1
  %6 = load %struct.cftype*, %struct.cftype** %3, align 8
  %7 = getelementptr inbounds %struct.cftype, %struct.cftype* %6, i32 0, i32 0
  %8 = load i8*, i8** %7, align 8
  %9 = getelementptr inbounds i8, i8* %8, i64 0
  %10 = load i8, i8* %9, align 1
  %11 = sext i8 %10 to i32
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %45

13:                                               ; preds = %5
  %14 = load %struct.cftype*, %struct.cftype** %3, align 8
  %15 = getelementptr inbounds %struct.cftype, %struct.cftype* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %29

18:                                               ; preds = %13
  %19 = load %struct.cftype*, %struct.cftype** %3, align 8
  %20 = getelementptr inbounds %struct.cftype, %struct.cftype* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @PAGE_SIZE, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %29

24:                                               ; preds = %18
  %25 = load %struct.cftype*, %struct.cftype** %3, align 8
  %26 = getelementptr inbounds %struct.cftype, %struct.cftype* %25, i32 0, i32 4
  %27 = load i32*, i32** %26, align 8
  %28 = call i32 @kfree(i32* %27)
  br label %29

29:                                               ; preds = %24, %18, %13
  %30 = load %struct.cftype*, %struct.cftype** %3, align 8
  %31 = getelementptr inbounds %struct.cftype, %struct.cftype* %30, i32 0, i32 4
  store i32* null, i32** %31, align 8
  %32 = load %struct.cftype*, %struct.cftype** %3, align 8
  %33 = getelementptr inbounds %struct.cftype, %struct.cftype* %32, i32 0, i32 3
  store i32* null, i32** %33, align 8
  %34 = load i32, i32* @__CFTYPE_ONLY_ON_DFL, align 4
  %35 = load i32, i32* @__CFTYPE_NOT_ON_DFL, align 4
  %36 = or i32 %34, %35
  %37 = xor i32 %36, -1
  %38 = load %struct.cftype*, %struct.cftype** %3, align 8
  %39 = getelementptr inbounds %struct.cftype, %struct.cftype* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = and i32 %40, %37
  store i32 %41, i32* %39, align 8
  br label %42

42:                                               ; preds = %29
  %43 = load %struct.cftype*, %struct.cftype** %3, align 8
  %44 = getelementptr inbounds %struct.cftype, %struct.cftype* %43, i32 1
  store %struct.cftype* %44, %struct.cftype** %3, align 8
  br label %5

45:                                               ; preds = %5
  ret void
}

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
