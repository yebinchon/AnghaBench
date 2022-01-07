; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_annotate.c_arch__grow_instructions.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_annotate.c_arch__grow_instructions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arch = type { i32, i32, %struct.ins* }
%struct.ins = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.arch*)* @arch__grow_instructions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @arch__grow_instructions(%struct.arch* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.arch*, align 8
  %4 = alloca %struct.ins*, align 8
  %5 = alloca i64, align 8
  store %struct.arch* %0, %struct.arch** %3, align 8
  %6 = load %struct.arch*, %struct.arch** %3, align 8
  %7 = getelementptr inbounds %struct.arch, %struct.arch* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %16

10:                                               ; preds = %1
  %11 = load %struct.arch*, %struct.arch** %3, align 8
  %12 = getelementptr inbounds %struct.arch, %struct.arch* %11, i32 0, i32 2
  %13 = load %struct.ins*, %struct.ins** %12, align 8
  %14 = icmp ne %struct.ins* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %10
  br label %40

16:                                               ; preds = %10, %1
  %17 = load %struct.arch*, %struct.arch** %3, align 8
  %18 = getelementptr inbounds %struct.arch, %struct.arch* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = add nsw i32 %19, 128
  %21 = sext i32 %20 to i64
  store i64 %21, i64* %5, align 8
  %22 = load %struct.arch*, %struct.arch** %3, align 8
  %23 = getelementptr inbounds %struct.arch, %struct.arch* %22, i32 0, i32 2
  %24 = load %struct.ins*, %struct.ins** %23, align 8
  %25 = load i64, i64* %5, align 8
  %26 = mul i64 %25, 4
  %27 = call %struct.ins* @realloc(%struct.ins* %24, i64 %26)
  store %struct.ins* %27, %struct.ins** %4, align 8
  %28 = load %struct.ins*, %struct.ins** %4, align 8
  %29 = icmp eq %struct.ins* %28, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %16
  store i32 -1, i32* %2, align 4
  br label %60

31:                                               ; preds = %16
  br label %32

32:                                               ; preds = %51, %31
  %33 = load %struct.ins*, %struct.ins** %4, align 8
  %34 = load %struct.arch*, %struct.arch** %3, align 8
  %35 = getelementptr inbounds %struct.arch, %struct.arch* %34, i32 0, i32 2
  store %struct.ins* %33, %struct.ins** %35, align 8
  %36 = load i64, i64* %5, align 8
  %37 = trunc i64 %36 to i32
  %38 = load %struct.arch*, %struct.arch** %3, align 8
  %39 = getelementptr inbounds %struct.arch, %struct.arch* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 8
  store i32 0, i32* %2, align 4
  br label %60

40:                                               ; preds = %15
  %41 = load %struct.arch*, %struct.arch** %3, align 8
  %42 = getelementptr inbounds %struct.arch, %struct.arch* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = add nsw i32 %43, 128
  %45 = sext i32 %44 to i64
  store i64 %45, i64* %5, align 8
  %46 = load i64, i64* %5, align 8
  %47 = call %struct.ins* @calloc(i64 %46, i32 4)
  store %struct.ins* %47, %struct.ins** %4, align 8
  %48 = load %struct.ins*, %struct.ins** %4, align 8
  %49 = icmp eq %struct.ins* %48, null
  br i1 %49, label %50, label %51

50:                                               ; preds = %40
  store i32 -1, i32* %2, align 4
  br label %60

51:                                               ; preds = %40
  %52 = load %struct.ins*, %struct.ins** %4, align 8
  %53 = load %struct.arch*, %struct.arch** %3, align 8
  %54 = getelementptr inbounds %struct.arch, %struct.arch* %53, i32 0, i32 2
  %55 = load %struct.ins*, %struct.ins** %54, align 8
  %56 = load %struct.arch*, %struct.arch** %3, align 8
  %57 = getelementptr inbounds %struct.arch, %struct.arch* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @memcpy(%struct.ins* %52, %struct.ins* %55, i32 %58)
  br label %32

60:                                               ; preds = %50, %32, %30
  %61 = load i32, i32* %2, align 4
  ret i32 %61
}

declare dso_local %struct.ins* @realloc(%struct.ins*, i64) #1

declare dso_local %struct.ins* @calloc(i64, i32) #1

declare dso_local i32 @memcpy(%struct.ins*, %struct.ins*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
