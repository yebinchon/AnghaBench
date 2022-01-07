; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_probe-finder.c_collect_variables_cb.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_probe-finder.c_collect_variables_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }
%struct.TYPE_4__ = type { i64 }
%struct.available_var_finder = type { i32, %struct.TYPE_3__, i64, %struct.variable_list* }
%struct.TYPE_3__ = type { i32, i32, i32, i32 }
%struct.variable_list = type { i32 }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@DW_TAG_formal_parameter = common dso_local global i32 0, align 4
@DW_TAG_variable = common dso_local global i32 0, align 4
@ERANGE = common dso_local global i32 0, align 4
@probe_conf = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@.str = private unnamed_addr constant [7 x i8] c"[INV]\09\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"[VAL]\09\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"[EXT]\09\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"Add new var: %s\0A\00", align 1
@DIE_FIND_CB_CONTINUE = common dso_local global i32 0, align 4
@DIE_FIND_CB_SIBLING = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [17 x i8] c"Error in strbuf\0A\00", align 1
@DIE_FIND_CB_END = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*)* @collect_variables_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @collect_variables_cb(i32* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.available_var_finder*, align 8
  %7 = alloca %struct.variable_list*, align 8
  %8 = alloca %struct.strbuf, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = bitcast i8* %13 to %struct.available_var_finder*
  store %struct.available_var_finder* %14, %struct.available_var_finder** %6, align 8
  %15 = bitcast %struct.strbuf* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %15, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 4, i1 false)
  %16 = load %struct.available_var_finder*, %struct.available_var_finder** %6, align 8
  %17 = getelementptr inbounds %struct.available_var_finder, %struct.available_var_finder* %16, i32 0, i32 3
  %18 = load %struct.variable_list*, %struct.variable_list** %17, align 8
  %19 = load %struct.available_var_finder*, %struct.available_var_finder** %6, align 8
  %20 = getelementptr inbounds %struct.available_var_finder, %struct.available_var_finder* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = sub nsw i32 %21, 1
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.variable_list, %struct.variable_list* %18, i64 %23
  store %struct.variable_list* %24, %struct.variable_list** %7, align 8
  %25 = load i32*, i32** %4, align 8
  %26 = call i32 @dwarf_tag(i32* %25)
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* @DW_TAG_formal_parameter, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %34, label %30

30:                                               ; preds = %2
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* @DW_TAG_variable, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %124

34:                                               ; preds = %30, %2
  %35 = load i32*, i32** %4, align 8
  %36 = load %struct.available_var_finder*, %struct.available_var_finder** %6, align 8
  %37 = getelementptr inbounds %struct.available_var_finder, %struct.available_var_finder* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.available_var_finder*, %struct.available_var_finder** %6, align 8
  %41 = getelementptr inbounds %struct.available_var_finder, %struct.available_var_finder* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.available_var_finder*, %struct.available_var_finder** %6, align 8
  %45 = getelementptr inbounds %struct.available_var_finder, %struct.available_var_finder* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 1
  %47 = load %struct.available_var_finder*, %struct.available_var_finder** %6, align 8
  %48 = getelementptr inbounds %struct.available_var_finder, %struct.available_var_finder* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @convert_variable_location(i32* %35, i32 %39, i32 %43, i32* %46, i32 %50, i32* null)
  store i32 %51, i32* %10, align 4
  %52 = load i32, i32* %10, align 4
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %59, label %54

54:                                               ; preds = %34
  %55 = load i32, i32* %10, align 4
  %56 = load i32, i32* @ERANGE, align 4
  %57 = sub nsw i32 0, %56
  %58 = icmp eq i32 %55, %57
  br i1 %58, label %59, label %123

59:                                               ; preds = %54, %34
  %60 = load %struct.available_var_finder*, %struct.available_var_finder** %6, align 8
  %61 = getelementptr inbounds %struct.available_var_finder, %struct.available_var_finder* %60, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  %64 = xor i1 %63, true
  %65 = zext i1 %64 to i32
  store i32 %65, i32* %12, align 4
  %66 = call i64 @strbuf_init(%struct.strbuf* %8, i32 64)
  %67 = icmp slt i64 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %59
  br label %141

69:                                               ; preds = %59
  %70 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @probe_conf, i32 0, i32 0), align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %88

72:                                               ; preds = %69
  %73 = load i32, i32* %12, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %81, label %75

75:                                               ; preds = %72
  %76 = load i32, i32* %10, align 4
  %77 = icmp ne i32 %76, 0
  %78 = zext i1 %77 to i64
  %79 = select i1 %77, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0)
  %80 = call i32 @strbuf_add(%struct.strbuf* %8, i8* %79, i32 6)
  store i32 %80, i32* %11, align 4
  br label %83

81:                                               ; preds = %72
  %82 = call i32 @strbuf_add(%struct.strbuf* %8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 6)
  store i32 %82, i32* %11, align 4
  br label %83

83:                                               ; preds = %81, %75
  %84 = load i32, i32* %11, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %83
  br label %141

87:                                               ; preds = %83
  br label %88

88:                                               ; preds = %87, %69
  %89 = load i32*, i32** %4, align 8
  %90 = call i32 @die_get_varname(i32* %89, %struct.strbuf* %8)
  store i32 %90, i32* %11, align 4
  %91 = load i32, i32* %11, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %109, label %93

93:                                               ; preds = %88
  %94 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @probe_conf, i32 0, i32 0), align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %109

96:                                               ; preds = %93
  %97 = load i32, i32* %12, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %109, label %99

99:                                               ; preds = %96
  %100 = call i64 @strbuf_addch(%struct.strbuf* %8, i8 signext 9)
  %101 = icmp slt i64 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %99
  br label %141

103:                                              ; preds = %99
  %104 = load %struct.available_var_finder*, %struct.available_var_finder** %6, align 8
  %105 = getelementptr inbounds %struct.available_var_finder, %struct.available_var_finder* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 1
  %107 = load i32*, i32** %4, align 8
  %108 = call i32 @die_get_var_range(i32* %106, i32* %107, %struct.strbuf* %8)
  store i32 %108, i32* %11, align 4
  br label %109

109:                                              ; preds = %103, %96, %93, %88
  %110 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %8, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i32 %111)
  %113 = load i32, i32* %11, align 4
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %115, label %121

115:                                              ; preds = %109
  %116 = load %struct.variable_list*, %struct.variable_list** %7, align 8
  %117 = getelementptr inbounds %struct.variable_list, %struct.variable_list* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @strbuf_detach(%struct.strbuf* %8, i32* null)
  %120 = call i32 @strlist__add(i32 %118, i32 %119)
  br label %121

121:                                              ; preds = %115, %109
  %122 = call i32 @strbuf_release(%struct.strbuf* %8)
  br label %123

123:                                              ; preds = %121, %54
  br label %124

124:                                              ; preds = %123, %30
  %125 = load %struct.available_var_finder*, %struct.available_var_finder** %6, align 8
  %126 = getelementptr inbounds %struct.available_var_finder, %struct.available_var_finder* %125, i32 0, i32 2
  %127 = load i64, i64* %126, align 8
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %139

129:                                              ; preds = %124
  %130 = load i32*, i32** %4, align 8
  %131 = load %struct.available_var_finder*, %struct.available_var_finder** %6, align 8
  %132 = getelementptr inbounds %struct.available_var_finder, %struct.available_var_finder* %131, i32 0, i32 1
  %133 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = call i64 @dwarf_haspc(i32* %130, i32 %134)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %139

137:                                              ; preds = %129
  %138 = load i32, i32* @DIE_FIND_CB_CONTINUE, align 4
  store i32 %138, i32* %3, align 4
  br label %145

139:                                              ; preds = %129, %124
  %140 = load i32, i32* @DIE_FIND_CB_SIBLING, align 4
  store i32 %140, i32* %3, align 4
  br label %145

141:                                              ; preds = %102, %86, %68
  %142 = call i32 @strbuf_release(%struct.strbuf* %8)
  %143 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0))
  %144 = load i32, i32* @DIE_FIND_CB_END, align 4
  store i32 %144, i32* %3, align 4
  br label %145

145:                                              ; preds = %141, %139, %137
  %146 = load i32, i32* %3, align 4
  ret i32 %146
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @dwarf_tag(i32*) #2

declare dso_local i32 @convert_variable_location(i32*, i32, i32, i32*, i32, i32*) #2

declare dso_local i64 @strbuf_init(%struct.strbuf*, i32) #2

declare dso_local i32 @strbuf_add(%struct.strbuf*, i8*, i32) #2

declare dso_local i32 @die_get_varname(i32*, %struct.strbuf*) #2

declare dso_local i64 @strbuf_addch(%struct.strbuf*, i8 signext) #2

declare dso_local i32 @die_get_var_range(i32*, i32*, %struct.strbuf*) #2

declare dso_local i32 @pr_debug(i8*, ...) #2

declare dso_local i32 @strlist__add(i32, i32) #2

declare dso_local i32 @strbuf_detach(%struct.strbuf*, i32*) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

declare dso_local i64 @dwarf_haspc(i32*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
