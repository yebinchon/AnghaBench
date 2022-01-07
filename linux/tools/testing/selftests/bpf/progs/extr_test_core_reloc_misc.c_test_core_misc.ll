; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/progs/extr_test_core_reloc_misc.c_test_core_misc.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/progs/extr_test_core_reloc_misc.c_test_core_misc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }
%struct.core_reloc_misc___a = type { %struct.core_reloc_misc_extensible }
%struct.core_reloc_misc_extensible = type { i32 }
%struct.core_reloc_misc___b = type { %struct.core_reloc_misc_extensible }
%struct.core_reloc_misc_output = type { i32, i32, i32 }

@data = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @test_core_misc(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.core_reloc_misc___a*, align 8
  %5 = alloca %struct.core_reloc_misc___b*, align 8
  %6 = alloca %struct.core_reloc_misc_extensible*, align 8
  %7 = alloca %struct.core_reloc_misc_output*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.core_reloc_misc___a* bitcast (i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @data, i32 0, i32 1) to %struct.core_reloc_misc___a*), %struct.core_reloc_misc___a** %4, align 8
  store %struct.core_reloc_misc___b* bitcast (i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @data, i32 0, i32 1) to %struct.core_reloc_misc___b*), %struct.core_reloc_misc___b** %5, align 8
  store %struct.core_reloc_misc_extensible* bitcast (i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @data, i32 0, i32 1) to %struct.core_reloc_misc_extensible*), %struct.core_reloc_misc_extensible** %6, align 8
  store %struct.core_reloc_misc_output* bitcast (%struct.TYPE_2__* @data to %struct.core_reloc_misc_output*), %struct.core_reloc_misc_output** %7, align 8
  %8 = load %struct.core_reloc_misc_output*, %struct.core_reloc_misc_output** %7, align 8
  %9 = getelementptr inbounds %struct.core_reloc_misc_output, %struct.core_reloc_misc_output* %8, i32 0, i32 2
  %10 = load %struct.core_reloc_misc___a*, %struct.core_reloc_misc___a** %4, align 8
  %11 = getelementptr inbounds %struct.core_reloc_misc___a, %struct.core_reloc_misc___a* %10, i32 0, i32 0
  %12 = call i64 @BPF_CORE_READ(i32* %9, %struct.core_reloc_misc_extensible* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %21, label %14

14:                                               ; preds = %1
  %15 = load %struct.core_reloc_misc_output*, %struct.core_reloc_misc_output** %7, align 8
  %16 = getelementptr inbounds %struct.core_reloc_misc_output, %struct.core_reloc_misc_output* %15, i32 0, i32 1
  %17 = load %struct.core_reloc_misc___b*, %struct.core_reloc_misc___b** %5, align 8
  %18 = getelementptr inbounds %struct.core_reloc_misc___b, %struct.core_reloc_misc___b* %17, i32 0, i32 0
  %19 = call i64 @BPF_CORE_READ(i32* %16, %struct.core_reloc_misc_extensible* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %14, %1
  store i32 1, i32* %2, align 4
  br label %31

22:                                               ; preds = %14
  %23 = load %struct.core_reloc_misc_output*, %struct.core_reloc_misc_output** %7, align 8
  %24 = getelementptr inbounds %struct.core_reloc_misc_output, %struct.core_reloc_misc_output* %23, i32 0, i32 0
  %25 = load %struct.core_reloc_misc_extensible*, %struct.core_reloc_misc_extensible** %6, align 8
  %26 = getelementptr inbounds %struct.core_reloc_misc_extensible, %struct.core_reloc_misc_extensible* %25, i64 2
  %27 = call i64 @BPF_CORE_READ(i32* %24, %struct.core_reloc_misc_extensible* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %22
  store i32 1, i32* %2, align 4
  br label %31

30:                                               ; preds = %22
  store i32 0, i32* %2, align 4
  br label %31

31:                                               ; preds = %30, %29, %21
  %32 = load i32, i32* %2, align 4
  ret i32 %32
}

declare dso_local i64 @BPF_CORE_READ(i32*, %struct.core_reloc_misc_extensible*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
