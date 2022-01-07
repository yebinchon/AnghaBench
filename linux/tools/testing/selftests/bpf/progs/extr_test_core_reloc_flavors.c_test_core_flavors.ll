; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/progs/extr_test_core_reloc_flavors.c_test_core_flavors.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/progs/extr_test_core_reloc_flavors.c_test_core_flavors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }
%struct.core_reloc_flavors = type { i32, i32, i32 }
%struct.core_reloc_flavors___reversed = type { i32 }
%struct.core_reloc_flavors___weird = type { i32 }

@data = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @test_core_flavors(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.core_reloc_flavors*, align 8
  %5 = alloca %struct.core_reloc_flavors___reversed*, align 8
  %6 = alloca %struct.core_reloc_flavors___weird*, align 8
  %7 = alloca %struct.core_reloc_flavors*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.core_reloc_flavors* bitcast (i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @data, i32 0, i32 1) to %struct.core_reloc_flavors*), %struct.core_reloc_flavors** %4, align 8
  store %struct.core_reloc_flavors___reversed* bitcast (i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @data, i32 0, i32 1) to %struct.core_reloc_flavors___reversed*), %struct.core_reloc_flavors___reversed** %5, align 8
  store %struct.core_reloc_flavors___weird* bitcast (i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @data, i32 0, i32 1) to %struct.core_reloc_flavors___weird*), %struct.core_reloc_flavors___weird** %6, align 8
  store %struct.core_reloc_flavors* bitcast (%struct.TYPE_2__* @data to %struct.core_reloc_flavors*), %struct.core_reloc_flavors** %7, align 8
  %8 = load %struct.core_reloc_flavors*, %struct.core_reloc_flavors** %7, align 8
  %9 = getelementptr inbounds %struct.core_reloc_flavors, %struct.core_reloc_flavors* %8, i32 0, i32 2
  %10 = load %struct.core_reloc_flavors___weird*, %struct.core_reloc_flavors___weird** %6, align 8
  %11 = getelementptr inbounds %struct.core_reloc_flavors___weird, %struct.core_reloc_flavors___weird* %10, i32 0, i32 0
  %12 = call i64 @BPF_CORE_READ(i32* %9, i32* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %32

15:                                               ; preds = %1
  %16 = load %struct.core_reloc_flavors*, %struct.core_reloc_flavors** %7, align 8
  %17 = getelementptr inbounds %struct.core_reloc_flavors, %struct.core_reloc_flavors* %16, i32 0, i32 1
  %18 = load %struct.core_reloc_flavors___reversed*, %struct.core_reloc_flavors___reversed** %5, align 8
  %19 = getelementptr inbounds %struct.core_reloc_flavors___reversed, %struct.core_reloc_flavors___reversed* %18, i32 0, i32 0
  %20 = call i64 @BPF_CORE_READ(i32* %17, i32* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %15
  store i32 1, i32* %2, align 4
  br label %32

23:                                               ; preds = %15
  %24 = load %struct.core_reloc_flavors*, %struct.core_reloc_flavors** %7, align 8
  %25 = getelementptr inbounds %struct.core_reloc_flavors, %struct.core_reloc_flavors* %24, i32 0, i32 0
  %26 = load %struct.core_reloc_flavors*, %struct.core_reloc_flavors** %4, align 8
  %27 = getelementptr inbounds %struct.core_reloc_flavors, %struct.core_reloc_flavors* %26, i32 0, i32 0
  %28 = call i64 @BPF_CORE_READ(i32* %25, i32* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %23
  store i32 1, i32* %2, align 4
  br label %32

31:                                               ; preds = %23
  store i32 0, i32* %2, align 4
  br label %32

32:                                               ; preds = %31, %30, %22, %14
  %33 = load i32, i32* %2, align 4
  ret i32 %33
}

declare dso_local i64 @BPF_CORE_READ(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
