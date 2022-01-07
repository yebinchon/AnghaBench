; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_probe-finder.c_debuginfo__new.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_probe-finder.c_debuginfo__new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.debuginfo = type { i32 }
%struct.dso = type { i32 }

@PATH_MAX = common dso_local global i32 0, align 4
@distro_dwarf_types = common dso_local global i32* null, align 8
@DSO_BINARY_TYPE__NOT_FOUND = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.debuginfo* @debuginfo__new(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8, align 1
  %7 = alloca %struct.dso*, align 8
  %8 = alloca %struct.debuginfo*, align 8
  store i8* %0, i8** %2, align 8
  %9 = load i32, i32* @PATH_MAX, align 4
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %4, align 8
  %12 = alloca i8, i64 %10, align 16
  store i64 %10, i64* %5, align 8
  store i8 0, i8* %6, align 1
  store %struct.debuginfo* null, %struct.debuginfo** %8, align 8
  %13 = load i8*, i8** %2, align 8
  %14 = call %struct.dso* @dso__new(i8* %13)
  store %struct.dso* %14, %struct.dso** %7, align 8
  %15 = load %struct.dso*, %struct.dso** %7, align 8
  %16 = icmp ne %struct.dso* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %1
  br label %46

18:                                               ; preds = %1
  %19 = load i32*, i32** @distro_dwarf_types, align 8
  store i32* %19, i32** %3, align 8
  br label %20

20:                                               ; preds = %40, %18
  %21 = load %struct.debuginfo*, %struct.debuginfo** %8, align 8
  %22 = icmp ne %struct.debuginfo* %21, null
  br i1 %22, label %28, label %23

23:                                               ; preds = %20
  %24 = load i32*, i32** %3, align 8
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @DSO_BINARY_TYPE__NOT_FOUND, align 4
  %27 = icmp ne i32 %25, %26
  br label %28

28:                                               ; preds = %23, %20
  %29 = phi i1 [ false, %20 ], [ %27, %23 ]
  br i1 %29, label %30, label %43

30:                                               ; preds = %28
  %31 = load %struct.dso*, %struct.dso** %7, align 8
  %32 = load i32*, i32** %3, align 8
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @PATH_MAX, align 4
  %35 = call i64 @dso__read_binary_type_filename(%struct.dso* %31, i32 %33, i8* %6, i8* %12, i32 %34)
  %36 = icmp slt i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %30
  br label %40

38:                                               ; preds = %30
  %39 = call %struct.debuginfo* @__debuginfo__new(i8* %12)
  store %struct.debuginfo* %39, %struct.debuginfo** %8, align 8
  br label %40

40:                                               ; preds = %38, %37
  %41 = load i32*, i32** %3, align 8
  %42 = getelementptr inbounds i32, i32* %41, i32 1
  store i32* %42, i32** %3, align 8
  br label %20

43:                                               ; preds = %28
  %44 = load %struct.dso*, %struct.dso** %7, align 8
  %45 = call i32 @dso__put(%struct.dso* %44)
  br label %46

46:                                               ; preds = %43, %17
  %47 = load %struct.debuginfo*, %struct.debuginfo** %8, align 8
  %48 = icmp ne %struct.debuginfo* %47, null
  br i1 %48, label %49, label %50

49:                                               ; preds = %46
  br label %53

50:                                               ; preds = %46
  %51 = load i8*, i8** %2, align 8
  %52 = call %struct.debuginfo* @__debuginfo__new(i8* %51)
  br label %53

53:                                               ; preds = %50, %49
  %54 = phi %struct.debuginfo* [ %47, %49 ], [ %52, %50 ]
  %55 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %55)
  ret %struct.debuginfo* %54
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.dso* @dso__new(i8*) #2

declare dso_local i64 @dso__read_binary_type_filename(%struct.dso*, i32, i8*, i8*, i32) #2

declare dso_local %struct.debuginfo* @__debuginfo__new(i8*) #2

declare dso_local i32 @dso__put(%struct.dso*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
