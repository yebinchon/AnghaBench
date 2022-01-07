; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/bpf/extr_libbpf.c_bpf_object__section_size.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/bpf/extr_libbpf.c_bpf_object__section_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_object = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__*, %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i64 }

@ENOENT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c".data\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c".bss\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c".rodata\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bpf_object__section_size(%struct.bpf_object* %0, i8* %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bpf_object*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.bpf_object* %0, %struct.bpf_object** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64* %2, i64** %7, align 8
  %10 = load i32, i32* @ENOENT, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %8, align 4
  %12 = load i64*, i64** %7, align 8
  store i64 0, i64* %12, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %3
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %4, align 4
  br label %97

18:                                               ; preds = %3
  %19 = load i8*, i8** %6, align 8
  %20 = call i32 @strcmp(i8* %19, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %37, label %22

22:                                               ; preds = %18
  %23 = load %struct.bpf_object*, %struct.bpf_object** %5, align 8
  %24 = getelementptr inbounds %struct.bpf_object, %struct.bpf_object* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 2
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %25, align 8
  %27 = icmp ne %struct.TYPE_5__* %26, null
  br i1 %27, label %28, label %36

28:                                               ; preds = %22
  %29 = load %struct.bpf_object*, %struct.bpf_object** %5, align 8
  %30 = getelementptr inbounds %struct.bpf_object, %struct.bpf_object* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 2
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64*, i64** %7, align 8
  store i64 %34, i64* %35, align 8
  br label %36

36:                                               ; preds = %28, %22
  br label %87

37:                                               ; preds = %18
  %38 = load i8*, i8** %6, align 8
  %39 = call i32 @strcmp(i8* %38, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %56, label %41

41:                                               ; preds = %37
  %42 = load %struct.bpf_object*, %struct.bpf_object** %5, align 8
  %43 = getelementptr inbounds %struct.bpf_object, %struct.bpf_object* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 1
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %44, align 8
  %46 = icmp ne %struct.TYPE_6__* %45, null
  br i1 %46, label %47, label %55

47:                                               ; preds = %41
  %48 = load %struct.bpf_object*, %struct.bpf_object** %5, align 8
  %49 = getelementptr inbounds %struct.bpf_object, %struct.bpf_object* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 1
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64*, i64** %7, align 8
  store i64 %53, i64* %54, align 8
  br label %55

55:                                               ; preds = %47, %41
  br label %86

56:                                               ; preds = %37
  %57 = load i8*, i8** %6, align 8
  %58 = call i32 @strcmp(i8* %57, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %75, label %60

60:                                               ; preds = %56
  %61 = load %struct.bpf_object*, %struct.bpf_object** %5, align 8
  %62 = getelementptr inbounds %struct.bpf_object, %struct.bpf_object* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 0
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %63, align 8
  %65 = icmp ne %struct.TYPE_7__* %64, null
  br i1 %65, label %66, label %74

66:                                               ; preds = %60
  %67 = load %struct.bpf_object*, %struct.bpf_object** %5, align 8
  %68 = getelementptr inbounds %struct.bpf_object, %struct.bpf_object* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 0
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64*, i64** %7, align 8
  store i64 %72, i64* %73, align 8
  br label %74

74:                                               ; preds = %66, %60
  br label %85

75:                                               ; preds = %56
  %76 = load %struct.bpf_object*, %struct.bpf_object** %5, align 8
  %77 = load i8*, i8** %6, align 8
  %78 = call i32 @bpf_object_search_section_size(%struct.bpf_object* %76, i8* %77, i64* %9)
  store i32 %78, i32* %8, align 4
  %79 = load i32, i32* %8, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %84, label %81

81:                                               ; preds = %75
  %82 = load i64, i64* %9, align 8
  %83 = load i64*, i64** %7, align 8
  store i64 %82, i64* %83, align 8
  br label %84

84:                                               ; preds = %81, %75
  br label %85

85:                                               ; preds = %84, %74
  br label %86

86:                                               ; preds = %85, %55
  br label %87

87:                                               ; preds = %86, %36
  br label %88

88:                                               ; preds = %87
  %89 = load i64*, i64** %7, align 8
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %88
  br label %95

93:                                               ; preds = %88
  %94 = load i32, i32* %8, align 4
  br label %95

95:                                               ; preds = %93, %92
  %96 = phi i32 [ 0, %92 ], [ %94, %93 ]
  store i32 %96, i32* %4, align 4
  br label %97

97:                                               ; preds = %95, %15
  %98 = load i32, i32* %4, align 4
  ret i32 %98
}

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @bpf_object_search_section_size(%struct.bpf_object*, i8*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
