; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/bench/extr_numa.c_parse_setup_node_list.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/bench/extr_numa.c_parse_setup_node_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__, %struct.thread_data* }
%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.thread_data = type { i32 }

@g = common dso_local global %struct.TYPE_4__* null, align 8
@.str = private unnamed_addr constant [19 x i8] c"g->p.nr_tasks: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"# binding tasks to NODEs:\0A\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"# \00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"\0Atoken: {%s}, end: {%s}\0A\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"#\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"x\00", align 1
@.str.8 = private unnamed_addr constant [18 x i8] c"NODEs: %d-%d #%d\0A\00", align 1
@.str.9 = private unnamed_addr constant [49 x i8] c"\0ATest not applicable, system has only %d nodes.\0A\00", align 1
@.str.10 = private unnamed_addr constant [50 x i8] c"\0A# NOTE: ignoring bind NODEs starting at NODE#%d\0A\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c" %2d\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c",%2d\00", align 1
@.str.13 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.14 = private unnamed_addr constant [46 x i8] c"# NOTE: %d tasks mem-bound, %d tasks unbound\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @parse_setup_node_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_setup_node_list() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.thread_data*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** @g, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %0
  store i32 0, i32* %1, align 4
  br label %211

22:                                               ; preds = %0
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** @g, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %26)
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** @g, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = call i8* @strdup(i32 %31)
  store i8* %32, i8** %4, align 8
  store i8* %32, i8** %3, align 8
  store i32 0, i32* %5, align 4
  %33 = load i8*, i8** %4, align 8
  %34 = icmp ne i8* %33, null
  %35 = xor i1 %34, true
  %36 = zext i1 %35 to i32
  %37 = call i32 @BUG_ON(i32 %36)
  %38 = call i32 (i8*, ...) @tprintf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %39 = call i32 (i8*, ...) @tprintf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  br label %40

40:                                               ; preds = %22, %189
  %41 = call i8* @strsep(i8** %4, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  store i8* %41, i8** %9, align 8
  %42 = load i8*, i8** %9, align 8
  %43 = icmp ne i8* %42, null
  br i1 %43, label %45, label %44

44:                                               ; preds = %40
  br label %190

45:                                               ; preds = %40
  %46 = load i8*, i8** %9, align 8
  %47 = call i8* @strstr(i8* %46, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  store i8* %47, i8** %10, align 8
  %48 = load i8*, i8** %9, align 8
  %49 = load i8*, i8** %10, align 8
  %50 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0), i8* %48, i8* %49)
  %51 = load i8*, i8** %10, align 8
  %52 = icmp ne i8* %51, null
  br i1 %52, label %56, label %53

53:                                               ; preds = %45
  %54 = load i8*, i8** %9, align 8
  %55 = call i32 @atol(i8* %54)
  store i32 %55, i32* %8, align 4
  store i32 %55, i32* %7, align 4
  br label %62

56:                                               ; preds = %45
  %57 = load i8*, i8** %9, align 8
  %58 = call i32 @atol(i8* %57)
  store i32 %58, i32* %7, align 4
  %59 = load i8*, i8** %10, align 8
  %60 = getelementptr inbounds i8, i8* %59, i64 1
  %61 = call i32 @atol(i8* %60)
  store i32 %61, i32* %8, align 4
  br label %62

62:                                               ; preds = %56, %53
  store i32 1, i32* %13, align 4
  %63 = load i8*, i8** %9, align 8
  %64 = call i8* @strstr(i8* %63, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  store i8* %64, i8** %11, align 8
  %65 = load i8*, i8** %11, align 8
  %66 = icmp ne i8* %65, null
  br i1 %66, label %67, label %84

67:                                               ; preds = %62
  %68 = load i8*, i8** %11, align 8
  %69 = getelementptr inbounds i8, i8* %68, i64 1
  %70 = call i32 @atol(i8* %69)
  store i32 %70, i32* %13, align 4
  %71 = load i32, i32* %13, align 4
  %72 = icmp sle i32 %71, 0
  br i1 %72, label %80, label %73

73:                                               ; preds = %67
  %74 = load i32, i32* %13, align 4
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** @g, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = icmp sge i32 %74, %78
  br label %80

80:                                               ; preds = %73, %67
  %81 = phi i1 [ true, %67 ], [ %79, %73 ]
  %82 = zext i1 %81 to i32
  %83 = call i32 @BUG_ON(i32 %82)
  br label %84

84:                                               ; preds = %80, %62
  store i32 1, i32* %14, align 4
  %85 = load i8*, i8** %9, align 8
  %86 = call i8* @strstr(i8* %85, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  store i8* %86, i8** %12, align 8
  %87 = load i8*, i8** %12, align 8
  %88 = icmp ne i8* %87, null
  br i1 %88, label %89, label %97

89:                                               ; preds = %84
  %90 = load i8*, i8** %12, align 8
  %91 = getelementptr inbounds i8, i8* %90, i64 1
  %92 = call i32 @atol(i8* %91)
  store i32 %92, i32* %14, align 4
  %93 = load i32, i32* %14, align 4
  %94 = icmp sle i32 %93, 0
  %95 = zext i1 %94 to i32
  %96 = call i32 @BUG_ON(i32 %95)
  br label %97

97:                                               ; preds = %89, %84
  %98 = load i32, i32* %7, align 4
  %99 = load i32, i32* %8, align 4
  %100 = load i32, i32* %13, align 4
  %101 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i64 0, i64 0), i32 %98, i32 %99, i32 %100)
  %102 = load i32, i32* %7, align 4
  %103 = load %struct.TYPE_4__*, %struct.TYPE_4__** @g, align 8
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = icmp sge i32 %102, %106
  br i1 %107, label %115, label %108

108:                                              ; preds = %97
  %109 = load i32, i32* %8, align 4
  %110 = load %struct.TYPE_4__*, %struct.TYPE_4__** @g, align 8
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = icmp sge i32 %109, %113
  br i1 %114, label %115, label %121

115:                                              ; preds = %108, %97
  %116 = load %struct.TYPE_4__*, %struct.TYPE_4__** @g, align 8
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.9, i64 0, i64 0), i32 %119)
  store i32 -1, i32* %1, align 4
  br label %211

121:                                              ; preds = %108
  %122 = load i32, i32* %7, align 4
  %123 = icmp slt i32 %122, 0
  br i1 %123, label %127, label %124

124:                                              ; preds = %121
  %125 = load i32, i32* %8, align 4
  %126 = icmp slt i32 %125, 0
  br label %127

127:                                              ; preds = %124, %121
  %128 = phi i1 [ true, %121 ], [ %126, %124 ]
  %129 = zext i1 %128 to i32
  %130 = call i32 @BUG_ON(i32 %129)
  %131 = load i32, i32* %7, align 4
  %132 = load i32, i32* %8, align 4
  %133 = icmp sgt i32 %131, %132
  %134 = zext i1 %133 to i32
  %135 = call i32 @BUG_ON(i32 %134)
  %136 = load i32, i32* %7, align 4
  store i32 %136, i32* %6, align 4
  br label %137

137:                                              ; preds = %185, %127
  %138 = load i32, i32* %6, align 4
  %139 = load i32, i32* %8, align 4
  %140 = icmp sle i32 %138, %139
  br i1 %140, label %141, label %189

141:                                              ; preds = %137
  store i32 0, i32* %15, align 4
  br label %142

142:                                              ; preds = %181, %141
  %143 = load i32, i32* %15, align 4
  %144 = load i32, i32* %14, align 4
  %145 = icmp slt i32 %143, %144
  br i1 %145, label %146, label %184

146:                                              ; preds = %142
  %147 = load i32, i32* %5, align 4
  %148 = load %struct.TYPE_4__*, %struct.TYPE_4__** @g, align 8
  %149 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = icmp sge i32 %147, %151
  br i1 %152, label %157, label %153

153:                                              ; preds = %146
  %154 = load i32, i32* %6, align 4
  %155 = call i32 @node_has_cpus(i32 %154)
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %160, label %157

157:                                              ; preds = %153, %146
  %158 = load i32, i32* %6, align 4
  %159 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.10, i64 0, i64 0), i32 %158)
  br label %191

160:                                              ; preds = %153
  %161 = load %struct.TYPE_4__*, %struct.TYPE_4__** @g, align 8
  %162 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %161, i32 0, i32 1
  %163 = load %struct.thread_data*, %struct.thread_data** %162, align 8
  %164 = load i32, i32* %5, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds %struct.thread_data, %struct.thread_data* %163, i64 %165
  store %struct.thread_data* %166, %struct.thread_data** %2, align 8
  %167 = load i32, i32* %5, align 4
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %172, label %169

169:                                              ; preds = %160
  %170 = load i32, i32* %6, align 4
  %171 = call i32 (i8*, ...) @tprintf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), i32 %170)
  br label %175

172:                                              ; preds = %160
  %173 = load i32, i32* %6, align 4
  %174 = call i32 (i8*, ...) @tprintf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0), i32 %173)
  br label %175

175:                                              ; preds = %172, %169
  %176 = load i32, i32* %6, align 4
  %177 = load %struct.thread_data*, %struct.thread_data** %2, align 8
  %178 = getelementptr inbounds %struct.thread_data, %struct.thread_data* %177, i32 0, i32 0
  store i32 %176, i32* %178, align 4
  %179 = load i32, i32* %5, align 4
  %180 = add nsw i32 %179, 1
  store i32 %180, i32* %5, align 4
  br label %181

181:                                              ; preds = %175
  %182 = load i32, i32* %15, align 4
  %183 = add nsw i32 %182, 1
  store i32 %183, i32* %15, align 4
  br label %142

184:                                              ; preds = %142
  br label %185

185:                                              ; preds = %184
  %186 = load i32, i32* %13, align 4
  %187 = load i32, i32* %6, align 4
  %188 = add nsw i32 %187, %186
  store i32 %188, i32* %6, align 4
  br label %137

189:                                              ; preds = %137
  br label %40

190:                                              ; preds = %44
  br label %191

191:                                              ; preds = %190, %157
  %192 = call i32 (i8*, ...) @tprintf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0))
  %193 = load i32, i32* %5, align 4
  %194 = load %struct.TYPE_4__*, %struct.TYPE_4__** @g, align 8
  %195 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %194, i32 0, i32 0
  %196 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 8
  %198 = icmp slt i32 %193, %197
  br i1 %198, label %199, label %208

199:                                              ; preds = %191
  %200 = load i32, i32* %5, align 4
  %201 = load %struct.TYPE_4__*, %struct.TYPE_4__** @g, align 8
  %202 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %201, i32 0, i32 0
  %203 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 8
  %205 = load i32, i32* %5, align 4
  %206 = sub nsw i32 %204, %205
  %207 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.14, i64 0, i64 0), i32 %200, i32 %206)
  br label %208

208:                                              ; preds = %199, %191
  %209 = load i8*, i8** %3, align 8
  %210 = call i32 @free(i8* %209)
  store i32 0, i32* %1, align 4
  br label %211

211:                                              ; preds = %208, %115, %21
  %212 = load i32, i32* %1, align 4
  ret i32 %212
}

declare dso_local i32 @dprintf(i8*, ...) #1

declare dso_local i8* @strdup(i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @tprintf(i8*, ...) #1

declare dso_local i8* @strsep(i8**, i8*) #1

declare dso_local i8* @strstr(i8*, i8*) #1

declare dso_local i32 @atol(i8*) #1

declare dso_local i32 @printf(i8*, i32, ...) #1

declare dso_local i32 @node_has_cpus(i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
