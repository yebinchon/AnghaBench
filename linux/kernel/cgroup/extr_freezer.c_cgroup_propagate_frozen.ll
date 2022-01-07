; ModuleID = '/home/carl/AnghaBench/linux/kernel/cgroup/extr_freezer.c_cgroup_propagate_frozen.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/cgroup/extr_freezer.c_cgroup_propagate_frozen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cgroup = type { i64, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@CGRP_FROZEN = common dso_local global i32 0, align 4
@CGRP_FREEZE = common dso_local global i32 0, align 4
@notify_frozen = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cgroup*, i32)* @cgroup_propagate_frozen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cgroup_propagate_frozen(%struct.cgroup* %0, i32 %1) #0 {
  %3 = alloca %struct.cgroup*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.cgroup* %0, %struct.cgroup** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 1, i32* %5, align 4
  br label %6

6:                                                ; preds = %82, %2
  %7 = load %struct.cgroup*, %struct.cgroup** %3, align 8
  %8 = call %struct.cgroup* @cgroup_parent(%struct.cgroup* %7)
  store %struct.cgroup* %8, %struct.cgroup** %3, align 8
  %9 = icmp ne %struct.cgroup* %8, null
  br i1 %9, label %10, label %83

10:                                               ; preds = %6
  %11 = load i32, i32* %4, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %55

13:                                               ; preds = %10
  %14 = load i32, i32* %5, align 4
  %15 = sext i32 %14 to i64
  %16 = load %struct.cgroup*, %struct.cgroup** %3, align 8
  %17 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %16, i32 0, i32 3
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = add nsw i64 %19, %15
  store i64 %20, i64* %18, align 8
  %21 = load i32, i32* @CGRP_FROZEN, align 4
  %22 = load %struct.cgroup*, %struct.cgroup** %3, align 8
  %23 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %22, i32 0, i32 2
  %24 = call i64 @test_bit(i32 %21, i32* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %54, label %26

26:                                               ; preds = %13
  %27 = load i32, i32* @CGRP_FREEZE, align 4
  %28 = load %struct.cgroup*, %struct.cgroup** %3, align 8
  %29 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %28, i32 0, i32 2
  %30 = call i64 @test_bit(i32 %27, i32* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %54

32:                                               ; preds = %26
  %33 = load %struct.cgroup*, %struct.cgroup** %3, align 8
  %34 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %33, i32 0, i32 3
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.cgroup*, %struct.cgroup** %3, align 8
  %38 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp eq i64 %36, %39
  br i1 %40, label %41, label %54

41:                                               ; preds = %32
  %42 = load i32, i32* @CGRP_FROZEN, align 4
  %43 = load %struct.cgroup*, %struct.cgroup** %3, align 8
  %44 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %43, i32 0, i32 2
  %45 = call i32 @set_bit(i32 %42, i32* %44)
  %46 = load %struct.cgroup*, %struct.cgroup** %3, align 8
  %47 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %46, i32 0, i32 1
  %48 = call i32 @cgroup_file_notify(i32* %47)
  %49 = load i32, i32* @notify_frozen, align 4
  %50 = load %struct.cgroup*, %struct.cgroup** %3, align 8
  %51 = call i32 @TRACE_CGROUP_PATH(i32 %49, %struct.cgroup* %50, i32 1)
  %52 = load i32, i32* %5, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %5, align 4
  br label %54

54:                                               ; preds = %41, %32, %26, %13
  br label %82

55:                                               ; preds = %10
  %56 = load i32, i32* %5, align 4
  %57 = sext i32 %56 to i64
  %58 = load %struct.cgroup*, %struct.cgroup** %3, align 8
  %59 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %58, i32 0, i32 3
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = sub nsw i64 %61, %57
  store i64 %62, i64* %60, align 8
  %63 = load i32, i32* @CGRP_FROZEN, align 4
  %64 = load %struct.cgroup*, %struct.cgroup** %3, align 8
  %65 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %64, i32 0, i32 2
  %66 = call i64 @test_bit(i32 %63, i32* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %81

68:                                               ; preds = %55
  %69 = load i32, i32* @CGRP_FROZEN, align 4
  %70 = load %struct.cgroup*, %struct.cgroup** %3, align 8
  %71 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %70, i32 0, i32 2
  %72 = call i32 @clear_bit(i32 %69, i32* %71)
  %73 = load %struct.cgroup*, %struct.cgroup** %3, align 8
  %74 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %73, i32 0, i32 1
  %75 = call i32 @cgroup_file_notify(i32* %74)
  %76 = load i32, i32* @notify_frozen, align 4
  %77 = load %struct.cgroup*, %struct.cgroup** %3, align 8
  %78 = call i32 @TRACE_CGROUP_PATH(i32 %76, %struct.cgroup* %77, i32 0)
  %79 = load i32, i32* %5, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %5, align 4
  br label %81

81:                                               ; preds = %68, %55
  br label %82

82:                                               ; preds = %81, %54
  br label %6

83:                                               ; preds = %6
  ret void
}

declare dso_local %struct.cgroup* @cgroup_parent(%struct.cgroup*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @cgroup_file_notify(i32*) #1

declare dso_local i32 @TRACE_CGROUP_PATH(i32, %struct.cgroup*, i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
