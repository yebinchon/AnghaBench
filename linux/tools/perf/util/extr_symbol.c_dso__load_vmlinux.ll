; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_symbol.c_dso__load_vmlinux.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_symbol.c_dso__load_vmlinux.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dso = type { i64, i8* }
%struct.map = type { i32 }
%struct.symsrc = type { i32 }

@PATH_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@DSO_TYPE_GUEST_KERNEL = common dso_local global i64 0, align 8
@DSO_BINARY_TYPE__GUEST_VMLINUX = common dso_local global i8* null, align 8
@DSO_BINARY_TYPE__VMLINUX = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [22 x i8] c"Using %s for symbols\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dso__load_vmlinux(%struct.dso* %0, %struct.map* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.dso*, align 8
  %7 = alloca %struct.map*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.symsrc, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.dso* %0, %struct.dso** %6, align 8
  store %struct.map* %1, %struct.map** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 -1, i32* %10, align 4
  %16 = load i32, i32* @PATH_MAX, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %12, align 8
  %19 = alloca i8, i64 %17, align 16
  store i64 %17, i64* %13, align 8
  %20 = load i8*, i8** %8, align 8
  %21 = getelementptr inbounds i8, i8* %20, i64 0
  %22 = load i8, i8* %21, align 1
  %23 = sext i8 %22 to i32
  %24 = icmp eq i32 %23, 47
  br i1 %24, label %25, label %29

25:                                               ; preds = %4
  %26 = trunc i64 %17 to i32
  %27 = load i8*, i8** %8, align 8
  %28 = call i32 @snprintf(i8* %19, i32 %26, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %27)
  br label %32

29:                                               ; preds = %4
  %30 = load i8*, i8** %8, align 8
  %31 = call i32 @symbol__join_symfs(i8* %19, i8* %30)
  br label %32

32:                                               ; preds = %29, %25
  %33 = load %struct.dso*, %struct.dso** %6, align 8
  %34 = getelementptr inbounds %struct.dso, %struct.dso* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @DSO_TYPE_GUEST_KERNEL, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %32
  %39 = load i8*, i8** @DSO_BINARY_TYPE__GUEST_VMLINUX, align 8
  %40 = ptrtoint i8* %39 to i32
  store i32 %40, i32* %14, align 4
  br label %44

41:                                               ; preds = %32
  %42 = load i8*, i8** @DSO_BINARY_TYPE__VMLINUX, align 8
  %43 = ptrtoint i8* %42 to i32
  store i32 %43, i32* %14, align 4
  br label %44

44:                                               ; preds = %41, %38
  %45 = load %struct.dso*, %struct.dso** %6, align 8
  %46 = load i32, i32* %14, align 4
  %47 = call i64 @symsrc__init(%struct.symsrc* %11, %struct.dso* %45, i8* %19, i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %44
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %15, align 4
  br label %81

50:                                               ; preds = %44
  %51 = load %struct.dso*, %struct.dso** %6, align 8
  %52 = load %struct.map*, %struct.map** %7, align 8
  %53 = call i32 @dso__load_sym(%struct.dso* %51, %struct.map* %52, %struct.symsrc* %11, %struct.symsrc* %11, i32 0)
  store i32 %53, i32* %10, align 4
  %54 = call i32 @symsrc__destroy(%struct.symsrc* %11)
  %55 = load i32, i32* %10, align 4
  %56 = icmp sgt i32 %55, 0
  br i1 %56, label %57, label %79

57:                                               ; preds = %50
  %58 = load %struct.dso*, %struct.dso** %6, align 8
  %59 = getelementptr inbounds %struct.dso, %struct.dso* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @DSO_TYPE_GUEST_KERNEL, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %67

63:                                               ; preds = %57
  %64 = load i8*, i8** @DSO_BINARY_TYPE__GUEST_VMLINUX, align 8
  %65 = load %struct.dso*, %struct.dso** %6, align 8
  %66 = getelementptr inbounds %struct.dso, %struct.dso* %65, i32 0, i32 1
  store i8* %64, i8** %66, align 8
  br label %71

67:                                               ; preds = %57
  %68 = load i8*, i8** @DSO_BINARY_TYPE__VMLINUX, align 8
  %69 = load %struct.dso*, %struct.dso** %6, align 8
  %70 = getelementptr inbounds %struct.dso, %struct.dso* %69, i32 0, i32 1
  store i8* %68, i8** %70, align 8
  br label %71

71:                                               ; preds = %67, %63
  %72 = load %struct.dso*, %struct.dso** %6, align 8
  %73 = load i8*, i8** %8, align 8
  %74 = load i32, i32* %9, align 4
  %75 = call i32 @dso__set_long_name(%struct.dso* %72, i8* %73, i32 %74)
  %76 = load %struct.dso*, %struct.dso** %6, align 8
  %77 = call i32 @dso__set_loaded(%struct.dso* %76)
  %78 = call i32 @pr_debug(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i8* %19)
  br label %79

79:                                               ; preds = %71, %50
  %80 = load i32, i32* %10, align 4
  store i32 %80, i32* %5, align 4
  store i32 1, i32* %15, align 4
  br label %81

81:                                               ; preds = %79, %49
  %82 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %82)
  %83 = load i32, i32* %5, align 4
  ret i32 %83
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #2

declare dso_local i32 @symbol__join_symfs(i8*, i8*) #2

declare dso_local i64 @symsrc__init(%struct.symsrc*, %struct.dso*, i8*, i32) #2

declare dso_local i32 @dso__load_sym(%struct.dso*, %struct.map*, %struct.symsrc*, %struct.symsrc*, i32) #2

declare dso_local i32 @symsrc__destroy(%struct.symsrc*) #2

declare dso_local i32 @dso__set_long_name(%struct.dso*, i8*, i32) #2

declare dso_local i32 @dso__set_loaded(%struct.dso*) #2

declare dso_local i32 @pr_debug(i8*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
