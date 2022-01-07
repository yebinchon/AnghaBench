; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_probe-finder.c___debuginfo__new.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_probe-finder.c___debuginfo__new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.debuginfo = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"Open Debuginfo file: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.debuginfo* (i8*)* @__debuginfo__new to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.debuginfo* @__debuginfo__new(i8* %0) #0 {
  %2 = alloca %struct.debuginfo*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.debuginfo*, align 8
  store i8* %0, i8** %3, align 8
  %5 = call %struct.debuginfo* @zalloc(i32 4)
  store %struct.debuginfo* %5, %struct.debuginfo** %4, align 8
  %6 = load %struct.debuginfo*, %struct.debuginfo** %4, align 8
  %7 = icmp ne %struct.debuginfo* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  store %struct.debuginfo* null, %struct.debuginfo** %2, align 8
  br label %24

9:                                                ; preds = %1
  %10 = load %struct.debuginfo*, %struct.debuginfo** %4, align 8
  %11 = load i8*, i8** %3, align 8
  %12 = call i64 @debuginfo__init_offline_dwarf(%struct.debuginfo* %10, i8* %11)
  %13 = icmp slt i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %9
  %15 = call i32 @zfree(%struct.debuginfo** %4)
  br label %16

16:                                               ; preds = %14, %9
  %17 = load %struct.debuginfo*, %struct.debuginfo** %4, align 8
  %18 = icmp ne %struct.debuginfo* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %16
  %20 = load i8*, i8** %3, align 8
  %21 = call i32 @pr_debug(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8* %20)
  br label %22

22:                                               ; preds = %19, %16
  %23 = load %struct.debuginfo*, %struct.debuginfo** %4, align 8
  store %struct.debuginfo* %23, %struct.debuginfo** %2, align 8
  br label %24

24:                                               ; preds = %22, %8
  %25 = load %struct.debuginfo*, %struct.debuginfo** %2, align 8
  ret %struct.debuginfo* %25
}

declare dso_local %struct.debuginfo* @zalloc(i32) #1

declare dso_local i64 @debuginfo__init_offline_dwarf(%struct.debuginfo*, i8*) #1

declare dso_local i32 @zfree(%struct.debuginfo**) #1

declare dso_local i32 @pr_debug(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
