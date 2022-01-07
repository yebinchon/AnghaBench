; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_machine.c_machine__fprintf_vmlinux_path.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_machine.c_machine__fprintf_vmlinux_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.machine = type { i32 }
%struct.dso = type { i32 }
%struct.TYPE_2__ = type { %struct.dso* }

@PATH_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"[0] %s\0A\00", align 1
@vmlinux_path__nr_entries = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"[%d] %s\0A\00", align 1
@vmlinux_path = common dso_local global i8** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @machine__fprintf_vmlinux_path(%struct.machine* %0, i32* %1) #0 {
  %3 = alloca %struct.machine*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.dso*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  store %struct.machine* %0, %struct.machine** %3, align 8
  store i32* %1, i32** %4, align 8
  store i64 0, i64* %6, align 8
  %10 = load %struct.machine*, %struct.machine** %3, align 8
  %11 = call %struct.TYPE_2__* @machine__kernel_map(%struct.machine* %10)
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load %struct.dso*, %struct.dso** %12, align 8
  store %struct.dso* %13, %struct.dso** %7, align 8
  %14 = load %struct.dso*, %struct.dso** %7, align 8
  %15 = getelementptr inbounds %struct.dso, %struct.dso* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %34

18:                                               ; preds = %2
  %19 = load i32, i32* @PATH_MAX, align 4
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %8, align 8
  %22 = alloca i8, i64 %20, align 16
  store i64 %20, i64* %9, align 8
  %23 = load %struct.dso*, %struct.dso** %7, align 8
  %24 = trunc i64 %20 to i32
  %25 = call i64 @dso__build_id_filename(%struct.dso* %23, i8* %22, i32 %24, i32 0)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %18
  %28 = load i32*, i32** %4, align 8
  %29 = call i64 (i32*, i8*, ...) @fprintf(i32* %28, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* %22)
  %30 = load i64, i64* %6, align 8
  %31 = add i64 %30, %29
  store i64 %31, i64* %6, align 8
  br label %32

32:                                               ; preds = %27, %18
  %33 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %33)
  br label %34

34:                                               ; preds = %32, %2
  store i32 0, i32* %5, align 4
  br label %35

35:                                               ; preds = %54, %34
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* @vmlinux_path__nr_entries, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %57

39:                                               ; preds = %35
  %40 = load i32*, i32** %4, align 8
  %41 = load i32, i32* %5, align 4
  %42 = load %struct.dso*, %struct.dso** %7, align 8
  %43 = getelementptr inbounds %struct.dso, %struct.dso* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = add nsw i32 %41, %44
  %46 = load i8**, i8*** @vmlinux_path, align 8
  %47 = load i32, i32* %5, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i8*, i8** %46, i64 %48
  %50 = load i8*, i8** %49, align 8
  %51 = call i64 (i32*, i8*, ...) @fprintf(i32* %40, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %45, i8* %50)
  %52 = load i64, i64* %6, align 8
  %53 = add i64 %52, %51
  store i64 %53, i64* %6, align 8
  br label %54

54:                                               ; preds = %39
  %55 = load i32, i32* %5, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %5, align 4
  br label %35

57:                                               ; preds = %35
  %58 = load i64, i64* %6, align 8
  ret i64 %58
}

declare dso_local %struct.TYPE_2__* @machine__kernel_map(%struct.machine*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i64 @dso__build_id_filename(%struct.dso*, i8*, i32, i32) #1

declare dso_local i64 @fprintf(i32*, i8*, ...) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
