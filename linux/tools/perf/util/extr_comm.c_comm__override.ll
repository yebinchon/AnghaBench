; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_comm.c_comm__override.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_comm.c_comm__override.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comm = type { i32, i32, %struct.comm_str* }
%struct.comm_str = type { i32 }

@comm_str_root = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @comm__override(%struct.comm* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.comm*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.comm_str*, align 8
  %11 = alloca %struct.comm_str*, align 8
  store %struct.comm* %0, %struct.comm** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load %struct.comm*, %struct.comm** %6, align 8
  %13 = getelementptr inbounds %struct.comm, %struct.comm* %12, i32 0, i32 2
  %14 = load %struct.comm_str*, %struct.comm_str** %13, align 8
  store %struct.comm_str* %14, %struct.comm_str** %11, align 8
  %15 = load i8*, i8** %7, align 8
  %16 = call %struct.comm_str* @comm_str__findnew(i8* %15, i32* @comm_str_root)
  store %struct.comm_str* %16, %struct.comm_str** %10, align 8
  %17 = load %struct.comm_str*, %struct.comm_str** %10, align 8
  %18 = icmp ne %struct.comm_str* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %4
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %5, align 4
  br label %37

22:                                               ; preds = %4
  %23 = load %struct.comm_str*, %struct.comm_str** %11, align 8
  %24 = call i32 @comm_str__put(%struct.comm_str* %23)
  %25 = load %struct.comm_str*, %struct.comm_str** %10, align 8
  %26 = load %struct.comm*, %struct.comm** %6, align 8
  %27 = getelementptr inbounds %struct.comm, %struct.comm* %26, i32 0, i32 2
  store %struct.comm_str* %25, %struct.comm_str** %27, align 8
  %28 = load i32, i32* %8, align 4
  %29 = load %struct.comm*, %struct.comm** %6, align 8
  %30 = getelementptr inbounds %struct.comm, %struct.comm* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 4
  %31 = load i32, i32* %9, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %22
  %34 = load %struct.comm*, %struct.comm** %6, align 8
  %35 = getelementptr inbounds %struct.comm, %struct.comm* %34, i32 0, i32 0
  store i32 1, i32* %35, align 8
  br label %36

36:                                               ; preds = %33, %22
  store i32 0, i32* %5, align 4
  br label %37

37:                                               ; preds = %36, %19
  %38 = load i32, i32* %5, align 4
  ret i32 %38
}

declare dso_local %struct.comm_str* @comm_str__findnew(i8*, i32*) #1

declare dso_local i32 @comm_str__put(%struct.comm_str*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
