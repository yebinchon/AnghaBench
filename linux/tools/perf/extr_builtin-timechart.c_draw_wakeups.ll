; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/extr_builtin-timechart.c_draw_wakeups.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/extr_builtin-timechart.c_draw_wakeups.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timechart = type { %struct.per_pid*, %struct.wake_event* }
%struct.per_pid = type { i32, %struct.per_pid*, %struct.per_pidcomm* }
%struct.per_pidcomm = type { i32, i64, i64, %struct.per_pidcomm*, i32 }
%struct.wake_event = type { i32, i32, i64, %struct.wake_event*, i32 }

@.str = private unnamed_addr constant [5 x i8] c"[%i]\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timechart*)* @draw_wakeups to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @draw_wakeups(%struct.timechart* %0) #0 {
  %2 = alloca %struct.timechart*, align 8
  %3 = alloca %struct.wake_event*, align 8
  %4 = alloca %struct.per_pid*, align 8
  %5 = alloca %struct.per_pidcomm*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store %struct.timechart* %0, %struct.timechart** %2, align 8
  %10 = load %struct.timechart*, %struct.timechart** %2, align 8
  %11 = getelementptr inbounds %struct.timechart, %struct.timechart* %10, i32 0, i32 1
  %12 = load %struct.wake_event*, %struct.wake_event** %11, align 8
  store %struct.wake_event* %12, %struct.wake_event** %3, align 8
  br label %13

13:                                               ; preds = %233, %1
  %14 = load %struct.wake_event*, %struct.wake_event** %3, align 8
  %15 = icmp ne %struct.wake_event* %14, null
  br i1 %15, label %16, label %241

16:                                               ; preds = %13
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i8* null, i8** %8, align 8
  store i8* null, i8** %9, align 8
  %17 = load %struct.timechart*, %struct.timechart** %2, align 8
  %18 = getelementptr inbounds %struct.timechart, %struct.timechart* %17, i32 0, i32 0
  %19 = load %struct.per_pid*, %struct.per_pid** %18, align 8
  store %struct.per_pid* %19, %struct.per_pid** %4, align 8
  br label %20

20:                                               ; preds = %160, %16
  %21 = load %struct.per_pid*, %struct.per_pid** %4, align 8
  %22 = icmp ne %struct.per_pid* %21, null
  br i1 %22, label %23, label %164

23:                                               ; preds = %20
  %24 = load %struct.per_pid*, %struct.per_pid** %4, align 8
  %25 = getelementptr inbounds %struct.per_pid, %struct.per_pid* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.wake_event*, %struct.wake_event** %3, align 8
  %28 = getelementptr inbounds %struct.wake_event, %struct.wake_event* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp eq i32 %26, %29
  br i1 %30, label %39, label %31

31:                                               ; preds = %23
  %32 = load %struct.per_pid*, %struct.per_pid** %4, align 8
  %33 = getelementptr inbounds %struct.per_pid, %struct.per_pid* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.wake_event*, %struct.wake_event** %3, align 8
  %36 = getelementptr inbounds %struct.wake_event, %struct.wake_event* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = icmp eq i32 %34, %37
  br i1 %38, label %39, label %160

39:                                               ; preds = %31, %23
  %40 = load %struct.per_pid*, %struct.per_pid** %4, align 8
  %41 = getelementptr inbounds %struct.per_pid, %struct.per_pid* %40, i32 0, i32 2
  %42 = load %struct.per_pidcomm*, %struct.per_pidcomm** %41, align 8
  store %struct.per_pidcomm* %42, %struct.per_pidcomm** %5, align 8
  br label %43

43:                                               ; preds = %106, %39
  %44 = load %struct.per_pidcomm*, %struct.per_pidcomm** %5, align 8
  %45 = icmp ne %struct.per_pidcomm* %44, null
  br i1 %45, label %46, label %110

46:                                               ; preds = %43
  %47 = load %struct.per_pidcomm*, %struct.per_pidcomm** %5, align 8
  %48 = getelementptr inbounds %struct.per_pidcomm, %struct.per_pidcomm* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %106

51:                                               ; preds = %46
  %52 = load %struct.per_pidcomm*, %struct.per_pidcomm** %5, align 8
  %53 = getelementptr inbounds %struct.per_pidcomm, %struct.per_pidcomm* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.wake_event*, %struct.wake_event** %3, align 8
  %56 = getelementptr inbounds %struct.wake_event, %struct.wake_event* %55, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = icmp sle i64 %54, %57
  br i1 %58, label %59, label %106

59:                                               ; preds = %51
  %60 = load %struct.per_pidcomm*, %struct.per_pidcomm** %5, align 8
  %61 = getelementptr inbounds %struct.per_pidcomm, %struct.per_pidcomm* %60, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.wake_event*, %struct.wake_event** %3, align 8
  %64 = getelementptr inbounds %struct.wake_event, %struct.wake_event* %63, i32 0, i32 2
  %65 = load i64, i64* %64, align 8
  %66 = icmp sge i64 %62, %65
  br i1 %66, label %67, label %106

67:                                               ; preds = %59
  %68 = load %struct.per_pid*, %struct.per_pid** %4, align 8
  %69 = getelementptr inbounds %struct.per_pid, %struct.per_pid* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.wake_event*, %struct.wake_event** %3, align 8
  %72 = getelementptr inbounds %struct.wake_event, %struct.wake_event* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = icmp eq i32 %70, %73
  br i1 %74, label %75, label %86

75:                                               ; preds = %67
  %76 = load i32, i32* %6, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %86, label %78

78:                                               ; preds = %75
  %79 = load %struct.per_pidcomm*, %struct.per_pidcomm** %5, align 8
  %80 = getelementptr inbounds %struct.per_pidcomm, %struct.per_pidcomm* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  store i32 %81, i32* %6, align 4
  %82 = load %struct.per_pidcomm*, %struct.per_pidcomm** %5, align 8
  %83 = getelementptr inbounds %struct.per_pidcomm, %struct.per_pidcomm* %82, i32 0, i32 4
  %84 = load i32, i32* %83, align 8
  %85 = call i8* @strdup(i32 %84)
  store i8* %85, i8** %8, align 8
  br label %86

86:                                               ; preds = %78, %75, %67
  %87 = load %struct.per_pid*, %struct.per_pid** %4, align 8
  %88 = getelementptr inbounds %struct.per_pid, %struct.per_pid* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.wake_event*, %struct.wake_event** %3, align 8
  %91 = getelementptr inbounds %struct.wake_event, %struct.wake_event* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = icmp eq i32 %89, %92
  br i1 %93, label %94, label %105

94:                                               ; preds = %86
  %95 = load i32, i32* %7, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %105, label %97

97:                                               ; preds = %94
  %98 = load %struct.per_pidcomm*, %struct.per_pidcomm** %5, align 8
  %99 = getelementptr inbounds %struct.per_pidcomm, %struct.per_pidcomm* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  store i32 %100, i32* %7, align 4
  %101 = load %struct.per_pidcomm*, %struct.per_pidcomm** %5, align 8
  %102 = getelementptr inbounds %struct.per_pidcomm, %struct.per_pidcomm* %101, i32 0, i32 4
  %103 = load i32, i32* %102, align 8
  %104 = call i8* @strdup(i32 %103)
  store i8* %104, i8** %9, align 8
  br label %105

105:                                              ; preds = %97, %94, %86
  br label %106

106:                                              ; preds = %105, %59, %51, %46
  %107 = load %struct.per_pidcomm*, %struct.per_pidcomm** %5, align 8
  %108 = getelementptr inbounds %struct.per_pidcomm, %struct.per_pidcomm* %107, i32 0, i32 3
  %109 = load %struct.per_pidcomm*, %struct.per_pidcomm** %108, align 8
  store %struct.per_pidcomm* %109, %struct.per_pidcomm** %5, align 8
  br label %43

110:                                              ; preds = %43
  %111 = load %struct.per_pid*, %struct.per_pid** %4, align 8
  %112 = getelementptr inbounds %struct.per_pid, %struct.per_pid* %111, i32 0, i32 2
  %113 = load %struct.per_pidcomm*, %struct.per_pidcomm** %112, align 8
  store %struct.per_pidcomm* %113, %struct.per_pidcomm** %5, align 8
  br label %114

114:                                              ; preds = %155, %110
  %115 = load %struct.per_pidcomm*, %struct.per_pidcomm** %5, align 8
  %116 = icmp ne %struct.per_pidcomm* %115, null
  br i1 %116, label %117, label %159

117:                                              ; preds = %114
  %118 = load %struct.per_pid*, %struct.per_pid** %4, align 8
  %119 = getelementptr inbounds %struct.per_pid, %struct.per_pid* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = load %struct.wake_event*, %struct.wake_event** %3, align 8
  %122 = getelementptr inbounds %struct.wake_event, %struct.wake_event* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = icmp eq i32 %120, %123
  br i1 %124, label %125, label %136

125:                                              ; preds = %117
  %126 = load i32, i32* %6, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %136, label %128

128:                                              ; preds = %125
  %129 = load %struct.per_pidcomm*, %struct.per_pidcomm** %5, align 8
  %130 = getelementptr inbounds %struct.per_pidcomm, %struct.per_pidcomm* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  store i32 %131, i32* %6, align 4
  %132 = load %struct.per_pidcomm*, %struct.per_pidcomm** %5, align 8
  %133 = getelementptr inbounds %struct.per_pidcomm, %struct.per_pidcomm* %132, i32 0, i32 4
  %134 = load i32, i32* %133, align 8
  %135 = call i8* @strdup(i32 %134)
  store i8* %135, i8** %8, align 8
  br label %136

136:                                              ; preds = %128, %125, %117
  %137 = load %struct.per_pid*, %struct.per_pid** %4, align 8
  %138 = getelementptr inbounds %struct.per_pid, %struct.per_pid* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = load %struct.wake_event*, %struct.wake_event** %3, align 8
  %141 = getelementptr inbounds %struct.wake_event, %struct.wake_event* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = icmp eq i32 %139, %142
  br i1 %143, label %144, label %155

144:                                              ; preds = %136
  %145 = load i32, i32* %7, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %155, label %147

147:                                              ; preds = %144
  %148 = load %struct.per_pidcomm*, %struct.per_pidcomm** %5, align 8
  %149 = getelementptr inbounds %struct.per_pidcomm, %struct.per_pidcomm* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  store i32 %150, i32* %7, align 4
  %151 = load %struct.per_pidcomm*, %struct.per_pidcomm** %5, align 8
  %152 = getelementptr inbounds %struct.per_pidcomm, %struct.per_pidcomm* %151, i32 0, i32 4
  %153 = load i32, i32* %152, align 8
  %154 = call i8* @strdup(i32 %153)
  store i8* %154, i8** %9, align 8
  br label %155

155:                                              ; preds = %147, %144, %136
  %156 = load %struct.per_pidcomm*, %struct.per_pidcomm** %5, align 8
  %157 = getelementptr inbounds %struct.per_pidcomm, %struct.per_pidcomm* %156, i32 0, i32 3
  %158 = load %struct.per_pidcomm*, %struct.per_pidcomm** %157, align 8
  store %struct.per_pidcomm* %158, %struct.per_pidcomm** %5, align 8
  br label %114

159:                                              ; preds = %114
  br label %160

160:                                              ; preds = %159, %31
  %161 = load %struct.per_pid*, %struct.per_pid** %4, align 8
  %162 = getelementptr inbounds %struct.per_pid, %struct.per_pid* %161, i32 0, i32 1
  %163 = load %struct.per_pid*, %struct.per_pid** %162, align 8
  store %struct.per_pid* %163, %struct.per_pid** %4, align 8
  br label %20

164:                                              ; preds = %20
  %165 = load i8*, i8** %8, align 8
  %166 = icmp ne i8* %165, null
  br i1 %166, label %174, label %167

167:                                              ; preds = %164
  %168 = call i8* @malloc(i32 40)
  store i8* %168, i8** %8, align 8
  %169 = load i8*, i8** %8, align 8
  %170 = load %struct.wake_event*, %struct.wake_event** %3, align 8
  %171 = getelementptr inbounds %struct.wake_event, %struct.wake_event* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  %173 = call i32 @sprintf(i8* %169, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %172)
  br label %174

174:                                              ; preds = %167, %164
  %175 = load i8*, i8** %9, align 8
  %176 = icmp ne i8* %175, null
  br i1 %176, label %184, label %177

177:                                              ; preds = %174
  %178 = call i8* @malloc(i32 40)
  store i8* %178, i8** %9, align 8
  %179 = load i8*, i8** %9, align 8
  %180 = load %struct.wake_event*, %struct.wake_event** %3, align 8
  %181 = getelementptr inbounds %struct.wake_event, %struct.wake_event* %180, i32 0, i32 1
  %182 = load i32, i32* %181, align 4
  %183 = call i32 @sprintf(i8* %179, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %182)
  br label %184

184:                                              ; preds = %177, %174
  %185 = load %struct.wake_event*, %struct.wake_event** %3, align 8
  %186 = getelementptr inbounds %struct.wake_event, %struct.wake_event* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 8
  %188 = icmp eq i32 %187, -1
  br i1 %188, label %189, label %198

189:                                              ; preds = %184
  %190 = load %struct.wake_event*, %struct.wake_event** %3, align 8
  %191 = getelementptr inbounds %struct.wake_event, %struct.wake_event* %190, i32 0, i32 2
  %192 = load i64, i64* %191, align 8
  %193 = load i32, i32* %7, align 4
  %194 = load %struct.wake_event*, %struct.wake_event** %3, align 8
  %195 = getelementptr inbounds %struct.wake_event, %struct.wake_event* %194, i32 0, i32 4
  %196 = load i32, i32* %195, align 8
  %197 = call i32 @svg_interrupt(i64 %192, i32 %193, i32 %196)
  br label %233

198:                                              ; preds = %184
  %199 = load i32, i32* %6, align 4
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %220

201:                                              ; preds = %198
  %202 = load i32, i32* %7, align 4
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %220

204:                                              ; preds = %201
  %205 = load i32, i32* %6, align 4
  %206 = load i32, i32* %7, align 4
  %207 = sub nsw i32 %205, %206
  %208 = call i32 @abs(i32 %207) #3
  %209 = icmp eq i32 %208, 1
  br i1 %209, label %210, label %220

210:                                              ; preds = %204
  %211 = load %struct.wake_event*, %struct.wake_event** %3, align 8
  %212 = getelementptr inbounds %struct.wake_event, %struct.wake_event* %211, i32 0, i32 2
  %213 = load i64, i64* %212, align 8
  %214 = load i32, i32* %6, align 4
  %215 = load i32, i32* %7, align 4
  %216 = load %struct.wake_event*, %struct.wake_event** %3, align 8
  %217 = getelementptr inbounds %struct.wake_event, %struct.wake_event* %216, i32 0, i32 4
  %218 = load i32, i32* %217, align 8
  %219 = call i32 @svg_wakeline(i64 %213, i32 %214, i32 %215, i32 %218)
  br label %232

220:                                              ; preds = %204, %201, %198
  %221 = load %struct.wake_event*, %struct.wake_event** %3, align 8
  %222 = getelementptr inbounds %struct.wake_event, %struct.wake_event* %221, i32 0, i32 2
  %223 = load i64, i64* %222, align 8
  %224 = load i32, i32* %6, align 4
  %225 = load i8*, i8** %8, align 8
  %226 = load i32, i32* %7, align 4
  %227 = load i8*, i8** %9, align 8
  %228 = load %struct.wake_event*, %struct.wake_event** %3, align 8
  %229 = getelementptr inbounds %struct.wake_event, %struct.wake_event* %228, i32 0, i32 4
  %230 = load i32, i32* %229, align 8
  %231 = call i32 @svg_partial_wakeline(i64 %223, i32 %224, i8* %225, i32 %226, i8* %227, i32 %230)
  br label %232

232:                                              ; preds = %220, %210
  br label %233

233:                                              ; preds = %232, %189
  %234 = load %struct.wake_event*, %struct.wake_event** %3, align 8
  %235 = getelementptr inbounds %struct.wake_event, %struct.wake_event* %234, i32 0, i32 3
  %236 = load %struct.wake_event*, %struct.wake_event** %235, align 8
  store %struct.wake_event* %236, %struct.wake_event** %3, align 8
  %237 = load i8*, i8** %8, align 8
  %238 = call i32 @free(i8* %237)
  %239 = load i8*, i8** %9, align 8
  %240 = call i32 @free(i8* %239)
  br label %13

241:                                              ; preds = %13
  ret void
}

declare dso_local i8* @strdup(i32) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @svg_interrupt(i64, i32, i32) #1

; Function Attrs: nounwind readnone
declare dso_local i32 @abs(i32) #2

declare dso_local i32 @svg_wakeline(i64, i32, i32, i32) #1

declare dso_local i32 @svg_partial_wakeline(i64, i32, i8*, i32, i8*, i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
