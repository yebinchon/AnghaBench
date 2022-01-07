; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_binfmt_script.c_load_script.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_binfmt_script.c_load_script.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.linux_binprm = type { i8*, i32, i8*, %struct.file*, i32 }
%struct.file = type { i32 }

@ENOEXEC = common dso_local global i32 0, align 4
@BINPRM_FLAGS_PATH_INACCESSIBLE = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.linux_binprm*)* @load_script to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @load_script(%struct.linux_binprm* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.linux_binprm*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.file*, align 8
  %9 = alloca i32, align 4
  store %struct.linux_binprm* %0, %struct.linux_binprm** %3, align 8
  %10 = load %struct.linux_binprm*, %struct.linux_binprm** %3, align 8
  %11 = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %10, i32 0, i32 0
  %12 = load i8*, i8** %11, align 8
  %13 = getelementptr inbounds i8, i8* %12, i64 0
  %14 = load i8, i8* %13, align 1
  %15 = sext i8 %14 to i32
  %16 = icmp ne i32 %15, 35
  br i1 %16, label %25, label %17

17:                                               ; preds = %1
  %18 = load %struct.linux_binprm*, %struct.linux_binprm** %3, align 8
  %19 = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  %21 = getelementptr inbounds i8, i8* %20, i64 1
  %22 = load i8, i8* %21, align 1
  %23 = sext i8 %22 to i32
  %24 = icmp ne i32 %23, 33
  br i1 %24, label %25, label %28

25:                                               ; preds = %17, %1
  %26 = load i32, i32* @ENOEXEC, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %2, align 4
  br label %256

28:                                               ; preds = %17
  %29 = load %struct.linux_binprm*, %struct.linux_binprm** %3, align 8
  %30 = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @BINPRM_FLAGS_PATH_INACCESSIBLE, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %28
  %36 = load i32, i32* @ENOENT, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %2, align 4
  br label %256

38:                                               ; preds = %28
  %39 = load %struct.linux_binprm*, %struct.linux_binprm** %3, align 8
  %40 = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %39, i32 0, i32 3
  %41 = load %struct.file*, %struct.file** %40, align 8
  %42 = call i32 @allow_write_access(%struct.file* %41)
  %43 = load %struct.linux_binprm*, %struct.linux_binprm** %3, align 8
  %44 = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %43, i32 0, i32 3
  %45 = load %struct.file*, %struct.file** %44, align 8
  %46 = call i32 @fput(%struct.file* %45)
  %47 = load %struct.linux_binprm*, %struct.linux_binprm** %3, align 8
  %48 = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %47, i32 0, i32 3
  store %struct.file* null, %struct.file** %48, align 8
  %49 = load %struct.linux_binprm*, %struct.linux_binprm** %3, align 8
  %50 = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %49, i32 0, i32 0
  %51 = load i8*, i8** %50, align 8
  %52 = getelementptr inbounds i8, i8* %51, i64 8
  %53 = getelementptr inbounds i8, i8* %52, i64 -1
  store i8* %53, i8** %7, align 8
  %54 = load %struct.linux_binprm*, %struct.linux_binprm** %3, align 8
  %55 = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %54, i32 0, i32 0
  %56 = load i8*, i8** %55, align 8
  %57 = call i8* @strnchr(i8* %56, i32 8, i8 signext 10)
  store i8* %57, i8** %6, align 8
  %58 = load i8*, i8** %6, align 8
  %59 = icmp ne i8* %58, null
  br i1 %59, label %82, label %60

60:                                               ; preds = %38
  %61 = load %struct.linux_binprm*, %struct.linux_binprm** %3, align 8
  %62 = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %61, i32 0, i32 0
  %63 = load i8*, i8** %62, align 8
  %64 = getelementptr inbounds i8, i8* %63, i64 2
  %65 = load i8*, i8** %7, align 8
  %66 = call i8* @next_non_spacetab(i8* %64, i8* %65)
  store i8* %66, i8** %6, align 8
  %67 = load i8*, i8** %6, align 8
  %68 = icmp ne i8* %67, null
  br i1 %68, label %72, label %69

69:                                               ; preds = %60
  %70 = load i32, i32* @ENOEXEC, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %2, align 4
  br label %256

72:                                               ; preds = %60
  %73 = load i8*, i8** %6, align 8
  %74 = load i8*, i8** %7, align 8
  %75 = call i32 @next_terminator(i8* %73, i8* %74)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %80, label %77

77:                                               ; preds = %72
  %78 = load i32, i32* @ENOEXEC, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %2, align 4
  br label %256

80:                                               ; preds = %72
  %81 = load i8*, i8** %7, align 8
  store i8* %81, i8** %6, align 8
  br label %82

82:                                               ; preds = %80, %38
  %83 = load i8*, i8** %6, align 8
  store i8 0, i8* %83, align 1
  br label %84

84:                                               ; preds = %105, %82
  %85 = load i8*, i8** %6, align 8
  %86 = load %struct.linux_binprm*, %struct.linux_binprm** %3, align 8
  %87 = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %86, i32 0, i32 0
  %88 = load i8*, i8** %87, align 8
  %89 = icmp ugt i8* %85, %88
  br i1 %89, label %90, label %106

90:                                               ; preds = %84
  %91 = load i8*, i8** %6, align 8
  %92 = getelementptr inbounds i8, i8* %91, i32 -1
  store i8* %92, i8** %6, align 8
  %93 = load i8*, i8** %6, align 8
  %94 = load i8, i8* %93, align 1
  %95 = sext i8 %94 to i32
  %96 = icmp eq i32 %95, 32
  br i1 %96, label %102, label %97

97:                                               ; preds = %90
  %98 = load i8*, i8** %6, align 8
  %99 = load i8, i8* %98, align 1
  %100 = sext i8 %99 to i32
  %101 = icmp eq i32 %100, 9
  br i1 %101, label %102, label %104

102:                                              ; preds = %97, %90
  %103 = load i8*, i8** %6, align 8
  store i8 0, i8* %103, align 1
  br label %105

104:                                              ; preds = %97
  br label %106

105:                                              ; preds = %102
  br label %84

106:                                              ; preds = %104, %84
  %107 = load %struct.linux_binprm*, %struct.linux_binprm** %3, align 8
  %108 = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %107, i32 0, i32 0
  %109 = load i8*, i8** %108, align 8
  %110 = getelementptr inbounds i8, i8* %109, i64 2
  store i8* %110, i8** %6, align 8
  br label %111

111:                                              ; preds = %124, %106
  %112 = load i8*, i8** %6, align 8
  %113 = load i8, i8* %112, align 1
  %114 = sext i8 %113 to i32
  %115 = icmp eq i32 %114, 32
  br i1 %115, label %121, label %116

116:                                              ; preds = %111
  %117 = load i8*, i8** %6, align 8
  %118 = load i8, i8* %117, align 1
  %119 = sext i8 %118 to i32
  %120 = icmp eq i32 %119, 9
  br label %121

121:                                              ; preds = %116, %111
  %122 = phi i1 [ true, %111 ], [ %120, %116 ]
  br i1 %122, label %123, label %127

123:                                              ; preds = %121
  br label %124

124:                                              ; preds = %123
  %125 = load i8*, i8** %6, align 8
  %126 = getelementptr inbounds i8, i8* %125, i32 1
  store i8* %126, i8** %6, align 8
  br label %111

127:                                              ; preds = %121
  %128 = load i8*, i8** %6, align 8
  %129 = load i8, i8* %128, align 1
  %130 = sext i8 %129 to i32
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %132, label %135

132:                                              ; preds = %127
  %133 = load i32, i32* @ENOEXEC, align 4
  %134 = sub nsw i32 0, %133
  store i32 %134, i32* %2, align 4
  br label %256

135:                                              ; preds = %127
  %136 = load i8*, i8** %6, align 8
  store i8* %136, i8** %5, align 8
  store i8* null, i8** %4, align 8
  br label %137

137:                                              ; preds = %155, %135
  %138 = load i8*, i8** %6, align 8
  %139 = load i8, i8* %138, align 1
  %140 = sext i8 %139 to i32
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %152

142:                                              ; preds = %137
  %143 = load i8*, i8** %6, align 8
  %144 = load i8, i8* %143, align 1
  %145 = sext i8 %144 to i32
  %146 = icmp ne i32 %145, 32
  br i1 %146, label %147, label %152

147:                                              ; preds = %142
  %148 = load i8*, i8** %6, align 8
  %149 = load i8, i8* %148, align 1
  %150 = sext i8 %149 to i32
  %151 = icmp ne i32 %150, 9
  br label %152

152:                                              ; preds = %147, %142, %137
  %153 = phi i1 [ false, %142 ], [ false, %137 ], [ %151, %147 ]
  br i1 %153, label %154, label %158

154:                                              ; preds = %152
  br label %155

155:                                              ; preds = %154
  %156 = load i8*, i8** %6, align 8
  %157 = getelementptr inbounds i8, i8* %156, i32 1
  store i8* %157, i8** %6, align 8
  br label %137

158:                                              ; preds = %152
  br label %159

159:                                              ; preds = %171, %158
  %160 = load i8*, i8** %6, align 8
  %161 = load i8, i8* %160, align 1
  %162 = sext i8 %161 to i32
  %163 = icmp eq i32 %162, 32
  br i1 %163, label %169, label %164

164:                                              ; preds = %159
  %165 = load i8*, i8** %6, align 8
  %166 = load i8, i8* %165, align 1
  %167 = sext i8 %166 to i32
  %168 = icmp eq i32 %167, 9
  br label %169

169:                                              ; preds = %164, %159
  %170 = phi i1 [ true, %159 ], [ %168, %164 ]
  br i1 %170, label %171, label %174

171:                                              ; preds = %169
  %172 = load i8*, i8** %6, align 8
  %173 = getelementptr inbounds i8, i8* %172, i32 1
  store i8* %173, i8** %6, align 8
  store i8 0, i8* %172, align 1
  br label %159

174:                                              ; preds = %169
  %175 = load i8*, i8** %6, align 8
  %176 = load i8, i8* %175, align 1
  %177 = icmp ne i8 %176, 0
  br i1 %177, label %178, label %180

178:                                              ; preds = %174
  %179 = load i8*, i8** %6, align 8
  store i8* %179, i8** %4, align 8
  br label %180

180:                                              ; preds = %178, %174
  %181 = load %struct.linux_binprm*, %struct.linux_binprm** %3, align 8
  %182 = call i32 @remove_arg_zero(%struct.linux_binprm* %181)
  store i32 %182, i32* %9, align 4
  %183 = load i32, i32* %9, align 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %187

185:                                              ; preds = %180
  %186 = load i32, i32* %9, align 4
  store i32 %186, i32* %2, align 4
  br label %256

187:                                              ; preds = %180
  %188 = load %struct.linux_binprm*, %struct.linux_binprm** %3, align 8
  %189 = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %188, i32 0, i32 2
  %190 = load %struct.linux_binprm*, %struct.linux_binprm** %3, align 8
  %191 = call i32 @copy_strings_kernel(i32 1, i8** %189, %struct.linux_binprm* %190)
  store i32 %191, i32* %9, align 4
  %192 = load i32, i32* %9, align 4
  %193 = icmp slt i32 %192, 0
  br i1 %193, label %194, label %196

194:                                              ; preds = %187
  %195 = load i32, i32* %9, align 4
  store i32 %195, i32* %2, align 4
  br label %256

196:                                              ; preds = %187
  %197 = load %struct.linux_binprm*, %struct.linux_binprm** %3, align 8
  %198 = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %197, i32 0, i32 4
  %199 = load i32, i32* %198, align 8
  %200 = add nsw i32 %199, 1
  store i32 %200, i32* %198, align 8
  %201 = load i8*, i8** %4, align 8
  %202 = icmp ne i8* %201, null
  br i1 %202, label %203, label %215

203:                                              ; preds = %196
  %204 = load %struct.linux_binprm*, %struct.linux_binprm** %3, align 8
  %205 = call i32 @copy_strings_kernel(i32 1, i8** %4, %struct.linux_binprm* %204)
  store i32 %205, i32* %9, align 4
  %206 = load i32, i32* %9, align 4
  %207 = icmp slt i32 %206, 0
  br i1 %207, label %208, label %210

208:                                              ; preds = %203
  %209 = load i32, i32* %9, align 4
  store i32 %209, i32* %2, align 4
  br label %256

210:                                              ; preds = %203
  %211 = load %struct.linux_binprm*, %struct.linux_binprm** %3, align 8
  %212 = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %211, i32 0, i32 4
  %213 = load i32, i32* %212, align 8
  %214 = add nsw i32 %213, 1
  store i32 %214, i32* %212, align 8
  br label %215

215:                                              ; preds = %210, %196
  %216 = load %struct.linux_binprm*, %struct.linux_binprm** %3, align 8
  %217 = call i32 @copy_strings_kernel(i32 1, i8** %5, %struct.linux_binprm* %216)
  store i32 %217, i32* %9, align 4
  %218 = load i32, i32* %9, align 4
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %220, label %222

220:                                              ; preds = %215
  %221 = load i32, i32* %9, align 4
  store i32 %221, i32* %2, align 4
  br label %256

222:                                              ; preds = %215
  %223 = load %struct.linux_binprm*, %struct.linux_binprm** %3, align 8
  %224 = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %223, i32 0, i32 4
  %225 = load i32, i32* %224, align 8
  %226 = add nsw i32 %225, 1
  store i32 %226, i32* %224, align 8
  %227 = load i8*, i8** %5, align 8
  %228 = load %struct.linux_binprm*, %struct.linux_binprm** %3, align 8
  %229 = call i32 @bprm_change_interp(i8* %227, %struct.linux_binprm* %228)
  store i32 %229, i32* %9, align 4
  %230 = load i32, i32* %9, align 4
  %231 = icmp slt i32 %230, 0
  br i1 %231, label %232, label %234

232:                                              ; preds = %222
  %233 = load i32, i32* %9, align 4
  store i32 %233, i32* %2, align 4
  br label %256

234:                                              ; preds = %222
  %235 = load i8*, i8** %5, align 8
  %236 = call %struct.file* @open_exec(i8* %235)
  store %struct.file* %236, %struct.file** %8, align 8
  %237 = load %struct.file*, %struct.file** %8, align 8
  %238 = call i64 @IS_ERR(%struct.file* %237)
  %239 = icmp ne i64 %238, 0
  br i1 %239, label %240, label %243

240:                                              ; preds = %234
  %241 = load %struct.file*, %struct.file** %8, align 8
  %242 = call i32 @PTR_ERR(%struct.file* %241)
  store i32 %242, i32* %2, align 4
  br label %256

243:                                              ; preds = %234
  %244 = load %struct.file*, %struct.file** %8, align 8
  %245 = load %struct.linux_binprm*, %struct.linux_binprm** %3, align 8
  %246 = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %245, i32 0, i32 3
  store %struct.file* %244, %struct.file** %246, align 8
  %247 = load %struct.linux_binprm*, %struct.linux_binprm** %3, align 8
  %248 = call i32 @prepare_binprm(%struct.linux_binprm* %247)
  store i32 %248, i32* %9, align 4
  %249 = load i32, i32* %9, align 4
  %250 = icmp slt i32 %249, 0
  br i1 %250, label %251, label %253

251:                                              ; preds = %243
  %252 = load i32, i32* %9, align 4
  store i32 %252, i32* %2, align 4
  br label %256

253:                                              ; preds = %243
  %254 = load %struct.linux_binprm*, %struct.linux_binprm** %3, align 8
  %255 = call i32 @search_binary_handler(%struct.linux_binprm* %254)
  store i32 %255, i32* %2, align 4
  br label %256

256:                                              ; preds = %253, %251, %240, %232, %220, %208, %194, %185, %132, %77, %69, %35, %25
  %257 = load i32, i32* %2, align 4
  ret i32 %257
}

declare dso_local i32 @allow_write_access(%struct.file*) #1

declare dso_local i32 @fput(%struct.file*) #1

declare dso_local i8* @strnchr(i8*, i32, i8 signext) #1

declare dso_local i8* @next_non_spacetab(i8*, i8*) #1

declare dso_local i32 @next_terminator(i8*, i8*) #1

declare dso_local i32 @remove_arg_zero(%struct.linux_binprm*) #1

declare dso_local i32 @copy_strings_kernel(i32, i8**, %struct.linux_binprm*) #1

declare dso_local i32 @bprm_change_interp(i8*, %struct.linux_binprm*) #1

declare dso_local %struct.file* @open_exec(i8*) #1

declare dso_local i64 @IS_ERR(%struct.file*) #1

declare dso_local i32 @PTR_ERR(%struct.file*) #1

declare dso_local i32 @prepare_binprm(%struct.linux_binprm*) #1

declare dso_local i32 @search_binary_handler(%struct.linux_binprm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
