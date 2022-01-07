; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/ui/browsers/extr_scripts.c_list_scripts.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/ui/browsers/extr_scripts.c_list_scripts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evsel = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.script_config = type { i8**, i8**, i8*, i32, i32 }

@SCRIPT_MAX_NO = common dso_local global i32 0, align 4
@SCRIPT_NAMELEN = common dso_local global i32 0, align 4
@SCRIPT_FULLPATH_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Show individual samples\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"Show individual samples with assembler\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"-F +insn --xed\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"Show individual samples with source\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"-F +srcline,+srccode\00", align 1
@scripts_config = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [47 x i8] c"Show samples with custom perf script arguments\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"perf script command\00", align 1
@.str.8 = private unnamed_addr constant [60 x i8] c"Enter perf script command line (without perf script prefix)\00", align 1
@K_ENTER = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [13 x i8] c"%s script %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*, %struct.evsel*)* @list_scripts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @list_scripts(i8* %0, i32* %1, %struct.evsel* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.evsel*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca [256 x i8], align 16
  %19 = alloca i8*, align 8
  %20 = alloca %struct.script_config, align 8
  %21 = alloca i32, align 4
  %22 = alloca [50 x i8], align 16
  %23 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.evsel* %2, %struct.evsel** %7, align 8
  %24 = load i32, i32* @SCRIPT_MAX_NO, align 4
  %25 = zext i32 %24 to i64
  %26 = call i8* @llvm.stacksave()
  store i8* %26, i8** %9, align 8
  %27 = alloca i8*, i64 %25, align 16
  store i64 %25, i64* %10, align 8
  %28 = load i32, i32* @SCRIPT_MAX_NO, align 4
  %29 = zext i32 %28 to i64
  %30 = alloca i8*, i64 %29, align 16
  store i64 %29, i64* %11, align 8
  store i32 0, i32* %15, align 4
  %31 = getelementptr inbounds [256 x i8], [256 x i8]* %18, i64 0, i64 0
  %32 = call i8* @perf_exe(i8* %31, i32 256)
  store i8* %32, i8** %19, align 8
  %33 = getelementptr inbounds %struct.script_config, %struct.script_config* %20, i32 0, i32 0
  store i8** %30, i8*** %33, align 8
  %34 = getelementptr inbounds %struct.script_config, %struct.script_config* %20, i32 0, i32 1
  store i8** %27, i8*** %34, align 8
  %35 = getelementptr inbounds %struct.script_config, %struct.script_config* %20, i32 0, i32 2
  %36 = load i8*, i8** %19, align 8
  store i8* %36, i8** %35, align 8
  %37 = getelementptr inbounds %struct.script_config, %struct.script_config* %20, i32 0, i32 3
  store i32 0, i32* %37, align 8
  %38 = getelementptr inbounds %struct.script_config, %struct.script_config* %20, i32 0, i32 4
  store i32 0, i32* %38, align 4
  %39 = load i8*, i8** %5, align 8
  %40 = getelementptr inbounds i8, i8* %39, i64 0
  store i8 0, i8* %40, align 1
  %41 = load i32, i32* @SCRIPT_MAX_NO, align 4
  %42 = load i32, i32* @SCRIPT_NAMELEN, align 4
  %43 = load i32, i32* @SCRIPT_FULLPATH_LEN, align 4
  %44 = add nsw i32 %42, %43
  %45 = mul nsw i32 %41, %44
  %46 = call i8* @malloc(i32 %45)
  store i8* %46, i8** %8, align 8
  %47 = load i8*, i8** %8, align 8
  %48 = icmp ne i8* %47, null
  br i1 %48, label %50, label %49

49:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  store i32 1, i32* %21, align 4
  br label %179

50:                                               ; preds = %3
  %51 = load %struct.evsel*, %struct.evsel** %7, align 8
  %52 = icmp ne %struct.evsel* %51, null
  br i1 %52, label %53, label %60

53:                                               ; preds = %50
  %54 = getelementptr inbounds %struct.script_config, %struct.script_config* %20, i32 0, i32 4
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.evsel*, %struct.evsel** %7, align 8
  %57 = getelementptr inbounds %struct.evsel, %struct.evsel* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = call i32 @attr_to_script(i32 %55, i32* %58)
  br label %60

60:                                               ; preds = %53, %50
  %61 = call i32 @add_script_option(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %struct.script_config* %20)
  %62 = call i32 @add_script_option(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), %struct.script_config* %20)
  %63 = call i32 @add_script_option(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), %struct.script_config* %20)
  %64 = load i32, i32* @scripts_config, align 4
  %65 = call i32 @perf_config(i32 %64, %struct.script_config* %20)
  %66 = getelementptr inbounds %struct.script_config, %struct.script_config* %20, i32 0, i32 3
  %67 = load i32, i32* %66, align 8
  store i32 %67, i32* %17, align 4
  %68 = call i32 @add_script_option(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %struct.script_config* %20)
  %69 = getelementptr inbounds %struct.script_config, %struct.script_config* %20, i32 0, i32 3
  %70 = load i32, i32* %69, align 8
  store i32 %70, i32* %12, align 4
  %71 = load i32, i32* %12, align 4
  store i32 %71, i32* %16, align 4
  br label %72

72:                                               ; preds = %100, %60
  %73 = load i32, i32* %12, align 4
  %74 = load i32, i32* @SCRIPT_MAX_NO, align 4
  %75 = icmp slt i32 %73, %74
  br i1 %75, label %76, label %103

76:                                               ; preds = %72
  %77 = load i8*, i8** %8, align 8
  %78 = load i32, i32* %12, align 4
  %79 = load i32, i32* %16, align 4
  %80 = sub nsw i32 %78, %79
  %81 = load i32, i32* @SCRIPT_NAMELEN, align 4
  %82 = load i32, i32* @SCRIPT_FULLPATH_LEN, align 4
  %83 = add nsw i32 %81, %82
  %84 = mul nsw i32 %80, %83
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i8, i8* %77, i64 %85
  %87 = load i32, i32* %12, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i8*, i8** %30, i64 %88
  store i8* %86, i8** %89, align 8
  %90 = load i32, i32* %12, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i8*, i8** %30, i64 %91
  %93 = load i8*, i8** %92, align 8
  %94 = load i32, i32* @SCRIPT_NAMELEN, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i8, i8* %93, i64 %95
  %97 = load i32, i32* %12, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i8*, i8** %27, i64 %98
  store i8* %96, i8** %99, align 8
  br label %100

100:                                              ; preds = %76
  %101 = load i32, i32* %12, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %12, align 4
  br label %72

103:                                              ; preds = %72
  %104 = load i32, i32* %16, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i8*, i8** %30, i64 %105
  %107 = load i32, i32* %16, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i8*, i8** %27, i64 %108
  %110 = load i32, i32* @SCRIPT_MAX_NO, align 4
  %111 = load i32, i32* %16, align 4
  %112 = sub nsw i32 %110, %111
  %113 = load i32, i32* @SCRIPT_FULLPATH_LEN, align 4
  %114 = call i32 @find_scripts(i8** %106, i8** %109, i32 %112, i32 %113)
  store i32 %114, i32* %13, align 4
  %115 = load i32, i32* %13, align 4
  %116 = icmp slt i32 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %103
  store i32 0, i32* %13, align 4
  br label %118

118:                                              ; preds = %117, %103
  %119 = load i32, i32* %13, align 4
  %120 = load i32, i32* %16, align 4
  %121 = add nsw i32 %119, %120
  %122 = call i32 @ui__popup_menu(i32 %121, i8** %30)
  store i32 %122, i32* %14, align 4
  %123 = load i32, i32* %14, align 4
  %124 = icmp slt i32 %123, 0
  br i1 %124, label %125, label %126

125:                                              ; preds = %118
  store i32 -1, i32* %15, align 4
  br label %162

126:                                              ; preds = %118
  %127 = load i32, i32* %14, align 4
  %128 = load i32, i32* %17, align 4
  %129 = icmp eq i32 %127, %128
  br i1 %129, label %130, label %142

130:                                              ; preds = %126
  %131 = getelementptr inbounds [50 x i8], [50 x i8]* %22, i64 0, i64 0
  %132 = call i32 @ui_browser__input_window(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.8, i64 0, i64 0), i8* %131, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i32 0)
  store i32 %132, i32* %23, align 4
  %133 = load i32, i32* %23, align 4
  %134 = load i32, i32* @K_ENTER, align 4
  %135 = icmp ne i32 %133, %134
  br i1 %135, label %136, label %137

136:                                              ; preds = %130
  store i32 -1, i32* %15, align 4
  br label %162

137:                                              ; preds = %130
  %138 = load i8*, i8** %5, align 8
  %139 = load i8*, i8** %19, align 8
  %140 = getelementptr inbounds [50 x i8], [50 x i8]* %22, i64 0, i64 0
  %141 = call i32 @sprintf(i8* %138, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0), i8* %139, i8* %140)
  br label %156

142:                                              ; preds = %126
  %143 = load i32, i32* %14, align 4
  %144 = load i32, i32* %13, align 4
  %145 = load i32, i32* %16, align 4
  %146 = add nsw i32 %144, %145
  %147 = icmp slt i32 %143, %146
  br i1 %147, label %148, label %155

148:                                              ; preds = %142
  %149 = load i8*, i8** %5, align 8
  %150 = load i32, i32* %14, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i8*, i8** %27, i64 %151
  %153 = load i8*, i8** %152, align 8
  %154 = call i32 @strcpy(i8* %149, i8* %153)
  br label %155

155:                                              ; preds = %148, %142
  br label %156

156:                                              ; preds = %155, %137
  %157 = load i32, i32* %14, align 4
  %158 = load i32, i32* %16, align 4
  %159 = icmp sge i32 %157, %158
  %160 = zext i1 %159 to i32
  %161 = load i32*, i32** %6, align 8
  store i32 %160, i32* %161, align 4
  br label %162

162:                                              ; preds = %156, %136, %125
  %163 = load i8*, i8** %8, align 8
  %164 = call i32 @free(i8* %163)
  store i32 0, i32* %12, align 4
  br label %165

165:                                              ; preds = %174, %162
  %166 = load i32, i32* %12, align 4
  %167 = load i32, i32* %16, align 4
  %168 = icmp slt i32 %166, %167
  br i1 %168, label %169, label %177

169:                                              ; preds = %165
  %170 = load i32, i32* %12, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds i8*, i8** %27, i64 %171
  %173 = call i32 @zfree(i8** %172)
  br label %174

174:                                              ; preds = %169
  %175 = load i32, i32* %12, align 4
  %176 = add nsw i32 %175, 1
  store i32 %176, i32* %12, align 4
  br label %165

177:                                              ; preds = %165
  %178 = load i32, i32* %15, align 4
  store i32 %178, i32* %4, align 4
  store i32 1, i32* %21, align 4
  br label %179

179:                                              ; preds = %177, %49
  %180 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %180)
  %181 = load i32, i32* %4, align 4
  ret i32 %181
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i8* @perf_exe(i8*, i32) #2

declare dso_local i8* @malloc(i32) #2

declare dso_local i32 @attr_to_script(i32, i32*) #2

declare dso_local i32 @add_script_option(i8*, i8*, %struct.script_config*) #2

declare dso_local i32 @perf_config(i32, %struct.script_config*) #2

declare dso_local i32 @find_scripts(i8**, i8**, i32, i32) #2

declare dso_local i32 @ui__popup_menu(i32, i8**) #2

declare dso_local i32 @ui_browser__input_window(i8*, i8*, i8*, i8*, i32) #2

declare dso_local i32 @sprintf(i8*, i8*, i8*, i8*) #2

declare dso_local i32 @strcpy(i8*, i8*) #2

declare dso_local i32 @free(i8*) #2

declare dso_local i32 @zfree(i8**) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
