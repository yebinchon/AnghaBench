; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_probe-finder.c_debuginfo__find_probe_point.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_probe-finder.c_debuginfo__find_probe_point.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.debuginfo = type { i32 }
%struct.perf_probe_point = type { i32, i64, i32*, i32* }

@.str = private unnamed_addr constant [50 x i8] c"Failed to find debug information for address %lx\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @debuginfo__find_probe_point(%struct.debuginfo* %0, i64 %1, %struct.perf_probe_point* %2) #0 {
  %4 = alloca %struct.debuginfo*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.perf_probe_point*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.debuginfo* %0, %struct.debuginfo** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.perf_probe_point* %2, %struct.perf_probe_point** %6, align 8
  store i64 0, i64* %10, align 8
  store i64 0, i64* %11, align 8
  store i8* null, i8** %12, align 8
  store i8* null, i8** %13, align 8
  store i8* null, i8** %14, align 8
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  %19 = load %struct.debuginfo*, %struct.debuginfo** %4, align 8
  %20 = call i64 @debuginfo__get_text_offset(%struct.debuginfo* %19, i64* %11, i32 0)
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %3
  %23 = load i64, i64* %11, align 8
  %24 = load i64, i64* %5, align 8
  %25 = add i64 %24, %23
  store i64 %25, i64* %5, align 8
  br label %26

26:                                               ; preds = %22, %3
  %27 = load %struct.debuginfo*, %struct.debuginfo** %4, align 8
  %28 = getelementptr inbounds %struct.debuginfo, %struct.debuginfo* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i64, i64* %5, align 8
  %31 = call i32 @dwarf_addrdie(i32 %29, i64 %30, i32* %7)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %38, label %33

33:                                               ; preds = %26
  %34 = load i64, i64* %5, align 8
  %35 = call i32 @pr_warning(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i64 %34)
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %18, align 4
  br label %159

38:                                               ; preds = %26
  %39 = load i64, i64* %5, align 8
  %40 = call i32 @cu_find_lineinfo(i32* %7, i64 %39, i8** %12, i32* %17)
  %41 = load i64, i64* %5, align 8
  %42 = call i64 @die_find_realfunc(i32* %7, i64 %41, i32* %8)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %100

44:                                               ; preds = %38
  %45 = call i8* @dwarf_diename(i32* %8)
  store i8* %45, i8** %14, align 8
  store i8* %45, i8** %13, align 8
  %46 = load i8*, i8** %13, align 8
  %47 = icmp ne i8* %46, null
  br i1 %47, label %48, label %54

48:                                               ; preds = %44
  %49 = call i64 @dwarf_entrypc(i32* %8, i64* %11)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %54, label %51

51:                                               ; preds = %48
  %52 = call i64 @dwarf_decl_line(i32* %8, i32* %16)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %51, %48, %44
  store i32 0, i32* %17, align 4
  br label %101

55:                                               ; preds = %51
  %56 = call i8* @dwarf_decl_file(i32* %8)
  store i8* %56, i8** %12, align 8
  %57 = load i64, i64* %5, align 8
  %58 = load i64, i64* %11, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %62

60:                                               ; preds = %55
  %61 = load i32, i32* %16, align 4
  store i32 %61, i32* %17, align 4
  br label %101

62:                                               ; preds = %55
  br label %63

63:                                               ; preds = %88, %62
  %64 = load i64, i64* %5, align 8
  %65 = call i64 @die_find_top_inlinefunc(i32* %8, i64 %64, i32* %9)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %89

67:                                               ; preds = %63
  %68 = call i64 @dwarf_entrypc(i32* %9, i64* %10)
  %69 = icmp eq i64 %68, 0
  br i1 %69, label %70, label %77

70:                                               ; preds = %67
  %71 = load i64, i64* %10, align 8
  %72 = load i64, i64* %5, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %77

74:                                               ; preds = %70
  %75 = call i32 @die_get_call_lineno(i32* %9)
  store i32 %75, i32* %17, align 4
  %76 = call i8* @die_get_call_file(i32* %9)
  store i8* %76, i8** %12, align 8
  br label %89

77:                                               ; preds = %70, %67
  %78 = call i8* @dwarf_diename(i32* %9)
  store i8* %78, i8** %15, align 8
  %79 = load i8*, i8** %15, align 8
  %80 = icmp ne i8* %79, null
  br i1 %80, label %81, label %84

81:                                               ; preds = %77
  %82 = call i64 @dwarf_decl_line(i32* %9, i32* %16)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %81, %77
  br label %89

85:                                               ; preds = %81
  %86 = load i8*, i8** %15, align 8
  store i8* %86, i8** %13, align 8
  %87 = load i32, i32* %9, align 4
  store i32 %87, i32* %8, align 4
  br label %88

88:                                               ; preds = %85
  br label %63

89:                                               ; preds = %84, %74, %63
  %90 = call i8* @dwarf_decl_file(i32* %8)
  store i8* %90, i8** %15, align 8
  %91 = load i8*, i8** %15, align 8
  %92 = icmp ne i8* %91, null
  br i1 %92, label %93, label %98

93:                                               ; preds = %89
  %94 = load i8*, i8** %15, align 8
  %95 = load i8*, i8** %12, align 8
  %96 = call i64 @strcmp(i8* %94, i8* %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %93, %89
  store i32 0, i32* %17, align 4
  br label %99

99:                                               ; preds = %98, %93
  br label %100

100:                                              ; preds = %99, %38
  br label %101

101:                                              ; preds = %100, %60, %54
  %102 = load i32, i32* %17, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %110

104:                                              ; preds = %101
  %105 = load i32, i32* %17, align 4
  %106 = load i32, i32* %16, align 4
  %107 = sub nsw i32 %105, %106
  %108 = load %struct.perf_probe_point*, %struct.perf_probe_point** %6, align 8
  %109 = getelementptr inbounds %struct.perf_probe_point, %struct.perf_probe_point* %108, i32 0, i32 0
  store i32 %107, i32* %109, align 8
  br label %121

110:                                              ; preds = %101
  %111 = load i8*, i8** %14, align 8
  %112 = icmp ne i8* %111, null
  br i1 %112, label %113, label %120

113:                                              ; preds = %110
  %114 = load i64, i64* %5, align 8
  %115 = load i64, i64* %11, align 8
  %116 = sub i64 %114, %115
  %117 = load %struct.perf_probe_point*, %struct.perf_probe_point** %6, align 8
  %118 = getelementptr inbounds %struct.perf_probe_point, %struct.perf_probe_point* %117, i32 0, i32 1
  store i64 %116, i64* %118, align 8
  %119 = load i8*, i8** %14, align 8
  store i8* %119, i8** %13, align 8
  br label %120

120:                                              ; preds = %113, %110
  br label %121

121:                                              ; preds = %120, %104
  %122 = load i8*, i8** %13, align 8
  %123 = icmp ne i8* %122, null
  br i1 %123, label %124, label %138

124:                                              ; preds = %121
  %125 = load i8*, i8** %13, align 8
  %126 = call i8* @strdup(i8* %125)
  %127 = bitcast i8* %126 to i32*
  %128 = load %struct.perf_probe_point*, %struct.perf_probe_point** %6, align 8
  %129 = getelementptr inbounds %struct.perf_probe_point, %struct.perf_probe_point* %128, i32 0, i32 2
  store i32* %127, i32** %129, align 8
  %130 = load %struct.perf_probe_point*, %struct.perf_probe_point** %6, align 8
  %131 = getelementptr inbounds %struct.perf_probe_point, %struct.perf_probe_point* %130, i32 0, i32 2
  %132 = load i32*, i32** %131, align 8
  %133 = icmp eq i32* %132, null
  br i1 %133, label %134, label %137

134:                                              ; preds = %124
  %135 = load i32, i32* @ENOMEM, align 4
  %136 = sub nsw i32 0, %135
  store i32 %136, i32* %18, align 4
  br label %159

137:                                              ; preds = %124
  br label %138

138:                                              ; preds = %137, %121
  %139 = load i8*, i8** %12, align 8
  %140 = icmp ne i8* %139, null
  br i1 %140, label %141, label %158

141:                                              ; preds = %138
  %142 = load i8*, i8** %12, align 8
  %143 = call i8* @strdup(i8* %142)
  %144 = bitcast i8* %143 to i32*
  %145 = load %struct.perf_probe_point*, %struct.perf_probe_point** %6, align 8
  %146 = getelementptr inbounds %struct.perf_probe_point, %struct.perf_probe_point* %145, i32 0, i32 3
  store i32* %144, i32** %146, align 8
  %147 = load %struct.perf_probe_point*, %struct.perf_probe_point** %6, align 8
  %148 = getelementptr inbounds %struct.perf_probe_point, %struct.perf_probe_point* %147, i32 0, i32 3
  %149 = load i32*, i32** %148, align 8
  %150 = icmp eq i32* %149, null
  br i1 %150, label %151, label %157

151:                                              ; preds = %141
  %152 = load %struct.perf_probe_point*, %struct.perf_probe_point** %6, align 8
  %153 = getelementptr inbounds %struct.perf_probe_point, %struct.perf_probe_point* %152, i32 0, i32 2
  %154 = call i32 @zfree(i32** %153)
  %155 = load i32, i32* @ENOMEM, align 4
  %156 = sub nsw i32 0, %155
  store i32 %156, i32* %18, align 4
  br label %159

157:                                              ; preds = %141
  br label %158

158:                                              ; preds = %157, %138
  br label %159

159:                                              ; preds = %158, %151, %134, %33
  %160 = load i32, i32* %18, align 4
  %161 = icmp eq i32 %160, 0
  br i1 %161, label %162, label %169

162:                                              ; preds = %159
  %163 = load i8*, i8** %12, align 8
  %164 = icmp ne i8* %163, null
  br i1 %164, label %168, label %165

165:                                              ; preds = %162
  %166 = load i8*, i8** %13, align 8
  %167 = icmp ne i8* %166, null
  br i1 %167, label %168, label %169

168:                                              ; preds = %165, %162
  store i32 1, i32* %18, align 4
  br label %169

169:                                              ; preds = %168, %165, %159
  %170 = load i32, i32* %18, align 4
  ret i32 %170
}

declare dso_local i64 @debuginfo__get_text_offset(%struct.debuginfo*, i64*, i32) #1

declare dso_local i32 @dwarf_addrdie(i32, i64, i32*) #1

declare dso_local i32 @pr_warning(i8*, i64) #1

declare dso_local i32 @cu_find_lineinfo(i32*, i64, i8**, i32*) #1

declare dso_local i64 @die_find_realfunc(i32*, i64, i32*) #1

declare dso_local i8* @dwarf_diename(i32*) #1

declare dso_local i64 @dwarf_entrypc(i32*, i64*) #1

declare dso_local i64 @dwarf_decl_line(i32*, i32*) #1

declare dso_local i8* @dwarf_decl_file(i32*) #1

declare dso_local i64 @die_find_top_inlinefunc(i32*, i64, i32*) #1

declare dso_local i32 @die_get_call_lineno(i32*) #1

declare dso_local i8* @die_get_call_file(i32*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @zfree(i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
