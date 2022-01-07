; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_auxtrace.c_auxtrace_record__find_snapshot.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_auxtrace.c_auxtrace_record__find_snapshot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.auxtrace_record = type { i32 (%struct.auxtrace_record*, i32, %struct.auxtrace_mmap*, i8*, i32*, i32*)* }
%struct.auxtrace_mmap = type opaque
%struct.auxtrace_mmap.0 = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @auxtrace_record__find_snapshot(%struct.auxtrace_record* %0, i32 %1, %struct.auxtrace_mmap.0* %2, i8* %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.auxtrace_record*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.auxtrace_mmap.0*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  store %struct.auxtrace_record* %0, %struct.auxtrace_record** %8, align 8
  store i32 %1, i32* %9, align 4
  store %struct.auxtrace_mmap.0* %2, %struct.auxtrace_mmap.0** %10, align 8
  store i8* %3, i8** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  %14 = load %struct.auxtrace_record*, %struct.auxtrace_record** %8, align 8
  %15 = icmp ne %struct.auxtrace_record* %14, null
  br i1 %15, label %16, label %33

16:                                               ; preds = %6
  %17 = load %struct.auxtrace_record*, %struct.auxtrace_record** %8, align 8
  %18 = getelementptr inbounds %struct.auxtrace_record, %struct.auxtrace_record* %17, i32 0, i32 0
  %19 = load i32 (%struct.auxtrace_record*, i32, %struct.auxtrace_mmap*, i8*, i32*, i32*)*, i32 (%struct.auxtrace_record*, i32, %struct.auxtrace_mmap*, i8*, i32*, i32*)** %18, align 8
  %20 = icmp ne i32 (%struct.auxtrace_record*, i32, %struct.auxtrace_mmap*, i8*, i32*, i32*)* %19, null
  br i1 %20, label %21, label %33

21:                                               ; preds = %16
  %22 = load %struct.auxtrace_record*, %struct.auxtrace_record** %8, align 8
  %23 = getelementptr inbounds %struct.auxtrace_record, %struct.auxtrace_record* %22, i32 0, i32 0
  %24 = load i32 (%struct.auxtrace_record*, i32, %struct.auxtrace_mmap*, i8*, i32*, i32*)*, i32 (%struct.auxtrace_record*, i32, %struct.auxtrace_mmap*, i8*, i32*, i32*)** %23, align 8
  %25 = load %struct.auxtrace_record*, %struct.auxtrace_record** %8, align 8
  %26 = load i32, i32* %9, align 4
  %27 = load %struct.auxtrace_mmap.0*, %struct.auxtrace_mmap.0** %10, align 8
  %28 = bitcast %struct.auxtrace_mmap.0* %27 to %struct.auxtrace_mmap*
  %29 = load i8*, i8** %11, align 8
  %30 = load i32*, i32** %12, align 8
  %31 = load i32*, i32** %13, align 8
  %32 = call i32 %24(%struct.auxtrace_record* %25, i32 %26, %struct.auxtrace_mmap* %28, i8* %29, i32* %30, i32* %31)
  store i32 %32, i32* %7, align 4
  br label %34

33:                                               ; preds = %16, %6
  store i32 0, i32* %7, align 4
  br label %34

34:                                               ; preds = %33, %21
  %35 = load i32, i32* %7, align 4
  ret i32 %35
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
