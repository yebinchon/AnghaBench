; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_probe-file.c_probe_cache__new.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_probe-file.c_probe_cache__new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.probe_cache = type { i32 }
%struct.nsinfo = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"Cache open error: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"Cache read error: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.probe_cache* @probe_cache__new(i8* %0, %struct.nsinfo* %1) #0 {
  %3 = alloca %struct.probe_cache*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.nsinfo*, align 8
  %6 = alloca %struct.probe_cache*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.nsinfo* %1, %struct.nsinfo** %5, align 8
  %8 = call %struct.probe_cache* (...) @probe_cache__alloc()
  store %struct.probe_cache* %8, %struct.probe_cache** %6, align 8
  %9 = load %struct.probe_cache*, %struct.probe_cache** %6, align 8
  %10 = icmp ne %struct.probe_cache* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  store %struct.probe_cache* null, %struct.probe_cache** %3, align 8
  br label %35

12:                                               ; preds = %2
  %13 = load %struct.probe_cache*, %struct.probe_cache** %6, align 8
  %14 = load i8*, i8** %4, align 8
  %15 = load %struct.nsinfo*, %struct.nsinfo** %5, align 8
  %16 = call i32 @probe_cache__open(%struct.probe_cache* %13, i8* %14, %struct.nsinfo* %15)
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %12
  %20 = load i32, i32* %7, align 4
  %21 = call i32 @pr_debug(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %20)
  br label %32

22:                                               ; preds = %12
  %23 = load %struct.probe_cache*, %struct.probe_cache** %6, align 8
  %24 = call i32 @probe_cache__load(%struct.probe_cache* %23)
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %22
  %28 = load i32, i32* %7, align 4
  %29 = call i32 @pr_debug(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %28)
  br label %32

30:                                               ; preds = %22
  %31 = load %struct.probe_cache*, %struct.probe_cache** %6, align 8
  store %struct.probe_cache* %31, %struct.probe_cache** %3, align 8
  br label %35

32:                                               ; preds = %27, %19
  %33 = load %struct.probe_cache*, %struct.probe_cache** %6, align 8
  %34 = call i32 @probe_cache__delete(%struct.probe_cache* %33)
  store %struct.probe_cache* null, %struct.probe_cache** %3, align 8
  br label %35

35:                                               ; preds = %32, %30, %11
  %36 = load %struct.probe_cache*, %struct.probe_cache** %3, align 8
  ret %struct.probe_cache* %36
}

declare dso_local %struct.probe_cache* @probe_cache__alloc(...) #1

declare dso_local i32 @probe_cache__open(%struct.probe_cache*, i8*, %struct.nsinfo*) #1

declare dso_local i32 @pr_debug(i8*, i32) #1

declare dso_local i32 @probe_cache__load(%struct.probe_cache*) #1

declare dso_local i32 @probe_cache__delete(%struct.probe_cache*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
