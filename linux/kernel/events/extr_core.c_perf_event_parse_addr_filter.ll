; ModuleID = '/home/carl/AnghaBench/linux/kernel/events/extr_core.c_perf_event_parse_addr_filter.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/events/extr_core.c_perf_event_parse_addr_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_event = type { %struct.TYPE_11__, %struct.TYPE_10__*, %struct.TYPE_9__ }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i64 }
%struct.list_head = type { i32 }
%struct.perf_addr_filter = type { i32, %struct.TYPE_13__, i32, i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i32, i32* }
%struct.TYPE_14__ = type { i32 }

@MAX_OPT_ARGS = common dso_local global i32 0, align 4
@IF_STATE_ACTION = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c" ,\0A\00", align 1
@perf_event_parse_addr_filter.actions = internal constant [138 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 128, i32 129, i32 130], align 16
@if_tokens = common dso_local global i32 0, align 4
@IF_STATE_SOURCE = common dso_local global i32 0, align 4
@IF_STATE_END = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@LOOKUP_FOLLOW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.perf_event*, i8*, %struct.list_head*)* @perf_event_parse_addr_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @perf_event_parse_addr_filter(%struct.perf_event* %0, i8* %1, %struct.list_head* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.perf_event*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.list_head*, align 8
  %8 = alloca %struct.perf_addr_filter*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.perf_event* %0, %struct.perf_event** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.list_head* %2, %struct.list_head** %7, align 8
  store %struct.perf_addr_filter* null, %struct.perf_addr_filter** %8, align 8
  store i8* null, i8** %11, align 8
  %20 = load i32, i32* @MAX_OPT_ARGS, align 4
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %12, align 8
  %23 = alloca %struct.TYPE_12__, i64 %21, align 16
  store i64 %21, i64* %13, align 8
  %24 = load i32, i32* @IF_STATE_ACTION, align 4
  store i32 %24, i32* %14, align 4
  store i32 0, i32* %16, align 4
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %17, align 4
  %27 = load i8*, i8** %6, align 8
  %28 = load i32, i32* @GFP_KERNEL, align 4
  %29 = call i8* @kstrdup(i8* %27, i32 %28)
  store i8* %29, i8** %6, align 8
  store i8* %29, i8** %10, align 8
  %30 = load i8*, i8** %6, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %3
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %4, align 4
  store i32 1, i32* %18, align 4
  br label %239

35:                                               ; preds = %3
  br label %36

36:                                               ; preds = %221, %45, %35
  %37 = call i8* @strsep(i8** %6, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store i8* %37, i8** %9, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %39, label %222

39:                                               ; preds = %36
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %17, align 4
  %42 = load i8*, i8** %9, align 8
  %43 = load i8, i8* %42, align 1
  %44 = icmp ne i8 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %39
  br label %36

46:                                               ; preds = %39
  %47 = load i32, i32* %14, align 4
  %48 = load i32, i32* @IF_STATE_ACTION, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %58

50:                                               ; preds = %46
  %51 = load %struct.perf_event*, %struct.perf_event** %5, align 8
  %52 = load %struct.list_head*, %struct.list_head** %7, align 8
  %53 = call %struct.perf_addr_filter* @perf_addr_filter_new(%struct.perf_event* %51, %struct.list_head* %52)
  store %struct.perf_addr_filter* %53, %struct.perf_addr_filter** %8, align 8
  %54 = load %struct.perf_addr_filter*, %struct.perf_addr_filter** %8, align 8
  %55 = icmp ne %struct.perf_addr_filter* %54, null
  br i1 %55, label %57, label %56

56:                                               ; preds = %50
  br label %233

57:                                               ; preds = %50
  br label %58

58:                                               ; preds = %57, %46
  %59 = load i8*, i8** %9, align 8
  %60 = load i32, i32* @if_tokens, align 4
  %61 = call i32 @match_token(i8* %59, i32 %60, %struct.TYPE_12__* %23)
  store i32 %61, i32* %15, align 4
  %62 = load i32, i32* %15, align 4
  switch i32 %62, label %138 [
    i32 137, label %63
    i32 136, label %63
    i32 135, label %63
    i32 131, label %76
    i32 132, label %76
    i32 133, label %77
    i32 134, label %77
  ]

63:                                               ; preds = %58, %58, %58
  %64 = load i32, i32* %14, align 4
  %65 = load i32, i32* @IF_STATE_ACTION, align 4
  %66 = icmp ne i32 %64, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %63
  br label %233

68:                                               ; preds = %63
  %69 = load i32, i32* %15, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds [138 x i32], [138 x i32]* @perf_event_parse_addr_filter.actions, i64 0, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.perf_addr_filter*, %struct.perf_addr_filter** %8, align 8
  %74 = getelementptr inbounds %struct.perf_addr_filter, %struct.perf_addr_filter* %73, i32 0, i32 0
  store i32 %72, i32* %74, align 4
  %75 = load i32, i32* @IF_STATE_SOURCE, align 4
  store i32 %75, i32* %14, align 4
  br label %139

76:                                               ; preds = %58, %58
  store i32 1, i32* %16, align 4
  br label %77

77:                                               ; preds = %58, %58, %76
  %78 = load i32, i32* %14, align 4
  %79 = load i32, i32* @IF_STATE_SOURCE, align 4
  %80 = icmp ne i32 %78, %79
  br i1 %80, label %81, label %82

81:                                               ; preds = %77
  br label %233

82:                                               ; preds = %77
  %83 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i64 0
  %84 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %83, i32 0, i32 1
  %85 = load i32*, i32** %84, align 8
  store i32 0, i32* %85, align 4
  %86 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i64 0
  %87 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 16
  %89 = load %struct.perf_addr_filter*, %struct.perf_addr_filter** %8, align 8
  %90 = getelementptr inbounds %struct.perf_addr_filter, %struct.perf_addr_filter* %89, i32 0, i32 3
  %91 = call i32 @kstrtoul(i32 %88, i32 0, i32* %90)
  store i32 %91, i32* %17, align 4
  %92 = load i32, i32* %17, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %82
  br label %233

95:                                               ; preds = %82
  %96 = load i32, i32* %15, align 4
  %97 = icmp eq i32 %96, 132
  br i1 %97, label %101, label %98

98:                                               ; preds = %95
  %99 = load i32, i32* %15, align 4
  %100 = icmp eq i32 %99, 134
  br i1 %100, label %101, label %115

101:                                              ; preds = %98, %95
  %102 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i64 1
  %103 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %102, i32 0, i32 1
  %104 = load i32*, i32** %103, align 8
  store i32 0, i32* %104, align 4
  %105 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i64 1
  %106 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 16
  %108 = load %struct.perf_addr_filter*, %struct.perf_addr_filter** %8, align 8
  %109 = getelementptr inbounds %struct.perf_addr_filter, %struct.perf_addr_filter* %108, i32 0, i32 2
  %110 = call i32 @kstrtoul(i32 %107, i32 0, i32* %109)
  store i32 %110, i32* %17, align 4
  %111 = load i32, i32* %17, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %101
  br label %233

114:                                              ; preds = %101
  br label %115

115:                                              ; preds = %114, %98
  %116 = load i32, i32* %15, align 4
  %117 = icmp eq i32 %116, 134
  br i1 %117, label %121, label %118

118:                                              ; preds = %115
  %119 = load i32, i32* %15, align 4
  %120 = icmp eq i32 %119, 133
  br i1 %120, label %121, label %136

121:                                              ; preds = %118, %115
  %122 = load i32, i32* %15, align 4
  %123 = icmp eq i32 %122, 134
  %124 = zext i1 %123 to i64
  %125 = select i1 %123, i32 2, i32 1
  store i32 %125, i32* %19, align 4
  %126 = load i32, i32* %19, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i64 %127
  %129 = call i8* @match_strdup(%struct.TYPE_12__* %128)
  store i8* %129, i8** %11, align 8
  %130 = load i8*, i8** %11, align 8
  %131 = icmp ne i8* %130, null
  br i1 %131, label %135, label %132

132:                                              ; preds = %121
  %133 = load i32, i32* @ENOMEM, align 4
  %134 = sub nsw i32 0, %133
  store i32 %134, i32* %17, align 4
  br label %233

135:                                              ; preds = %121
  br label %136

136:                                              ; preds = %135, %118
  %137 = load i32, i32* @IF_STATE_END, align 4
  store i32 %137, i32* %14, align 4
  br label %139

138:                                              ; preds = %58
  br label %233

139:                                              ; preds = %136, %68
  %140 = load i32, i32* %14, align 4
  %141 = load i32, i32* @IF_STATE_END, align 4
  %142 = icmp eq i32 %140, %141
  br i1 %142, label %143, label %221

143:                                              ; preds = %139
  %144 = load i32, i32* @EINVAL, align 4
  %145 = sub nsw i32 0, %144
  store i32 %145, i32* %17, align 4
  %146 = load i32, i32* %16, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %155

148:                                              ; preds = %143
  %149 = load %struct.perf_event*, %struct.perf_event** %5, align 8
  %150 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %149, i32 0, i32 2
  %151 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %150, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %155

154:                                              ; preds = %148
  br label %233

155:                                              ; preds = %148, %143
  %156 = load %struct.perf_addr_filter*, %struct.perf_addr_filter** %8, align 8
  %157 = getelementptr inbounds %struct.perf_addr_filter, %struct.perf_addr_filter* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = icmp eq i32 %158, 130
  br i1 %159, label %160, label %166

160:                                              ; preds = %155
  %161 = load %struct.perf_addr_filter*, %struct.perf_addr_filter** %8, align 8
  %162 = getelementptr inbounds %struct.perf_addr_filter, %struct.perf_addr_filter* %161, i32 0, i32 2
  %163 = load i32, i32* %162, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %166, label %165

165:                                              ; preds = %160
  br label %233

166:                                              ; preds = %160, %155
  %167 = load i32, i32* %16, align 4
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %219, label %169

169:                                              ; preds = %166
  %170 = load i8*, i8** %11, align 8
  %171 = icmp ne i8* %170, null
  br i1 %171, label %173, label %172

172:                                              ; preds = %169
  br label %233

173:                                              ; preds = %169
  %174 = load i32, i32* @EOPNOTSUPP, align 4
  %175 = sub nsw i32 0, %174
  store i32 %175, i32* %17, align 4
  %176 = load %struct.perf_event*, %struct.perf_event** %5, align 8
  %177 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %176, i32 0, i32 1
  %178 = load %struct.TYPE_10__*, %struct.TYPE_10__** %177, align 8
  %179 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 4
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %183, label %182

182:                                              ; preds = %173
  br label %230

183:                                              ; preds = %173
  %184 = load i8*, i8** %11, align 8
  %185 = load i32, i32* @LOOKUP_FOLLOW, align 4
  %186 = load %struct.perf_addr_filter*, %struct.perf_addr_filter** %8, align 8
  %187 = getelementptr inbounds %struct.perf_addr_filter, %struct.perf_addr_filter* %186, i32 0, i32 1
  %188 = call i32 @kern_path(i8* %184, i32 %185, %struct.TYPE_13__* %187)
  store i32 %188, i32* %17, align 4
  %189 = load i32, i32* %17, align 4
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %192

191:                                              ; preds = %183
  br label %230

192:                                              ; preds = %183
  %193 = load i8*, i8** %11, align 8
  %194 = call i32 @kfree(i8* %193)
  store i8* null, i8** %11, align 8
  %195 = load i32, i32* @EINVAL, align 4
  %196 = sub nsw i32 0, %195
  store i32 %196, i32* %17, align 4
  %197 = load %struct.perf_addr_filter*, %struct.perf_addr_filter** %8, align 8
  %198 = getelementptr inbounds %struct.perf_addr_filter, %struct.perf_addr_filter* %197, i32 0, i32 1
  %199 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 4
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %212

202:                                              ; preds = %192
  %203 = load %struct.perf_addr_filter*, %struct.perf_addr_filter** %8, align 8
  %204 = getelementptr inbounds %struct.perf_addr_filter, %struct.perf_addr_filter* %203, i32 0, i32 1
  %205 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 4
  %207 = call %struct.TYPE_14__* @d_inode(i32 %206)
  %208 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 4
  %210 = call i32 @S_ISREG(i32 %209)
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %213, label %212

212:                                              ; preds = %202, %192
  br label %233

213:                                              ; preds = %202
  %214 = load %struct.perf_event*, %struct.perf_event** %5, align 8
  %215 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %214, i32 0, i32 0
  %216 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 8
  %218 = add nsw i32 %217, 1
  store i32 %218, i32* %216, align 8
  br label %219

219:                                              ; preds = %213, %166
  %220 = load i32, i32* @IF_STATE_ACTION, align 4
  store i32 %220, i32* %14, align 4
  store %struct.perf_addr_filter* null, %struct.perf_addr_filter** %8, align 8
  br label %221

221:                                              ; preds = %219, %139
  br label %36

222:                                              ; preds = %36
  %223 = load i32, i32* %14, align 4
  %224 = load i32, i32* @IF_STATE_ACTION, align 4
  %225 = icmp ne i32 %223, %224
  br i1 %225, label %226, label %227

226:                                              ; preds = %222
  br label %233

227:                                              ; preds = %222
  %228 = load i8*, i8** %10, align 8
  %229 = call i32 @kfree(i8* %228)
  store i32 0, i32* %4, align 4
  store i32 1, i32* %18, align 4
  br label %239

230:                                              ; preds = %191, %182
  %231 = load i8*, i8** %11, align 8
  %232 = call i32 @kfree(i8* %231)
  br label %233

233:                                              ; preds = %230, %226, %212, %172, %165, %154, %138, %132, %113, %94, %81, %67, %56
  %234 = load %struct.list_head*, %struct.list_head** %7, align 8
  %235 = call i32 @free_filters_list(%struct.list_head* %234)
  %236 = load i8*, i8** %10, align 8
  %237 = call i32 @kfree(i8* %236)
  %238 = load i32, i32* %17, align 4
  store i32 %238, i32* %4, align 4
  store i32 1, i32* %18, align 4
  br label %239

239:                                              ; preds = %233, %227, %32
  %240 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %240)
  %241 = load i32, i32* %4, align 4
  ret i32 %241
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i8* @kstrdup(i8*, i32) #2

declare dso_local i8* @strsep(i8**, i8*) #2

declare dso_local %struct.perf_addr_filter* @perf_addr_filter_new(%struct.perf_event*, %struct.list_head*) #2

declare dso_local i32 @match_token(i8*, i32, %struct.TYPE_12__*) #2

declare dso_local i32 @kstrtoul(i32, i32, i32*) #2

declare dso_local i8* @match_strdup(%struct.TYPE_12__*) #2

declare dso_local i32 @kern_path(i8*, i32, %struct.TYPE_13__*) #2

declare dso_local i32 @kfree(i8*) #2

declare dso_local i32 @S_ISREG(i32) #2

declare dso_local %struct.TYPE_14__* @d_inode(i32) #2

declare dso_local i32 @free_filters_list(%struct.list_head*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
