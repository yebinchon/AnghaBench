; ModuleID = '/home/carl/AnghaBench/linux/security/tomoyo/extr_audit.c_tomoyo_print_bprm.c'
source_filename = "/home/carl/AnghaBench/linux/security/tomoyo/extr_audit.c_tomoyo_print_bprm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.linux_binprm = type { i64, i32, i32 }
%struct.tomoyo_page_dump = type { i8* }

@tomoyo_print_bprm.tomoyo_buffer_len = internal constant i32 8192, align 4
@GFP_NOFS = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [10 x i8] c"argv[]={ \00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"} envp[]={ \00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"... \00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"argv[]={ ... } envp[]= { ... }\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.linux_binprm*, %struct.tomoyo_page_dump*)* @tomoyo_print_bprm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @tomoyo_print_bprm(%struct.linux_binprm* %0, %struct.tomoyo_page_dump* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.linux_binprm*, align 8
  %5 = alloca %struct.tomoyo_page_dump*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i8, align 1
  store %struct.linux_binprm* %0, %struct.linux_binprm** %4, align 8
  store %struct.tomoyo_page_dump* %1, %struct.tomoyo_page_dump** %5, align 8
  %17 = load i32, i32* @GFP_NOFS, align 4
  %18 = call i8* @kzalloc(i32 8192, i32 %17)
  store i8* %18, i8** %6, align 8
  %19 = load %struct.linux_binprm*, %struct.linux_binprm** %4, align 8
  %20 = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %10, align 8
  %22 = load i64, i64* %10, align 8
  %23 = load i64, i64* @PAGE_SIZE, align 8
  %24 = urem i64 %22, %23
  %25 = trunc i64 %24 to i32
  store i32 %25, i32* %11, align 4
  %26 = load %struct.linux_binprm*, %struct.linux_binprm** %4, align 8
  %27 = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  store i32 %28, i32* %12, align 4
  %29 = load %struct.linux_binprm*, %struct.linux_binprm** %4, align 8
  %30 = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %32 = load i8*, i8** %6, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %2
  store i8* null, i8** %3, align 8
  br label %223

35:                                               ; preds = %2
  %36 = load i8*, i8** %6, align 8
  %37 = call i32 @snprintf(i8* %36, i32 8191, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  store i32 %37, i32* %9, align 4
  %38 = load i8*, i8** %6, align 8
  %39 = load i32, i32* %9, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i8, i8* %38, i64 %40
  store i8* %41, i8** %7, align 8
  %42 = load i32, i32* %12, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %49, label %44

44:                                               ; preds = %35
  %45 = load i8*, i8** %7, align 8
  %46 = call i32 @memmove(i8* %45, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 11)
  %47 = load i8*, i8** %7, align 8
  %48 = getelementptr inbounds i8, i8* %47, i64 11
  store i8* %48, i8** %7, align 8
  br label %49

49:                                               ; preds = %44, %35
  %50 = load i8*, i8** %7, align 8
  store i8* %50, i8** %8, align 8
  br label %51

51:                                               ; preds = %213, %49
  %52 = load i32, i32* %12, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %57, label %54

54:                                               ; preds = %51
  %55 = load i32, i32* %13, align 4
  %56 = icmp ne i32 %55, 0
  br label %57

57:                                               ; preds = %54, %51
  %58 = phi i1 [ true, %51 ], [ %56, %54 ]
  br i1 %58, label %59, label %214

59:                                               ; preds = %57
  %60 = load %struct.linux_binprm*, %struct.linux_binprm** %4, align 8
  %61 = load i64, i64* %10, align 8
  %62 = load %struct.tomoyo_page_dump*, %struct.tomoyo_page_dump** %5, align 8
  %63 = call i32 @tomoyo_dump_page(%struct.linux_binprm* %60, i64 %61, %struct.tomoyo_page_dump* %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %66, label %65

65:                                               ; preds = %59
  br label %219

66:                                               ; preds = %59
  %67 = load i64, i64* @PAGE_SIZE, align 8
  %68 = load i32, i32* %11, align 4
  %69 = sext i32 %68 to i64
  %70 = sub i64 %67, %69
  %71 = load i64, i64* %10, align 8
  %72 = add i64 %71, %70
  store i64 %72, i64* %10, align 8
  br label %73

73:                                               ; preds = %212, %162, %66
  %74 = load i32, i32* %11, align 4
  %75 = sext i32 %74 to i64
  %76 = load i64, i64* @PAGE_SIZE, align 8
  %77 = icmp ult i64 %75, %76
  br i1 %77, label %78, label %213

78:                                               ; preds = %73
  %79 = load %struct.tomoyo_page_dump*, %struct.tomoyo_page_dump** %5, align 8
  %80 = getelementptr inbounds %struct.tomoyo_page_dump, %struct.tomoyo_page_dump* %79, i32 0, i32 0
  %81 = load i8*, i8** %80, align 8
  store i8* %81, i8** %15, align 8
  %82 = load i8*, i8** %15, align 8
  %83 = load i32, i32* %11, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %11, align 4
  %85 = sext i32 %83 to i64
  %86 = getelementptr inbounds i8, i8* %82, i64 %85
  %87 = load i8, i8* %86, align 1
  store i8 %87, i8* %16, align 1
  %88 = load i8*, i8** %7, align 8
  %89 = load i8*, i8** %8, align 8
  %90 = icmp eq i8* %88, %89
  br i1 %90, label %91, label %94

91:                                               ; preds = %78
  %92 = load i8*, i8** %7, align 8
  %93 = getelementptr inbounds i8, i8* %92, i32 1
  store i8* %93, i8** %7, align 8
  store i8 34, i8* %92, align 1
  br label %94

94:                                               ; preds = %91, %78
  %95 = load i8*, i8** %7, align 8
  %96 = load i8*, i8** %6, align 8
  %97 = getelementptr inbounds i8, i8* %96, i64 8192
  %98 = getelementptr inbounds i8, i8* %97, i64 -32
  %99 = icmp uge i8* %95, %98
  br i1 %99, label %100, label %101

100:                                              ; preds = %94
  store i32 1, i32* %14, align 4
  br label %159

101:                                              ; preds = %94
  %102 = load i8, i8* %16, align 1
  %103 = zext i8 %102 to i32
  %104 = icmp eq i32 %103, 92
  br i1 %104, label %105, label %110

105:                                              ; preds = %101
  %106 = load i8*, i8** %7, align 8
  %107 = getelementptr inbounds i8, i8* %106, i32 1
  store i8* %107, i8** %7, align 8
  store i8 92, i8* %106, align 1
  %108 = load i8*, i8** %7, align 8
  %109 = getelementptr inbounds i8, i8* %108, i32 1
  store i8* %109, i8** %7, align 8
  store i8 92, i8* %108, align 1
  br label %158

110:                                              ; preds = %101
  %111 = load i8, i8* %16, align 1
  %112 = zext i8 %111 to i32
  %113 = icmp sgt i32 %112, 32
  br i1 %113, label %114, label %122

114:                                              ; preds = %110
  %115 = load i8, i8* %16, align 1
  %116 = zext i8 %115 to i32
  %117 = icmp slt i32 %116, 127
  br i1 %117, label %118, label %122

118:                                              ; preds = %114
  %119 = load i8, i8* %16, align 1
  %120 = load i8*, i8** %7, align 8
  %121 = getelementptr inbounds i8, i8* %120, i32 1
  store i8* %121, i8** %7, align 8
  store i8 %119, i8* %120, align 1
  br label %157

122:                                              ; preds = %114, %110
  %123 = load i8, i8* %16, align 1
  %124 = icmp ne i8 %123, 0
  br i1 %124, label %131, label %125

125:                                              ; preds = %122
  %126 = load i8*, i8** %7, align 8
  %127 = getelementptr inbounds i8, i8* %126, i32 1
  store i8* %127, i8** %7, align 8
  store i8 34, i8* %126, align 1
  %128 = load i8*, i8** %7, align 8
  %129 = getelementptr inbounds i8, i8* %128, i32 1
  store i8* %129, i8** %7, align 8
  store i8 32, i8* %128, align 1
  %130 = load i8*, i8** %7, align 8
  store i8* %130, i8** %8, align 8
  br label %156

131:                                              ; preds = %122
  %132 = load i8*, i8** %7, align 8
  %133 = getelementptr inbounds i8, i8* %132, i32 1
  store i8* %133, i8** %7, align 8
  store i8 92, i8* %132, align 1
  %134 = load i8, i8* %16, align 1
  %135 = zext i8 %134 to i32
  %136 = ashr i32 %135, 6
  %137 = add nsw i32 %136, 48
  %138 = trunc i32 %137 to i8
  %139 = load i8*, i8** %7, align 8
  %140 = getelementptr inbounds i8, i8* %139, i32 1
  store i8* %140, i8** %7, align 8
  store i8 %138, i8* %139, align 1
  %141 = load i8, i8* %16, align 1
  %142 = zext i8 %141 to i32
  %143 = ashr i32 %142, 3
  %144 = and i32 %143, 7
  %145 = add nsw i32 %144, 48
  %146 = trunc i32 %145 to i8
  %147 = load i8*, i8** %7, align 8
  %148 = getelementptr inbounds i8, i8* %147, i32 1
  store i8* %148, i8** %7, align 8
  store i8 %146, i8* %147, align 1
  %149 = load i8, i8* %16, align 1
  %150 = zext i8 %149 to i32
  %151 = and i32 %150, 7
  %152 = add nsw i32 %151, 48
  %153 = trunc i32 %152 to i8
  %154 = load i8*, i8** %7, align 8
  %155 = getelementptr inbounds i8, i8* %154, i32 1
  store i8* %155, i8** %7, align 8
  store i8 %153, i8* %154, align 1
  br label %156

156:                                              ; preds = %131, %125
  br label %157

157:                                              ; preds = %156, %118
  br label %158

158:                                              ; preds = %157, %105
  br label %159

159:                                              ; preds = %158, %100
  %160 = load i8, i8* %16, align 1
  %161 = icmp ne i8 %160, 0
  br i1 %161, label %162, label %163

162:                                              ; preds = %159
  br label %73

163:                                              ; preds = %159
  %164 = load i32, i32* %12, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %186

166:                                              ; preds = %163
  %167 = load i32, i32* %12, align 4
  %168 = add nsw i32 %167, -1
  store i32 %168, i32* %12, align 4
  %169 = icmp eq i32 %168, 0
  br i1 %169, label %170, label %185

170:                                              ; preds = %166
  %171 = load i32, i32* %14, align 4
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %179

173:                                              ; preds = %170
  %174 = load i8*, i8** %8, align 8
  store i8* %174, i8** %7, align 8
  %175 = load i8*, i8** %7, align 8
  %176 = call i32 @memmove(i8* %175, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 4)
  %177 = load i8*, i8** %7, align 8
  %178 = getelementptr inbounds i8, i8* %177, i64 4
  store i8* %178, i8** %7, align 8
  br label %179

179:                                              ; preds = %173, %170
  %180 = load i8*, i8** %7, align 8
  %181 = call i32 @memmove(i8* %180, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 11)
  %182 = load i8*, i8** %7, align 8
  %183 = getelementptr inbounds i8, i8* %182, i64 11
  store i8* %183, i8** %7, align 8
  %184 = load i8*, i8** %7, align 8
  store i8* %184, i8** %8, align 8
  store i32 0, i32* %14, align 4
  br label %185

185:                                              ; preds = %179, %166
  br label %205

186:                                              ; preds = %163
  %187 = load i32, i32* %13, align 4
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %204

189:                                              ; preds = %186
  %190 = load i32, i32* %13, align 4
  %191 = add nsw i32 %190, -1
  store i32 %191, i32* %13, align 4
  %192 = icmp eq i32 %191, 0
  br i1 %192, label %193, label %203

193:                                              ; preds = %189
  %194 = load i32, i32* %14, align 4
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %202

196:                                              ; preds = %193
  %197 = load i8*, i8** %8, align 8
  store i8* %197, i8** %7, align 8
  %198 = load i8*, i8** %7, align 8
  %199 = call i32 @memmove(i8* %198, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 4)
  %200 = load i8*, i8** %7, align 8
  %201 = getelementptr inbounds i8, i8* %200, i64 4
  store i8* %201, i8** %7, align 8
  br label %202

202:                                              ; preds = %196, %193
  br label %203

203:                                              ; preds = %202, %189
  br label %204

204:                                              ; preds = %203, %186
  br label %205

205:                                              ; preds = %204, %185
  %206 = load i32, i32* %12, align 4
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %212, label %208

208:                                              ; preds = %205
  %209 = load i32, i32* %13, align 4
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %212, label %211

211:                                              ; preds = %208
  br label %213

212:                                              ; preds = %208, %205
  br label %73

213:                                              ; preds = %211, %73
  store i32 0, i32* %11, align 4
  br label %51

214:                                              ; preds = %57
  %215 = load i8*, i8** %7, align 8
  %216 = getelementptr inbounds i8, i8* %215, i32 1
  store i8* %216, i8** %7, align 8
  store i8 125, i8* %215, align 1
  %217 = load i8*, i8** %7, align 8
  store i8 0, i8* %217, align 1
  %218 = load i8*, i8** %6, align 8
  store i8* %218, i8** %3, align 8
  br label %223

219:                                              ; preds = %65
  %220 = load i8*, i8** %6, align 8
  %221 = call i32 @snprintf(i8* %220, i32 8191, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  %222 = load i8*, i8** %6, align 8
  store i8* %222, i8** %3, align 8
  br label %223

223:                                              ; preds = %219, %214, %34
  %224 = load i8*, i8** %3, align 8
  ret i8* %224
}

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*) #1

declare dso_local i32 @memmove(i8*, i8*, i32) #1

declare dso_local i32 @tomoyo_dump_page(%struct.linux_binprm*, i64, %struct.tomoyo_page_dump*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
