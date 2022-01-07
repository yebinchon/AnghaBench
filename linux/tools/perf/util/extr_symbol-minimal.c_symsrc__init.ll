; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_symbol-minimal.c_symsrc__init.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_symbol-minimal.c_symsrc__init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.symsrc = type { i32, i32, i32 }
%struct.dso = type { i32 }

@O_RDONLY = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @symsrc__init(%struct.symsrc* %0, %struct.dso* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.symsrc*, align 8
  %7 = alloca %struct.dso*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.symsrc* %0, %struct.symsrc** %6, align 8
  store %struct.dso* %1, %struct.dso** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load i8*, i8** %8, align 8
  %12 = load i32, i32* @O_RDONLY, align 4
  %13 = call i32 @open(i8* %11, i32 %12)
  store i32 %13, i32* %10, align 4
  %14 = load i32, i32* %10, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %4
  br label %37

17:                                               ; preds = %4
  %18 = load i8*, i8** %8, align 8
  %19 = call i32 @strdup(i8* %18)
  %20 = load %struct.symsrc*, %struct.symsrc** %6, align 8
  %21 = getelementptr inbounds %struct.symsrc, %struct.symsrc* %20, i32 0, i32 2
  store i32 %19, i32* %21, align 4
  %22 = load %struct.symsrc*, %struct.symsrc** %6, align 8
  %23 = getelementptr inbounds %struct.symsrc, %struct.symsrc* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %17
  br label %34

27:                                               ; preds = %17
  %28 = load i32, i32* %10, align 4
  %29 = load %struct.symsrc*, %struct.symsrc** %6, align 8
  %30 = getelementptr inbounds %struct.symsrc, %struct.symsrc* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 4
  %31 = load i32, i32* %9, align 4
  %32 = load %struct.symsrc*, %struct.symsrc** %6, align 8
  %33 = getelementptr inbounds %struct.symsrc, %struct.symsrc* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 4
  store i32 0, i32* %5, align 4
  br label %41

34:                                               ; preds = %26
  %35 = load i32, i32* %10, align 4
  %36 = call i32 @close(i32 %35)
  br label %37

37:                                               ; preds = %34, %16
  %38 = load i32, i32* @errno, align 4
  %39 = load %struct.dso*, %struct.dso** %7, align 8
  %40 = getelementptr inbounds %struct.dso, %struct.dso* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 4
  store i32 -1, i32* %5, align 4
  br label %41

41:                                               ; preds = %37, %27
  %42 = load i32, i32* %5, align 4
  ret i32 %42
}

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @strdup(i8*) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
