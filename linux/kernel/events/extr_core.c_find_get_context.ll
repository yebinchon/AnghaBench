; ModuleID = '/home/carl/AnghaBench/linux/kernel/events/extr_core.c_find_get_context.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/events/extr_core.c_find_get_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_event_context = type { i32, i8*, i32 }
%struct.pmu = type { i32, i32, i32 }
%struct.task_struct = type { i32, i32, i64* }
%struct.perf_event = type { i32, i32 }
%struct.perf_cpu_context = type { %struct.perf_event_context }

@CAP_SYS_ADMIN = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@PERF_ATTACH_TASK_DATA = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@PF_EXITING = common dso_local global i32 0, align 4
@ESRCH = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.perf_event_context* (%struct.pmu*, %struct.task_struct*, %struct.perf_event*)* @find_get_context to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.perf_event_context* @find_get_context(%struct.pmu* %0, %struct.task_struct* %1, %struct.perf_event* %2) #0 {
  %4 = alloca %struct.perf_event_context*, align 8
  %5 = alloca %struct.pmu*, align 8
  %6 = alloca %struct.task_struct*, align 8
  %7 = alloca %struct.perf_event*, align 8
  %8 = alloca %struct.perf_event_context*, align 8
  %9 = alloca %struct.perf_event_context*, align 8
  %10 = alloca %struct.perf_cpu_context*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.pmu* %0, %struct.pmu** %5, align 8
  store %struct.task_struct* %1, %struct.task_struct** %6, align 8
  store %struct.perf_event* %2, %struct.perf_event** %7, align 8
  store %struct.perf_event_context* null, %struct.perf_event_context** %9, align 8
  store i8* null, i8** %11, align 8
  %16 = load %struct.perf_event*, %struct.perf_event** %7, align 8
  %17 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %15, align 4
  %19 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %20 = icmp ne %struct.task_struct* %19, null
  br i1 %20, label %47, label %21

21:                                               ; preds = %3
  %22 = call i64 (...) @perf_paranoid_cpu()
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %32

24:                                               ; preds = %21
  %25 = load i32, i32* @CAP_SYS_ADMIN, align 4
  %26 = call i32 @capable(i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %24
  %29 = load i32, i32* @EACCES, align 4
  %30 = sub nsw i32 0, %29
  %31 = call %struct.perf_event_context* @ERR_PTR(i32 %30)
  store %struct.perf_event_context* %31, %struct.perf_event_context** %4, align 8
  br label %195

32:                                               ; preds = %24, %21
  %33 = load %struct.pmu*, %struct.pmu** %5, align 8
  %34 = getelementptr inbounds %struct.pmu, %struct.pmu* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %15, align 4
  %37 = call %struct.perf_cpu_context* @per_cpu_ptr(i32 %35, i32 %36)
  store %struct.perf_cpu_context* %37, %struct.perf_cpu_context** %10, align 8
  %38 = load %struct.perf_cpu_context*, %struct.perf_cpu_context** %10, align 8
  %39 = getelementptr inbounds %struct.perf_cpu_context, %struct.perf_cpu_context* %38, i32 0, i32 0
  store %struct.perf_event_context* %39, %struct.perf_event_context** %8, align 8
  %40 = load %struct.perf_event_context*, %struct.perf_event_context** %8, align 8
  %41 = call i32 @get_ctx(%struct.perf_event_context* %40)
  %42 = load %struct.perf_event_context*, %struct.perf_event_context** %8, align 8
  %43 = getelementptr inbounds %struct.perf_event_context, %struct.perf_event_context* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %43, align 8
  %46 = load %struct.perf_event_context*, %struct.perf_event_context** %8, align 8
  store %struct.perf_event_context* %46, %struct.perf_event_context** %4, align 8
  br label %195

47:                                               ; preds = %3
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %14, align 4
  %50 = load %struct.pmu*, %struct.pmu** %5, align 8
  %51 = getelementptr inbounds %struct.pmu, %struct.pmu* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  store i32 %52, i32* %13, align 4
  %53 = load i32, i32* %13, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %47
  br label %190

56:                                               ; preds = %47
  %57 = load %struct.perf_event*, %struct.perf_event** %7, align 8
  %58 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @PERF_ATTACH_TASK_DATA, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %75

63:                                               ; preds = %56
  %64 = load %struct.pmu*, %struct.pmu** %5, align 8
  %65 = getelementptr inbounds %struct.pmu, %struct.pmu* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @GFP_KERNEL, align 4
  %68 = call i8* @kzalloc(i32 %66, i32 %67)
  store i8* %68, i8** %11, align 8
  %69 = load i8*, i8** %11, align 8
  %70 = icmp ne i8* %69, null
  br i1 %70, label %74, label %71

71:                                               ; preds = %63
  %72 = load i32, i32* @ENOMEM, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %14, align 4
  br label %190

74:                                               ; preds = %63
  br label %75

75:                                               ; preds = %74, %56
  br label %76

76:                                               ; preds = %183, %75
  %77 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %78 = load i32, i32* %13, align 4
  %79 = call %struct.perf_event_context* @perf_lock_task_context(%struct.task_struct* %77, i32 %78, i64* %12)
  store %struct.perf_event_context* %79, %struct.perf_event_context** %8, align 8
  %80 = load %struct.perf_event_context*, %struct.perf_event_context** %8, align 8
  %81 = icmp ne %struct.perf_event_context* %80, null
  br i1 %81, label %82, label %111

82:                                               ; preds = %76
  %83 = load %struct.perf_event_context*, %struct.perf_event_context** %8, align 8
  %84 = call %struct.perf_event_context* @unclone_ctx(%struct.perf_event_context* %83)
  store %struct.perf_event_context* %84, %struct.perf_event_context** %9, align 8
  %85 = load %struct.perf_event_context*, %struct.perf_event_context** %8, align 8
  %86 = getelementptr inbounds %struct.perf_event_context, %struct.perf_event_context* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %86, align 8
  %89 = load i8*, i8** %11, align 8
  %90 = icmp ne i8* %89, null
  br i1 %90, label %91, label %100

91:                                               ; preds = %82
  %92 = load %struct.perf_event_context*, %struct.perf_event_context** %8, align 8
  %93 = getelementptr inbounds %struct.perf_event_context, %struct.perf_event_context* %92, i32 0, i32 1
  %94 = load i8*, i8** %93, align 8
  %95 = icmp ne i8* %94, null
  br i1 %95, label %100, label %96

96:                                               ; preds = %91
  %97 = load i8*, i8** %11, align 8
  %98 = load %struct.perf_event_context*, %struct.perf_event_context** %8, align 8
  %99 = getelementptr inbounds %struct.perf_event_context, %struct.perf_event_context* %98, i32 0, i32 1
  store i8* %97, i8** %99, align 8
  store i8* null, i8** %11, align 8
  br label %100

100:                                              ; preds = %96, %91, %82
  %101 = load %struct.perf_event_context*, %struct.perf_event_context** %8, align 8
  %102 = getelementptr inbounds %struct.perf_event_context, %struct.perf_event_context* %101, i32 0, i32 2
  %103 = load i64, i64* %12, align 8
  %104 = call i32 @raw_spin_unlock_irqrestore(i32* %102, i64 %103)
  %105 = load %struct.perf_event_context*, %struct.perf_event_context** %9, align 8
  %106 = icmp ne %struct.perf_event_context* %105, null
  br i1 %106, label %107, label %110

107:                                              ; preds = %100
  %108 = load %struct.perf_event_context*, %struct.perf_event_context** %9, align 8
  %109 = call i32 @put_ctx(%struct.perf_event_context* %108)
  br label %110

110:                                              ; preds = %107, %100
  br label %186

111:                                              ; preds = %76
  %112 = load %struct.pmu*, %struct.pmu** %5, align 8
  %113 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %114 = call %struct.perf_event_context* @alloc_perf_context(%struct.pmu* %112, %struct.task_struct* %113)
  store %struct.perf_event_context* %114, %struct.perf_event_context** %8, align 8
  %115 = load i32, i32* @ENOMEM, align 4
  %116 = sub nsw i32 0, %115
  store i32 %116, i32* %14, align 4
  %117 = load %struct.perf_event_context*, %struct.perf_event_context** %8, align 8
  %118 = icmp ne %struct.perf_event_context* %117, null
  br i1 %118, label %120, label %119

119:                                              ; preds = %111
  br label %190

120:                                              ; preds = %111
  %121 = load i8*, i8** %11, align 8
  %122 = icmp ne i8* %121, null
  br i1 %122, label %123, label %127

123:                                              ; preds = %120
  %124 = load i8*, i8** %11, align 8
  %125 = load %struct.perf_event_context*, %struct.perf_event_context** %8, align 8
  %126 = getelementptr inbounds %struct.perf_event_context, %struct.perf_event_context* %125, i32 0, i32 1
  store i8* %124, i8** %126, align 8
  store i8* null, i8** %11, align 8
  br label %127

127:                                              ; preds = %123, %120
  store i32 0, i32* %14, align 4
  %128 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %129 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %128, i32 0, i32 1
  %130 = call i32 @mutex_lock(i32* %129)
  %131 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %132 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = load i32, i32* @PF_EXITING, align 4
  %135 = and i32 %133, %134
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %140

137:                                              ; preds = %127
  %138 = load i32, i32* @ESRCH, align 4
  %139 = sub nsw i32 0, %138
  store i32 %139, i32* %14, align 4
  br label %169

140:                                              ; preds = %127
  %141 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %142 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %141, i32 0, i32 2
  %143 = load i64*, i64** %142, align 8
  %144 = load i32, i32* %13, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i64, i64* %143, i64 %145
  %147 = load i64, i64* %146, align 8
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %152

149:                                              ; preds = %140
  %150 = load i32, i32* @EAGAIN, align 4
  %151 = sub nsw i32 0, %150
  store i32 %151, i32* %14, align 4
  br label %168

152:                                              ; preds = %140
  %153 = load %struct.perf_event_context*, %struct.perf_event_context** %8, align 8
  %154 = call i32 @get_ctx(%struct.perf_event_context* %153)
  %155 = load %struct.perf_event_context*, %struct.perf_event_context** %8, align 8
  %156 = getelementptr inbounds %struct.perf_event_context, %struct.perf_event_context* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %156, align 8
  %159 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %160 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %159, i32 0, i32 2
  %161 = load i64*, i64** %160, align 8
  %162 = load i32, i32* %13, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i64, i64* %161, i64 %163
  %165 = load i64, i64* %164, align 8
  %166 = load %struct.perf_event_context*, %struct.perf_event_context** %8, align 8
  %167 = call i32 @rcu_assign_pointer(i64 %165, %struct.perf_event_context* %166)
  br label %168

168:                                              ; preds = %152, %149
  br label %169

169:                                              ; preds = %168, %137
  %170 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %171 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %170, i32 0, i32 1
  %172 = call i32 @mutex_unlock(i32* %171)
  %173 = load i32, i32* %14, align 4
  %174 = call i64 @unlikely(i32 %173)
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %176, label %185

176:                                              ; preds = %169
  %177 = load %struct.perf_event_context*, %struct.perf_event_context** %8, align 8
  %178 = call i32 @put_ctx(%struct.perf_event_context* %177)
  %179 = load i32, i32* %14, align 4
  %180 = load i32, i32* @EAGAIN, align 4
  %181 = sub nsw i32 0, %180
  %182 = icmp eq i32 %179, %181
  br i1 %182, label %183, label %184

183:                                              ; preds = %176
  br label %76

184:                                              ; preds = %176
  br label %190

185:                                              ; preds = %169
  br label %186

186:                                              ; preds = %185, %110
  %187 = load i8*, i8** %11, align 8
  %188 = call i32 @kfree(i8* %187)
  %189 = load %struct.perf_event_context*, %struct.perf_event_context** %8, align 8
  store %struct.perf_event_context* %189, %struct.perf_event_context** %4, align 8
  br label %195

190:                                              ; preds = %184, %119, %71, %55
  %191 = load i8*, i8** %11, align 8
  %192 = call i32 @kfree(i8* %191)
  %193 = load i32, i32* %14, align 4
  %194 = call %struct.perf_event_context* @ERR_PTR(i32 %193)
  store %struct.perf_event_context* %194, %struct.perf_event_context** %4, align 8
  br label %195

195:                                              ; preds = %190, %186, %32, %28
  %196 = load %struct.perf_event_context*, %struct.perf_event_context** %4, align 8
  ret %struct.perf_event_context* %196
}

declare dso_local i64 @perf_paranoid_cpu(...) #1

declare dso_local i32 @capable(i32) #1

declare dso_local %struct.perf_event_context* @ERR_PTR(i32) #1

declare dso_local %struct.perf_cpu_context* @per_cpu_ptr(i32, i32) #1

declare dso_local i32 @get_ctx(%struct.perf_event_context*) #1

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local %struct.perf_event_context* @perf_lock_task_context(%struct.task_struct*, i32, i64*) #1

declare dso_local %struct.perf_event_context* @unclone_ctx(%struct.perf_event_context*) #1

declare dso_local i32 @raw_spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @put_ctx(%struct.perf_event_context*) #1

declare dso_local %struct.perf_event_context* @alloc_perf_context(%struct.pmu*, %struct.task_struct*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @rcu_assign_pointer(i64, %struct.perf_event_context*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
