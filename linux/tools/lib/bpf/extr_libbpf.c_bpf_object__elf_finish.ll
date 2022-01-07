; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/bpf/extr_libbpf.c_bpf_object__elf_finish.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/bpf/extr_libbpf.c_bpf_object__elf_finish.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_object = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32*, i32, i64, i32, i32*, i32*, i32*, i32*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bpf_object*)* @bpf_object__elf_finish to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bpf_object__elf_finish(%struct.bpf_object* %0) #0 {
  %2 = alloca %struct.bpf_object*, align 8
  store %struct.bpf_object* %0, %struct.bpf_object** %2, align 8
  %3 = load %struct.bpf_object*, %struct.bpf_object** %2, align 8
  %4 = call i32 @obj_elf_valid(%struct.bpf_object* %3)
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  br label %53

7:                                                ; preds = %1
  %8 = load %struct.bpf_object*, %struct.bpf_object** %2, align 8
  %9 = getelementptr inbounds %struct.bpf_object, %struct.bpf_object* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 9
  %11 = load i32*, i32** %10, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %13, label %22

13:                                               ; preds = %7
  %14 = load %struct.bpf_object*, %struct.bpf_object** %2, align 8
  %15 = getelementptr inbounds %struct.bpf_object, %struct.bpf_object* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 9
  %17 = load i32*, i32** %16, align 8
  %18 = call i32 @elf_end(i32* %17)
  %19 = load %struct.bpf_object*, %struct.bpf_object** %2, align 8
  %20 = getelementptr inbounds %struct.bpf_object, %struct.bpf_object* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 9
  store i32* null, i32** %21, align 8
  br label %22

22:                                               ; preds = %13, %7
  %23 = load %struct.bpf_object*, %struct.bpf_object** %2, align 8
  %24 = getelementptr inbounds %struct.bpf_object, %struct.bpf_object* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 8
  store i32* null, i32** %25, align 8
  %26 = load %struct.bpf_object*, %struct.bpf_object** %2, align 8
  %27 = getelementptr inbounds %struct.bpf_object, %struct.bpf_object* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 7
  store i32* null, i32** %28, align 8
  %29 = load %struct.bpf_object*, %struct.bpf_object** %2, align 8
  %30 = getelementptr inbounds %struct.bpf_object, %struct.bpf_object* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 6
  store i32* null, i32** %31, align 8
  %32 = load %struct.bpf_object*, %struct.bpf_object** %2, align 8
  %33 = getelementptr inbounds %struct.bpf_object, %struct.bpf_object* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 5
  store i32* null, i32** %34, align 8
  %35 = load %struct.bpf_object*, %struct.bpf_object** %2, align 8
  %36 = getelementptr inbounds %struct.bpf_object, %struct.bpf_object* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 4
  %38 = call i32 @zfree(i32* %37)
  %39 = load %struct.bpf_object*, %struct.bpf_object** %2, align 8
  %40 = getelementptr inbounds %struct.bpf_object, %struct.bpf_object* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 3
  store i64 0, i64* %41, align 8
  %42 = load %struct.bpf_object*, %struct.bpf_object** %2, align 8
  %43 = getelementptr inbounds %struct.bpf_object, %struct.bpf_object* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @zclose(i32 %45)
  %47 = load %struct.bpf_object*, %struct.bpf_object** %2, align 8
  %48 = getelementptr inbounds %struct.bpf_object, %struct.bpf_object* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 1
  store i32* null, i32** %49, align 8
  %50 = load %struct.bpf_object*, %struct.bpf_object** %2, align 8
  %51 = getelementptr inbounds %struct.bpf_object, %struct.bpf_object* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  store i64 0, i64* %52, align 8
  br label %53

53:                                               ; preds = %22, %6
  ret void
}

declare dso_local i32 @obj_elf_valid(%struct.bpf_object*) #1

declare dso_local i32 @elf_end(i32*) #1

declare dso_local i32 @zfree(i32*) #1

declare dso_local i32 @zclose(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
