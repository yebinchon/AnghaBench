; ModuleID = '/home/carl/AnghaBench/linux/tools/power/x86/x86_energy_perf_policy/extr_x86_energy_perf_policy.c_parse_cmdline_cpu.c'
source_filename = "/home/carl/AnghaBench/linux/tools/power/x86/x86_energy_perf_policy/extr_x86_energy_perf_policy.c_parse_cmdline_cpu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@pkg_selected_set = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [14 x i8] c"--cpu | --pkg\00", align 1
@max_cpu_num = common dso_local global i32 0, align 4
@cpu_selected_set = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [17 x i8] c"cpu_selected_set\00", align 1
@cpu_setsize = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"Requested cpu%d exceeds max cpu%d\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"all\00", align 1
@cpu_present_set = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [5 x i8] c"even\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"odd\00", align 1
@.str.6 = private unnamed_addr constant [32 x i8] c"--cpu cpu-set: confused by '%s'\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @parse_cmdline_cpu(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  store i32 0, i32* %5, align 4
  %7 = load i64, i64* @pkg_selected_set, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = call i32 (...) @usage()
  %11 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %12

12:                                               ; preds = %9, %1
  %13 = load i32, i32* @max_cpu_num, align 4
  %14 = add nsw i32 %13, 1
  %15 = call i32* @CPU_ALLOC(i32 %14)
  store i32* %15, i32** @cpu_selected_set, align 8
  %16 = load i32*, i32** @cpu_selected_set, align 8
  %17 = icmp eq i32* %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %12
  %19 = call i32 @err(i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  br label %20

20:                                               ; preds = %18, %12
  %21 = load i32, i32* @cpu_setsize, align 4
  %22 = load i32*, i32** @cpu_selected_set, align 8
  %23 = call i32 @CPU_ZERO_S(i32 %21, i32* %22)
  %24 = load i8*, i8** %2, align 8
  store i8* %24, i8** %3, align 8
  br label %25

25:                                               ; preds = %195, %77, %56, %40, %20
  %26 = load i8*, i8** %3, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %28, label %33

28:                                               ; preds = %25
  %29 = load i8*, i8** %3, align 8
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp ne i32 %31, 0
  br label %33

33:                                               ; preds = %28, %25
  %34 = phi i1 [ false, %25 ], [ %32, %28 ]
  br i1 %34, label %35, label %201

35:                                               ; preds = %33
  %36 = load i8*, i8** %3, align 8
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp eq i32 %38, 44
  br i1 %39, label %40, label %43

40:                                               ; preds = %35
  %41 = load i8*, i8** %3, align 8
  %42 = getelementptr inbounds i8, i8* %41, i32 1
  store i8* %42, i8** %3, align 8
  br label %25

43:                                               ; preds = %35
  %44 = load i8*, i8** %3, align 8
  %45 = load i8, i8* %44, align 1
  %46 = sext i8 %45 to i32
  %47 = icmp eq i32 %46, 45
  br i1 %47, label %48, label %79

48:                                               ; preds = %43
  %49 = load i8*, i8** %3, align 8
  %50 = getelementptr inbounds i8, i8* %49, i32 1
  store i8* %50, i8** %3, align 8
  %51 = load i8*, i8** %3, align 8
  %52 = call i32 @strtol(i8* %51, i8** %4, i32 10)
  store i32 %52, i32* %6, align 4
  %53 = load i8*, i8** %3, align 8
  %54 = load i8*, i8** %4, align 8
  %55 = icmp eq i8* %53, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %48
  br label %25

57:                                               ; preds = %48
  br label %58

58:                                               ; preds = %70, %57
  %59 = load i32, i32* %5, align 4
  %60 = load i32, i32* %6, align 4
  %61 = icmp sle i32 %59, %60
  br i1 %61, label %62, label %77

62:                                               ; preds = %58
  %63 = load i32, i32* %5, align 4
  %64 = load i32, i32* @max_cpu_num, align 4
  %65 = icmp sgt i32 %63, %64
  br i1 %65, label %66, label %70

66:                                               ; preds = %62
  %67 = load i32, i32* %5, align 4
  %68 = load i32, i32* @max_cpu_num, align 4
  %69 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %67, i32 %68)
  br label %70

70:                                               ; preds = %66, %62
  %71 = load i32, i32* %5, align 4
  %72 = load i32, i32* @cpu_setsize, align 4
  %73 = load i32*, i32** @cpu_selected_set, align 8
  %74 = call i32 @CPU_SET_S(i32 %71, i32 %72, i32* %73)
  %75 = load i32, i32* %5, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %5, align 4
  br label %58

77:                                               ; preds = %58
  %78 = load i8*, i8** %4, align 8
  store i8* %78, i8** %3, align 8
  br label %25

79:                                               ; preds = %43
  %80 = load i8*, i8** %3, align 8
  %81 = call i64 @strncmp(i8* %80, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 3)
  %82 = icmp eq i64 %81, 0
  br i1 %82, label %83, label %112

83:                                               ; preds = %79
  store i32 0, i32* %5, align 4
  br label %84

84:                                               ; preds = %100, %83
  %85 = load i32, i32* %5, align 4
  %86 = load i32, i32* @max_cpu_num, align 4
  %87 = icmp sle i32 %85, %86
  br i1 %87, label %88, label %103

88:                                               ; preds = %84
  %89 = load i32, i32* %5, align 4
  %90 = load i32, i32* @cpu_setsize, align 4
  %91 = load i32, i32* @cpu_present_set, align 4
  %92 = call i64 @CPU_ISSET_S(i32 %89, i32 %90, i32 %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %99

94:                                               ; preds = %88
  %95 = load i32, i32* %5, align 4
  %96 = load i32, i32* @cpu_setsize, align 4
  %97 = load i32*, i32** @cpu_selected_set, align 8
  %98 = call i32 @CPU_SET_S(i32 %95, i32 %96, i32* %97)
  br label %99

99:                                               ; preds = %94, %88
  br label %100

100:                                              ; preds = %99
  %101 = load i32, i32* %5, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %5, align 4
  br label %84

103:                                              ; preds = %84
  %104 = load i8*, i8** %3, align 8
  %105 = getelementptr inbounds i8, i8* %104, i64 3
  store i8* %105, i8** %3, align 8
  %106 = load i8*, i8** %3, align 8
  %107 = load i8, i8* %106, align 1
  %108 = sext i8 %107 to i32
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %103
  br label %201

111:                                              ; preds = %103
  br label %112

112:                                              ; preds = %111, %79
  %113 = load i8*, i8** %3, align 8
  %114 = call i64 @strncmp(i8* %113, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 4)
  %115 = icmp eq i64 %114, 0
  br i1 %115, label %116, label %145

116:                                              ; preds = %112
  store i32 0, i32* %5, align 4
  br label %117

117:                                              ; preds = %133, %116
  %118 = load i32, i32* %5, align 4
  %119 = load i32, i32* @max_cpu_num, align 4
  %120 = icmp sle i32 %118, %119
  br i1 %120, label %121, label %136

121:                                              ; preds = %117
  %122 = load i32, i32* %5, align 4
  %123 = load i32, i32* @cpu_setsize, align 4
  %124 = load i32, i32* @cpu_present_set, align 4
  %125 = call i64 @CPU_ISSET_S(i32 %122, i32 %123, i32 %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %132

127:                                              ; preds = %121
  %128 = load i32, i32* %5, align 4
  %129 = load i32, i32* @cpu_setsize, align 4
  %130 = load i32*, i32** @cpu_selected_set, align 8
  %131 = call i32 @CPU_SET_S(i32 %128, i32 %129, i32* %130)
  br label %132

132:                                              ; preds = %127, %121
  br label %133

133:                                              ; preds = %132
  %134 = load i32, i32* %5, align 4
  %135 = add nsw i32 %134, 2
  store i32 %135, i32* %5, align 4
  br label %117

136:                                              ; preds = %117
  %137 = load i8*, i8** %3, align 8
  %138 = getelementptr inbounds i8, i8* %137, i64 4
  store i8* %138, i8** %3, align 8
  %139 = load i8*, i8** %3, align 8
  %140 = load i8, i8* %139, align 1
  %141 = sext i8 %140 to i32
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %143, label %144

143:                                              ; preds = %136
  br label %201

144:                                              ; preds = %136
  br label %145

145:                                              ; preds = %144, %112
  %146 = load i8*, i8** %3, align 8
  %147 = call i64 @strncmp(i8* %146, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i32 3)
  %148 = icmp eq i64 %147, 0
  br i1 %148, label %149, label %178

149:                                              ; preds = %145
  store i32 1, i32* %5, align 4
  br label %150

150:                                              ; preds = %166, %149
  %151 = load i32, i32* %5, align 4
  %152 = load i32, i32* @max_cpu_num, align 4
  %153 = icmp sle i32 %151, %152
  br i1 %153, label %154, label %169

154:                                              ; preds = %150
  %155 = load i32, i32* %5, align 4
  %156 = load i32, i32* @cpu_setsize, align 4
  %157 = load i32, i32* @cpu_present_set, align 4
  %158 = call i64 @CPU_ISSET_S(i32 %155, i32 %156, i32 %157)
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %165

160:                                              ; preds = %154
  %161 = load i32, i32* %5, align 4
  %162 = load i32, i32* @cpu_setsize, align 4
  %163 = load i32*, i32** @cpu_selected_set, align 8
  %164 = call i32 @CPU_SET_S(i32 %161, i32 %162, i32* %163)
  br label %165

165:                                              ; preds = %160, %154
  br label %166

166:                                              ; preds = %165
  %167 = load i32, i32* %5, align 4
  %168 = add nsw i32 %167, 2
  store i32 %168, i32* %5, align 4
  br label %150

169:                                              ; preds = %150
  %170 = load i8*, i8** %3, align 8
  %171 = getelementptr inbounds i8, i8* %170, i64 3
  store i8* %171, i8** %3, align 8
  %172 = load i8*, i8** %3, align 8
  %173 = load i8, i8* %172, align 1
  %174 = sext i8 %173 to i32
  %175 = icmp eq i32 %174, 0
  br i1 %175, label %176, label %177

176:                                              ; preds = %169
  br label %201

177:                                              ; preds = %169
  br label %178

178:                                              ; preds = %177, %145
  %179 = load i8*, i8** %3, align 8
  %180 = call i32 @strtol(i8* %179, i8** %4, i32 10)
  store i32 %180, i32* %5, align 4
  %181 = load i8*, i8** %3, align 8
  %182 = load i8*, i8** %4, align 8
  %183 = icmp eq i8* %181, %182
  br i1 %183, label %184, label %187

184:                                              ; preds = %178
  %185 = load i8*, i8** %3, align 8
  %186 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0), i8* %185)
  br label %187

187:                                              ; preds = %184, %178
  %188 = load i32, i32* %5, align 4
  %189 = load i32, i32* @max_cpu_num, align 4
  %190 = icmp sgt i32 %188, %189
  br i1 %190, label %191, label %195

191:                                              ; preds = %187
  %192 = load i32, i32* %5, align 4
  %193 = load i32, i32* @max_cpu_num, align 4
  %194 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %192, i32 %193)
  br label %195

195:                                              ; preds = %191, %187
  %196 = load i32, i32* %5, align 4
  %197 = load i32, i32* @cpu_setsize, align 4
  %198 = load i32*, i32** @cpu_selected_set, align 8
  %199 = call i32 @CPU_SET_S(i32 %196, i32 %197, i32* %198)
  %200 = load i8*, i8** %4, align 8
  store i8* %200, i8** %3, align 8
  br label %25

201:                                              ; preds = %176, %143, %110, %33
  %202 = call i32 (...) @validate_cpu_selected_set()
  ret void
}

declare dso_local i32 @usage(...) #1

declare dso_local i32 @errx(i32, i8*, ...) #1

declare dso_local i32* @CPU_ALLOC(i32) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @CPU_ZERO_S(i32, i32*) #1

declare dso_local i32 @strtol(i8*, i8**, i32) #1

declare dso_local i32 @CPU_SET_S(i32, i32, i32*) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i64 @CPU_ISSET_S(i32, i32, i32) #1

declare dso_local i32 @validate_cpu_selected_set(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
