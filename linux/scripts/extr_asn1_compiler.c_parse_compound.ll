; ModuleID = '/home/carl/AnghaBench/linux/scripts/extr_asn1_compiler.c_parse_compound.c'
source_filename = "/home/carl/AnghaBench/linux/scripts/extr_asn1_compiler.c_parse_compound.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.element = type { i32, %struct.element* }
%struct.token = type { i64, i32, i8* }

@TOKEN_OPEN_CURLY = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"%s:%d: Expected compound to start with brace not '%s'\0A\00", align 1
@filename = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [23 x i8] c"%s:%d: Empty compound\0A\00", align 1
@TOKEN_ELEMENT_NAME = common dso_local global i64 0, align 8
@ELEMENT_SKIPPABLE = common dso_local global i32 0, align 4
@ELEMENT_CONDITIONAL = common dso_local global i32 0, align 4
@TOKEN_COMMA = common dso_local global i64 0, align 8
@TOKEN_CLOSE_CURLY = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [44 x i8] c"%s:%d: Expected compound closure, got '%s'\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"%s: Unexpectedly hit EOF\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.element* (%struct.token**, %struct.token*, i32)* @parse_compound to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.element* @parse_compound(%struct.token** %0, %struct.token* %1, i32 %2) #0 {
  %4 = alloca %struct.token**, align 8
  %5 = alloca %struct.token*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.element*, align 8
  %8 = alloca %struct.element**, align 8
  %9 = alloca %struct.element*, align 8
  %10 = alloca %struct.token*, align 8
  %11 = alloca %struct.token*, align 8
  store %struct.token** %0, %struct.token*** %4, align 8
  store %struct.token* %1, %struct.token** %5, align 8
  store i32 %2, i32* %6, align 4
  store %struct.element** %7, %struct.element*** %8, align 8
  %12 = load %struct.token**, %struct.token*** %4, align 8
  %13 = load %struct.token*, %struct.token** %12, align 8
  store %struct.token* %13, %struct.token** %10, align 8
  %14 = load %struct.token*, %struct.token** %10, align 8
  %15 = getelementptr inbounds %struct.token, %struct.token* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @TOKEN_OPEN_CURLY, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %30

19:                                               ; preds = %3
  %20 = load i32, i32* @stderr, align 4
  %21 = load i8*, i8** @filename, align 8
  %22 = load %struct.token*, %struct.token** %10, align 8
  %23 = getelementptr inbounds %struct.token, %struct.token* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.token*, %struct.token** %10, align 8
  %26 = getelementptr inbounds %struct.token, %struct.token* %25, i32 0, i32 2
  %27 = load i8*, i8** %26, align 8
  %28 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %20, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i8* %21, i32 %24, i8* %27)
  %29 = call i32 @exit(i32 1) #3
  unreachable

30:                                               ; preds = %3
  %31 = load %struct.token*, %struct.token** %10, align 8
  %32 = getelementptr inbounds %struct.token, %struct.token* %31, i32 1
  store %struct.token* %32, %struct.token** %10, align 8
  %33 = load %struct.token*, %struct.token** %10, align 8
  %34 = load %struct.token*, %struct.token** %5, align 8
  %35 = icmp uge %struct.token* %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %30
  br label %134

37:                                               ; preds = %30
  %38 = load %struct.token*, %struct.token** %10, align 8
  %39 = getelementptr inbounds %struct.token, %struct.token* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @TOKEN_OPEN_CURLY, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %51

43:                                               ; preds = %37
  %44 = load i32, i32* @stderr, align 4
  %45 = load i8*, i8** @filename, align 8
  %46 = load %struct.token*, %struct.token** %10, align 8
  %47 = getelementptr inbounds %struct.token, %struct.token* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %44, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* %45, i32 %48)
  %50 = call i32 @exit(i32 1) #3
  unreachable

51:                                               ; preds = %37
  br label %52

52:                                               ; preds = %104, %51
  store %struct.token* null, %struct.token** %11, align 8
  %53 = load %struct.token*, %struct.token** %10, align 8
  %54 = getelementptr inbounds %struct.token, %struct.token* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @TOKEN_ELEMENT_NAME, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %67

58:                                               ; preds = %52
  %59 = load %struct.token*, %struct.token** %10, align 8
  store %struct.token* %59, %struct.token** %11, align 8
  %60 = load %struct.token*, %struct.token** %10, align 8
  %61 = getelementptr inbounds %struct.token, %struct.token* %60, i32 1
  store %struct.token* %61, %struct.token** %10, align 8
  %62 = load %struct.token*, %struct.token** %10, align 8
  %63 = load %struct.token*, %struct.token** %5, align 8
  %64 = icmp uge %struct.token* %62, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %58
  br label %134

66:                                               ; preds = %58
  br label %67

67:                                               ; preds = %66, %52
  %68 = load %struct.token*, %struct.token** %5, align 8
  %69 = load %struct.token*, %struct.token** %11, align 8
  %70 = call %struct.element* @parse_type(%struct.token** %10, %struct.token* %68, %struct.token* %69)
  store %struct.element* %70, %struct.element** %9, align 8
  %71 = load i32, i32* %6, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %81

73:                                               ; preds = %67
  %74 = load i32, i32* @ELEMENT_SKIPPABLE, align 4
  %75 = load i32, i32* @ELEMENT_CONDITIONAL, align 4
  %76 = or i32 %74, %75
  %77 = load %struct.element*, %struct.element** %9, align 8
  %78 = getelementptr inbounds %struct.element, %struct.element* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = or i32 %79, %76
  store i32 %80, i32* %78, align 8
  br label %81

81:                                               ; preds = %73, %67
  %82 = load %struct.element*, %struct.element** %9, align 8
  %83 = load %struct.element**, %struct.element*** %8, align 8
  store %struct.element* %82, %struct.element** %83, align 8
  %84 = load %struct.element*, %struct.element** %9, align 8
  %85 = getelementptr inbounds %struct.element, %struct.element* %84, i32 0, i32 1
  store %struct.element** %85, %struct.element*** %8, align 8
  %86 = load %struct.token*, %struct.token** %10, align 8
  %87 = load %struct.token*, %struct.token** %5, align 8
  %88 = icmp uge %struct.token* %86, %87
  br i1 %88, label %89, label %90

89:                                               ; preds = %81
  br label %134

90:                                               ; preds = %81
  %91 = load %struct.token*, %struct.token** %10, align 8
  %92 = getelementptr inbounds %struct.token, %struct.token* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @TOKEN_COMMA, align 8
  %95 = icmp ne i64 %93, %94
  br i1 %95, label %96, label %97

96:                                               ; preds = %90
  br label %105

97:                                               ; preds = %90
  %98 = load %struct.token*, %struct.token** %10, align 8
  %99 = getelementptr inbounds %struct.token, %struct.token* %98, i32 1
  store %struct.token* %99, %struct.token** %10, align 8
  %100 = load %struct.token*, %struct.token** %10, align 8
  %101 = load %struct.token*, %struct.token** %5, align 8
  %102 = icmp uge %struct.token* %100, %101
  br i1 %102, label %103, label %104

103:                                              ; preds = %97
  br label %134

104:                                              ; preds = %97
  br label %52

105:                                              ; preds = %96
  %106 = load i32, i32* @ELEMENT_CONDITIONAL, align 4
  %107 = xor i32 %106, -1
  %108 = load %struct.element*, %struct.element** %7, align 8
  %109 = getelementptr inbounds %struct.element, %struct.element* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = and i32 %110, %107
  store i32 %111, i32* %109, align 8
  %112 = load %struct.token*, %struct.token** %10, align 8
  %113 = getelementptr inbounds %struct.token, %struct.token* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* @TOKEN_CLOSE_CURLY, align 8
  %116 = icmp ne i64 %114, %115
  br i1 %116, label %117, label %128

117:                                              ; preds = %105
  %118 = load i32, i32* @stderr, align 4
  %119 = load i8*, i8** @filename, align 8
  %120 = load %struct.token*, %struct.token** %10, align 8
  %121 = getelementptr inbounds %struct.token, %struct.token* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 8
  %123 = load %struct.token*, %struct.token** %10, align 8
  %124 = getelementptr inbounds %struct.token, %struct.token* %123, i32 0, i32 2
  %125 = load i8*, i8** %124, align 8
  %126 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %118, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i8* %119, i32 %122, i8* %125)
  %127 = call i32 @exit(i32 1) #3
  unreachable

128:                                              ; preds = %105
  %129 = load %struct.token*, %struct.token** %10, align 8
  %130 = getelementptr inbounds %struct.token, %struct.token* %129, i32 1
  store %struct.token* %130, %struct.token** %10, align 8
  %131 = load %struct.token*, %struct.token** %10, align 8
  %132 = load %struct.token**, %struct.token*** %4, align 8
  store %struct.token* %131, %struct.token** %132, align 8
  %133 = load %struct.element*, %struct.element** %7, align 8
  ret %struct.element* %133

134:                                              ; preds = %103, %89, %65, %36
  %135 = load i32, i32* @stderr, align 4
  %136 = load i8*, i8** @filename, align 8
  %137 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %135, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i8* %136)
  %138 = call i32 @exit(i32 1) #3
  unreachable
}

declare dso_local i32 @fprintf(i32, i8*, i8*, ...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local %struct.element* @parse_type(%struct.token**, %struct.token*, %struct.token*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
