; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/progs/extr_test_core_reloc_arrays.c_test_core_arrays.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/progs/extr_test_core_reloc_arrays.c_test_core_arrays.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 }
%struct.core_reloc_arrays = type { %struct.TYPE_5__**, %struct.TYPE_4__*, i32***, i32* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.core_reloc_arrays_output = type { i32, i32, i32, i32 }

@data = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @test_core_arrays(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.core_reloc_arrays*, align 8
  %5 = alloca %struct.core_reloc_arrays_output*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.core_reloc_arrays* bitcast (i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @data, i32 0, i32 1) to %struct.core_reloc_arrays*), %struct.core_reloc_arrays** %4, align 8
  store %struct.core_reloc_arrays_output* bitcast (%struct.TYPE_6__* @data to %struct.core_reloc_arrays_output*), %struct.core_reloc_arrays_output** %5, align 8
  %6 = load %struct.core_reloc_arrays_output*, %struct.core_reloc_arrays_output** %5, align 8
  %7 = getelementptr inbounds %struct.core_reloc_arrays_output, %struct.core_reloc_arrays_output* %6, i32 0, i32 3
  %8 = load %struct.core_reloc_arrays*, %struct.core_reloc_arrays** %4, align 8
  %9 = getelementptr inbounds %struct.core_reloc_arrays, %struct.core_reloc_arrays* %8, i32 0, i32 3
  %10 = load i32*, i32** %9, align 8
  %11 = getelementptr inbounds i32, i32* %10, i64 2
  %12 = call i64 @BPF_CORE_READ(i32* %7, i32* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %54

15:                                               ; preds = %1
  %16 = load %struct.core_reloc_arrays_output*, %struct.core_reloc_arrays_output** %5, align 8
  %17 = getelementptr inbounds %struct.core_reloc_arrays_output, %struct.core_reloc_arrays_output* %16, i32 0, i32 2
  %18 = load %struct.core_reloc_arrays*, %struct.core_reloc_arrays** %4, align 8
  %19 = getelementptr inbounds %struct.core_reloc_arrays, %struct.core_reloc_arrays* %18, i32 0, i32 2
  %20 = load i32***, i32**** %19, align 8
  %21 = getelementptr inbounds i32**, i32*** %20, i64 1
  %22 = load i32**, i32*** %21, align 8
  %23 = getelementptr inbounds i32*, i32** %22, i64 2
  %24 = load i32*, i32** %23, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 3
  %26 = call i64 @BPF_CORE_READ(i32* %17, i32* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %15
  store i32 1, i32* %2, align 4
  br label %54

29:                                               ; preds = %15
  %30 = load %struct.core_reloc_arrays_output*, %struct.core_reloc_arrays_output** %5, align 8
  %31 = getelementptr inbounds %struct.core_reloc_arrays_output, %struct.core_reloc_arrays_output* %30, i32 0, i32 1
  %32 = load %struct.core_reloc_arrays*, %struct.core_reloc_arrays** %4, align 8
  %33 = getelementptr inbounds %struct.core_reloc_arrays, %struct.core_reloc_arrays* %32, i32 0, i32 1
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i64 1
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = call i64 @BPF_CORE_READ(i32* %31, i32* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %29
  store i32 1, i32* %2, align 4
  br label %54

40:                                               ; preds = %29
  %41 = load %struct.core_reloc_arrays_output*, %struct.core_reloc_arrays_output** %5, align 8
  %42 = getelementptr inbounds %struct.core_reloc_arrays_output, %struct.core_reloc_arrays_output* %41, i32 0, i32 0
  %43 = load %struct.core_reloc_arrays*, %struct.core_reloc_arrays** %4, align 8
  %44 = getelementptr inbounds %struct.core_reloc_arrays, %struct.core_reloc_arrays* %43, i32 0, i32 0
  %45 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %45, i64 0
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i64 0
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = call i64 @BPF_CORE_READ(i32* %42, i32* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %40
  store i32 1, i32* %2, align 4
  br label %54

53:                                               ; preds = %40
  store i32 0, i32* %2, align 4
  br label %54

54:                                               ; preds = %53, %52, %39, %28, %14
  %55 = load i32, i32* %2, align 4
  ret i32 %55
}

declare dso_local i64 @BPF_CORE_READ(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
