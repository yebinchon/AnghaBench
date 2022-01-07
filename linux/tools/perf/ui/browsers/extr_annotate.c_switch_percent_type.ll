; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/ui/browsers/extr_annotate.c_switch_percent_type.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/ui/browsers/extr_annotate.c_switch_percent_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.annotation_options = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.annotation_options*, i32)* @switch_percent_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @switch_percent_type(%struct.annotation_options* %0, i32 %1) #0 {
  %3 = alloca %struct.annotation_options*, align 8
  %4 = alloca i32, align 4
  store %struct.annotation_options* %0, %struct.annotation_options** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.annotation_options*, %struct.annotation_options** %3, align 8
  %6 = getelementptr inbounds %struct.annotation_options, %struct.annotation_options* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  switch i32 %7, label %48 [
    i32 130, label %8
    i32 131, label %18
    i32 128, label %28
    i32 129, label %38
  ]

8:                                                ; preds = %2
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %8
  %12 = load %struct.annotation_options*, %struct.annotation_options** %3, align 8
  %13 = getelementptr inbounds %struct.annotation_options, %struct.annotation_options* %12, i32 0, i32 0
  store i32 128, i32* %13, align 4
  br label %17

14:                                               ; preds = %8
  %15 = load %struct.annotation_options*, %struct.annotation_options** %3, align 8
  %16 = getelementptr inbounds %struct.annotation_options, %struct.annotation_options* %15, i32 0, i32 0
  store i32 131, i32* %16, align 4
  br label %17

17:                                               ; preds = %14, %11
  br label %50

18:                                               ; preds = %2
  %19 = load i32, i32* %4, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %18
  %22 = load %struct.annotation_options*, %struct.annotation_options** %3, align 8
  %23 = getelementptr inbounds %struct.annotation_options, %struct.annotation_options* %22, i32 0, i32 0
  store i32 129, i32* %23, align 4
  br label %27

24:                                               ; preds = %18
  %25 = load %struct.annotation_options*, %struct.annotation_options** %3, align 8
  %26 = getelementptr inbounds %struct.annotation_options, %struct.annotation_options* %25, i32 0, i32 0
  store i32 130, i32* %26, align 4
  br label %27

27:                                               ; preds = %24, %21
  br label %50

28:                                               ; preds = %2
  %29 = load i32, i32* %4, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %28
  %32 = load %struct.annotation_options*, %struct.annotation_options** %3, align 8
  %33 = getelementptr inbounds %struct.annotation_options, %struct.annotation_options* %32, i32 0, i32 0
  store i32 130, i32* %33, align 4
  br label %37

34:                                               ; preds = %28
  %35 = load %struct.annotation_options*, %struct.annotation_options** %3, align 8
  %36 = getelementptr inbounds %struct.annotation_options, %struct.annotation_options* %35, i32 0, i32 0
  store i32 129, i32* %36, align 4
  br label %37

37:                                               ; preds = %34, %31
  br label %50

38:                                               ; preds = %2
  %39 = load i32, i32* %4, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %38
  %42 = load %struct.annotation_options*, %struct.annotation_options** %3, align 8
  %43 = getelementptr inbounds %struct.annotation_options, %struct.annotation_options* %42, i32 0, i32 0
  store i32 131, i32* %43, align 4
  br label %47

44:                                               ; preds = %38
  %45 = load %struct.annotation_options*, %struct.annotation_options** %3, align 8
  %46 = getelementptr inbounds %struct.annotation_options, %struct.annotation_options* %45, i32 0, i32 0
  store i32 128, i32* %46, align 4
  br label %47

47:                                               ; preds = %44, %41
  br label %50

48:                                               ; preds = %2
  %49 = call i32 @WARN_ON(i32 1)
  br label %50

50:                                               ; preds = %48, %47, %37, %27, %17
  ret void
}

declare dso_local i32 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
