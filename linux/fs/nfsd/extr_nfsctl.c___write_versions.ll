; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfsctl.c___write_versions.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfsctl.c___write_versions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.nfsd_net = type { i64 }

@nfsd_net_id = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i64 0, align 8
@NFSD_CLEAR = common dso_local global i32 0, align 4
@NFSD_SET = common dso_local global i32 0, align 4
@NFSD_TEST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@SIMPLE_TRANSACTION_LIMIT = common dso_local global i32 0, align 4
@NFSD_AVAIL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c" \00", align 1
@NFSD_SUPPORTED_MINOR_VERSION = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.file*, i8*, i64)* @__write_versions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @__write_versions(%struct.file* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8, align 1
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i8*, align 8
  %17 = alloca %struct.nfsd_net*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %21 = load i8*, i8** %6, align 8
  store i8* %21, i8** %8, align 8
  store i64 0, i64* %15, align 8
  %22 = load %struct.file*, %struct.file** %5, align 8
  %23 = call i32 @netns(%struct.file* %22)
  %24 = load i32, i32* @nfsd_net_id, align 4
  %25 = call %struct.nfsd_net* @net_generic(i32 %23, i32 %24)
  store %struct.nfsd_net* %25, %struct.nfsd_net** %17, align 8
  %26 = load i64, i64* %7, align 8
  %27 = icmp ugt i64 %26, 0
  br i1 %27, label %28, label %170

28:                                               ; preds = %3
  %29 = load %struct.nfsd_net*, %struct.nfsd_net** %17, align 8
  %30 = getelementptr inbounds %struct.nfsd_net, %struct.nfsd_net* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %28
  %34 = load i64, i64* @EBUSY, align 8
  %35 = sub nsw i64 0, %34
  store i64 %35, i64* %4, align 8
  br label %242

36:                                               ; preds = %28
  %37 = load i8*, i8** %6, align 8
  %38 = load i64, i64* %7, align 8
  %39 = sub i64 %38, 1
  %40 = getelementptr inbounds i8, i8* %37, i64 %39
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp ne i32 %42, 10
  br i1 %43, label %44, label %47

44:                                               ; preds = %36
  %45 = load i64, i64* @EINVAL, align 8
  %46 = sub nsw i64 0, %45
  store i64 %46, i64* %4, align 8
  br label %242

47:                                               ; preds = %36
  %48 = load i8*, i8** %6, align 8
  %49 = load i64, i64* %7, align 8
  %50 = sub i64 %49, 1
  %51 = getelementptr inbounds i8, i8* %48, i64 %50
  store i8 0, i8* %51, align 1
  %52 = load i8*, i8** %8, align 8
  store i8* %52, i8** %9, align 8
  %53 = load i8*, i8** %9, align 8
  %54 = load i64, i64* %7, align 8
  %55 = call i32 @qword_get(i8** %8, i8* %53, i64 %54)
  store i32 %55, i32* %12, align 4
  %56 = load i32, i32* %12, align 4
  %57 = icmp sle i32 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %47
  %59 = load i64, i64* @EINVAL, align 8
  %60 = sub nsw i64 0, %59
  store i64 %60, i64* %4, align 8
  br label %242

61:                                               ; preds = %47
  br label %62

62:                                               ; preds = %162, %61
  %63 = load i8*, i8** %9, align 8
  %64 = load i8, i8* %63, align 1
  store i8 %64, i8* %11, align 1
  %65 = load i8, i8* %11, align 1
  %66 = sext i8 %65 to i32
  %67 = icmp eq i32 %66, 43
  br i1 %67, label %72, label %68

68:                                               ; preds = %62
  %69 = load i8, i8* %11, align 1
  %70 = sext i8 %69 to i32
  %71 = icmp eq i32 %70, 45
  br i1 %71, label %72, label %76

72:                                               ; preds = %68, %62
  %73 = load i8*, i8** %9, align 8
  %74 = getelementptr inbounds i8, i8* %73, i64 1
  %75 = call i32 @simple_strtol(i8* %74, i8** %10, i32 0)
  store i32 %75, i32* %13, align 4
  br label %79

76:                                               ; preds = %68
  %77 = load i8*, i8** %9, align 8
  %78 = call i32 @simple_strtol(i8* %77, i8** %10, i32 0)
  store i32 %78, i32* %13, align 4
  br label %79

79:                                               ; preds = %76, %72
  %80 = load i8*, i8** %10, align 8
  %81 = load i8, i8* %80, align 1
  %82 = sext i8 %81 to i32
  %83 = icmp eq i32 %82, 46
  br i1 %83, label %84, label %99

84:                                               ; preds = %79
  %85 = load i32, i32* %13, align 4
  %86 = icmp ne i32 %85, 4
  br i1 %86, label %87, label %90

87:                                               ; preds = %84
  %88 = load i64, i64* @EINVAL, align 8
  %89 = sub nsw i64 0, %88
  store i64 %89, i64* %4, align 8
  br label %242

90:                                               ; preds = %84
  %91 = load i8*, i8** %10, align 8
  %92 = getelementptr inbounds i8, i8* %91, i64 1
  %93 = call i64 @kstrtouint(i8* %92, i32 0, i32* %19)
  %94 = icmp slt i64 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %90
  %96 = load i64, i64* @EINVAL, align 8
  %97 = sub nsw i64 0, %96
  store i64 %97, i64* %4, align 8
  br label %242

98:                                               ; preds = %90
  br label %99

99:                                               ; preds = %98, %79
  %100 = load i8, i8* %11, align 1
  %101 = sext i8 %100 to i32
  %102 = icmp eq i32 %101, 45
  br i1 %102, label %103, label %105

103:                                              ; preds = %99
  %104 = load i32, i32* @NFSD_CLEAR, align 4
  br label %107

105:                                              ; preds = %99
  %106 = load i32, i32* @NFSD_SET, align 4
  br label %107

107:                                              ; preds = %105, %103
  %108 = phi i32 [ %104, %103 ], [ %106, %105 ]
  store i32 %108, i32* %18, align 4
  %109 = load i32, i32* %13, align 4
  switch i32 %109, label %153 [
    i32 2, label %110
    i32 3, label %110
    i32 4, label %115
  ]

110:                                              ; preds = %107, %107
  %111 = load %struct.nfsd_net*, %struct.nfsd_net** %17, align 8
  %112 = load i32, i32* %13, align 4
  %113 = load i32, i32* %18, align 4
  %114 = call i32 @nfsd_vers(%struct.nfsd_net* %111, i32 %112, i32 %113)
  br label %156

115:                                              ; preds = %107
  %116 = load i8*, i8** %10, align 8
  %117 = load i8, i8* %116, align 1
  %118 = sext i8 %117 to i32
  %119 = icmp eq i32 %118, 46
  br i1 %119, label %120, label %130

120:                                              ; preds = %115
  %121 = load %struct.nfsd_net*, %struct.nfsd_net** %17, align 8
  %122 = load i32, i32* %19, align 4
  %123 = load i32, i32* %18, align 4
  %124 = call i32 @nfsd_minorversion(%struct.nfsd_net* %121, i32 %122, i32 %123)
  %125 = icmp slt i32 %124, 0
  br i1 %125, label %126, label %129

126:                                              ; preds = %120
  %127 = load i64, i64* @EINVAL, align 8
  %128 = sub nsw i64 0, %127
  store i64 %128, i64* %4, align 8
  br label %242

129:                                              ; preds = %120
  br label %152

130:                                              ; preds = %115
  %131 = load i32, i32* %18, align 4
  %132 = load i32, i32* @NFSD_SET, align 4
  %133 = icmp eq i32 %131, %132
  %134 = zext i1 %133 to i32
  %135 = load %struct.nfsd_net*, %struct.nfsd_net** %17, align 8
  %136 = load i32, i32* %13, align 4
  %137 = load i32, i32* @NFSD_TEST, align 4
  %138 = call i32 @nfsd_vers(%struct.nfsd_net* %135, i32 %136, i32 %137)
  %139 = icmp ne i32 %134, %138
  br i1 %139, label %140, label %151

140:                                              ; preds = %130
  store i32 0, i32* %19, align 4
  br label %141

141:                                              ; preds = %147, %140
  %142 = load %struct.nfsd_net*, %struct.nfsd_net** %17, align 8
  %143 = load i32, i32* %19, align 4
  %144 = load i32, i32* %18, align 4
  %145 = call i32 @nfsd_minorversion(%struct.nfsd_net* %142, i32 %143, i32 %144)
  %146 = icmp sge i32 %145, 0
  br i1 %146, label %147, label %150

147:                                              ; preds = %141
  %148 = load i32, i32* %19, align 4
  %149 = add i32 %148, 1
  store i32 %149, i32* %19, align 4
  br label %141

150:                                              ; preds = %141
  br label %151

151:                                              ; preds = %150, %130
  br label %152

152:                                              ; preds = %151, %129
  br label %156

153:                                              ; preds = %107
  %154 = load i64, i64* @EINVAL, align 8
  %155 = sub nsw i64 0, %154
  store i64 %155, i64* %4, align 8
  br label %242

156:                                              ; preds = %152, %110
  %157 = load i32, i32* %12, align 4
  %158 = add nsw i32 %157, 1
  %159 = load i8*, i8** %9, align 8
  %160 = sext i32 %158 to i64
  %161 = getelementptr inbounds i8, i8* %159, i64 %160
  store i8* %161, i8** %9, align 8
  br label %162

162:                                              ; preds = %156
  %163 = load i8*, i8** %9, align 8
  %164 = load i64, i64* %7, align 8
  %165 = call i32 @qword_get(i8** %8, i8* %163, i64 %164)
  store i32 %165, i32* %12, align 4
  %166 = icmp sgt i32 %165, 0
  br i1 %166, label %62, label %167

167:                                              ; preds = %162
  %168 = load %struct.nfsd_net*, %struct.nfsd_net** %17, align 8
  %169 = call i32 @nfsd_reset_versions(%struct.nfsd_net* %168)
  br label %170

170:                                              ; preds = %167, %3
  store i32 0, i32* %12, align 4
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %16, align 8
  %171 = load i32, i32* @SIMPLE_TRANSACTION_LIMIT, align 4
  store i32 %171, i32* %14, align 4
  store i32 2, i32* %13, align 4
  br label %172

172:                                              ; preds = %223, %170
  %173 = load i32, i32* %13, align 4
  %174 = icmp sle i32 %173, 4
  br i1 %174, label %175, label %226

175:                                              ; preds = %172
  %176 = load %struct.nfsd_net*, %struct.nfsd_net** %17, align 8
  %177 = load i32, i32* %13, align 4
  %178 = load i32, i32* @NFSD_AVAIL, align 4
  %179 = call i32 @nfsd_vers(%struct.nfsd_net* %176, i32 %177, i32 %178)
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %182, label %181

181:                                              ; preds = %175
  br label %223

182:                                              ; preds = %175
  store i32 -1, i32* %20, align 4
  br label %183

183:                                              ; preds = %220, %182
  %184 = load %struct.nfsd_net*, %struct.nfsd_net** %17, align 8
  %185 = load i8*, i8** %6, align 8
  %186 = load i32, i32* %14, align 4
  %187 = load i8*, i8** %16, align 8
  %188 = load i32, i32* %13, align 4
  %189 = load i32, i32* %20, align 4
  %190 = call i32 @nfsd_print_version_support(%struct.nfsd_net* %184, i8* %185, i32 %186, i8* %187, i32 %188, i32 %189)
  store i32 %190, i32* %12, align 4
  %191 = load i32, i32* %12, align 4
  %192 = load i32, i32* %14, align 4
  %193 = icmp sge i32 %191, %192
  br i1 %193, label %194, label %195

194:                                              ; preds = %183
  br label %227

195:                                              ; preds = %183
  %196 = load i32, i32* %12, align 4
  %197 = load i32, i32* %14, align 4
  %198 = sub nsw i32 %197, %196
  store i32 %198, i32* %14, align 4
  %199 = load i32, i32* %12, align 4
  %200 = load i8*, i8** %6, align 8
  %201 = sext i32 %199 to i64
  %202 = getelementptr inbounds i8, i8* %200, i64 %201
  store i8* %202, i8** %6, align 8
  %203 = load i32, i32* %12, align 4
  %204 = sext i32 %203 to i64
  %205 = load i64, i64* %15, align 8
  %206 = add nsw i64 %205, %204
  store i64 %206, i64* %15, align 8
  %207 = load i32, i32* %20, align 4
  %208 = add nsw i32 %207, 1
  store i32 %208, i32* %20, align 4
  %209 = load i32, i32* %12, align 4
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %211, label %212

211:                                              ; preds = %195
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8** %16, align 8
  br label %212

212:                                              ; preds = %211, %195
  br label %213

213:                                              ; preds = %212
  %214 = load i32, i32* %13, align 4
  %215 = icmp eq i32 %214, 4
  br i1 %215, label %216, label %220

216:                                              ; preds = %213
  %217 = load i32, i32* %20, align 4
  %218 = load i32, i32* @NFSD_SUPPORTED_MINOR_VERSION, align 4
  %219 = icmp sle i32 %217, %218
  br label %220

220:                                              ; preds = %216, %213
  %221 = phi i1 [ false, %213 ], [ %219, %216 ]
  br i1 %221, label %183, label %222

222:                                              ; preds = %220
  br label %223

223:                                              ; preds = %222, %181
  %224 = load i32, i32* %13, align 4
  %225 = add nsw i32 %224, 1
  store i32 %225, i32* %13, align 4
  br label %172

226:                                              ; preds = %172
  br label %227

227:                                              ; preds = %226, %194
  %228 = load i8*, i8** %6, align 8
  %229 = load i32, i32* %14, align 4
  %230 = call i32 @snprintf(i8* %228, i32 %229, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  store i32 %230, i32* %12, align 4
  %231 = load i32, i32* %12, align 4
  %232 = load i32, i32* %14, align 4
  %233 = icmp sge i32 %231, %232
  br i1 %233, label %234, label %237

234:                                              ; preds = %227
  %235 = load i64, i64* @EINVAL, align 8
  %236 = sub nsw i64 0, %235
  store i64 %236, i64* %4, align 8
  br label %242

237:                                              ; preds = %227
  %238 = load i64, i64* %15, align 8
  %239 = load i32, i32* %12, align 4
  %240 = sext i32 %239 to i64
  %241 = add nsw i64 %238, %240
  store i64 %241, i64* %4, align 8
  br label %242

242:                                              ; preds = %237, %234, %153, %126, %95, %87, %58, %44, %33
  %243 = load i64, i64* %4, align 8
  ret i64 %243
}

declare dso_local %struct.nfsd_net* @net_generic(i32, i32) #1

declare dso_local i32 @netns(%struct.file*) #1

declare dso_local i32 @qword_get(i8**, i8*, i64) #1

declare dso_local i32 @simple_strtol(i8*, i8**, i32) #1

declare dso_local i64 @kstrtouint(i8*, i32, i32*) #1

declare dso_local i32 @nfsd_vers(%struct.nfsd_net*, i32, i32) #1

declare dso_local i32 @nfsd_minorversion(%struct.nfsd_net*, i32, i32) #1

declare dso_local i32 @nfsd_reset_versions(%struct.nfsd_net*) #1

declare dso_local i32 @nfsd_print_version_support(%struct.nfsd_net*, i8*, i32, i8*, i32, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
