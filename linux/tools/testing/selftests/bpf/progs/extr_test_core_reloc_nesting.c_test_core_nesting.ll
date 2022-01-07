; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/progs/extr_test_core_reloc_nesting.c_test_core_nesting.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/progs/extr_test_core_reloc_nesting.c_test_core_nesting.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32 }
%struct.core_reloc_nesting = type { %struct.TYPE_7__, %struct.TYPE_9__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }

@data = common dso_local global %struct.TYPE_10__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @test_core_nesting(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.core_reloc_nesting*, align 8
  %5 = alloca %struct.core_reloc_nesting*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.core_reloc_nesting* bitcast (i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @data, i32 0, i32 1) to %struct.core_reloc_nesting*), %struct.core_reloc_nesting** %4, align 8
  store %struct.core_reloc_nesting* bitcast (%struct.TYPE_10__* @data to %struct.core_reloc_nesting*), %struct.core_reloc_nesting** %5, align 8
  %6 = load %struct.core_reloc_nesting*, %struct.core_reloc_nesting** %5, align 8
  %7 = getelementptr inbounds %struct.core_reloc_nesting, %struct.core_reloc_nesting* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  %10 = load %struct.core_reloc_nesting*, %struct.core_reloc_nesting** %4, align 8
  %11 = getelementptr inbounds %struct.core_reloc_nesting, %struct.core_reloc_nesting* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  %14 = call i64 @BPF_CORE_READ(i32* %9, i32* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %30

17:                                               ; preds = %1
  %18 = load %struct.core_reloc_nesting*, %struct.core_reloc_nesting** %5, align 8
  %19 = getelementptr inbounds %struct.core_reloc_nesting, %struct.core_reloc_nesting* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load %struct.core_reloc_nesting*, %struct.core_reloc_nesting** %4, align 8
  %23 = getelementptr inbounds %struct.core_reloc_nesting, %struct.core_reloc_nesting* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = call i64 @BPF_CORE_READ(i32* %21, i32* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %17
  store i32 1, i32* %2, align 4
  br label %30

29:                                               ; preds = %17
  store i32 0, i32* %2, align 4
  br label %30

30:                                               ; preds = %29, %28, %16
  %31 = load i32, i32* %2, align 4
  ret i32 %31
}

declare dso_local i64 @BPF_CORE_READ(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
