; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_dwarf-aux.c_die_walk_lines.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_dwarf-aux.c_die_walk_lines.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.__line_walk_param = type { i32 (i8*, i32, i32, i8*)*, i8*, i32 }

@DW_TAG_compile_unit = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [34 x i8] c"Failed to get CU from given DIE.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"Failed to get source lines on this CU.\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"Get %zd lines from this CU\0A\00", align 1
@.str.3 = private unnamed_addr constant [55 x i8] c"Failed to get line info. Possible error in debuginfo.\0A\00", align 1
@__die_walk_culines_cb = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @die_walk_lines(i32* %0, i32 (i8*, i32, i32, i8*)* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32 (i8*, i32, i32, i8*)*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca %struct.__line_walk_param, align 8
  store i32* %0, i32** %5, align 8
  store i32 (i8*, i32, i32, i8*)* %1, i32 (i8*, i32, i32, i8*)** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* null, i8** %12, align 8
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %22 = load i32*, i32** %5, align 8
  %23 = call i64 @dwarf_tag(i32* %22)
  %24 = load i64, i64* @DW_TAG_compile_unit, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %33

26:                                               ; preds = %3
  %27 = load i32*, i32** %5, align 8
  %28 = call i32* @dwarf_diecu(i32* %27, i32* %17, i32* null, i32* null)
  store i32* %28, i32** %18, align 8
  %29 = load i32*, i32** %5, align 8
  %30 = call i32 @dwarf_decl_line(i32* %29, i32* %15)
  %31 = load i32*, i32** %5, align 8
  %32 = call i8* @dwarf_decl_file(i32* %31)
  store i8* %32, i8** %12, align 8
  br label %35

33:                                               ; preds = %3
  %34 = load i32*, i32** %5, align 8
  store i32* %34, i32** %18, align 8
  br label %35

35:                                               ; preds = %33, %26
  %36 = load i32*, i32** %18, align 8
  %37 = icmp ne i32* %36, null
  br i1 %37, label %42, label %38

38:                                               ; preds = %35
  %39 = call i32 (i8*, ...) @pr_debug2(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %4, align 4
  br label %139

42:                                               ; preds = %35
  %43 = load i32*, i32** %18, align 8
  %44 = call i64 @dwarf_getsrclines(i32* %43, i32** %8, i64* %19)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %42
  %47 = call i32 (i8*, ...) @pr_debug2(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  %48 = load i32, i32* @ENOENT, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %4, align 4
  br label %139

50:                                               ; preds = %42
  %51 = load i64, i64* %19, align 8
  %52 = call i32 (i8*, ...) @pr_debug2(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i64 %51)
  store i64 0, i64* %20, align 8
  br label %53

53:                                               ; preds = %114, %50
  %54 = load i64, i64* %20, align 8
  %55 = load i64, i64* %19, align 8
  %56 = icmp ult i64 %54, %55
  br i1 %56, label %57, label %117

57:                                               ; preds = %53
  %58 = load i32*, i32** %8, align 8
  %59 = load i64, i64* %20, align 8
  %60 = call i32* @dwarf_onesrcline(i32* %58, i64 %59)
  store i32* %60, i32** %9, align 8
  %61 = load i32*, i32** %9, align 8
  %62 = icmp eq i32* %61, null
  br i1 %62, label %71, label %63

63:                                               ; preds = %57
  %64 = load i32*, i32** %9, align 8
  %65 = call i64 @dwarf_lineno(i32* %64, i32* %13)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %71, label %67

67:                                               ; preds = %63
  %68 = load i32*, i32** %9, align 8
  %69 = call i64 @dwarf_lineaddr(i32* %68, i32* %10)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %67, %63, %57
  %72 = call i32 (i8*, ...) @pr_debug2(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.3, i64 0, i64 0))
  br label %114

73:                                               ; preds = %67
  %74 = load i32*, i32** %5, align 8
  %75 = load i32*, i32** %18, align 8
  %76 = icmp ne i32* %74, %75
  br i1 %76, label %77, label %100

77:                                               ; preds = %73
  %78 = load i32*, i32** %5, align 8
  %79 = load i32, i32* %10, align 4
  %80 = call i32 @dwarf_haspc(i32* %78, i32 %79)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %83, label %82

82:                                               ; preds = %77
  br label %114

83:                                               ; preds = %77
  %84 = load i32*, i32** %5, align 8
  %85 = load i32, i32* %10, align 4
  %86 = call i64 @die_find_inlinefunc(i32* %84, i32 %85, i32* %17)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %99

88:                                               ; preds = %83
  %89 = call i32 @dwarf_decl_line(i32* %17, i32* %16)
  %90 = load i32, i32* %16, align 4
  %91 = load i32, i32* %15, align 4
  %92 = icmp ne i32 %90, %91
  br i1 %92, label %97, label %93

93:                                               ; preds = %88
  %94 = load i8*, i8** %12, align 8
  %95 = call i8* @dwarf_decl_file(i32* %17)
  %96 = icmp ne i8* %94, %95
  br i1 %96, label %97, label %98

97:                                               ; preds = %93, %88
  br label %114

98:                                               ; preds = %93
  br label %99

99:                                               ; preds = %98, %83
  br label %100

100:                                              ; preds = %99, %73
  %101 = load i32*, i32** %9, align 8
  %102 = call i8* @dwarf_linesrc(i32* %101, i32* null, i32* null)
  store i8* %102, i8** %11, align 8
  %103 = load i32 (i8*, i32, i32, i8*)*, i32 (i8*, i32, i32, i8*)** %6, align 8
  %104 = load i8*, i8** %11, align 8
  %105 = load i32, i32* %13, align 4
  %106 = load i32, i32* %10, align 4
  %107 = load i8*, i8** %7, align 8
  %108 = call i32 %103(i8* %104, i32 %105, i32 %106, i8* %107)
  store i32 %108, i32* %14, align 4
  %109 = load i32, i32* %14, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %113

111:                                              ; preds = %100
  %112 = load i32, i32* %14, align 4
  store i32 %112, i32* %4, align 4
  br label %139

113:                                              ; preds = %100
  br label %114

114:                                              ; preds = %113, %97, %82, %71
  %115 = load i64, i64* %20, align 8
  %116 = add i64 %115, 1
  store i64 %116, i64* %20, align 8
  br label %53

117:                                              ; preds = %53
  %118 = load i32*, i32** %5, align 8
  %119 = load i32*, i32** %18, align 8
  %120 = icmp ne i32* %118, %119
  br i1 %120, label %121, label %126

121:                                              ; preds = %117
  %122 = load i32*, i32** %5, align 8
  %123 = load i32 (i8*, i32, i32, i8*)*, i32 (i8*, i32, i32, i8*)** %6, align 8
  %124 = load i8*, i8** %7, align 8
  %125 = call i32 @__die_walk_funclines(i32* %122, i32 0, i32 (i8*, i32, i32, i8*)* %123, i8* %124)
  store i32 %125, i32* %14, align 4
  br label %137

126:                                              ; preds = %117
  %127 = getelementptr inbounds %struct.__line_walk_param, %struct.__line_walk_param* %21, i32 0, i32 0
  %128 = load i32 (i8*, i32, i32, i8*)*, i32 (i8*, i32, i32, i8*)** %6, align 8
  store i32 (i8*, i32, i32, i8*)* %128, i32 (i8*, i32, i32, i8*)** %127, align 8
  %129 = getelementptr inbounds %struct.__line_walk_param, %struct.__line_walk_param* %21, i32 0, i32 1
  %130 = load i8*, i8** %7, align 8
  store i8* %130, i8** %129, align 8
  %131 = getelementptr inbounds %struct.__line_walk_param, %struct.__line_walk_param* %21, i32 0, i32 2
  store i32 0, i32* %131, align 8
  %132 = load i32*, i32** %18, align 8
  %133 = load i32, i32* @__die_walk_culines_cb, align 4
  %134 = call i32 @dwarf_getfuncs(i32* %132, i32 %133, %struct.__line_walk_param* %21, i32 0)
  %135 = getelementptr inbounds %struct.__line_walk_param, %struct.__line_walk_param* %21, i32 0, i32 2
  %136 = load i32, i32* %135, align 8
  store i32 %136, i32* %14, align 4
  br label %137

137:                                              ; preds = %126, %121
  %138 = load i32, i32* %14, align 4
  store i32 %138, i32* %4, align 4
  br label %139

139:                                              ; preds = %137, %111, %46, %38
  %140 = load i32, i32* %4, align 4
  ret i32 %140
}

declare dso_local i64 @dwarf_tag(i32*) #1

declare dso_local i32* @dwarf_diecu(i32*, i32*, i32*, i32*) #1

declare dso_local i32 @dwarf_decl_line(i32*, i32*) #1

declare dso_local i8* @dwarf_decl_file(i32*) #1

declare dso_local i32 @pr_debug2(i8*, ...) #1

declare dso_local i64 @dwarf_getsrclines(i32*, i32**, i64*) #1

declare dso_local i32* @dwarf_onesrcline(i32*, i64) #1

declare dso_local i64 @dwarf_lineno(i32*, i32*) #1

declare dso_local i64 @dwarf_lineaddr(i32*, i32*) #1

declare dso_local i32 @dwarf_haspc(i32*, i32) #1

declare dso_local i64 @die_find_inlinefunc(i32*, i32, i32*) #1

declare dso_local i8* @dwarf_linesrc(i32*, i32*, i32*) #1

declare dso_local i32 @__die_walk_funclines(i32*, i32, i32 (i8*, i32, i32, i8*)*, i8*) #1

declare dso_local i32 @dwarf_getfuncs(i32*, i32, %struct.__line_walk_param*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
