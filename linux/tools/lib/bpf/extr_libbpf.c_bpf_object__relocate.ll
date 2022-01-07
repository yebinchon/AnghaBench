; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/bpf/extr_libbpf.c_bpf_object__relocate.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/bpf/extr_libbpf.c_bpf_object__relocate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_object = type { i64, %struct.bpf_program*, i64 }
%struct.bpf_program = type { i32 }

@.str = private unnamed_addr constant [41 x i8] c"failed to perform CO-RE relocations: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"failed to relocate '%s'\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bpf_object*, i8*)* @bpf_object__relocate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bpf_object__relocate(%struct.bpf_object* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bpf_object*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.bpf_program*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.bpf_object* %0, %struct.bpf_object** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load %struct.bpf_object*, %struct.bpf_object** %4, align 8
  %10 = getelementptr inbounds %struct.bpf_object, %struct.bpf_object* %9, i32 0, i32 2
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %24

13:                                               ; preds = %2
  %14 = load %struct.bpf_object*, %struct.bpf_object** %4, align 8
  %15 = load i8*, i8** %5, align 8
  %16 = call i32 @bpf_object__relocate_core(%struct.bpf_object* %14, i8* %15)
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %8, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %13
  %20 = load i32, i32* %8, align 4
  %21 = call i32 @pr_warning(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = load i32, i32* %8, align 4
  store i32 %22, i32* %3, align 4
  br label %53

23:                                               ; preds = %13
  br label %24

24:                                               ; preds = %23, %2
  store i64 0, i64* %7, align 8
  br label %25

25:                                               ; preds = %49, %24
  %26 = load i64, i64* %7, align 8
  %27 = load %struct.bpf_object*, %struct.bpf_object** %4, align 8
  %28 = getelementptr inbounds %struct.bpf_object, %struct.bpf_object* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ult i64 %26, %29
  br i1 %30, label %31, label %52

31:                                               ; preds = %25
  %32 = load %struct.bpf_object*, %struct.bpf_object** %4, align 8
  %33 = getelementptr inbounds %struct.bpf_object, %struct.bpf_object* %32, i32 0, i32 1
  %34 = load %struct.bpf_program*, %struct.bpf_program** %33, align 8
  %35 = load i64, i64* %7, align 8
  %36 = getelementptr inbounds %struct.bpf_program, %struct.bpf_program* %34, i64 %35
  store %struct.bpf_program* %36, %struct.bpf_program** %6, align 8
  %37 = load %struct.bpf_program*, %struct.bpf_program** %6, align 8
  %38 = load %struct.bpf_object*, %struct.bpf_object** %4, align 8
  %39 = call i32 @bpf_program__relocate(%struct.bpf_program* %37, %struct.bpf_object* %38)
  store i32 %39, i32* %8, align 4
  %40 = load i32, i32* %8, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %31
  %43 = load %struct.bpf_program*, %struct.bpf_program** %6, align 8
  %44 = getelementptr inbounds %struct.bpf_program, %struct.bpf_program* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @pr_warning(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %45)
  %47 = load i32, i32* %8, align 4
  store i32 %47, i32* %3, align 4
  br label %53

48:                                               ; preds = %31
  br label %49

49:                                               ; preds = %48
  %50 = load i64, i64* %7, align 8
  %51 = add i64 %50, 1
  store i64 %51, i64* %7, align 8
  br label %25

52:                                               ; preds = %25
  store i32 0, i32* %3, align 4
  br label %53

53:                                               ; preds = %52, %42, %19
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local i32 @bpf_object__relocate_core(%struct.bpf_object*, i8*) #1

declare dso_local i32 @pr_warning(i8*, i32) #1

declare dso_local i32 @bpf_program__relocate(%struct.bpf_program*, %struct.bpf_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
