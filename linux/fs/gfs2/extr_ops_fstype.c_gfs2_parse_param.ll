; ModuleID = '/home/carl/AnghaBench/linux/fs/gfs2/extr_ops_fstype.c_gfs2_parse_param.c'
source_filename = "/home/carl/AnghaBench/linux/fs/gfs2/extr_ops_fstype.c_gfs2_parse_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fs_context = type { %struct.gfs2_args* }
%struct.gfs2_args = type { i32, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.fs_parameter = type { i32, i32 }
%struct.fs_parse_result = type { i64, i32, i32, i32 }

@gfs2_fs_parameters = common dso_local global i32 0, align 4
@GFS2_LOCKNAME_LEN = common dso_local global i32 0, align 4
@GFS2_ERRORS_PANIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [58 x i8] c"gfs2: -o debug and -o errors=panic are mutually exclusive\00", align 1
@GFS2_QUOTA_OFF = common dso_local global i32 0, align 4
@opt_quota_values = common dso_local global i32* null, align 8
@GFS2_QUOTA_ON = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [63 x i8] c"gfs2: commit mount option requires a positive numeric argument\00", align 1
@.str.2 = private unnamed_addr constant [75 x i8] c"gfs2: statfs_quantum mount option requires a non-negative numeric argument\00", align 1
@.str.3 = private unnamed_addr constant [70 x i8] c"gfs2: quota_quantum mount option requires a positive numeric argument\00", align 1
@.str.4 = private unnamed_addr constant [80 x i8] c"gfs2: statfs_percent mount option requires a numeric argument between 0 and 100\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"gfs2: invalid mount option: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fs_context*, %struct.fs_parameter*)* @gfs2_parse_param to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gfs2_parse_param(%struct.fs_context* %0, %struct.fs_parameter* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fs_context*, align 8
  %5 = alloca %struct.fs_parameter*, align 8
  %6 = alloca %struct.gfs2_args*, align 8
  %7 = alloca %struct.fs_parse_result, align 8
  %8 = alloca i32, align 4
  store %struct.fs_context* %0, %struct.fs_context** %4, align 8
  store %struct.fs_parameter* %1, %struct.fs_parameter** %5, align 8
  %9 = load %struct.fs_context*, %struct.fs_context** %4, align 8
  %10 = getelementptr inbounds %struct.fs_context, %struct.fs_context* %9, i32 0, i32 0
  %11 = load %struct.gfs2_args*, %struct.gfs2_args** %10, align 8
  store %struct.gfs2_args* %11, %struct.gfs2_args** %6, align 8
  %12 = load %struct.fs_context*, %struct.fs_context** %4, align 8
  %13 = load %struct.fs_parameter*, %struct.fs_parameter** %5, align 8
  %14 = call i32 @fs_parse(%struct.fs_context* %12, i32* @gfs2_fs_parameters, %struct.fs_parameter* %13, %struct.fs_parse_result* %7)
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %8, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i32, i32* %8, align 4
  store i32 %18, i32* %3, align 4
  br label %217

19:                                               ; preds = %2
  %20 = load i32, i32* %8, align 4
  switch i32 %20, label %210 [
    i32 138, label %21
    i32 137, label %30
    i32 143, label %39
    i32 132, label %48
    i32 142, label %51
    i32 140, label %52
    i32 141, label %55
    i32 146, label %56
    i32 128, label %74
    i32 150, label %75
    i32 135, label %80
    i32 129, label %106
    i32 147, label %111
    i32 136, label %116
    i32 145, label %119
    i32 148, label %124
    i32 130, label %136
    i32 134, label %148
    i32 131, label %160
    i32 144, label %177
    i32 149, label %195
    i32 133, label %200
    i32 139, label %205
  ]

21:                                               ; preds = %19
  %22 = load %struct.gfs2_args*, %struct.gfs2_args** %6, align 8
  %23 = getelementptr inbounds %struct.gfs2_args, %struct.gfs2_args* %22, i32 0, i32 19
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.fs_parameter*, %struct.fs_parameter** %5, align 8
  %26 = getelementptr inbounds %struct.fs_parameter, %struct.fs_parameter* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @GFS2_LOCKNAME_LEN, align 4
  %29 = call i32 @strlcpy(i32 %24, i32 %27, i32 %28)
  br label %216

30:                                               ; preds = %19
  %31 = load %struct.gfs2_args*, %struct.gfs2_args** %6, align 8
  %32 = getelementptr inbounds %struct.gfs2_args, %struct.gfs2_args* %31, i32 0, i32 18
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.fs_parameter*, %struct.fs_parameter** %5, align 8
  %35 = getelementptr inbounds %struct.fs_parameter, %struct.fs_parameter* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @GFS2_LOCKNAME_LEN, align 4
  %38 = call i32 @strlcpy(i32 %33, i32 %36, i32 %37)
  br label %216

39:                                               ; preds = %19
  %40 = load %struct.gfs2_args*, %struct.gfs2_args** %6, align 8
  %41 = getelementptr inbounds %struct.gfs2_args, %struct.gfs2_args* %40, i32 0, i32 17
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.fs_parameter*, %struct.fs_parameter** %5, align 8
  %44 = getelementptr inbounds %struct.fs_parameter, %struct.fs_parameter* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @GFS2_LOCKNAME_LEN, align 4
  %47 = call i32 @strlcpy(i32 %42, i32 %45, i32 %46)
  br label %216

48:                                               ; preds = %19
  %49 = load %struct.gfs2_args*, %struct.gfs2_args** %6, align 8
  %50 = getelementptr inbounds %struct.gfs2_args, %struct.gfs2_args* %49, i32 0, i32 0
  store i32 1, i32* %50, align 8
  br label %216

51:                                               ; preds = %19
  br label %216

52:                                               ; preds = %19
  %53 = load %struct.gfs2_args*, %struct.gfs2_args** %6, align 8
  %54 = getelementptr inbounds %struct.gfs2_args, %struct.gfs2_args* %53, i32 0, i32 1
  store i32 1, i32* %54, align 4
  br label %216

55:                                               ; preds = %19
  br label %216

56:                                               ; preds = %19
  %57 = getelementptr inbounds %struct.fs_parse_result, %struct.fs_parse_result* %7, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %69

60:                                               ; preds = %56
  %61 = load %struct.gfs2_args*, %struct.gfs2_args** %6, align 8
  %62 = getelementptr inbounds %struct.gfs2_args, %struct.gfs2_args* %61, i32 0, i32 10
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @GFS2_ERRORS_PANIC, align 4
  %65 = icmp eq i32 %63, %64
  br i1 %65, label %66, label %69

66:                                               ; preds = %60
  %67 = load %struct.fs_context*, %struct.fs_context** %4, align 8
  %68 = call i32 (%struct.fs_context*, i8*, ...) @invalf(%struct.fs_context* %67, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0))
  store i32 %68, i32* %3, align 4
  br label %217

69:                                               ; preds = %60, %56
  %70 = getelementptr inbounds %struct.fs_parse_result, %struct.fs_parse_result* %7, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.gfs2_args*, %struct.gfs2_args** %6, align 8
  %73 = getelementptr inbounds %struct.gfs2_args, %struct.gfs2_args* %72, i32 0, i32 11
  store i32 %71, i32* %73, align 4
  br label %216

74:                                               ; preds = %19
  br label %216

75:                                               ; preds = %19
  %76 = getelementptr inbounds %struct.fs_parse_result, %struct.fs_parse_result* %7, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.gfs2_args*, %struct.gfs2_args** %6, align 8
  %79 = getelementptr inbounds %struct.gfs2_args, %struct.gfs2_args* %78, i32 0, i32 16
  store i32 %77, i32* %79, align 8
  br label %216

80:                                               ; preds = %19
  %81 = getelementptr inbounds %struct.fs_parse_result, %struct.fs_parse_result* %7, i32 0, i32 3
  %82 = load i32, i32* %81, align 8
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %80
  %85 = load i32, i32* @GFS2_QUOTA_OFF, align 4
  %86 = load %struct.gfs2_args*, %struct.gfs2_args** %6, align 8
  %87 = getelementptr inbounds %struct.gfs2_args, %struct.gfs2_args* %86, i32 0, i32 15
  store i32 %85, i32* %87, align 4
  br label %105

88:                                               ; preds = %80
  %89 = getelementptr inbounds %struct.fs_parse_result, %struct.fs_parse_result* %7, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = icmp ugt i64 %90, 0
  br i1 %91, label %92, label %100

92:                                               ; preds = %88
  %93 = load i32*, i32** @opt_quota_values, align 8
  %94 = getelementptr inbounds %struct.fs_parse_result, %struct.fs_parse_result* %7, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = getelementptr inbounds i32, i32* %93, i64 %95
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.gfs2_args*, %struct.gfs2_args** %6, align 8
  %99 = getelementptr inbounds %struct.gfs2_args, %struct.gfs2_args* %98, i32 0, i32 15
  store i32 %97, i32* %99, align 4
  br label %104

100:                                              ; preds = %88
  %101 = load i32, i32* @GFS2_QUOTA_ON, align 4
  %102 = load %struct.gfs2_args*, %struct.gfs2_args** %6, align 8
  %103 = getelementptr inbounds %struct.gfs2_args, %struct.gfs2_args* %102, i32 0, i32 15
  store i32 %101, i32* %103, align 4
  br label %104

104:                                              ; preds = %100, %92
  br label %105

105:                                              ; preds = %104, %84
  br label %216

106:                                              ; preds = %19
  %107 = getelementptr inbounds %struct.fs_parse_result, %struct.fs_parse_result* %7, i32 0, i32 1
  %108 = load i32, i32* %107, align 8
  %109 = load %struct.gfs2_args*, %struct.gfs2_args** %6, align 8
  %110 = getelementptr inbounds %struct.gfs2_args, %struct.gfs2_args* %109, i32 0, i32 14
  store i32 %108, i32* %110, align 8
  br label %216

111:                                              ; preds = %19
  %112 = getelementptr inbounds %struct.fs_parse_result, %struct.fs_parse_result* %7, i32 0, i32 2
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.gfs2_args*, %struct.gfs2_args** %6, align 8
  %115 = getelementptr inbounds %struct.gfs2_args, %struct.gfs2_args* %114, i32 0, i32 13
  store i32 %113, i32* %115, align 4
  br label %216

116:                                              ; preds = %19
  %117 = load %struct.gfs2_args*, %struct.gfs2_args** %6, align 8
  %118 = getelementptr inbounds %struct.gfs2_args, %struct.gfs2_args* %117, i32 0, i32 2
  store i32 1, i32* %118, align 8
  br label %216

119:                                              ; preds = %19
  %120 = getelementptr inbounds %struct.fs_parse_result, %struct.fs_parse_result* %7, i32 0, i32 1
  %121 = load i32, i32* %120, align 8
  %122 = load %struct.gfs2_args*, %struct.gfs2_args** %6, align 8
  %123 = getelementptr inbounds %struct.gfs2_args, %struct.gfs2_args* %122, i32 0, i32 12
  store i32 %121, i32* %123, align 8
  br label %216

124:                                              ; preds = %19
  %125 = getelementptr inbounds %struct.fs_parse_result, %struct.fs_parse_result* %7, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = icmp ule i64 %126, 0
  br i1 %127, label %128, label %131

128:                                              ; preds = %124
  %129 = load %struct.fs_context*, %struct.fs_context** %4, align 8
  %130 = call i32 (%struct.fs_context*, i8*, ...) @invalf(%struct.fs_context* %129, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.1, i64 0, i64 0))
  store i32 %130, i32* %3, align 4
  br label %217

131:                                              ; preds = %124
  %132 = getelementptr inbounds %struct.fs_parse_result, %struct.fs_parse_result* %7, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = load %struct.gfs2_args*, %struct.gfs2_args** %6, align 8
  %135 = getelementptr inbounds %struct.gfs2_args, %struct.gfs2_args* %134, i32 0, i32 3
  store i64 %133, i64* %135, align 8
  br label %216

136:                                              ; preds = %19
  %137 = getelementptr inbounds %struct.fs_parse_result, %struct.fs_parse_result* %7, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = icmp ult i64 %138, 0
  br i1 %139, label %140, label %143

140:                                              ; preds = %136
  %141 = load %struct.fs_context*, %struct.fs_context** %4, align 8
  %142 = call i32 (%struct.fs_context*, i8*, ...) @invalf(%struct.fs_context* %141, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.2, i64 0, i64 0))
  store i32 %142, i32* %3, align 4
  br label %217

143:                                              ; preds = %136
  %144 = getelementptr inbounds %struct.fs_parse_result, %struct.fs_parse_result* %7, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = load %struct.gfs2_args*, %struct.gfs2_args** %6, align 8
  %147 = getelementptr inbounds %struct.gfs2_args, %struct.gfs2_args* %146, i32 0, i32 4
  store i64 %145, i64* %147, align 8
  br label %216

148:                                              ; preds = %19
  %149 = getelementptr inbounds %struct.fs_parse_result, %struct.fs_parse_result* %7, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = icmp ule i64 %150, 0
  br i1 %151, label %152, label %155

152:                                              ; preds = %148
  %153 = load %struct.fs_context*, %struct.fs_context** %4, align 8
  %154 = call i32 (%struct.fs_context*, i8*, ...) @invalf(%struct.fs_context* %153, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.3, i64 0, i64 0))
  store i32 %154, i32* %3, align 4
  br label %217

155:                                              ; preds = %148
  %156 = getelementptr inbounds %struct.fs_parse_result, %struct.fs_parse_result* %7, i32 0, i32 0
  %157 = load i64, i64* %156, align 8
  %158 = load %struct.gfs2_args*, %struct.gfs2_args** %6, align 8
  %159 = getelementptr inbounds %struct.gfs2_args, %struct.gfs2_args* %158, i32 0, i32 5
  store i64 %157, i64* %159, align 8
  br label %216

160:                                              ; preds = %19
  %161 = getelementptr inbounds %struct.fs_parse_result, %struct.fs_parse_result* %7, i32 0, i32 0
  %162 = load i64, i64* %161, align 8
  %163 = icmp ult i64 %162, 0
  br i1 %163, label %168, label %164

164:                                              ; preds = %160
  %165 = getelementptr inbounds %struct.fs_parse_result, %struct.fs_parse_result* %7, i32 0, i32 0
  %166 = load i64, i64* %165, align 8
  %167 = icmp ugt i64 %166, 100
  br i1 %167, label %168, label %171

168:                                              ; preds = %164, %160
  %169 = load %struct.fs_context*, %struct.fs_context** %4, align 8
  %170 = call i32 (%struct.fs_context*, i8*, ...) @invalf(%struct.fs_context* %169, i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.4, i64 0, i64 0))
  store i32 %170, i32* %3, align 4
  br label %217

171:                                              ; preds = %164
  %172 = getelementptr inbounds %struct.fs_parse_result, %struct.fs_parse_result* %7, i32 0, i32 0
  %173 = load i64, i64* %172, align 8
  %174 = trunc i64 %173 to i32
  %175 = load %struct.gfs2_args*, %struct.gfs2_args** %6, align 8
  %176 = getelementptr inbounds %struct.gfs2_args, %struct.gfs2_args* %175, i32 0, i32 6
  store i32 %174, i32* %176, align 8
  br label %216

177:                                              ; preds = %19
  %178 = load %struct.gfs2_args*, %struct.gfs2_args** %6, align 8
  %179 = getelementptr inbounds %struct.gfs2_args, %struct.gfs2_args* %178, i32 0, i32 11
  %180 = load i32, i32* %179, align 4
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %190

182:                                              ; preds = %177
  %183 = getelementptr inbounds %struct.fs_parse_result, %struct.fs_parse_result* %7, i32 0, i32 2
  %184 = load i32, i32* %183, align 4
  %185 = load i32, i32* @GFS2_ERRORS_PANIC, align 4
  %186 = icmp eq i32 %184, %185
  br i1 %186, label %187, label %190

187:                                              ; preds = %182
  %188 = load %struct.fs_context*, %struct.fs_context** %4, align 8
  %189 = call i32 (%struct.fs_context*, i8*, ...) @invalf(%struct.fs_context* %188, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0))
  store i32 %189, i32* %3, align 4
  br label %217

190:                                              ; preds = %182, %177
  %191 = getelementptr inbounds %struct.fs_parse_result, %struct.fs_parse_result* %7, i32 0, i32 2
  %192 = load i32, i32* %191, align 4
  %193 = load %struct.gfs2_args*, %struct.gfs2_args** %6, align 8
  %194 = getelementptr inbounds %struct.gfs2_args, %struct.gfs2_args* %193, i32 0, i32 10
  store i32 %192, i32* %194, align 8
  br label %216

195:                                              ; preds = %19
  %196 = getelementptr inbounds %struct.fs_parse_result, %struct.fs_parse_result* %7, i32 0, i32 1
  %197 = load i32, i32* %196, align 8
  %198 = load %struct.gfs2_args*, %struct.gfs2_args** %6, align 8
  %199 = getelementptr inbounds %struct.gfs2_args, %struct.gfs2_args* %198, i32 0, i32 9
  store i32 %197, i32* %199, align 4
  br label %216

200:                                              ; preds = %19
  %201 = getelementptr inbounds %struct.fs_parse_result, %struct.fs_parse_result* %7, i32 0, i32 1
  %202 = load i32, i32* %201, align 8
  %203 = load %struct.gfs2_args*, %struct.gfs2_args** %6, align 8
  %204 = getelementptr inbounds %struct.gfs2_args, %struct.gfs2_args* %203, i32 0, i32 8
  store i32 %202, i32* %204, align 8
  br label %216

205:                                              ; preds = %19
  %206 = getelementptr inbounds %struct.fs_parse_result, %struct.fs_parse_result* %7, i32 0, i32 1
  %207 = load i32, i32* %206, align 8
  %208 = load %struct.gfs2_args*, %struct.gfs2_args** %6, align 8
  %209 = getelementptr inbounds %struct.gfs2_args, %struct.gfs2_args* %208, i32 0, i32 7
  store i32 %207, i32* %209, align 4
  br label %216

210:                                              ; preds = %19
  %211 = load %struct.fs_context*, %struct.fs_context** %4, align 8
  %212 = load %struct.fs_parameter*, %struct.fs_parameter** %5, align 8
  %213 = getelementptr inbounds %struct.fs_parameter, %struct.fs_parameter* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 4
  %215 = call i32 (%struct.fs_context*, i8*, ...) @invalf(%struct.fs_context* %211, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0), i32 %214)
  store i32 %215, i32* %3, align 4
  br label %217

216:                                              ; preds = %205, %200, %195, %190, %171, %155, %143, %131, %119, %116, %111, %106, %105, %75, %74, %69, %55, %52, %51, %48, %39, %30, %21
  store i32 0, i32* %3, align 4
  br label %217

217:                                              ; preds = %216, %210, %187, %168, %152, %140, %128, %66, %17
  %218 = load i32, i32* %3, align 4
  ret i32 %218
}

declare dso_local i32 @fs_parse(%struct.fs_context*, i32*, %struct.fs_parameter*, %struct.fs_parse_result*) #1

declare dso_local i32 @strlcpy(i32, i32, i32) #1

declare dso_local i32 @invalf(%struct.fs_context*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
