; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace_events_hist.c_parse_synth_field.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace_events_hist.c_parse_synth_field.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.synth_field = type { i8*, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [9 x i8] c"unsigned\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"unsigned \00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.synth_field* (i32, i8**, i32*)* @parse_synth_field to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.synth_field* @parse_synth_field(i32 %0, i8** %1, i32* %2) #0 {
  %4 = alloca %struct.synth_field*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.synth_field*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i8** %1, i8*** %6, align 8
  store i32* %2, i32** %7, align 8
  store i8* null, i8** %9, align 8
  %15 = load i8**, i8*** %6, align 8
  %16 = getelementptr inbounds i8*, i8** %15, i64 0
  %17 = load i8*, i8** %16, align 8
  store i8* %17, i8** %10, align 8
  store i32 0, i32* %14, align 4
  %18 = load i8*, i8** %10, align 8
  %19 = getelementptr inbounds i8, i8* %18, i64 0
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp eq i32 %21, 59
  br i1 %22, label %23, label %26

23:                                               ; preds = %3
  %24 = load i8*, i8** %10, align 8
  %25 = getelementptr inbounds i8, i8* %24, i32 1
  store i8* %25, i8** %10, align 8
  br label %26

26:                                               ; preds = %23, %3
  %27 = load i8*, i8** %10, align 8
  %28 = call i32 @strcmp(i8* %27, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %45, label %30

30:                                               ; preds = %26
  %31 = load i32, i32* %5, align 4
  %32 = icmp slt i32 %31, 3
  br i1 %32, label %33, label %37

33:                                               ; preds = %30
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  %36 = call %struct.synth_field* @ERR_PTR(i32 %35)
  store %struct.synth_field* %36, %struct.synth_field** %4, align 8
  br label %219

37:                                               ; preds = %30
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8** %9, align 8
  %38 = load i8**, i8*** %6, align 8
  %39 = getelementptr inbounds i8*, i8** %38, i64 1
  %40 = load i8*, i8** %39, align 8
  store i8* %40, i8** %10, align 8
  %41 = load i8**, i8*** %6, align 8
  %42 = getelementptr inbounds i8*, i8** %41, i64 2
  %43 = load i8*, i8** %42, align 8
  store i8* %43, i8** %11, align 8
  %44 = load i32*, i32** %7, align 8
  store i32 3, i32* %44, align 4
  br label %50

45:                                               ; preds = %26
  %46 = load i8**, i8*** %6, align 8
  %47 = getelementptr inbounds i8*, i8** %46, i64 1
  %48 = load i8*, i8** %47, align 8
  store i8* %48, i8** %11, align 8
  %49 = load i32*, i32** %7, align 8
  store i32 2, i32* %49, align 4
  br label %50

50:                                               ; preds = %45, %37
  %51 = load i32, i32* @GFP_KERNEL, align 4
  %52 = call i8* @kzalloc(i32 24, i32 %51)
  %53 = bitcast i8* %52 to %struct.synth_field*
  store %struct.synth_field* %53, %struct.synth_field** %8, align 8
  %54 = load %struct.synth_field*, %struct.synth_field** %8, align 8
  %55 = icmp ne %struct.synth_field* %54, null
  br i1 %55, label %60, label %56

56:                                               ; preds = %50
  %57 = load i32, i32* @ENOMEM, align 4
  %58 = sub nsw i32 0, %57
  %59 = call %struct.synth_field* @ERR_PTR(i32 %58)
  store %struct.synth_field* %59, %struct.synth_field** %4, align 8
  br label %219

60:                                               ; preds = %50
  %61 = load i8*, i8** %11, align 8
  %62 = call i32 @strlen(i8* %61)
  store i32 %62, i32* %13, align 4
  %63 = load i8*, i8** %11, align 8
  %64 = call i8* @strchr(i8* %63, i8 signext 91)
  store i8* %64, i8** %12, align 8
  %65 = load i8*, i8** %12, align 8
  %66 = icmp ne i8* %65, null
  br i1 %66, label %67, label %72

67:                                               ; preds = %60
  %68 = load i8*, i8** %12, align 8
  %69 = call i32 @strlen(i8* %68)
  %70 = load i32, i32* %13, align 4
  %71 = sub nsw i32 %70, %69
  store i32 %71, i32* %13, align 4
  br label %85

72:                                               ; preds = %60
  %73 = load i8*, i8** %11, align 8
  %74 = load i32, i32* %13, align 4
  %75 = sub nsw i32 %74, 1
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i8, i8* %73, i64 %76
  %78 = load i8, i8* %77, align 1
  %79 = sext i8 %78 to i32
  %80 = icmp eq i32 %79, 59
  br i1 %80, label %81, label %84

81:                                               ; preds = %72
  %82 = load i32, i32* %13, align 4
  %83 = add nsw i32 %82, -1
  store i32 %83, i32* %13, align 4
  br label %84

84:                                               ; preds = %81, %72
  br label %85

85:                                               ; preds = %84, %67
  %86 = load i8*, i8** %11, align 8
  %87 = load i32, i32* %13, align 4
  %88 = load i32, i32* @GFP_KERNEL, align 4
  %89 = call i32 @kmemdup_nul(i8* %86, i32 %87, i32 %88)
  %90 = load %struct.synth_field*, %struct.synth_field** %8, align 8
  %91 = getelementptr inbounds %struct.synth_field, %struct.synth_field* %90, i32 0, i32 4
  store i32 %89, i32* %91, align 4
  %92 = load %struct.synth_field*, %struct.synth_field** %8, align 8
  %93 = getelementptr inbounds %struct.synth_field, %struct.synth_field* %92, i32 0, i32 4
  %94 = load i32, i32* %93, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %99, label %96

96:                                               ; preds = %85
  %97 = load i32, i32* @ENOMEM, align 4
  %98 = sub nsw i32 0, %97
  store i32 %98, i32* %14, align 4
  br label %214

99:                                               ; preds = %85
  %100 = load i8*, i8** %10, align 8
  %101 = getelementptr inbounds i8, i8* %100, i64 0
  %102 = load i8, i8* %101, align 1
  %103 = sext i8 %102 to i32
  %104 = icmp eq i32 %103, 59
  br i1 %104, label %105, label %108

105:                                              ; preds = %99
  %106 = load i8*, i8** %10, align 8
  %107 = getelementptr inbounds i8, i8* %106, i32 1
  store i8* %107, i8** %10, align 8
  br label %108

108:                                              ; preds = %105, %99
  %109 = load i8*, i8** %10, align 8
  %110 = call i32 @strlen(i8* %109)
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %13, align 4
  %112 = load i8*, i8** %12, align 8
  %113 = icmp ne i8* %112, null
  br i1 %113, label %114, label %119

114:                                              ; preds = %108
  %115 = load i8*, i8** %12, align 8
  %116 = call i32 @strlen(i8* %115)
  %117 = load i32, i32* %13, align 4
  %118 = add nsw i32 %117, %116
  store i32 %118, i32* %13, align 4
  br label %119

119:                                              ; preds = %114, %108
  %120 = load i8*, i8** %9, align 8
  %121 = icmp ne i8* %120, null
  br i1 %121, label %122, label %127

122:                                              ; preds = %119
  %123 = load i8*, i8** %9, align 8
  %124 = call i32 @strlen(i8* %123)
  %125 = load i32, i32* %13, align 4
  %126 = add nsw i32 %125, %124
  store i32 %126, i32* %13, align 4
  br label %127

127:                                              ; preds = %122, %119
  %128 = load i32, i32* %13, align 4
  %129 = load i32, i32* @GFP_KERNEL, align 4
  %130 = call i8* @kzalloc(i32 %128, i32 %129)
  %131 = load %struct.synth_field*, %struct.synth_field** %8, align 8
  %132 = getelementptr inbounds %struct.synth_field, %struct.synth_field* %131, i32 0, i32 0
  store i8* %130, i8** %132, align 8
  %133 = load %struct.synth_field*, %struct.synth_field** %8, align 8
  %134 = getelementptr inbounds %struct.synth_field, %struct.synth_field* %133, i32 0, i32 0
  %135 = load i8*, i8** %134, align 8
  %136 = icmp ne i8* %135, null
  br i1 %136, label %140, label %137

137:                                              ; preds = %127
  %138 = load i32, i32* @ENOMEM, align 4
  %139 = sub nsw i32 0, %138
  store i32 %139, i32* %14, align 4
  br label %214

140:                                              ; preds = %127
  %141 = load i8*, i8** %9, align 8
  %142 = icmp ne i8* %141, null
  br i1 %142, label %143, label %149

143:                                              ; preds = %140
  %144 = load %struct.synth_field*, %struct.synth_field** %8, align 8
  %145 = getelementptr inbounds %struct.synth_field, %struct.synth_field* %144, i32 0, i32 0
  %146 = load i8*, i8** %145, align 8
  %147 = load i8*, i8** %9, align 8
  %148 = call i32 @strcat(i8* %146, i8* %147)
  br label %149

149:                                              ; preds = %143, %140
  %150 = load %struct.synth_field*, %struct.synth_field** %8, align 8
  %151 = getelementptr inbounds %struct.synth_field, %struct.synth_field* %150, i32 0, i32 0
  %152 = load i8*, i8** %151, align 8
  %153 = load i8*, i8** %10, align 8
  %154 = call i32 @strcat(i8* %152, i8* %153)
  %155 = load i8*, i8** %12, align 8
  %156 = icmp ne i8* %155, null
  br i1 %156, label %157, label %182

157:                                              ; preds = %149
  %158 = load %struct.synth_field*, %struct.synth_field** %8, align 8
  %159 = getelementptr inbounds %struct.synth_field, %struct.synth_field* %158, i32 0, i32 0
  %160 = load i8*, i8** %159, align 8
  %161 = load i8*, i8** %12, align 8
  %162 = call i32 @strcat(i8* %160, i8* %161)
  %163 = load %struct.synth_field*, %struct.synth_field** %8, align 8
  %164 = getelementptr inbounds %struct.synth_field, %struct.synth_field* %163, i32 0, i32 0
  %165 = load i8*, i8** %164, align 8
  %166 = load i32, i32* %13, align 4
  %167 = sub nsw i32 %166, 1
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds i8, i8* %165, i64 %168
  %170 = load i8, i8* %169, align 1
  %171 = sext i8 %170 to i32
  %172 = icmp eq i32 %171, 59
  br i1 %172, label %173, label %181

173:                                              ; preds = %157
  %174 = load %struct.synth_field*, %struct.synth_field** %8, align 8
  %175 = getelementptr inbounds %struct.synth_field, %struct.synth_field* %174, i32 0, i32 0
  %176 = load i8*, i8** %175, align 8
  %177 = load i32, i32* %13, align 4
  %178 = sub nsw i32 %177, 1
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds i8, i8* %176, i64 %179
  store i8 0, i8* %180, align 1
  br label %181

181:                                              ; preds = %173, %157
  br label %182

182:                                              ; preds = %181, %149
  %183 = load %struct.synth_field*, %struct.synth_field** %8, align 8
  %184 = getelementptr inbounds %struct.synth_field, %struct.synth_field* %183, i32 0, i32 0
  %185 = load i8*, i8** %184, align 8
  %186 = call i32 @synth_field_size(i8* %185)
  %187 = load %struct.synth_field*, %struct.synth_field** %8, align 8
  %188 = getelementptr inbounds %struct.synth_field, %struct.synth_field* %187, i32 0, i32 3
  store i32 %186, i32* %188, align 8
  %189 = load %struct.synth_field*, %struct.synth_field** %8, align 8
  %190 = getelementptr inbounds %struct.synth_field, %struct.synth_field* %189, i32 0, i32 3
  %191 = load i32, i32* %190, align 8
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %196, label %193

193:                                              ; preds = %182
  %194 = load i32, i32* @EINVAL, align 4
  %195 = sub nsw i32 0, %194
  store i32 %195, i32* %14, align 4
  br label %214

196:                                              ; preds = %182
  %197 = load %struct.synth_field*, %struct.synth_field** %8, align 8
  %198 = getelementptr inbounds %struct.synth_field, %struct.synth_field* %197, i32 0, i32 0
  %199 = load i8*, i8** %198, align 8
  %200 = call i64 @synth_field_is_string(i8* %199)
  %201 = icmp ne i64 %200, 0
  br i1 %201, label %202, label %205

202:                                              ; preds = %196
  %203 = load %struct.synth_field*, %struct.synth_field** %8, align 8
  %204 = getelementptr inbounds %struct.synth_field, %struct.synth_field* %203, i32 0, i32 1
  store i32 1, i32* %204, align 8
  br label %205

205:                                              ; preds = %202, %196
  %206 = load %struct.synth_field*, %struct.synth_field** %8, align 8
  %207 = getelementptr inbounds %struct.synth_field, %struct.synth_field* %206, i32 0, i32 0
  %208 = load i8*, i8** %207, align 8
  %209 = call i32 @synth_field_signed(i8* %208)
  %210 = load %struct.synth_field*, %struct.synth_field** %8, align 8
  %211 = getelementptr inbounds %struct.synth_field, %struct.synth_field* %210, i32 0, i32 2
  store i32 %209, i32* %211, align 4
  br label %212

212:                                              ; preds = %214, %205
  %213 = load %struct.synth_field*, %struct.synth_field** %8, align 8
  store %struct.synth_field* %213, %struct.synth_field** %4, align 8
  br label %219

214:                                              ; preds = %193, %137, %96
  %215 = load %struct.synth_field*, %struct.synth_field** %8, align 8
  %216 = call i32 @free_synth_field(%struct.synth_field* %215)
  %217 = load i32, i32* %14, align 4
  %218 = call %struct.synth_field* @ERR_PTR(i32 %217)
  store %struct.synth_field* %218, %struct.synth_field** %8, align 8
  br label %212

219:                                              ; preds = %212, %56, %33
  %220 = load %struct.synth_field*, %struct.synth_field** %4, align 8
  ret %struct.synth_field* %220
}

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local %struct.synth_field* @ERR_PTR(i32) #1

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @kmemdup_nul(i8*, i32, i32) #1

declare dso_local i32 @strcat(i8*, i8*) #1

declare dso_local i32 @synth_field_size(i8*) #1

declare dso_local i64 @synth_field_is_string(i8*) #1

declare dso_local i32 @synth_field_signed(i8*) #1

declare dso_local i32 @free_synth_field(%struct.synth_field*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
