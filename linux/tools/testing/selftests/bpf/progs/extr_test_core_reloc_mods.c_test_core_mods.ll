; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/progs/extr_test_core_reloc_mods.c_test_core_mods.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/progs/extr_test_core_reloc_mods.c_test_core_mods.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 }
%struct.core_reloc_mods = type { %struct.TYPE_5__, %struct.TYPE_4__, i32*, i32*, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.core_reloc_mods_output = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@data = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @test_core_mods(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.core_reloc_mods*, align 8
  %5 = alloca %struct.core_reloc_mods_output*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.core_reloc_mods* bitcast (i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @data, i32 0, i32 1) to %struct.core_reloc_mods*), %struct.core_reloc_mods** %4, align 8
  store %struct.core_reloc_mods_output* bitcast (%struct.TYPE_6__* @data to %struct.core_reloc_mods_output*), %struct.core_reloc_mods_output** %5, align 8
  %6 = load %struct.core_reloc_mods_output*, %struct.core_reloc_mods_output** %5, align 8
  %7 = getelementptr inbounds %struct.core_reloc_mods_output, %struct.core_reloc_mods_output* %6, i32 0, i32 7
  %8 = load %struct.core_reloc_mods*, %struct.core_reloc_mods** %4, align 8
  %9 = getelementptr inbounds %struct.core_reloc_mods, %struct.core_reloc_mods* %8, i32 0, i32 7
  %10 = call i64 @BPF_CORE_READ(i32* %7, i32* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %67, label %12

12:                                               ; preds = %1
  %13 = load %struct.core_reloc_mods_output*, %struct.core_reloc_mods_output** %5, align 8
  %14 = getelementptr inbounds %struct.core_reloc_mods_output, %struct.core_reloc_mods_output* %13, i32 0, i32 6
  %15 = load %struct.core_reloc_mods*, %struct.core_reloc_mods** %4, align 8
  %16 = getelementptr inbounds %struct.core_reloc_mods, %struct.core_reloc_mods* %15, i32 0, i32 6
  %17 = call i64 @BPF_CORE_READ(i32* %14, i32* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %67, label %19

19:                                               ; preds = %12
  %20 = load %struct.core_reloc_mods_output*, %struct.core_reloc_mods_output** %5, align 8
  %21 = getelementptr inbounds %struct.core_reloc_mods_output, %struct.core_reloc_mods_output* %20, i32 0, i32 5
  %22 = load %struct.core_reloc_mods*, %struct.core_reloc_mods** %4, align 8
  %23 = getelementptr inbounds %struct.core_reloc_mods, %struct.core_reloc_mods* %22, i32 0, i32 5
  %24 = call i64 @BPF_CORE_READ(i32* %21, i32* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %67, label %26

26:                                               ; preds = %19
  %27 = load %struct.core_reloc_mods_output*, %struct.core_reloc_mods_output** %5, align 8
  %28 = getelementptr inbounds %struct.core_reloc_mods_output, %struct.core_reloc_mods_output* %27, i32 0, i32 4
  %29 = load %struct.core_reloc_mods*, %struct.core_reloc_mods** %4, align 8
  %30 = getelementptr inbounds %struct.core_reloc_mods, %struct.core_reloc_mods* %29, i32 0, i32 4
  %31 = call i64 @BPF_CORE_READ(i32* %28, i32* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %67, label %33

33:                                               ; preds = %26
  %34 = load %struct.core_reloc_mods_output*, %struct.core_reloc_mods_output** %5, align 8
  %35 = getelementptr inbounds %struct.core_reloc_mods_output, %struct.core_reloc_mods_output* %34, i32 0, i32 3
  %36 = load %struct.core_reloc_mods*, %struct.core_reloc_mods** %4, align 8
  %37 = getelementptr inbounds %struct.core_reloc_mods, %struct.core_reloc_mods* %36, i32 0, i32 3
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 2
  %40 = call i64 @BPF_CORE_READ(i32* %35, i32* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %67, label %42

42:                                               ; preds = %33
  %43 = load %struct.core_reloc_mods_output*, %struct.core_reloc_mods_output** %5, align 8
  %44 = getelementptr inbounds %struct.core_reloc_mods_output, %struct.core_reloc_mods_output* %43, i32 0, i32 2
  %45 = load %struct.core_reloc_mods*, %struct.core_reloc_mods** %4, align 8
  %46 = getelementptr inbounds %struct.core_reloc_mods, %struct.core_reloc_mods* %45, i32 0, i32 2
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 1
  %49 = call i64 @BPF_CORE_READ(i32* %44, i32* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %67, label %51

51:                                               ; preds = %42
  %52 = load %struct.core_reloc_mods_output*, %struct.core_reloc_mods_output** %5, align 8
  %53 = getelementptr inbounds %struct.core_reloc_mods_output, %struct.core_reloc_mods_output* %52, i32 0, i32 1
  %54 = load %struct.core_reloc_mods*, %struct.core_reloc_mods** %4, align 8
  %55 = getelementptr inbounds %struct.core_reloc_mods, %struct.core_reloc_mods* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = call i64 @BPF_CORE_READ(i32* %53, i32* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %67, label %59

59:                                               ; preds = %51
  %60 = load %struct.core_reloc_mods_output*, %struct.core_reloc_mods_output** %5, align 8
  %61 = getelementptr inbounds %struct.core_reloc_mods_output, %struct.core_reloc_mods_output* %60, i32 0, i32 0
  %62 = load %struct.core_reloc_mods*, %struct.core_reloc_mods** %4, align 8
  %63 = getelementptr inbounds %struct.core_reloc_mods, %struct.core_reloc_mods* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 0
  %65 = call i64 @BPF_CORE_READ(i32* %61, i32* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %59, %51, %42, %33, %26, %19, %12, %1
  store i32 1, i32* %2, align 4
  br label %69

68:                                               ; preds = %59
  store i32 0, i32* %2, align 4
  br label %69

69:                                               ; preds = %68, %67
  %70 = load i32, i32* %2, align 4
  ret i32 %70
}

declare dso_local i64 @BPF_CORE_READ(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
