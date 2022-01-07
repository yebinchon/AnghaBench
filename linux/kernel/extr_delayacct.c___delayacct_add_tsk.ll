; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_delayacct.c___delayacct_add_tsk.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_delayacct.c___delayacct_add_tsk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.taskstats = type { i64, i64, i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64 }
%struct.task_struct = type { %struct.TYPE_6__*, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i64, i64, i64, i64, i32, i64, i64, i64, i64 }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__delayacct_add_tsk(%struct.taskstats* %0, %struct.task_struct* %1) #0 {
  %3 = alloca %struct.taskstats*, align 8
  %4 = alloca %struct.task_struct*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.taskstats* %0, %struct.taskstats** %3, align 8
  store %struct.task_struct* %1, %struct.task_struct** %4, align 8
  %14 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %15 = call i32 @task_cputime(%struct.task_struct* %14, i64* %5, i64* %6)
  %16 = load %struct.taskstats*, %struct.taskstats** %3, align 8
  %17 = getelementptr inbounds %struct.taskstats, %struct.taskstats* %16, i32 0, i32 12
  %18 = load i64, i64* %17, align 8
  store i64 %18, i64* %13, align 8
  %19 = load i64, i64* %5, align 8
  %20 = load i64, i64* %6, align 8
  %21 = add nsw i64 %19, %20
  %22 = load i64, i64* %13, align 8
  %23 = add nsw i64 %22, %21
  store i64 %23, i64* %13, align 8
  %24 = load i64, i64* %13, align 8
  %25 = load %struct.taskstats*, %struct.taskstats** %3, align 8
  %26 = getelementptr inbounds %struct.taskstats, %struct.taskstats* %25, i32 0, i32 12
  %27 = load i64, i64* %26, align 8
  %28 = icmp slt i64 %24, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %2
  br label %32

30:                                               ; preds = %2
  %31 = load i64, i64* %13, align 8
  br label %32

32:                                               ; preds = %30, %29
  %33 = phi i64 [ 0, %29 ], [ %31, %30 ]
  %34 = load %struct.taskstats*, %struct.taskstats** %3, align 8
  %35 = getelementptr inbounds %struct.taskstats, %struct.taskstats* %34, i32 0, i32 12
  store i64 %33, i64* %35, align 8
  %36 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %37 = call i32 @task_cputime_scaled(%struct.task_struct* %36, i64* %8, i64* %7)
  %38 = load %struct.taskstats*, %struct.taskstats** %3, align 8
  %39 = getelementptr inbounds %struct.taskstats, %struct.taskstats* %38, i32 0, i32 11
  %40 = load i64, i64* %39, align 8
  store i64 %40, i64* %13, align 8
  %41 = load i64, i64* %8, align 8
  %42 = load i64, i64* %7, align 8
  %43 = add nsw i64 %41, %42
  %44 = load i64, i64* %13, align 8
  %45 = add nsw i64 %44, %43
  store i64 %45, i64* %13, align 8
  %46 = load i64, i64* %13, align 8
  %47 = load %struct.taskstats*, %struct.taskstats** %3, align 8
  %48 = getelementptr inbounds %struct.taskstats, %struct.taskstats* %47, i32 0, i32 11
  %49 = load i64, i64* %48, align 8
  %50 = icmp slt i64 %46, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %32
  br label %54

52:                                               ; preds = %32
  %53 = load i64, i64* %13, align 8
  br label %54

54:                                               ; preds = %52, %51
  %55 = phi i64 [ 0, %51 ], [ %53, %52 ]
  %56 = load %struct.taskstats*, %struct.taskstats** %3, align 8
  %57 = getelementptr inbounds %struct.taskstats, %struct.taskstats* %56, i32 0, i32 11
  store i64 %55, i64* %57, align 8
  %58 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %59 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %58, i32 0, i32 2
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  store i64 %61, i64* %12, align 8
  %62 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %63 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %62, i32 0, i32 2
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  store i64 %65, i64* %9, align 8
  %66 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %67 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  store i64 %69, i64* %10, align 8
  %70 = load i64, i64* %12, align 8
  %71 = load %struct.taskstats*, %struct.taskstats** %3, align 8
  %72 = getelementptr inbounds %struct.taskstats, %struct.taskstats* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = add i64 %73, %70
  store i64 %74, i64* %72, align 8
  %75 = load %struct.taskstats*, %struct.taskstats** %3, align 8
  %76 = getelementptr inbounds %struct.taskstats, %struct.taskstats* %75, i32 0, i32 10
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* %9, align 8
  %79 = add i64 %77, %78
  store i64 %79, i64* %13, align 8
  %80 = load i64, i64* %13, align 8
  %81 = load %struct.taskstats*, %struct.taskstats** %3, align 8
  %82 = getelementptr inbounds %struct.taskstats, %struct.taskstats* %81, i32 0, i32 10
  %83 = load i64, i64* %82, align 8
  %84 = icmp slt i64 %80, %83
  br i1 %84, label %85, label %86

85:                                               ; preds = %54
  br label %88

86:                                               ; preds = %54
  %87 = load i64, i64* %13, align 8
  br label %88

88:                                               ; preds = %86, %85
  %89 = phi i64 [ 0, %85 ], [ %87, %86 ]
  %90 = load %struct.taskstats*, %struct.taskstats** %3, align 8
  %91 = getelementptr inbounds %struct.taskstats, %struct.taskstats* %90, i32 0, i32 10
  store i64 %89, i64* %91, align 8
  %92 = load %struct.taskstats*, %struct.taskstats** %3, align 8
  %93 = getelementptr inbounds %struct.taskstats, %struct.taskstats* %92, i32 0, i32 9
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* %10, align 8
  %96 = add i64 %94, %95
  store i64 %96, i64* %13, align 8
  %97 = load i64, i64* %13, align 8
  %98 = load %struct.taskstats*, %struct.taskstats** %3, align 8
  %99 = getelementptr inbounds %struct.taskstats, %struct.taskstats* %98, i32 0, i32 9
  %100 = load i64, i64* %99, align 8
  %101 = icmp slt i64 %97, %100
  br i1 %101, label %102, label %103

102:                                              ; preds = %88
  br label %105

103:                                              ; preds = %88
  %104 = load i64, i64* %13, align 8
  br label %105

105:                                              ; preds = %103, %102
  %106 = phi i64 [ 0, %102 ], [ %104, %103 ]
  %107 = load %struct.taskstats*, %struct.taskstats** %3, align 8
  %108 = getelementptr inbounds %struct.taskstats, %struct.taskstats* %107, i32 0, i32 9
  store i64 %106, i64* %108, align 8
  %109 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %110 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %109, i32 0, i32 0
  %111 = load %struct.TYPE_6__*, %struct.TYPE_6__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 4
  %113 = load i64, i64* %11, align 8
  %114 = call i32 @raw_spin_lock_irqsave(i32* %112, i64 %113)
  %115 = load %struct.taskstats*, %struct.taskstats** %3, align 8
  %116 = getelementptr inbounds %struct.taskstats, %struct.taskstats* %115, i32 0, i32 1
  %117 = load i64, i64* %116, align 8
  %118 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %119 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %118, i32 0, i32 0
  %120 = load %struct.TYPE_6__*, %struct.TYPE_6__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = add nsw i64 %117, %122
  store i64 %123, i64* %13, align 8
  %124 = load i64, i64* %13, align 8
  %125 = load %struct.taskstats*, %struct.taskstats** %3, align 8
  %126 = getelementptr inbounds %struct.taskstats, %struct.taskstats* %125, i32 0, i32 1
  %127 = load i64, i64* %126, align 8
  %128 = icmp slt i64 %124, %127
  br i1 %128, label %129, label %130

129:                                              ; preds = %105
  br label %132

130:                                              ; preds = %105
  %131 = load i64, i64* %13, align 8
  br label %132

132:                                              ; preds = %130, %129
  %133 = phi i64 [ 0, %129 ], [ %131, %130 ]
  %134 = load %struct.taskstats*, %struct.taskstats** %3, align 8
  %135 = getelementptr inbounds %struct.taskstats, %struct.taskstats* %134, i32 0, i32 1
  store i64 %133, i64* %135, align 8
  %136 = load %struct.taskstats*, %struct.taskstats** %3, align 8
  %137 = getelementptr inbounds %struct.taskstats, %struct.taskstats* %136, i32 0, i32 2
  %138 = load i64, i64* %137, align 8
  %139 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %140 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %139, i32 0, i32 0
  %141 = load %struct.TYPE_6__*, %struct.TYPE_6__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %141, i32 0, i32 1
  %143 = load i64, i64* %142, align 8
  %144 = add nsw i64 %138, %143
  store i64 %144, i64* %13, align 8
  %145 = load i64, i64* %13, align 8
  %146 = load %struct.taskstats*, %struct.taskstats** %3, align 8
  %147 = getelementptr inbounds %struct.taskstats, %struct.taskstats* %146, i32 0, i32 2
  %148 = load i64, i64* %147, align 8
  %149 = icmp slt i64 %145, %148
  br i1 %149, label %150, label %151

150:                                              ; preds = %132
  br label %153

151:                                              ; preds = %132
  %152 = load i64, i64* %13, align 8
  br label %153

153:                                              ; preds = %151, %150
  %154 = phi i64 [ 0, %150 ], [ %152, %151 ]
  %155 = load %struct.taskstats*, %struct.taskstats** %3, align 8
  %156 = getelementptr inbounds %struct.taskstats, %struct.taskstats* %155, i32 0, i32 2
  store i64 %154, i64* %156, align 8
  %157 = load %struct.taskstats*, %struct.taskstats** %3, align 8
  %158 = getelementptr inbounds %struct.taskstats, %struct.taskstats* %157, i32 0, i32 3
  %159 = load i64, i64* %158, align 8
  %160 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %161 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %160, i32 0, i32 0
  %162 = load %struct.TYPE_6__*, %struct.TYPE_6__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %162, i32 0, i32 2
  %164 = load i64, i64* %163, align 8
  %165 = add nsw i64 %159, %164
  store i64 %165, i64* %13, align 8
  %166 = load i64, i64* %13, align 8
  %167 = load %struct.taskstats*, %struct.taskstats** %3, align 8
  %168 = getelementptr inbounds %struct.taskstats, %struct.taskstats* %167, i32 0, i32 3
  %169 = load i64, i64* %168, align 8
  %170 = icmp slt i64 %166, %169
  br i1 %170, label %171, label %172

171:                                              ; preds = %153
  br label %174

172:                                              ; preds = %153
  %173 = load i64, i64* %13, align 8
  br label %174

174:                                              ; preds = %172, %171
  %175 = phi i64 [ 0, %171 ], [ %173, %172 ]
  %176 = load %struct.taskstats*, %struct.taskstats** %3, align 8
  %177 = getelementptr inbounds %struct.taskstats, %struct.taskstats* %176, i32 0, i32 3
  store i64 %175, i64* %177, align 8
  %178 = load %struct.taskstats*, %struct.taskstats** %3, align 8
  %179 = getelementptr inbounds %struct.taskstats, %struct.taskstats* %178, i32 0, i32 4
  %180 = load i64, i64* %179, align 8
  %181 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %182 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %181, i32 0, i32 0
  %183 = load %struct.TYPE_6__*, %struct.TYPE_6__** %182, align 8
  %184 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %183, i32 0, i32 3
  %185 = load i64, i64* %184, align 8
  %186 = add nsw i64 %180, %185
  store i64 %186, i64* %13, align 8
  %187 = load i64, i64* %13, align 8
  %188 = load %struct.taskstats*, %struct.taskstats** %3, align 8
  %189 = getelementptr inbounds %struct.taskstats, %struct.taskstats* %188, i32 0, i32 4
  %190 = load i64, i64* %189, align 8
  %191 = icmp slt i64 %187, %190
  br i1 %191, label %192, label %193

192:                                              ; preds = %174
  br label %195

193:                                              ; preds = %174
  %194 = load i64, i64* %13, align 8
  br label %195

195:                                              ; preds = %193, %192
  %196 = phi i64 [ 0, %192 ], [ %194, %193 ]
  %197 = load %struct.taskstats*, %struct.taskstats** %3, align 8
  %198 = getelementptr inbounds %struct.taskstats, %struct.taskstats* %197, i32 0, i32 4
  store i64 %196, i64* %198, align 8
  %199 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %200 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %199, i32 0, i32 0
  %201 = load %struct.TYPE_6__*, %struct.TYPE_6__** %200, align 8
  %202 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %201, i32 0, i32 8
  %203 = load i64, i64* %202, align 8
  %204 = load %struct.taskstats*, %struct.taskstats** %3, align 8
  %205 = getelementptr inbounds %struct.taskstats, %struct.taskstats* %204, i32 0, i32 8
  %206 = load i32, i32* %205, align 4
  %207 = sext i32 %206 to i64
  %208 = add nsw i64 %207, %203
  %209 = trunc i64 %208 to i32
  store i32 %209, i32* %205, align 4
  %210 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %211 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %210, i32 0, i32 0
  %212 = load %struct.TYPE_6__*, %struct.TYPE_6__** %211, align 8
  %213 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %212, i32 0, i32 7
  %214 = load i64, i64* %213, align 8
  %215 = load %struct.taskstats*, %struct.taskstats** %3, align 8
  %216 = getelementptr inbounds %struct.taskstats, %struct.taskstats* %215, i32 0, i32 7
  %217 = load i32, i32* %216, align 8
  %218 = sext i32 %217 to i64
  %219 = add nsw i64 %218, %214
  %220 = trunc i64 %219 to i32
  store i32 %220, i32* %216, align 8
  %221 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %222 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %221, i32 0, i32 0
  %223 = load %struct.TYPE_6__*, %struct.TYPE_6__** %222, align 8
  %224 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %223, i32 0, i32 6
  %225 = load i64, i64* %224, align 8
  %226 = load %struct.taskstats*, %struct.taskstats** %3, align 8
  %227 = getelementptr inbounds %struct.taskstats, %struct.taskstats* %226, i32 0, i32 6
  %228 = load i32, i32* %227, align 4
  %229 = sext i32 %228 to i64
  %230 = add nsw i64 %229, %225
  %231 = trunc i64 %230 to i32
  store i32 %231, i32* %227, align 4
  %232 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %233 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %232, i32 0, i32 0
  %234 = load %struct.TYPE_6__*, %struct.TYPE_6__** %233, align 8
  %235 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %234, i32 0, i32 5
  %236 = load i64, i64* %235, align 8
  %237 = load %struct.taskstats*, %struct.taskstats** %3, align 8
  %238 = getelementptr inbounds %struct.taskstats, %struct.taskstats* %237, i32 0, i32 5
  %239 = load i32, i32* %238, align 8
  %240 = sext i32 %239 to i64
  %241 = add nsw i64 %240, %236
  %242 = trunc i64 %241 to i32
  store i32 %242, i32* %238, align 8
  %243 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %244 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %243, i32 0, i32 0
  %245 = load %struct.TYPE_6__*, %struct.TYPE_6__** %244, align 8
  %246 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %245, i32 0, i32 4
  %247 = load i64, i64* %11, align 8
  %248 = call i32 @raw_spin_unlock_irqrestore(i32* %246, i64 %247)
  ret i32 0
}

declare dso_local i32 @task_cputime(%struct.task_struct*, i64*, i64*) #1

declare dso_local i32 @task_cputime_scaled(%struct.task_struct*, i64*, i64*) #1

declare dso_local i32 @raw_spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @raw_spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
