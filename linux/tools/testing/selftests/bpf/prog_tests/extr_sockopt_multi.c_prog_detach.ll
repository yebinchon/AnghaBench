; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/prog_tests/extr_sockopt_multi.c_prog_detach.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/prog_tests/extr_sockopt_multi.c_prog_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_object = type { i32 }
%struct.bpf_program = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bpf_object*, i32, i8*)* @prog_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @prog_detach(%struct.bpf_object* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bpf_object*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.bpf_program*, align 8
  %11 = alloca i32, align 4
  store %struct.bpf_object* %0, %struct.bpf_object** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %12 = load i8*, i8** %7, align 8
  %13 = call i32 @libbpf_prog_type_by_name(i8* %12, i32* %9, i32* %8)
  store i32 %13, i32* %11, align 4
  %14 = load i32, i32* %11, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %34

17:                                               ; preds = %3
  %18 = load %struct.bpf_object*, %struct.bpf_object** %5, align 8
  %19 = load i8*, i8** %7, align 8
  %20 = call %struct.bpf_program* @bpf_object__find_program_by_title(%struct.bpf_object* %18, i8* %19)
  store %struct.bpf_program* %20, %struct.bpf_program** %10, align 8
  %21 = load %struct.bpf_program*, %struct.bpf_program** %10, align 8
  %22 = icmp ne %struct.bpf_program* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %17
  store i32 -1, i32* %4, align 4
  br label %34

24:                                               ; preds = %17
  %25 = load %struct.bpf_program*, %struct.bpf_program** %10, align 8
  %26 = call i32 @bpf_program__fd(%struct.bpf_program* %25)
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* %8, align 4
  %29 = call i32 @bpf_prog_detach2(i32 %26, i32 %27, i32 %28)
  store i32 %29, i32* %11, align 4
  %30 = load i32, i32* %11, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %24
  store i32 -1, i32* %4, align 4
  br label %34

33:                                               ; preds = %24
  store i32 0, i32* %4, align 4
  br label %34

34:                                               ; preds = %33, %32, %23, %16
  %35 = load i32, i32* %4, align 4
  ret i32 %35
}

declare dso_local i32 @libbpf_prog_type_by_name(i8*, i32*, i32*) #1

declare dso_local %struct.bpf_program* @bpf_object__find_program_by_title(%struct.bpf_object*, i8*) #1

declare dso_local i32 @bpf_prog_detach2(i32, i32, i32) #1

declare dso_local i32 @bpf_program__fd(%struct.bpf_program*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
