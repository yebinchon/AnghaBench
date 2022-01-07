; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_unwind-libunwind.c_unwind__prepare_access.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_unwind-libunwind.c_unwind__prepare_access.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.unwind_libunwind_ops = type { i32 }
%struct.map_groups = type { %struct.TYPE_5__*, %struct.TYPE_8__*, i64 }
%struct.TYPE_5__ = type { i32 (%struct.map_groups*)* }
%struct.TYPE_8__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.map = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }

@local_unwind_libunwind_ops = common dso_local global %struct.unwind_libunwind_ops* null, align 8
@dwarf_callchain_users = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"unwind: thread map already set, dso=%s\0A\00", align 1
@DSO__TYPE_UNKNOWN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"x86\00", align 1
@DSO__TYPE_64BIT = common dso_local global i32 0, align 4
@x86_32_unwind_libunwind_ops = common dso_local global %struct.unwind_libunwind_ops* null, align 8
@.str.2 = private unnamed_addr constant [6 x i8] c"arm64\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"arm\00", align 1
@arm64_unwind_libunwind_ops = common dso_local global %struct.unwind_libunwind_ops* null, align 8
@.str.4 = private unnamed_addr constant [45 x i8] c"unwind: target platform=%s is not supported\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @unwind__prepare_access(%struct.map_groups* %0, %struct.map* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.map_groups*, align 8
  %6 = alloca %struct.map*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.unwind_libunwind_ops*, align 8
  %11 = alloca i32, align 4
  store %struct.map_groups* %0, %struct.map_groups** %5, align 8
  store %struct.map* %1, %struct.map** %6, align 8
  store i32* %2, i32** %7, align 8
  %12 = load %struct.unwind_libunwind_ops*, %struct.unwind_libunwind_ops** @local_unwind_libunwind_ops, align 8
  store %struct.unwind_libunwind_ops* %12, %struct.unwind_libunwind_ops** %10, align 8
  %13 = load i32, i32* @dwarf_callchain_users, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %123

16:                                               ; preds = %3
  %17 = load %struct.map_groups*, %struct.map_groups** %5, align 8
  %18 = getelementptr inbounds %struct.map_groups, %struct.map_groups* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %33

21:                                               ; preds = %16
  %22 = load %struct.map*, %struct.map** %6, align 8
  %23 = getelementptr inbounds %struct.map, %struct.map* %22, i32 0, i32 0
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @pr_debug(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %26)
  %28 = load i32*, i32** %7, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %30, label %32

30:                                               ; preds = %21
  %31 = load i32*, i32** %7, align 8
  store i32 1, i32* %31, align 4
  br label %32

32:                                               ; preds = %30, %21
  store i32 0, i32* %4, align 4
  br label %123

33:                                               ; preds = %16
  %34 = load %struct.map_groups*, %struct.map_groups** %5, align 8
  %35 = getelementptr inbounds %struct.map_groups, %struct.map_groups* %34, i32 0, i32 1
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %37, align 8
  %39 = icmp ne %struct.TYPE_6__* %38, null
  br i1 %39, label %40, label %49

40:                                               ; preds = %33
  %41 = load %struct.map_groups*, %struct.map_groups** %5, align 8
  %42 = getelementptr inbounds %struct.map_groups, %struct.map_groups* %41, i32 0, i32 1
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %40, %33
  br label %102

50:                                               ; preds = %40
  %51 = load %struct.map*, %struct.map** %6, align 8
  %52 = getelementptr inbounds %struct.map, %struct.map* %51, i32 0, i32 0
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %52, align 8
  %54 = load %struct.map_groups*, %struct.map_groups** %5, align 8
  %55 = getelementptr inbounds %struct.map_groups, %struct.map_groups* %54, i32 0, i32 1
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %55, align 8
  %57 = call i32 @dso__type(%struct.TYPE_7__* %53, %struct.TYPE_8__* %56)
  store i32 %57, i32* %9, align 4
  %58 = load i32, i32* %9, align 4
  %59 = load i32, i32* @DSO__TYPE_UNKNOWN, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %50
  store i32 0, i32* %4, align 4
  br label %123

62:                                               ; preds = %50
  %63 = load %struct.map_groups*, %struct.map_groups** %5, align 8
  %64 = getelementptr inbounds %struct.map_groups, %struct.map_groups* %63, i32 0, i32 1
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 0
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %66, align 8
  %68 = call i8* @perf_env__arch(%struct.TYPE_6__* %67)
  store i8* %68, i8** %8, align 8
  %69 = load i8*, i8** %8, align 8
  %70 = call i32 @strcmp(i8* %69, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %79, label %72

72:                                               ; preds = %62
  %73 = load i32, i32* %9, align 4
  %74 = load i32, i32* @DSO__TYPE_64BIT, align 4
  %75 = icmp ne i32 %73, %74
  br i1 %75, label %76, label %78

76:                                               ; preds = %72
  %77 = load %struct.unwind_libunwind_ops*, %struct.unwind_libunwind_ops** @x86_32_unwind_libunwind_ops, align 8
  store %struct.unwind_libunwind_ops* %77, %struct.unwind_libunwind_ops** %10, align 8
  br label %78

78:                                               ; preds = %76, %72
  br label %95

79:                                               ; preds = %62
  %80 = load i8*, i8** %8, align 8
  %81 = call i32 @strcmp(i8* %80, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %87

83:                                               ; preds = %79
  %84 = load i8*, i8** %8, align 8
  %85 = call i32 @strcmp(i8* %84, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %94, label %87

87:                                               ; preds = %83, %79
  %88 = load i32, i32* %9, align 4
  %89 = load i32, i32* @DSO__TYPE_64BIT, align 4
  %90 = icmp eq i32 %88, %89
  br i1 %90, label %91, label %93

91:                                               ; preds = %87
  %92 = load %struct.unwind_libunwind_ops*, %struct.unwind_libunwind_ops** @arm64_unwind_libunwind_ops, align 8
  store %struct.unwind_libunwind_ops* %92, %struct.unwind_libunwind_ops** %10, align 8
  br label %93

93:                                               ; preds = %91, %87
  br label %94

94:                                               ; preds = %93, %83
  br label %95

95:                                               ; preds = %94, %78
  %96 = load %struct.unwind_libunwind_ops*, %struct.unwind_libunwind_ops** %10, align 8
  %97 = icmp ne %struct.unwind_libunwind_ops* %96, null
  br i1 %97, label %101, label %98

98:                                               ; preds = %95
  %99 = load i8*, i8** %8, align 8
  %100 = call i32 @pr_err(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0), i8* %99)
  store i32 0, i32* %4, align 4
  br label %123

101:                                              ; preds = %95
  br label %102

102:                                              ; preds = %101, %49
  %103 = load %struct.map_groups*, %struct.map_groups** %5, align 8
  %104 = load %struct.unwind_libunwind_ops*, %struct.unwind_libunwind_ops** %10, align 8
  %105 = call i32 @unwind__register_ops(%struct.map_groups* %103, %struct.unwind_libunwind_ops* %104)
  %106 = load %struct.map_groups*, %struct.map_groups** %5, align 8
  %107 = getelementptr inbounds %struct.map_groups, %struct.map_groups* %106, i32 0, i32 0
  %108 = load %struct.TYPE_5__*, %struct.TYPE_5__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %108, i32 0, i32 0
  %110 = load i32 (%struct.map_groups*)*, i32 (%struct.map_groups*)** %109, align 8
  %111 = load %struct.map_groups*, %struct.map_groups** %5, align 8
  %112 = call i32 %110(%struct.map_groups* %111)
  store i32 %112, i32* %11, align 4
  %113 = load i32*, i32** %7, align 8
  %114 = icmp ne i32* %113, null
  br i1 %114, label %115, label %121

115:                                              ; preds = %102
  %116 = load i32, i32* %11, align 4
  %117 = icmp ne i32 %116, 0
  %118 = zext i1 %117 to i64
  %119 = select i1 %117, i32 0, i32 1
  %120 = load i32*, i32** %7, align 8
  store i32 %119, i32* %120, align 4
  br label %121

121:                                              ; preds = %115, %102
  %122 = load i32, i32* %11, align 4
  store i32 %122, i32* %4, align 4
  br label %123

123:                                              ; preds = %121, %98, %61, %32, %15
  %124 = load i32, i32* %4, align 4
  ret i32 %124
}

declare dso_local i32 @pr_debug(i8*, i32) #1

declare dso_local i32 @dso__type(%struct.TYPE_7__*, %struct.TYPE_8__*) #1

declare dso_local i8* @perf_env__arch(%struct.TYPE_6__*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @pr_err(i8*, i8*) #1

declare dso_local i32 @unwind__register_ops(%struct.map_groups*, %struct.unwind_libunwind_ops*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
