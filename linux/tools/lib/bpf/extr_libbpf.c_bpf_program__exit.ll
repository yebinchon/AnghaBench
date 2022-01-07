; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/bpf/extr_libbpf.c_bpf_program__exit.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/bpf/extr_libbpf.c_bpf_program__exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_program = type { i32, i64, i64, i32, i32, i32, i32, i32, i32 (%struct.bpf_program*, i32*)*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bpf_program*)* @bpf_program__exit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bpf_program__exit(%struct.bpf_program* %0) #0 {
  %2 = alloca %struct.bpf_program*, align 8
  store %struct.bpf_program* %0, %struct.bpf_program** %2, align 8
  %3 = load %struct.bpf_program*, %struct.bpf_program** %2, align 8
  %4 = icmp ne %struct.bpf_program* %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  br label %48

6:                                                ; preds = %1
  %7 = load %struct.bpf_program*, %struct.bpf_program** %2, align 8
  %8 = getelementptr inbounds %struct.bpf_program, %struct.bpf_program* %7, i32 0, i32 8
  %9 = load i32 (%struct.bpf_program*, i32*)*, i32 (%struct.bpf_program*, i32*)** %8, align 8
  %10 = icmp ne i32 (%struct.bpf_program*, i32*)* %9, null
  br i1 %10, label %11, label %20

11:                                               ; preds = %6
  %12 = load %struct.bpf_program*, %struct.bpf_program** %2, align 8
  %13 = getelementptr inbounds %struct.bpf_program, %struct.bpf_program* %12, i32 0, i32 8
  %14 = load i32 (%struct.bpf_program*, i32*)*, i32 (%struct.bpf_program*, i32*)** %13, align 8
  %15 = load %struct.bpf_program*, %struct.bpf_program** %2, align 8
  %16 = load %struct.bpf_program*, %struct.bpf_program** %2, align 8
  %17 = getelementptr inbounds %struct.bpf_program, %struct.bpf_program* %16, i32 0, i32 9
  %18 = load i32*, i32** %17, align 8
  %19 = call i32 %14(%struct.bpf_program* %15, i32* %18)
  br label %20

20:                                               ; preds = %11, %6
  %21 = load %struct.bpf_program*, %struct.bpf_program** %2, align 8
  %22 = getelementptr inbounds %struct.bpf_program, %struct.bpf_program* %21, i32 0, i32 9
  store i32* null, i32** %22, align 8
  %23 = load %struct.bpf_program*, %struct.bpf_program** %2, align 8
  %24 = getelementptr inbounds %struct.bpf_program, %struct.bpf_program* %23, i32 0, i32 8
  store i32 (%struct.bpf_program*, i32*)* null, i32 (%struct.bpf_program*, i32*)** %24, align 8
  %25 = load %struct.bpf_program*, %struct.bpf_program** %2, align 8
  %26 = call i32 @bpf_program__unload(%struct.bpf_program* %25)
  %27 = load %struct.bpf_program*, %struct.bpf_program** %2, align 8
  %28 = getelementptr inbounds %struct.bpf_program, %struct.bpf_program* %27, i32 0, i32 7
  %29 = call i32 @zfree(i32* %28)
  %30 = load %struct.bpf_program*, %struct.bpf_program** %2, align 8
  %31 = getelementptr inbounds %struct.bpf_program, %struct.bpf_program* %30, i32 0, i32 6
  %32 = call i32 @zfree(i32* %31)
  %33 = load %struct.bpf_program*, %struct.bpf_program** %2, align 8
  %34 = getelementptr inbounds %struct.bpf_program, %struct.bpf_program* %33, i32 0, i32 5
  %35 = call i32 @zfree(i32* %34)
  %36 = load %struct.bpf_program*, %struct.bpf_program** %2, align 8
  %37 = getelementptr inbounds %struct.bpf_program, %struct.bpf_program* %36, i32 0, i32 4
  %38 = call i32 @zfree(i32* %37)
  %39 = load %struct.bpf_program*, %struct.bpf_program** %2, align 8
  %40 = getelementptr inbounds %struct.bpf_program, %struct.bpf_program* %39, i32 0, i32 3
  %41 = call i32 @zfree(i32* %40)
  %42 = load %struct.bpf_program*, %struct.bpf_program** %2, align 8
  %43 = getelementptr inbounds %struct.bpf_program, %struct.bpf_program* %42, i32 0, i32 2
  store i64 0, i64* %43, align 8
  %44 = load %struct.bpf_program*, %struct.bpf_program** %2, align 8
  %45 = getelementptr inbounds %struct.bpf_program, %struct.bpf_program* %44, i32 0, i32 1
  store i64 0, i64* %45, align 8
  %46 = load %struct.bpf_program*, %struct.bpf_program** %2, align 8
  %47 = getelementptr inbounds %struct.bpf_program, %struct.bpf_program* %46, i32 0, i32 0
  store i32 -1, i32* %47, align 8
  br label %48

48:                                               ; preds = %20, %5
  ret void
}

declare dso_local i32 @bpf_program__unload(%struct.bpf_program*) #1

declare dso_local i32 @zfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
