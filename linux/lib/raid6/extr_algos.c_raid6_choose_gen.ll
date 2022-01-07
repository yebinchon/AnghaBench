; ModuleID = '/home/carl/AnghaBench/linux/lib/raid6/extr_algos.c_raid6_choose_gen.c'
source_filename = "/home/carl/AnghaBench/linux/lib/raid6/extr_algos.c_raid6_choose_gen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.raid6_calls = type { i64, i32 (i32, i32, i32, i32, i8**)*, i32, i32 (i32, i32, i8**)*, i32 (...)* }

@PAGE_SIZE = common dso_local global i32 0, align 4
@raid6_algos = common dso_local global %struct.raid6_calls** null, align 8
@CONFIG_RAID6_PQ_BENCHMARK = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@RAID6_TIME_JIFFIES_LG2 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"raid6: %-8s gen() %5ld MB/s\0A\00", align 1
@HZ = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [29 x i8] c"raid6: %-8s xor() %5ld MB/s\0A\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"raid6: using algorithm %s gen() %ld MB/s\0A\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"raid6: .... xor() %ld MB/s, rmw enabled\0A\00", align 1
@raid6_call = common dso_local global %struct.raid6_calls zeroinitializer, align 8
@.str.4 = private unnamed_addr constant [36 x i8] c"raid6: Yikes!  No algorithm found!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.raid6_calls* (i8**, i32)* @raid6_choose_gen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.raid6_calls* @raid6_choose_gen(i8** %0, i32 %1) #0 {
  %3 = alloca i8**, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.raid6_calls**, align 8
  %13 = alloca %struct.raid6_calls*, align 8
  store i8** %0, i8*** %3, align 8
  store i32 %1, i32* %4, align 4
  %14 = load i32, i32* @PAGE_SIZE, align 4
  %15 = sdiv i32 65536, %14
  %16 = add nsw i32 %15, 2
  %17 = zext i32 %16 to i64
  %18 = load i32, i32* %4, align 4
  %19 = ashr i32 %18, 1
  %20 = sub nsw i32 %19, 1
  store i32 %20, i32* %10, align 4
  %21 = load i32, i32* %4, align 4
  %22 = sub nsw i32 %21, 3
  store i32 %22, i32* %11, align 4
  store i64 0, i64* %6, align 8
  store i64 0, i64* %7, align 8
  store %struct.raid6_calls* null, %struct.raid6_calls** %13, align 8
  %23 = load %struct.raid6_calls**, %struct.raid6_calls*** @raid6_algos, align 8
  store %struct.raid6_calls** %23, %struct.raid6_calls*** %12, align 8
  br label %24

24:                                               ; preds = %176, %2
  %25 = load %struct.raid6_calls**, %struct.raid6_calls*** %12, align 8
  %26 = load %struct.raid6_calls*, %struct.raid6_calls** %25, align 8
  %27 = icmp ne %struct.raid6_calls* %26, null
  br i1 %27, label %28, label %179

28:                                               ; preds = %24
  %29 = load %struct.raid6_calls*, %struct.raid6_calls** %13, align 8
  %30 = icmp ne %struct.raid6_calls* %29, null
  br i1 %30, label %31, label %40

31:                                               ; preds = %28
  %32 = load %struct.raid6_calls**, %struct.raid6_calls*** %12, align 8
  %33 = load %struct.raid6_calls*, %struct.raid6_calls** %32, align 8
  %34 = getelementptr inbounds %struct.raid6_calls, %struct.raid6_calls* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.raid6_calls*, %struct.raid6_calls** %13, align 8
  %37 = getelementptr inbounds %struct.raid6_calls, %struct.raid6_calls* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp sge i64 %35, %38
  br i1 %39, label %40, label %175

40:                                               ; preds = %31, %28
  %41 = load %struct.raid6_calls**, %struct.raid6_calls*** %12, align 8
  %42 = load %struct.raid6_calls*, %struct.raid6_calls** %41, align 8
  %43 = getelementptr inbounds %struct.raid6_calls, %struct.raid6_calls* %42, i32 0, i32 4
  %44 = load i32 (...)*, i32 (...)** %43, align 8
  %45 = icmp ne i32 (...)* %44, null
  br i1 %45, label %46, label %54

46:                                               ; preds = %40
  %47 = load %struct.raid6_calls**, %struct.raid6_calls*** %12, align 8
  %48 = load %struct.raid6_calls*, %struct.raid6_calls** %47, align 8
  %49 = getelementptr inbounds %struct.raid6_calls, %struct.raid6_calls* %48, i32 0, i32 4
  %50 = load i32 (...)*, i32 (...)** %49, align 8
  %51 = call i32 (...) %50()
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %46
  br label %176

54:                                               ; preds = %46, %40
  %55 = load i32, i32* @CONFIG_RAID6_PQ_BENCHMARK, align 4
  %56 = call i32 @IS_ENABLED(i32 %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %61, label %58

58:                                               ; preds = %54
  %59 = load %struct.raid6_calls**, %struct.raid6_calls*** %12, align 8
  %60 = load %struct.raid6_calls*, %struct.raid6_calls** %59, align 8
  store %struct.raid6_calls* %60, %struct.raid6_calls** %13, align 8
  br label %179

61:                                               ; preds = %54
  store i64 0, i64* %5, align 8
  %62 = call i32 (...) @preempt_disable()
  %63 = load i64, i64* @jiffies, align 8
  store i64 %63, i64* %8, align 8
  br label %64

64:                                               ; preds = %68, %61
  %65 = load i64, i64* @jiffies, align 8
  store i64 %65, i64* %9, align 8
  %66 = load i64, i64* %8, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %70

68:                                               ; preds = %64
  %69 = call i32 (...) @cpu_relax()
  br label %64

70:                                               ; preds = %64
  br label %71

71:                                               ; preds = %80, %70
  %72 = load i64, i64* @jiffies, align 8
  %73 = load i64, i64* %9, align 8
  %74 = load i32, i32* @RAID6_TIME_JIFFIES_LG2, align 4
  %75 = shl i32 1, %74
  %76 = sext i32 %75 to i64
  %77 = add i64 %73, %76
  %78 = call i64 @time_before(i64 %72, i64 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %91

80:                                               ; preds = %71
  %81 = load %struct.raid6_calls**, %struct.raid6_calls*** %12, align 8
  %82 = load %struct.raid6_calls*, %struct.raid6_calls** %81, align 8
  %83 = getelementptr inbounds %struct.raid6_calls, %struct.raid6_calls* %82, i32 0, i32 3
  %84 = load i32 (i32, i32, i8**)*, i32 (i32, i32, i8**)** %83, align 8
  %85 = load i32, i32* %4, align 4
  %86 = load i32, i32* @PAGE_SIZE, align 4
  %87 = load i8**, i8*** %3, align 8
  %88 = call i32 %84(i32 %85, i32 %86, i8** %87)
  %89 = load i64, i64* %5, align 8
  %90 = add i64 %89, 1
  store i64 %90, i64* %5, align 8
  br label %71

91:                                               ; preds = %71
  %92 = call i32 (...) @preempt_enable()
  %93 = load i64, i64* %5, align 8
  %94 = load i64, i64* %6, align 8
  %95 = icmp ugt i64 %93, %94
  br i1 %95, label %96, label %100

96:                                               ; preds = %91
  %97 = load i64, i64* %5, align 8
  store i64 %97, i64* %6, align 8
  %98 = load %struct.raid6_calls**, %struct.raid6_calls*** %12, align 8
  %99 = load %struct.raid6_calls*, %struct.raid6_calls** %98, align 8
  store %struct.raid6_calls* %99, %struct.raid6_calls** %13, align 8
  br label %100

100:                                              ; preds = %96, %91
  %101 = load %struct.raid6_calls**, %struct.raid6_calls*** %12, align 8
  %102 = load %struct.raid6_calls*, %struct.raid6_calls** %101, align 8
  %103 = getelementptr inbounds %struct.raid6_calls, %struct.raid6_calls* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 8
  %105 = sext i32 %104 to i64
  %106 = load i64, i64* %5, align 8
  %107 = load i64, i64* @HZ, align 8
  %108 = mul i64 %106, %107
  %109 = load i32, i32* @RAID6_TIME_JIFFIES_LG2, align 4
  %110 = add nsw i32 4, %109
  %111 = zext i32 %110 to i64
  %112 = lshr i64 %108, %111
  %113 = call i32 (i8*, i64, ...) @pr_info(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i64 %105, i64 %112)
  %114 = load %struct.raid6_calls**, %struct.raid6_calls*** %12, align 8
  %115 = load %struct.raid6_calls*, %struct.raid6_calls** %114, align 8
  %116 = getelementptr inbounds %struct.raid6_calls, %struct.raid6_calls* %115, i32 0, i32 1
  %117 = load i32 (i32, i32, i32, i32, i8**)*, i32 (i32, i32, i32, i32, i8**)** %116, align 8
  %118 = icmp ne i32 (i32, i32, i32, i32, i8**)* %117, null
  br i1 %118, label %120, label %119

119:                                              ; preds = %100
  br label %176

120:                                              ; preds = %100
  store i64 0, i64* %5, align 8
  %121 = call i32 (...) @preempt_disable()
  %122 = load i64, i64* @jiffies, align 8
  store i64 %122, i64* %8, align 8
  br label %123

123:                                              ; preds = %127, %120
  %124 = load i64, i64* @jiffies, align 8
  store i64 %124, i64* %9, align 8
  %125 = load i64, i64* %8, align 8
  %126 = icmp eq i64 %124, %125
  br i1 %126, label %127, label %129

127:                                              ; preds = %123
  %128 = call i32 (...) @cpu_relax()
  br label %123

129:                                              ; preds = %123
  br label %130

130:                                              ; preds = %139, %129
  %131 = load i64, i64* @jiffies, align 8
  %132 = load i64, i64* %9, align 8
  %133 = load i32, i32* @RAID6_TIME_JIFFIES_LG2, align 4
  %134 = shl i32 1, %133
  %135 = sext i32 %134 to i64
  %136 = add i64 %132, %135
  %137 = call i64 @time_before(i64 %131, i64 %136)
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %152

139:                                              ; preds = %130
  %140 = load %struct.raid6_calls**, %struct.raid6_calls*** %12, align 8
  %141 = load %struct.raid6_calls*, %struct.raid6_calls** %140, align 8
  %142 = getelementptr inbounds %struct.raid6_calls, %struct.raid6_calls* %141, i32 0, i32 1
  %143 = load i32 (i32, i32, i32, i32, i8**)*, i32 (i32, i32, i32, i32, i8**)** %142, align 8
  %144 = load i32, i32* %4, align 4
  %145 = load i32, i32* %10, align 4
  %146 = load i32, i32* %11, align 4
  %147 = load i32, i32* @PAGE_SIZE, align 4
  %148 = load i8**, i8*** %3, align 8
  %149 = call i32 %143(i32 %144, i32 %145, i32 %146, i32 %147, i8** %148)
  %150 = load i64, i64* %5, align 8
  %151 = add i64 %150, 1
  store i64 %151, i64* %5, align 8
  br label %130

152:                                              ; preds = %130
  %153 = call i32 (...) @preempt_enable()
  %154 = load %struct.raid6_calls*, %struct.raid6_calls** %13, align 8
  %155 = load %struct.raid6_calls**, %struct.raid6_calls*** %12, align 8
  %156 = load %struct.raid6_calls*, %struct.raid6_calls** %155, align 8
  %157 = icmp eq %struct.raid6_calls* %154, %156
  br i1 %157, label %158, label %160

158:                                              ; preds = %152
  %159 = load i64, i64* %5, align 8
  store i64 %159, i64* %7, align 8
  br label %160

160:                                              ; preds = %158, %152
  %161 = load %struct.raid6_calls**, %struct.raid6_calls*** %12, align 8
  %162 = load %struct.raid6_calls*, %struct.raid6_calls** %161, align 8
  %163 = getelementptr inbounds %struct.raid6_calls, %struct.raid6_calls* %162, i32 0, i32 2
  %164 = load i32, i32* %163, align 8
  %165 = sext i32 %164 to i64
  %166 = load i64, i64* %5, align 8
  %167 = load i64, i64* @HZ, align 8
  %168 = mul i64 %166, %167
  %169 = load i32, i32* @RAID6_TIME_JIFFIES_LG2, align 4
  %170 = add nsw i32 4, %169
  %171 = add nsw i32 %170, 1
  %172 = zext i32 %171 to i64
  %173 = lshr i64 %168, %172
  %174 = call i32 (i8*, i64, ...) @pr_info(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i64 %165, i64 %173)
  br label %175

175:                                              ; preds = %160, %31
  br label %176

176:                                              ; preds = %175, %119, %53
  %177 = load %struct.raid6_calls**, %struct.raid6_calls*** %12, align 8
  %178 = getelementptr inbounds %struct.raid6_calls*, %struct.raid6_calls** %177, i32 1
  store %struct.raid6_calls** %178, %struct.raid6_calls*** %12, align 8
  br label %24

179:                                              ; preds = %58, %24
  %180 = load %struct.raid6_calls*, %struct.raid6_calls** %13, align 8
  %181 = icmp ne %struct.raid6_calls* %180, null
  br i1 %181, label %182, label %212

182:                                              ; preds = %179
  %183 = load %struct.raid6_calls*, %struct.raid6_calls** %13, align 8
  %184 = getelementptr inbounds %struct.raid6_calls, %struct.raid6_calls* %183, i32 0, i32 2
  %185 = load i32, i32* %184, align 8
  %186 = sext i32 %185 to i64
  %187 = load i64, i64* %6, align 8
  %188 = load i64, i64* @HZ, align 8
  %189 = mul i64 %187, %188
  %190 = load i32, i32* @RAID6_TIME_JIFFIES_LG2, align 4
  %191 = add nsw i32 4, %190
  %192 = zext i32 %191 to i64
  %193 = lshr i64 %189, %192
  %194 = call i32 (i8*, i64, ...) @pr_info(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i64 %186, i64 %193)
  %195 = load %struct.raid6_calls*, %struct.raid6_calls** %13, align 8
  %196 = getelementptr inbounds %struct.raid6_calls, %struct.raid6_calls* %195, i32 0, i32 1
  %197 = load i32 (i32, i32, i32, i32, i8**)*, i32 (i32, i32, i32, i32, i8**)** %196, align 8
  %198 = icmp ne i32 (i32, i32, i32, i32, i8**)* %197, null
  br i1 %198, label %199, label %209

199:                                              ; preds = %182
  %200 = load i64, i64* %7, align 8
  %201 = load i64, i64* @HZ, align 8
  %202 = mul i64 %200, %201
  %203 = load i32, i32* @RAID6_TIME_JIFFIES_LG2, align 4
  %204 = add nsw i32 4, %203
  %205 = add nsw i32 %204, 1
  %206 = zext i32 %205 to i64
  %207 = lshr i64 %202, %206
  %208 = call i32 (i8*, i64, ...) @pr_info(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i64 %207)
  br label %209

209:                                              ; preds = %199, %182
  %210 = load %struct.raid6_calls*, %struct.raid6_calls** %13, align 8
  %211 = bitcast %struct.raid6_calls* %210 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 bitcast (%struct.raid6_calls* @raid6_call to i8*), i8* align 8 %211, i64 40, i1 false)
  br label %214

212:                                              ; preds = %179
  %213 = call i32 @pr_err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0))
  br label %214

214:                                              ; preds = %212, %209
  %215 = load %struct.raid6_calls*, %struct.raid6_calls** %13, align 8
  ret %struct.raid6_calls* %215
}

declare dso_local i32 @IS_ENABLED(i32) #1

declare dso_local i32 @preempt_disable(...) #1

declare dso_local i32 @cpu_relax(...) #1

declare dso_local i64 @time_before(i64, i64) #1

declare dso_local i32 @preempt_enable(...) #1

declare dso_local i32 @pr_info(i8*, i64, ...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @pr_err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
