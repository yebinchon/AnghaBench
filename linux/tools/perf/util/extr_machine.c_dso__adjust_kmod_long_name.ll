; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_machine.c_dso__adjust_kmod_long_name.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_machine.c_dso__adjust_kmod_long_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dso = type { i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dso*, i8*)* @dso__adjust_kmod_long_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dso__adjust_kmod_long_name(%struct.dso* %0, i8* %1) #0 {
  %3 = alloca %struct.dso*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store %struct.dso* %0, %struct.dso** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = icmp ne i8* %6, null
  br i1 %7, label %8, label %16

8:                                                ; preds = %2
  %9 = load %struct.dso*, %struct.dso** %3, align 8
  %10 = icmp ne %struct.dso* %9, null
  br i1 %10, label %11, label %16

11:                                               ; preds = %8
  %12 = load %struct.dso*, %struct.dso** %3, align 8
  %13 = getelementptr inbounds %struct.dso, %struct.dso* %12, i32 0, i32 0
  %14 = load i8*, i8** %13, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %11, %8, %2
  br label %41

17:                                               ; preds = %11
  %18 = load %struct.dso*, %struct.dso** %3, align 8
  %19 = getelementptr inbounds %struct.dso, %struct.dso* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  %21 = getelementptr inbounds i8, i8* %20, i64 0
  %22 = load i8, i8* %21, align 1
  %23 = sext i8 %22 to i32
  %24 = icmp ne i32 %23, 91
  br i1 %24, label %25, label %26

25:                                               ; preds = %17
  br label %41

26:                                               ; preds = %17
  %27 = load i8*, i8** %4, align 8
  %28 = call i32 @strchr(i8* %27, i8 signext 47)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %26
  br label %41

31:                                               ; preds = %26
  %32 = load i8*, i8** %4, align 8
  %33 = call i8* @strdup(i8* %32)
  store i8* %33, i8** %5, align 8
  %34 = load i8*, i8** %5, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %37, label %36

36:                                               ; preds = %31
  br label %41

37:                                               ; preds = %31
  %38 = load %struct.dso*, %struct.dso** %3, align 8
  %39 = load i8*, i8** %5, align 8
  %40 = call i32 @dso__set_long_name(%struct.dso* %38, i8* %39, i32 1)
  br label %41

41:                                               ; preds = %37, %36, %30, %25, %16
  ret void
}

declare dso_local i32 @strchr(i8*, i8 signext) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @dso__set_long_name(%struct.dso*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
