; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_evlist.c_perf_evlist__toggle_bkw_mmap.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_evlist.c_perf_evlist__toggle_bkw_mmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evlist = type { i32, i32 }

@.str = private unnamed_addr constant [21 x i8] c"Shouldn't get there\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @perf_evlist__toggle_bkw_mmap(%struct.evlist* %0, i32 %1) #0 {
  %3 = alloca %struct.evlist*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.evlist* %0, %struct.evlist** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.evlist*, %struct.evlist** %3, align 8
  %8 = getelementptr inbounds %struct.evlist, %struct.evlist* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  store i32 %9, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %10 = load %struct.evlist*, %struct.evlist** %3, align 8
  %11 = getelementptr inbounds %struct.evlist, %struct.evlist* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  br label %54

15:                                               ; preds = %2
  %16 = load i32, i32* %5, align 4
  switch i32 %16, label %37 [
    i32 129, label %17
    i32 128, label %22
    i32 131, label %27
    i32 130, label %32
  ]

17:                                               ; preds = %15
  %18 = load i32, i32* %4, align 4
  %19 = icmp ne i32 %18, 128
  br i1 %19, label %20, label %21

20:                                               ; preds = %17
  br label %53

21:                                               ; preds = %17
  br label %39

22:                                               ; preds = %15
  %23 = load i32, i32* %4, align 4
  %24 = icmp ne i32 %23, 131
  br i1 %24, label %25, label %26

25:                                               ; preds = %22
  br label %53

26:                                               ; preds = %22
  store i32 1, i32* %6, align 4
  br label %39

27:                                               ; preds = %15
  %28 = load i32, i32* %4, align 4
  %29 = icmp ne i32 %28, 130
  br i1 %29, label %30, label %31

30:                                               ; preds = %27
  br label %53

31:                                               ; preds = %27
  br label %39

32:                                               ; preds = %15
  %33 = load i32, i32* %4, align 4
  %34 = icmp ne i32 %33, 128
  br i1 %34, label %35, label %36

35:                                               ; preds = %32
  br label %53

36:                                               ; preds = %32
  store i32 2, i32* %6, align 4
  br label %39

37:                                               ; preds = %15
  %38 = call i32 @WARN_ONCE(i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %39

39:                                               ; preds = %37, %36, %31, %26, %21
  %40 = load i32, i32* %4, align 4
  %41 = load %struct.evlist*, %struct.evlist** %3, align 8
  %42 = getelementptr inbounds %struct.evlist, %struct.evlist* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 4
  %43 = load i32, i32* %6, align 4
  switch i32 %43, label %51 [
    i32 1, label %44
    i32 2, label %47
    i32 0, label %50
  ]

44:                                               ; preds = %39
  %45 = load %struct.evlist*, %struct.evlist** %3, align 8
  %46 = call i32 @perf_evlist__pause(%struct.evlist* %45)
  br label %52

47:                                               ; preds = %39
  %48 = load %struct.evlist*, %struct.evlist** %3, align 8
  %49 = call i32 @perf_evlist__resume(%struct.evlist* %48)
  br label %52

50:                                               ; preds = %39
  br label %51

51:                                               ; preds = %39, %50
  br label %52

52:                                               ; preds = %51, %47, %44
  br label %53

53:                                               ; preds = %52, %35, %30, %25, %20
  br label %54

54:                                               ; preds = %53, %14
  ret void
}

declare dso_local i32 @WARN_ONCE(i32, i8*) #1

declare dso_local i32 @perf_evlist__pause(%struct.evlist*) #1

declare dso_local i32 @perf_evlist__resume(%struct.evlist*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
