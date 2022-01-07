; ModuleID = '/home/carl/AnghaBench/linux/scripts/dtc/extr_dtc.c_main.c'
source_filename = "/home/carl/AnghaBench/linux/scripts/dtc/extr_dtc.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dt_info = type { i8*, i64, i32, i32 }

@.str = private unnamed_addr constant [2 x i8] c"-\00", align 1
@DEFAULT_FDT_VERSION = common dso_local global i32 0, align 4
@quiet = common dso_local global i64 0, align 8
@reservenum = common dso_local global i8* null, align 8
@minsize = common dso_local global i8* null, align 8
@padsize = common dso_local global i8* null, align 8
@alignsize = common dso_local global i8* null, align 8
@EOF = common dso_local global i32 0, align 4
@optarg = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [36 x i8] c"Invalid argument \22%d\22 to -a option\0A\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"legacy\00", align 1
@PHANDLE_LEGACY = common dso_local global i32 0, align 4
@phandle_format = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [6 x i8] c"epapr\00", align 1
@PHANDLE_EPAPR = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [5 x i8] c"both\00", align 1
@PHANDLE_BOTH = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [36 x i8] c"Invalid argument \22%s\22 to -H option\0A\00", align 1
@generate_symbols = common dso_local global i32 0, align 4
@auto_label_aliases = common dso_local global i32 0, align 4
@annotate = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [15 x i8] c"unknown option\00", align 1
@optind = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [14 x i8] c"missing files\00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"Can't set both -p and -S\0A\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@depfile = common dso_local global i8* null, align 8
@.str.10 = private unnamed_addr constant [38 x i8] c"Couldn't open dependency file %s: %s\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [4 x i8] c"%s:\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"dts\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"dtb\00", align 1
@.str.14 = private unnamed_addr constant [35 x i8] c"--annotate requires -I dts -O dts\0A\00", align 1
@.str.15 = private unnamed_addr constant [3 x i8] c"fs\00", align 1
@.str.16 = private unnamed_addr constant [27 x i8] c"Unknown input format \22%s\22\0A\00", align 1
@.str.17 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@DTSF_PLUGIN = common dso_local global i32 0, align 4
@generate_fixups = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [8 x i8] c"aliases\00", align 1
@.str.19 = private unnamed_addr constant [12 x i8] c"__symbols__\00", align 1
@.str.20 = private unnamed_addr constant [11 x i8] c"__fixups__\00", align 1
@.str.21 = private unnamed_addr constant [17 x i8] c"__local_fixups__\00", align 1
@stdout = common dso_local global i32* null, align 8
@.str.22 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.23 = private unnamed_addr constant [34 x i8] c"Couldn't open output file %s: %s\0A\00", align 1
@.str.24 = private unnamed_addr constant [5 x i8] c"yaml\00", align 1
@.str.25 = private unnamed_addr constant [46 x i8] c"YAML output format requires dts input format\0A\00", align 1
@.str.26 = private unnamed_addr constant [4 x i8] c"asm\00", align 1
@.str.27 = private unnamed_addr constant [5 x i8] c"null\00", align 1
@.str.28 = private unnamed_addr constant [28 x i8] c"Unknown output format \22%s\22\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.dt_info*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i8* null, i8** %7, align 8
  store i8* null, i8** %8, align 8
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8** %9, align 8
  store i8* null, i8** %10, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32* null, i32** %15, align 8
  %18 = load i32, i32* @DEFAULT_FDT_VERSION, align 4
  store i32 %18, i32* %16, align 4
  store i64 -1, i64* %17, align 8
  store i64 0, i64* @quiet, align 8
  store i8* null, i8** @reservenum, align 8
  store i8* null, i8** @minsize, align 8
  store i8* null, i8** @padsize, align 8
  store i8* null, i8** @alignsize, align 8
  br label %19

19:                                               ; preds = %108, %2
  %20 = call i32 (...) @util_getopt_long()
  store i32 %20, i32* %14, align 4
  %21 = load i32, i32* @EOF, align 4
  %22 = icmp ne i32 %20, %21
  br i1 %22, label %23, label %109

23:                                               ; preds = %19
  %24 = load i32, i32* %14, align 4
  switch i32 %24, label %106 [
    i32 73, label %25
    i32 79, label %27
    i32 111, label %29
    i32 86, label %31
    i32 100, label %35
    i32 82, label %37
    i32 83, label %40
    i32 112, label %43
    i32 97, label %46
    i32 102, label %56
    i32 113, label %57
    i32 98, label %60
    i32 105, label %63
    i32 118, label %66
    i32 72, label %68
    i32 115, label %92
    i32 87, label %93
    i32 69, label %96
    i32 64, label %99
    i32 65, label %100
    i32 84, label %101
    i32 104, label %104
  ]

25:                                               ; preds = %23
  %26 = load i8*, i8** @optarg, align 8
  store i8* %26, i8** %7, align 8
  br label %108

27:                                               ; preds = %23
  %28 = load i8*, i8** @optarg, align 8
  store i8* %28, i8** %8, align 8
  br label %108

29:                                               ; preds = %23
  %30 = load i8*, i8** @optarg, align 8
  store i8* %30, i8** %9, align 8
  br label %108

31:                                               ; preds = %23
  %32 = load i8*, i8** @optarg, align 8
  %33 = call i8* @strtol(i8* %32, i32* null, i32 0)
  %34 = ptrtoint i8* %33 to i32
  store i32 %34, i32* %16, align 4
  br label %108

35:                                               ; preds = %23
  %36 = load i8*, i8** @optarg, align 8
  store i8* %36, i8** %10, align 8
  br label %108

37:                                               ; preds = %23
  %38 = load i8*, i8** @optarg, align 8
  %39 = call i8* @strtol(i8* %38, i32* null, i32 0)
  store i8* %39, i8** @reservenum, align 8
  br label %108

40:                                               ; preds = %23
  %41 = load i8*, i8** @optarg, align 8
  %42 = call i8* @strtol(i8* %41, i32* null, i32 0)
  store i8* %42, i8** @minsize, align 8
  br label %108

43:                                               ; preds = %23
  %44 = load i8*, i8** @optarg, align 8
  %45 = call i8* @strtol(i8* %44, i32* null, i32 0)
  store i8* %45, i8** @padsize, align 8
  br label %108

46:                                               ; preds = %23
  %47 = load i8*, i8** @optarg, align 8
  %48 = call i8* @strtol(i8* %47, i32* null, i32 0)
  store i8* %48, i8** @alignsize, align 8
  %49 = load i8*, i8** @alignsize, align 8
  %50 = call i32 @is_power_of_2(i8* %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %55, label %52

52:                                               ; preds = %46
  %53 = load i8*, i8** @alignsize, align 8
  %54 = call i32 (i8*, ...) @die(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i8* %53)
  br label %55

55:                                               ; preds = %52, %46
  br label %108

56:                                               ; preds = %23
  store i32 1, i32* %11, align 4
  br label %108

57:                                               ; preds = %23
  %58 = load i64, i64* @quiet, align 8
  %59 = add nsw i64 %58, 1
  store i64 %59, i64* @quiet, align 8
  br label %108

60:                                               ; preds = %23
  %61 = load i8*, i8** @optarg, align 8
  %62 = call i64 @strtoll(i8* %61, i32* null, i32 0)
  store i64 %62, i64* %17, align 8
  br label %108

63:                                               ; preds = %23
  %64 = load i8*, i8** @optarg, align 8
  %65 = call i32 @srcfile_add_search_path(i8* %64)
  br label %108

66:                                               ; preds = %23
  %67 = call i32 (...) @util_version()
  br label %68

68:                                               ; preds = %23, %66
  %69 = load i8*, i8** @optarg, align 8
  %70 = call i64 @streq(i8* %69, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %68
  %73 = load i32, i32* @PHANDLE_LEGACY, align 4
  store i32 %73, i32* @phandle_format, align 4
  br label %91

74:                                               ; preds = %68
  %75 = load i8*, i8** @optarg, align 8
  %76 = call i64 @streq(i8* %75, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %74
  %79 = load i32, i32* @PHANDLE_EPAPR, align 4
  store i32 %79, i32* @phandle_format, align 4
  br label %90

80:                                               ; preds = %74
  %81 = load i8*, i8** @optarg, align 8
  %82 = call i64 @streq(i8* %81, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %80
  %85 = load i32, i32* @PHANDLE_BOTH, align 4
  store i32 %85, i32* @phandle_format, align 4
  br label %89

86:                                               ; preds = %80
  %87 = load i8*, i8** @optarg, align 8
  %88 = call i32 (i8*, ...) @die(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0), i8* %87)
  br label %89

89:                                               ; preds = %86, %84
  br label %90

90:                                               ; preds = %89, %78
  br label %91

91:                                               ; preds = %90, %72
  br label %108

92:                                               ; preds = %23
  store i32 1, i32* %12, align 4
  br label %108

93:                                               ; preds = %23
  %94 = load i8*, i8** @optarg, align 8
  %95 = call i32 @parse_checks_option(i32 1, i32 0, i8* %94)
  br label %108

96:                                               ; preds = %23
  %97 = load i8*, i8** @optarg, align 8
  %98 = call i32 @parse_checks_option(i32 0, i32 1, i8* %97)
  br label %108

99:                                               ; preds = %23
  store i32 1, i32* @generate_symbols, align 4
  br label %108

100:                                              ; preds = %23
  store i32 1, i32* @auto_label_aliases, align 4
  br label %108

101:                                              ; preds = %23
  %102 = load i64, i64* @annotate, align 8
  %103 = add nsw i64 %102, 1
  store i64 %103, i64* @annotate, align 8
  br label %108

104:                                              ; preds = %23
  %105 = call i32 @usage(i8* null)
  br label %106

106:                                              ; preds = %23, %104
  %107 = call i32 @usage(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0))
  br label %108

108:                                              ; preds = %106, %101, %100, %99, %96, %93, %92, %91, %63, %60, %57, %56, %55, %43, %40, %37, %35, %31, %29, %27, %25
  br label %19

109:                                              ; preds = %19
  %110 = load i32, i32* %4, align 4
  %111 = load i32, i32* @optind, align 4
  %112 = add nsw i32 %111, 1
  %113 = icmp sgt i32 %110, %112
  br i1 %113, label %114, label %116

114:                                              ; preds = %109
  %115 = call i32 @usage(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0))
  br label %129

116:                                              ; preds = %109
  %117 = load i32, i32* %4, align 4
  %118 = load i32, i32* @optind, align 4
  %119 = add nsw i32 %118, 1
  %120 = icmp slt i32 %117, %119
  br i1 %120, label %121, label %122

121:                                              ; preds = %116
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8** %13, align 8
  br label %128

122:                                              ; preds = %116
  %123 = load i8**, i8*** %5, align 8
  %124 = load i32, i32* @optind, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i8*, i8** %123, i64 %125
  %127 = load i8*, i8** %126, align 8
  store i8* %127, i8** %13, align 8
  br label %128

128:                                              ; preds = %122, %121
  br label %129

129:                                              ; preds = %128, %114
  %130 = load i8*, i8** @minsize, align 8
  %131 = icmp ne i8* %130, null
  br i1 %131, label %132, label %137

132:                                              ; preds = %129
  %133 = load i8*, i8** @padsize, align 8
  %134 = icmp ne i8* %133, null
  br i1 %134, label %135, label %137

135:                                              ; preds = %132
  %136 = call i32 (i8*, ...) @die(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i64 0, i64 0))
  br label %137

137:                                              ; preds = %135, %132, %129
  %138 = load i8*, i8** %10, align 8
  %139 = icmp ne i8* %138, null
  br i1 %139, label %140, label %154

140:                                              ; preds = %137
  %141 = load i8*, i8** %10, align 8
  %142 = call i8* @fopen(i8* %141, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0))
  store i8* %142, i8** @depfile, align 8
  %143 = load i8*, i8** @depfile, align 8
  %144 = icmp ne i8* %143, null
  br i1 %144, label %150, label %145

145:                                              ; preds = %140
  %146 = load i8*, i8** %10, align 8
  %147 = load i32, i32* @errno, align 4
  %148 = call i32 @strerror(i32 %147)
  %149 = call i32 (i8*, ...) @die(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.10, i64 0, i64 0), i8* %146, i32 %148)
  br label %150

150:                                              ; preds = %145, %140
  %151 = load i8*, i8** @depfile, align 8
  %152 = load i8*, i8** %9, align 8
  %153 = call i32 @fprintf(i8* %151, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i8* %152)
  br label %154

154:                                              ; preds = %150, %137
  %155 = load i8*, i8** %7, align 8
  %156 = icmp eq i8* %155, null
  br i1 %156, label %157, label %160

157:                                              ; preds = %154
  %158 = load i8*, i8** %13, align 8
  %159 = call i8* @guess_input_format(i8* %158, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0))
  store i8* %159, i8** %7, align 8
  br label %160

160:                                              ; preds = %157, %154
  %161 = load i8*, i8** %8, align 8
  %162 = icmp eq i8* %161, null
  br i1 %162, label %163, label %176

163:                                              ; preds = %160
  %164 = load i8*, i8** %9, align 8
  %165 = call i8* @guess_type_by_name(i8* %164, i32* null)
  store i8* %165, i8** %8, align 8
  %166 = load i8*, i8** %8, align 8
  %167 = icmp eq i8* %166, null
  br i1 %167, label %168, label %175

168:                                              ; preds = %163
  %169 = load i8*, i8** %7, align 8
  %170 = call i64 @streq(i8* %169, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0))
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %173

172:                                              ; preds = %168
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0), i8** %8, align 8
  br label %174

173:                                              ; preds = %168
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), i8** %8, align 8
  br label %174

174:                                              ; preds = %173, %172
  br label %175

175:                                              ; preds = %174, %163
  br label %176

176:                                              ; preds = %175, %160
  %177 = load i64, i64* @annotate, align 8
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %179, label %189

179:                                              ; preds = %176
  %180 = load i8*, i8** %7, align 8
  %181 = call i64 @streq(i8* %180, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0))
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %183, label %187

183:                                              ; preds = %179
  %184 = load i8*, i8** %8, align 8
  %185 = call i64 @streq(i8* %184, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0))
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %189, label %187

187:                                              ; preds = %183, %179
  %188 = call i32 (i8*, ...) @die(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.14, i64 0, i64 0))
  br label %189

189:                                              ; preds = %187, %183, %176
  %190 = load i8*, i8** %7, align 8
  %191 = call i64 @streq(i8* %190, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0))
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %193, label %196

193:                                              ; preds = %189
  %194 = load i8*, i8** %13, align 8
  %195 = call %struct.dt_info* @dt_from_source(i8* %194)
  store %struct.dt_info* %195, %struct.dt_info** %6, align 8
  br label %215

196:                                              ; preds = %189
  %197 = load i8*, i8** %7, align 8
  %198 = call i64 @streq(i8* %197, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i64 0, i64 0))
  %199 = icmp ne i64 %198, 0
  br i1 %199, label %200, label %203

200:                                              ; preds = %196
  %201 = load i8*, i8** %13, align 8
  %202 = call %struct.dt_info* @dt_from_fs(i8* %201)
  store %struct.dt_info* %202, %struct.dt_info** %6, align 8
  br label %214

203:                                              ; preds = %196
  %204 = load i8*, i8** %7, align 8
  %205 = call i64 @streq(i8* %204, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0))
  %206 = icmp ne i64 %205, 0
  br i1 %206, label %207, label %210

207:                                              ; preds = %203
  %208 = load i8*, i8** %13, align 8
  %209 = call %struct.dt_info* @dt_from_blob(i8* %208)
  store %struct.dt_info* %209, %struct.dt_info** %6, align 8
  br label %213

210:                                              ; preds = %203
  %211 = load i8*, i8** %7, align 8
  %212 = call i32 (i8*, ...) @die(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.16, i64 0, i64 0), i8* %211)
  br label %213

213:                                              ; preds = %210, %207
  br label %214

214:                                              ; preds = %213, %200
  br label %215

215:                                              ; preds = %214, %193
  %216 = load i8*, i8** %9, align 8
  %217 = load %struct.dt_info*, %struct.dt_info** %6, align 8
  %218 = getelementptr inbounds %struct.dt_info, %struct.dt_info* %217, i32 0, i32 0
  store i8* %216, i8** %218, align 8
  %219 = load i8*, i8** @depfile, align 8
  %220 = icmp ne i8* %219, null
  br i1 %220, label %221, label %226

221:                                              ; preds = %215
  %222 = load i8*, i8** @depfile, align 8
  %223 = call i32 @fputc(i8 signext 10, i8* %222)
  %224 = load i8*, i8** @depfile, align 8
  %225 = call i32 @fclose(i8* %224)
  br label %226

226:                                              ; preds = %221, %215
  %227 = load i64, i64* %17, align 8
  %228 = icmp ne i64 %227, -1
  br i1 %228, label %229, label %233

229:                                              ; preds = %226
  %230 = load i64, i64* %17, align 8
  %231 = load %struct.dt_info*, %struct.dt_info** %6, align 8
  %232 = getelementptr inbounds %struct.dt_info, %struct.dt_info* %231, i32 0, i32 1
  store i64 %230, i64* %232, align 8
  br label %233

233:                                              ; preds = %229, %226
  %234 = load %struct.dt_info*, %struct.dt_info** %6, align 8
  %235 = getelementptr inbounds %struct.dt_info, %struct.dt_info* %234, i32 0, i32 3
  %236 = load i32, i32* %235, align 4
  %237 = call i32 @fill_fullpaths(i32 %236, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.17, i64 0, i64 0))
  %238 = load %struct.dt_info*, %struct.dt_info** %6, align 8
  %239 = getelementptr inbounds %struct.dt_info, %struct.dt_info* %238, i32 0, i32 2
  %240 = load i32, i32* %239, align 8
  %241 = load i32, i32* @DTSF_PLUGIN, align 4
  %242 = and i32 %240, %241
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %244, label %245

244:                                              ; preds = %233
  store i32 1, i32* @generate_fixups, align 4
  br label %245

245:                                              ; preds = %244, %233
  %246 = load i32, i32* %11, align 4
  %247 = load %struct.dt_info*, %struct.dt_info** %6, align 8
  %248 = call i32 @process_checks(i32 %246, %struct.dt_info* %247)
  %249 = load i32, i32* @auto_label_aliases, align 4
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %251, label %254

251:                                              ; preds = %245
  %252 = load %struct.dt_info*, %struct.dt_info** %6, align 8
  %253 = call i32 @generate_label_tree(%struct.dt_info* %252, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.18, i64 0, i64 0), i32 0)
  br label %254

254:                                              ; preds = %251, %245
  %255 = load i32, i32* @generate_symbols, align 4
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %257, label %260

257:                                              ; preds = %254
  %258 = load %struct.dt_info*, %struct.dt_info** %6, align 8
  %259 = call i32 @generate_label_tree(%struct.dt_info* %258, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.19, i64 0, i64 0), i32 1)
  br label %260

260:                                              ; preds = %257, %254
  %261 = load i32, i32* @generate_fixups, align 4
  %262 = icmp ne i32 %261, 0
  br i1 %262, label %263, label %268

263:                                              ; preds = %260
  %264 = load %struct.dt_info*, %struct.dt_info** %6, align 8
  %265 = call i32 @generate_fixups_tree(%struct.dt_info* %264, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.20, i64 0, i64 0))
  %266 = load %struct.dt_info*, %struct.dt_info** %6, align 8
  %267 = call i32 @generate_local_fixups_tree(%struct.dt_info* %266, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.21, i64 0, i64 0))
  br label %268

268:                                              ; preds = %263, %260
  %269 = load i32, i32* %12, align 4
  %270 = icmp ne i32 %269, 0
  br i1 %270, label %271, label %274

271:                                              ; preds = %268
  %272 = load %struct.dt_info*, %struct.dt_info** %6, align 8
  %273 = call i32 @sort_tree(%struct.dt_info* %272)
  br label %274

274:                                              ; preds = %271, %268
  %275 = load i8*, i8** %9, align 8
  %276 = call i64 @streq(i8* %275, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %277 = icmp ne i64 %276, 0
  br i1 %277, label %278, label %280

278:                                              ; preds = %274
  %279 = load i32*, i32** @stdout, align 8
  store i32* %279, i32** %15, align 8
  br label %292

280:                                              ; preds = %274
  %281 = load i8*, i8** %9, align 8
  %282 = call i8* @fopen(i8* %281, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.22, i64 0, i64 0))
  %283 = bitcast i8* %282 to i32*
  store i32* %283, i32** %15, align 8
  %284 = load i32*, i32** %15, align 8
  %285 = icmp ne i32* %284, null
  br i1 %285, label %291, label %286

286:                                              ; preds = %280
  %287 = load i8*, i8** %9, align 8
  %288 = load i32, i32* @errno, align 4
  %289 = call i32 @strerror(i32 %288)
  %290 = call i32 (i8*, ...) @die(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.23, i64 0, i64 0), i8* %287, i32 %289)
  br label %291

291:                                              ; preds = %286, %280
  br label %292

292:                                              ; preds = %291, %278
  %293 = load i8*, i8** %8, align 8
  %294 = call i64 @streq(i8* %293, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0))
  %295 = icmp ne i64 %294, 0
  br i1 %295, label %296, label %300

296:                                              ; preds = %292
  %297 = load i32*, i32** %15, align 8
  %298 = load %struct.dt_info*, %struct.dt_info** %6, align 8
  %299 = call i32 @dt_to_source(i32* %297, %struct.dt_info* %298)
  br label %344

300:                                              ; preds = %292
  %301 = load i8*, i8** %8, align 8
  %302 = call i64 @streq(i8* %301, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i64 0, i64 0))
  %303 = icmp ne i64 %302, 0
  br i1 %303, label %304, label %314

304:                                              ; preds = %300
  %305 = load i8*, i8** %7, align 8
  %306 = call i64 @streq(i8* %305, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0))
  %307 = icmp ne i64 %306, 0
  br i1 %307, label %310, label %308

308:                                              ; preds = %304
  %309 = call i32 (i8*, ...) @die(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.25, i64 0, i64 0))
  br label %310

310:                                              ; preds = %308, %304
  %311 = load i32*, i32** %15, align 8
  %312 = load %struct.dt_info*, %struct.dt_info** %6, align 8
  %313 = call i32 @dt_to_yaml(i32* %311, %struct.dt_info* %312)
  br label %343

314:                                              ; preds = %300
  %315 = load i8*, i8** %8, align 8
  %316 = call i64 @streq(i8* %315, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0))
  %317 = icmp ne i64 %316, 0
  br i1 %317, label %318, label %323

318:                                              ; preds = %314
  %319 = load i32*, i32** %15, align 8
  %320 = load %struct.dt_info*, %struct.dt_info** %6, align 8
  %321 = load i32, i32* %16, align 4
  %322 = call i32 @dt_to_blob(i32* %319, %struct.dt_info* %320, i32 %321)
  br label %342

323:                                              ; preds = %314
  %324 = load i8*, i8** %8, align 8
  %325 = call i64 @streq(i8* %324, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.26, i64 0, i64 0))
  %326 = icmp ne i64 %325, 0
  br i1 %326, label %327, label %332

327:                                              ; preds = %323
  %328 = load i32*, i32** %15, align 8
  %329 = load %struct.dt_info*, %struct.dt_info** %6, align 8
  %330 = load i32, i32* %16, align 4
  %331 = call i32 @dt_to_asm(i32* %328, %struct.dt_info* %329, i32 %330)
  br label %341

332:                                              ; preds = %323
  %333 = load i8*, i8** %8, align 8
  %334 = call i64 @streq(i8* %333, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.27, i64 0, i64 0))
  %335 = icmp ne i64 %334, 0
  br i1 %335, label %336, label %337

336:                                              ; preds = %332
  br label %340

337:                                              ; preds = %332
  %338 = load i8*, i8** %8, align 8
  %339 = call i32 (i8*, ...) @die(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.28, i64 0, i64 0), i8* %338)
  br label %340

340:                                              ; preds = %337, %336
  br label %341

341:                                              ; preds = %340, %327
  br label %342

342:                                              ; preds = %341, %318
  br label %343

343:                                              ; preds = %342, %310
  br label %344

344:                                              ; preds = %343, %296
  %345 = call i32 @exit(i32 0) #3
  unreachable
}

declare dso_local i32 @util_getopt_long(...) #1

declare dso_local i8* @strtol(i8*, i32*, i32) #1

declare dso_local i32 @is_power_of_2(i8*) #1

declare dso_local i32 @die(i8*, ...) #1

declare dso_local i64 @strtoll(i8*, i32*, i32) #1

declare dso_local i32 @srcfile_add_search_path(i8*) #1

declare dso_local i32 @util_version(...) #1

declare dso_local i64 @streq(i8*, i8*) #1

declare dso_local i32 @parse_checks_option(i32, i32, i8*) #1

declare dso_local i32 @usage(i8*) #1

declare dso_local i8* @fopen(i8*, i8*) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @fprintf(i8*, i8*, i8*) #1

declare dso_local i8* @guess_input_format(i8*, i8*) #1

declare dso_local i8* @guess_type_by_name(i8*, i32*) #1

declare dso_local %struct.dt_info* @dt_from_source(i8*) #1

declare dso_local %struct.dt_info* @dt_from_fs(i8*) #1

declare dso_local %struct.dt_info* @dt_from_blob(i8*) #1

declare dso_local i32 @fputc(i8 signext, i8*) #1

declare dso_local i32 @fclose(i8*) #1

declare dso_local i32 @fill_fullpaths(i32, i8*) #1

declare dso_local i32 @process_checks(i32, %struct.dt_info*) #1

declare dso_local i32 @generate_label_tree(%struct.dt_info*, i8*, i32) #1

declare dso_local i32 @generate_fixups_tree(%struct.dt_info*, i8*) #1

declare dso_local i32 @generate_local_fixups_tree(%struct.dt_info*, i8*) #1

declare dso_local i32 @sort_tree(%struct.dt_info*) #1

declare dso_local i32 @dt_to_source(i32*, %struct.dt_info*) #1

declare dso_local i32 @dt_to_yaml(i32*, %struct.dt_info*) #1

declare dso_local i32 @dt_to_blob(i32*, %struct.dt_info*, i32) #1

declare dso_local i32 @dt_to_asm(i32*, %struct.dt_info*, i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
