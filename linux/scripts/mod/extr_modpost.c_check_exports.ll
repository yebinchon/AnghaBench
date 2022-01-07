; ModuleID = '/home/carl/AnghaBench/linux/scripts/mod/extr_modpost.c_check_exports.c'
source_filename = "/home/carl/AnghaBench/linux/scripts/mod/extr_modpost.c_check_exports.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.module = type { i8*, i32, i32, %struct.symbol* }
%struct.symbol = type { i32, i32, i32, i32, %struct.module*, %struct.symbol* }

@have_vmlinux = common dso_local global i64 0, align 8
@warn_unresolved = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [25 x i8] c"\22%s\22 [%s.ko] undefined!\0A\00", align 1
@write_namespace_deps = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [69 x i8] c"module %s uses symbol %s from namespace %s, but does not import it.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.module*)* @check_exports to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_exports(%struct.module* %0) #0 {
  %2 = alloca %struct.module*, align 8
  %3 = alloca %struct.symbol*, align 8
  %4 = alloca %struct.symbol*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store %struct.module* %0, %struct.module** %2, align 8
  store i32 0, i32* %5, align 4
  %7 = load %struct.module*, %struct.module** %2, align 8
  %8 = getelementptr inbounds %struct.module, %struct.module* %7, i32 0, i32 3
  %9 = load %struct.symbol*, %struct.symbol** %8, align 8
  store %struct.symbol* %9, %struct.symbol** %3, align 8
  br label %10

10:                                               ; preds = %127, %1
  %11 = load %struct.symbol*, %struct.symbol** %3, align 8
  %12 = icmp ne %struct.symbol* %11, null
  br i1 %12, label %13, label %131

13:                                               ; preds = %10
  %14 = load %struct.symbol*, %struct.symbol** %3, align 8
  %15 = getelementptr inbounds %struct.symbol, %struct.symbol* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = call %struct.symbol* @find_symbol(i32 %16)
  store %struct.symbol* %17, %struct.symbol** %4, align 8
  %18 = load %struct.symbol*, %struct.symbol** %4, align 8
  %19 = icmp ne %struct.symbol* %18, null
  br i1 %19, label %20, label %26

20:                                               ; preds = %13
  %21 = load %struct.symbol*, %struct.symbol** %4, align 8
  %22 = getelementptr inbounds %struct.symbol, %struct.symbol* %21, i32 0, i32 4
  %23 = load %struct.module*, %struct.module** %22, align 8
  %24 = load %struct.module*, %struct.module** %2, align 8
  %25 = icmp eq %struct.module* %23, %24
  br i1 %25, label %26, label %57

26:                                               ; preds = %20, %13
  %27 = load i64, i64* @have_vmlinux, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %56

29:                                               ; preds = %26
  %30 = load %struct.symbol*, %struct.symbol** %3, align 8
  %31 = getelementptr inbounds %struct.symbol, %struct.symbol* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %56, label %34

34:                                               ; preds = %29
  %35 = load i64, i64* @warn_unresolved, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %47

37:                                               ; preds = %34
  %38 = load %struct.symbol*, %struct.symbol** %3, align 8
  %39 = getelementptr inbounds %struct.symbol, %struct.symbol* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = sext i32 %40 to i64
  %42 = inttoptr i64 %41 to i8*
  %43 = load %struct.module*, %struct.module** %2, align 8
  %44 = getelementptr inbounds %struct.module, %struct.module* %43, i32 0, i32 0
  %45 = load i8*, i8** %44, align 8
  %46 = call i32 (i8*, i8*, i8*, ...) @warn(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8* %42, i8* %45)
  br label %55

47:                                               ; preds = %34
  %48 = load %struct.symbol*, %struct.symbol** %3, align 8
  %49 = getelementptr inbounds %struct.symbol, %struct.symbol* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.module*, %struct.module** %2, align 8
  %52 = getelementptr inbounds %struct.module, %struct.module* %51, i32 0, i32 0
  %53 = load i8*, i8** %52, align 8
  %54 = call i32 @merror(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %50, i8* %53)
  store i32 1, i32* %5, align 4
  br label %55

55:                                               ; preds = %47, %37
  br label %56

56:                                               ; preds = %55, %29, %26
  br label %127

57:                                               ; preds = %20
  %58 = load %struct.module*, %struct.module** %2, align 8
  %59 = getelementptr inbounds %struct.module, %struct.module* %58, i32 0, i32 0
  %60 = load i8*, i8** %59, align 8
  %61 = call i8* @strrchr(i8* %60, i8 signext 47)
  store i8* %61, i8** %6, align 8
  %62 = load i8*, i8** %6, align 8
  %63 = icmp ne i8* %62, null
  br i1 %63, label %64, label %67

64:                                               ; preds = %57
  %65 = load i8*, i8** %6, align 8
  %66 = getelementptr inbounds i8, i8* %65, i32 1
  store i8* %66, i8** %6, align 8
  br label %71

67:                                               ; preds = %57
  %68 = load %struct.module*, %struct.module** %2, align 8
  %69 = getelementptr inbounds %struct.module, %struct.module* %68, i32 0, i32 0
  %70 = load i8*, i8** %69, align 8
  store i8* %70, i8** %6, align 8
  br label %71

71:                                               ; preds = %67, %64
  %72 = load %struct.symbol*, %struct.symbol** %4, align 8
  %73 = getelementptr inbounds %struct.symbol, %struct.symbol* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %104

76:                                               ; preds = %71
  %77 = load %struct.module*, %struct.module** %2, align 8
  %78 = getelementptr inbounds %struct.module, %struct.module* %77, i32 0, i32 2
  %79 = load %struct.symbol*, %struct.symbol** %4, align 8
  %80 = getelementptr inbounds %struct.symbol, %struct.symbol* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @add_namespace(i32* %78, i32 %81)
  %83 = load i32, i32* @write_namespace_deps, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %103, label %85

85:                                               ; preds = %76
  %86 = load %struct.module*, %struct.module** %2, align 8
  %87 = load %struct.symbol*, %struct.symbol** %4, align 8
  %88 = getelementptr inbounds %struct.symbol, %struct.symbol* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = call i32 @module_imports_namespace(%struct.module* %86, i32 %89)
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %103, label %92

92:                                               ; preds = %85
  %93 = load i8*, i8** %6, align 8
  %94 = load %struct.symbol*, %struct.symbol** %4, align 8
  %95 = getelementptr inbounds %struct.symbol, %struct.symbol* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = sext i32 %96 to i64
  %98 = inttoptr i64 %97 to i8*
  %99 = load %struct.symbol*, %struct.symbol** %4, align 8
  %100 = getelementptr inbounds %struct.symbol, %struct.symbol* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 8
  %102 = call i32 (i8*, i8*, i8*, ...) @warn(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.1, i64 0, i64 0), i8* %93, i8* %98, i32 %101)
  br label %103

103:                                              ; preds = %92, %85, %76
  br label %104

104:                                              ; preds = %103, %71
  %105 = load %struct.module*, %struct.module** %2, align 8
  %106 = getelementptr inbounds %struct.module, %struct.module* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 8
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %118, label %109

109:                                              ; preds = %104
  %110 = load %struct.symbol*, %struct.symbol** %4, align 8
  %111 = getelementptr inbounds %struct.symbol, %struct.symbol* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = load i8*, i8** %6, align 8
  %114 = load %struct.symbol*, %struct.symbol** %4, align 8
  %115 = getelementptr inbounds %struct.symbol, %struct.symbol* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = call i32 @check_for_gpl_usage(i32 %112, i8* %113, i32 %116)
  br label %118

118:                                              ; preds = %109, %104
  %119 = load %struct.symbol*, %struct.symbol** %4, align 8
  %120 = getelementptr inbounds %struct.symbol, %struct.symbol* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = load i8*, i8** %6, align 8
  %123 = load %struct.symbol*, %struct.symbol** %4, align 8
  %124 = getelementptr inbounds %struct.symbol, %struct.symbol* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = call i32 @check_for_unused(i32 %121, i8* %122, i32 %125)
  br label %127

127:                                              ; preds = %118, %56
  %128 = load %struct.symbol*, %struct.symbol** %3, align 8
  %129 = getelementptr inbounds %struct.symbol, %struct.symbol* %128, i32 0, i32 5
  %130 = load %struct.symbol*, %struct.symbol** %129, align 8
  store %struct.symbol* %130, %struct.symbol** %3, align 8
  br label %10

131:                                              ; preds = %10
  %132 = load i32, i32* %5, align 4
  ret i32 %132
}

declare dso_local %struct.symbol* @find_symbol(i32) #1

declare dso_local i32 @warn(i8*, i8*, i8*, ...) #1

declare dso_local i32 @merror(i8*, i32, i8*) #1

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i32 @add_namespace(i32*, i32) #1

declare dso_local i32 @module_imports_namespace(%struct.module*, i32) #1

declare dso_local i32 @check_for_gpl_usage(i32, i8*, i32) #1

declare dso_local i32 @check_for_unused(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
