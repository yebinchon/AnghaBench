; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/bpf/extr_libbpf.c___bpf_program__iter.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/bpf/extr_libbpf.c___bpf_program__iter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_program = type { %struct.bpf_object* }
%struct.bpf_object = type { i64, %struct.bpf_program* }

@.str = private unnamed_addr constant [45 x i8] c"error: program handler doesn't match object\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.bpf_program* (%struct.bpf_program*, %struct.bpf_object*, i32)* @__bpf_program__iter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.bpf_program* @__bpf_program__iter(%struct.bpf_program* %0, %struct.bpf_object* %1, i32 %2) #0 {
  %4 = alloca %struct.bpf_program*, align 8
  %5 = alloca %struct.bpf_program*, align 8
  %6 = alloca %struct.bpf_object*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.bpf_program* %0, %struct.bpf_program** %5, align 8
  store %struct.bpf_object* %1, %struct.bpf_object** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.bpf_object*, %struct.bpf_object** %6, align 8
  %11 = getelementptr inbounds %struct.bpf_object, %struct.bpf_object* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  store i64 %12, i64* %8, align 8
  %13 = load i64, i64* %8, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %3
  store %struct.bpf_program* null, %struct.bpf_program** %4, align 8
  br label %74

16:                                               ; preds = %3
  %17 = load %struct.bpf_program*, %struct.bpf_program** %5, align 8
  %18 = icmp ne %struct.bpf_program* %17, null
  br i1 %18, label %36, label %19

19:                                               ; preds = %16
  %20 = load i32, i32* %7, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %19
  %23 = load %struct.bpf_object*, %struct.bpf_object** %6, align 8
  %24 = getelementptr inbounds %struct.bpf_object, %struct.bpf_object* %23, i32 0, i32 1
  %25 = load %struct.bpf_program*, %struct.bpf_program** %24, align 8
  %26 = getelementptr inbounds %struct.bpf_program, %struct.bpf_program* %25, i64 0
  br label %34

27:                                               ; preds = %19
  %28 = load %struct.bpf_object*, %struct.bpf_object** %6, align 8
  %29 = getelementptr inbounds %struct.bpf_object, %struct.bpf_object* %28, i32 0, i32 1
  %30 = load %struct.bpf_program*, %struct.bpf_program** %29, align 8
  %31 = load i64, i64* %8, align 8
  %32 = sub i64 %31, 1
  %33 = getelementptr inbounds %struct.bpf_program, %struct.bpf_program* %30, i64 %32
  br label %34

34:                                               ; preds = %27, %22
  %35 = phi %struct.bpf_program* [ %26, %22 ], [ %33, %27 ]
  store %struct.bpf_program* %35, %struct.bpf_program** %4, align 8
  br label %74

36:                                               ; preds = %16
  %37 = load %struct.bpf_program*, %struct.bpf_program** %5, align 8
  %38 = getelementptr inbounds %struct.bpf_program, %struct.bpf_program* %37, i32 0, i32 0
  %39 = load %struct.bpf_object*, %struct.bpf_object** %38, align 8
  %40 = load %struct.bpf_object*, %struct.bpf_object** %6, align 8
  %41 = icmp ne %struct.bpf_object* %39, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %36
  %43 = call i32 @pr_warning(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  store %struct.bpf_program* null, %struct.bpf_program** %4, align 8
  br label %74

44:                                               ; preds = %36
  %45 = load %struct.bpf_program*, %struct.bpf_program** %5, align 8
  %46 = load %struct.bpf_object*, %struct.bpf_object** %6, align 8
  %47 = getelementptr inbounds %struct.bpf_object, %struct.bpf_object* %46, i32 0, i32 1
  %48 = load %struct.bpf_program*, %struct.bpf_program** %47, align 8
  %49 = ptrtoint %struct.bpf_program* %45 to i64
  %50 = ptrtoint %struct.bpf_program* %48 to i64
  %51 = sub i64 %49, %50
  %52 = sdiv exact i64 %51, 8
  %53 = load i32, i32* %7, align 4
  %54 = icmp ne i32 %53, 0
  %55 = zext i1 %54 to i64
  %56 = select i1 %54, i32 1, i32 -1
  %57 = sext i32 %56 to i64
  %58 = add nsw i64 %52, %57
  store i64 %58, i64* %9, align 8
  %59 = load i64, i64* %9, align 8
  %60 = load %struct.bpf_object*, %struct.bpf_object** %6, align 8
  %61 = getelementptr inbounds %struct.bpf_object, %struct.bpf_object* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp uge i64 %59, %62
  br i1 %63, label %67, label %64

64:                                               ; preds = %44
  %65 = load i64, i64* %9, align 8
  %66 = icmp ult i64 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %64, %44
  store %struct.bpf_program* null, %struct.bpf_program** %4, align 8
  br label %74

68:                                               ; preds = %64
  %69 = load %struct.bpf_object*, %struct.bpf_object** %6, align 8
  %70 = getelementptr inbounds %struct.bpf_object, %struct.bpf_object* %69, i32 0, i32 1
  %71 = load %struct.bpf_program*, %struct.bpf_program** %70, align 8
  %72 = load i64, i64* %9, align 8
  %73 = getelementptr inbounds %struct.bpf_program, %struct.bpf_program* %71, i64 %72
  store %struct.bpf_program* %73, %struct.bpf_program** %4, align 8
  br label %74

74:                                               ; preds = %68, %67, %42, %34, %15
  %75 = load %struct.bpf_program*, %struct.bpf_program** %4, align 8
  ret %struct.bpf_program* %75
}

declare dso_local i32 @pr_warning(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
