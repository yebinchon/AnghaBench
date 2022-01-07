; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/bpf/extr_libbpf.c_bpf_program__set_priv.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/bpf/extr_libbpf.c_bpf_program__set_priv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_program = type { i32 (%struct.bpf_program*, i8*)*, i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bpf_program__set_priv(%struct.bpf_program* %0, i8* %1, i32 (%struct.bpf_program*, i8*)* %2) #0 {
  %4 = alloca %struct.bpf_program*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32 (%struct.bpf_program*, i8*)*, align 8
  store %struct.bpf_program* %0, %struct.bpf_program** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 (%struct.bpf_program*, i8*)* %2, i32 (%struct.bpf_program*, i8*)** %6, align 8
  %7 = load %struct.bpf_program*, %struct.bpf_program** %4, align 8
  %8 = getelementptr inbounds %struct.bpf_program, %struct.bpf_program* %7, i32 0, i32 1
  %9 = load i8*, i8** %8, align 8
  %10 = icmp ne i8* %9, null
  br i1 %10, label %11, label %25

11:                                               ; preds = %3
  %12 = load %struct.bpf_program*, %struct.bpf_program** %4, align 8
  %13 = getelementptr inbounds %struct.bpf_program, %struct.bpf_program* %12, i32 0, i32 0
  %14 = load i32 (%struct.bpf_program*, i8*)*, i32 (%struct.bpf_program*, i8*)** %13, align 8
  %15 = icmp ne i32 (%struct.bpf_program*, i8*)* %14, null
  br i1 %15, label %16, label %25

16:                                               ; preds = %11
  %17 = load %struct.bpf_program*, %struct.bpf_program** %4, align 8
  %18 = getelementptr inbounds %struct.bpf_program, %struct.bpf_program* %17, i32 0, i32 0
  %19 = load i32 (%struct.bpf_program*, i8*)*, i32 (%struct.bpf_program*, i8*)** %18, align 8
  %20 = load %struct.bpf_program*, %struct.bpf_program** %4, align 8
  %21 = load %struct.bpf_program*, %struct.bpf_program** %4, align 8
  %22 = getelementptr inbounds %struct.bpf_program, %struct.bpf_program* %21, i32 0, i32 1
  %23 = load i8*, i8** %22, align 8
  %24 = call i32 %19(%struct.bpf_program* %20, i8* %23)
  br label %25

25:                                               ; preds = %16, %11, %3
  %26 = load i8*, i8** %5, align 8
  %27 = load %struct.bpf_program*, %struct.bpf_program** %4, align 8
  %28 = getelementptr inbounds %struct.bpf_program, %struct.bpf_program* %27, i32 0, i32 1
  store i8* %26, i8** %28, align 8
  %29 = load i32 (%struct.bpf_program*, i8*)*, i32 (%struct.bpf_program*, i8*)** %6, align 8
  %30 = load %struct.bpf_program*, %struct.bpf_program** %4, align 8
  %31 = getelementptr inbounds %struct.bpf_program, %struct.bpf_program* %30, i32 0, i32 0
  store i32 (%struct.bpf_program*, i8*)* %29, i32 (%struct.bpf_program*, i8*)** %31, align 8
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
