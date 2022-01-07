; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/extr_test_progs.c_bpf_find_map.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/extr_test_progs.c_bpf_find_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_object = type { i32 }
%struct.bpf_map = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"%s:FAIL:map '%s' not found\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bpf_find_map(i8* %0, %struct.bpf_object* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.bpf_object*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.bpf_map*, align 8
  store i8* %0, i8** %5, align 8
  store %struct.bpf_object* %1, %struct.bpf_object** %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = load %struct.bpf_object*, %struct.bpf_object** %6, align 8
  %10 = load i8*, i8** %7, align 8
  %11 = call %struct.bpf_map* @bpf_object__find_map_by_name(%struct.bpf_object* %9, i8* %10)
  store %struct.bpf_map* %11, %struct.bpf_map** %8, align 8
  %12 = load %struct.bpf_map*, %struct.bpf_map** %8, align 8
  %13 = icmp ne %struct.bpf_map* %12, null
  br i1 %13, label %19, label %14

14:                                               ; preds = %3
  %15 = load i8*, i8** %5, align 8
  %16 = load i8*, i8** %7, align 8
  %17 = call i32 @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i8* %15, i8* %16)
  %18 = call i32 (...) @test__fail()
  store i32 -1, i32* %4, align 4
  br label %22

19:                                               ; preds = %3
  %20 = load %struct.bpf_map*, %struct.bpf_map** %8, align 8
  %21 = call i32 @bpf_map__fd(%struct.bpf_map* %20)
  store i32 %21, i32* %4, align 4
  br label %22

22:                                               ; preds = %19, %14
  %23 = load i32, i32* %4, align 4
  ret i32 %23
}

declare dso_local %struct.bpf_map* @bpf_object__find_map_by_name(%struct.bpf_object*, i8*) #1

declare dso_local i32 @printf(i8*, i8*, i8*) #1

declare dso_local i32 @test__fail(...) #1

declare dso_local i32 @bpf_map__fd(%struct.bpf_map*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
