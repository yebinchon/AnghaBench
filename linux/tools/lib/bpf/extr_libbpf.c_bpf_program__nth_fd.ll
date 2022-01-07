; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/bpf/extr_libbpf.c_bpf_program__nth_fd.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/bpf/extr_libbpf.c_bpf_program__nth_fd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_program = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32* }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [58 x i8] c"Can't get the %dth fd from program %s: only %d instances\0A\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"%dth instance of program '%s' is invalid\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bpf_program__nth_fd(%struct.bpf_program* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bpf_program*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.bpf_program* %0, %struct.bpf_program** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.bpf_program*, %struct.bpf_program** %4, align 8
  %8 = icmp ne %struct.bpf_program* %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %2
  %10 = load i32, i32* @EINVAL, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %3, align 4
  br label %55

12:                                               ; preds = %2
  %13 = load i32, i32* %5, align 4
  %14 = load %struct.bpf_program*, %struct.bpf_program** %4, align 8
  %15 = getelementptr inbounds %struct.bpf_program, %struct.bpf_program* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp sge i32 %13, %17
  br i1 %18, label %22, label %19

19:                                               ; preds = %12
  %20 = load i32, i32* %5, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %34

22:                                               ; preds = %19, %12
  %23 = load i32, i32* %5, align 4
  %24 = load %struct.bpf_program*, %struct.bpf_program** %4, align 8
  %25 = getelementptr inbounds %struct.bpf_program, %struct.bpf_program* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.bpf_program*, %struct.bpf_program** %4, align 8
  %28 = getelementptr inbounds %struct.bpf_program, %struct.bpf_program* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i32 (i8*, i32, i32, ...) @pr_warning(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i32 %23, i32 %26, i32 %30)
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %55

34:                                               ; preds = %19
  %35 = load %struct.bpf_program*, %struct.bpf_program** %4, align 8
  %36 = getelementptr inbounds %struct.bpf_program, %struct.bpf_program* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  %39 = load i32, i32* %5, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %6, align 4
  %43 = load i32, i32* %6, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %53

45:                                               ; preds = %34
  %46 = load i32, i32* %5, align 4
  %47 = load %struct.bpf_program*, %struct.bpf_program** %4, align 8
  %48 = getelementptr inbounds %struct.bpf_program, %struct.bpf_program* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = call i32 (i8*, i32, i32, ...) @pr_warning(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %46, i32 %49)
  %51 = load i32, i32* @ENOENT, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %3, align 4
  br label %55

53:                                               ; preds = %34
  %54 = load i32, i32* %6, align 4
  store i32 %54, i32* %3, align 4
  br label %55

55:                                               ; preds = %53, %45, %22, %9
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local i32 @pr_warning(i8*, i32, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
