; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/progs/extr_test_core_reloc_primitives.c_test_core_primitives.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/progs/extr_test_core_reloc_primitives.c_test_core_primitives.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }
%struct.core_reloc_primitives = type { i32, i32, i32, i32, i32 }

@data = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @test_core_primitives(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.core_reloc_primitives*, align 8
  %5 = alloca %struct.core_reloc_primitives*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.core_reloc_primitives* bitcast (i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @data, i32 0, i32 1) to %struct.core_reloc_primitives*), %struct.core_reloc_primitives** %4, align 8
  store %struct.core_reloc_primitives* bitcast (%struct.TYPE_2__* @data to %struct.core_reloc_primitives*), %struct.core_reloc_primitives** %5, align 8
  %6 = load %struct.core_reloc_primitives*, %struct.core_reloc_primitives** %5, align 8
  %7 = getelementptr inbounds %struct.core_reloc_primitives, %struct.core_reloc_primitives* %6, i32 0, i32 4
  %8 = load %struct.core_reloc_primitives*, %struct.core_reloc_primitives** %4, align 8
  %9 = getelementptr inbounds %struct.core_reloc_primitives, %struct.core_reloc_primitives* %8, i32 0, i32 4
  %10 = call i64 @BPF_CORE_READ(i32* %7, i32* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %40, label %12

12:                                               ; preds = %1
  %13 = load %struct.core_reloc_primitives*, %struct.core_reloc_primitives** %5, align 8
  %14 = getelementptr inbounds %struct.core_reloc_primitives, %struct.core_reloc_primitives* %13, i32 0, i32 3
  %15 = load %struct.core_reloc_primitives*, %struct.core_reloc_primitives** %4, align 8
  %16 = getelementptr inbounds %struct.core_reloc_primitives, %struct.core_reloc_primitives* %15, i32 0, i32 3
  %17 = call i64 @BPF_CORE_READ(i32* %14, i32* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %40, label %19

19:                                               ; preds = %12
  %20 = load %struct.core_reloc_primitives*, %struct.core_reloc_primitives** %5, align 8
  %21 = getelementptr inbounds %struct.core_reloc_primitives, %struct.core_reloc_primitives* %20, i32 0, i32 2
  %22 = load %struct.core_reloc_primitives*, %struct.core_reloc_primitives** %4, align 8
  %23 = getelementptr inbounds %struct.core_reloc_primitives, %struct.core_reloc_primitives* %22, i32 0, i32 2
  %24 = call i64 @BPF_CORE_READ(i32* %21, i32* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %40, label %26

26:                                               ; preds = %19
  %27 = load %struct.core_reloc_primitives*, %struct.core_reloc_primitives** %5, align 8
  %28 = getelementptr inbounds %struct.core_reloc_primitives, %struct.core_reloc_primitives* %27, i32 0, i32 1
  %29 = load %struct.core_reloc_primitives*, %struct.core_reloc_primitives** %4, align 8
  %30 = getelementptr inbounds %struct.core_reloc_primitives, %struct.core_reloc_primitives* %29, i32 0, i32 1
  %31 = call i64 @BPF_CORE_READ(i32* %28, i32* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %40, label %33

33:                                               ; preds = %26
  %34 = load %struct.core_reloc_primitives*, %struct.core_reloc_primitives** %5, align 8
  %35 = getelementptr inbounds %struct.core_reloc_primitives, %struct.core_reloc_primitives* %34, i32 0, i32 0
  %36 = load %struct.core_reloc_primitives*, %struct.core_reloc_primitives** %4, align 8
  %37 = getelementptr inbounds %struct.core_reloc_primitives, %struct.core_reloc_primitives* %36, i32 0, i32 0
  %38 = call i64 @BPF_CORE_READ(i32* %35, i32* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %33, %26, %19, %12, %1
  store i32 1, i32* %2, align 4
  br label %42

41:                                               ; preds = %33
  store i32 0, i32* %2, align 4
  br label %42

42:                                               ; preds = %41, %40
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare dso_local i64 @BPF_CORE_READ(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
