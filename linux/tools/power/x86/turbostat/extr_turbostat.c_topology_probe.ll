; ModuleID = '/home/carl/AnghaBench/linux/tools/power/x86/turbostat/extr_turbostat.c_topology_probe.c'
source_filename = "/home/carl/AnghaBench/linux/tools/power/x86/turbostat/extr_turbostat.c_topology_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i64, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i32, i32, i32, i64, i32, i64, i32 }

@topo = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@count_cpus = common dso_local global i32 0, align 4
@summary_only = common dso_local global i32 0, align 4
@BIC_CPU = common dso_local global i32 0, align 4
@debug = common dso_local global i32 0, align 4
@outf = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"num_cpus %d max_cpu_num %d\0A\00", align 1
@cpus = common dso_local global %struct.TYPE_7__* null, align 8
@.str.1 = private unnamed_addr constant [12 x i8] c"calloc cpus\00", align 1
@cpu_present_set = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [10 x i8] c"CPU_ALLOC\00", align 1
@cpu_present_setsize = common dso_local global i32 0, align 4
@mark_cpu_present = common dso_local global i32 0, align 4
@CPU_SUBSET_MAXCPUS = common dso_local global i32 0, align 4
@cpu_subset_size = common dso_local global i32 0, align 4
@cpu_subset = common dso_local global i32* null, align 8
@.str.3 = private unnamed_addr constant [18 x i8] c"cpu%d not present\00", align 1
@cpu_affinity_set = common dso_local global i32* null, align 8
@cpu_affinity_setsize = common dso_local global i32 0, align 4
@init_thread_id = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [19 x i8] c"cpu%d NOT PRESENT\0A\00", align 1
@.str.5 = private unnamed_addr constant [49 x i8] c"max_core_id %d, sizing for %d cores per package\0A\00", align 1
@BIC_Core = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [34 x i8] c"max_die_id %d, sizing for %d die\0A\00", align 1
@BIC_Die = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [43 x i8] c"max_package_id %d, sizing for %d packages\0A\00", align 1
@BIC_Package = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [18 x i8] c"nodes_per_pkg %d\0A\00", align 1
@BIC_Node = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [17 x i8] c"max_siblings %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [57 x i8] c"cpu %d pkg %d die %d node %d lnode %d core %d thread %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @topology_probe() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 0, i32* %2, align 4
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %7 = call i32 (...) @set_max_cpu_num()
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @topo, i32 0, i32 0), align 8
  %8 = load i32, i32* @count_cpus, align 4
  %9 = call i32 @for_all_proc_cpus(i32 %8)
  %10 = load i32, i32* @summary_only, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %18, label %12

12:                                               ; preds = %0
  %13 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @topo, i32 0, i32 0), align 8
  %14 = icmp sgt i32 %13, 1
  br i1 %14, label %15, label %18

15:                                               ; preds = %12
  %16 = load i32, i32* @BIC_CPU, align 4
  %17 = call i32 @BIC_PRESENT(i32 %16)
  br label %18

18:                                               ; preds = %15, %12, %0
  %19 = load i32, i32* @debug, align 4
  %20 = icmp sgt i32 %19, 1
  br i1 %20, label %21, label %26

21:                                               ; preds = %18
  %22 = load i32, i32* @outf, align 4
  %23 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @topo, i32 0, i32 0), align 8
  %24 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @topo, i32 0, i32 1), align 4
  %25 = call i32 (i32, i8*, i32, ...) @fprintf(i32 %22, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %23, i32 %24)
  br label %26

26:                                               ; preds = %21, %18
  %27 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @topo, i32 0, i32 1), align 4
  %28 = add nsw i32 %27, 1
  %29 = sext i32 %28 to i64
  %30 = mul i64 %29, 4
  %31 = trunc i64 %30 to i32
  %32 = call %struct.TYPE_7__* @calloc(i32 1, i32 %31)
  store %struct.TYPE_7__* %32, %struct.TYPE_7__** @cpus, align 8
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** @cpus, align 8
  %34 = icmp eq %struct.TYPE_7__* %33, null
  br i1 %34, label %35, label %37

35:                                               ; preds = %26
  %36 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  br label %37

37:                                               ; preds = %35, %26
  %38 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @topo, i32 0, i32 1), align 4
  %39 = add nsw i32 %38, 1
  %40 = call i32* @CPU_ALLOC(i32 %39)
  store i32* %40, i32** @cpu_present_set, align 8
  %41 = load i32*, i32** @cpu_present_set, align 8
  %42 = icmp eq i32* %41, null
  br i1 %42, label %43, label %45

43:                                               ; preds = %37
  %44 = call i32 (i32, i8*, ...) @err(i32 3, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  br label %45

45:                                               ; preds = %43, %37
  %46 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @topo, i32 0, i32 1), align 4
  %47 = add nsw i32 %46, 1
  %48 = call i32 @CPU_ALLOC_SIZE(i32 %47)
  store i32 %48, i32* @cpu_present_setsize, align 4
  %49 = load i32, i32* @cpu_present_setsize, align 4
  %50 = load i32*, i32** @cpu_present_set, align 8
  %51 = call i32 @CPU_ZERO_S(i32 %49, i32* %50)
  %52 = load i32, i32* @mark_cpu_present, align 4
  %53 = call i32 @for_all_proc_cpus(i32 %52)
  store i32 0, i32* %1, align 4
  br label %54

54:                                               ; preds = %75, %45
  %55 = load i32, i32* %1, align 4
  %56 = load i32, i32* @CPU_SUBSET_MAXCPUS, align 4
  %57 = icmp slt i32 %55, %56
  br i1 %57, label %58, label %78

58:                                               ; preds = %54
  %59 = load i32, i32* %1, align 4
  %60 = load i32, i32* @cpu_subset_size, align 4
  %61 = load i32*, i32** @cpu_subset, align 8
  %62 = call i64 @CPU_ISSET_S(i32 %59, i32 %60, i32* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %74

64:                                               ; preds = %58
  %65 = load i32, i32* %1, align 4
  %66 = load i32, i32* @cpu_present_setsize, align 4
  %67 = load i32*, i32** @cpu_present_set, align 8
  %68 = call i64 @CPU_ISSET_S(i32 %65, i32 %66, i32* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %73, label %70

70:                                               ; preds = %64
  %71 = load i32, i32* %1, align 4
  %72 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i32 %71)
  br label %73

73:                                               ; preds = %70, %64
  br label %74

74:                                               ; preds = %73, %58
  br label %75

75:                                               ; preds = %74
  %76 = load i32, i32* %1, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %1, align 4
  br label %54

78:                                               ; preds = %54
  %79 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @topo, i32 0, i32 1), align 4
  %80 = add nsw i32 %79, 1
  %81 = call i32* @CPU_ALLOC(i32 %80)
  store i32* %81, i32** @cpu_affinity_set, align 8
  %82 = load i32*, i32** @cpu_affinity_set, align 8
  %83 = icmp eq i32* %82, null
  br i1 %83, label %84, label %86

84:                                               ; preds = %78
  %85 = call i32 (i32, i8*, ...) @err(i32 3, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  br label %86

86:                                               ; preds = %84, %78
  %87 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @topo, i32 0, i32 1), align 4
  %88 = add nsw i32 %87, 1
  %89 = call i32 @CPU_ALLOC_SIZE(i32 %88)
  store i32 %89, i32* @cpu_affinity_setsize, align 4
  %90 = load i32, i32* @cpu_affinity_setsize, align 4
  %91 = load i32*, i32** @cpu_affinity_set, align 8
  %92 = call i32 @CPU_ZERO_S(i32 %90, i32* %91)
  %93 = load i32, i32* @init_thread_id, align 4
  %94 = call i32 @for_all_proc_cpus(i32 %93)
  store i32 0, i32* %1, align 4
  br label %95

95:                                               ; preds = %235, %86
  %96 = load i32, i32* %1, align 4
  %97 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @topo, i32 0, i32 1), align 4
  %98 = icmp sle i32 %96, %97
  br i1 %98, label %99, label %238

99:                                               ; preds = %95
  %100 = load i32, i32* %1, align 4
  %101 = call i64 @cpu_is_not_present(i32 %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %111

103:                                              ; preds = %99
  %104 = load i32, i32* @debug, align 4
  %105 = icmp sgt i32 %104, 1
  br i1 %105, label %106, label %110

106:                                              ; preds = %103
  %107 = load i32, i32* @outf, align 4
  %108 = load i32, i32* %1, align 4
  %109 = call i32 (i32, i8*, i32, ...) @fprintf(i32 %107, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i32 %108)
  br label %110

110:                                              ; preds = %106, %103
  br label %235

111:                                              ; preds = %99
  %112 = load i32, i32* %1, align 4
  %113 = load %struct.TYPE_7__*, %struct.TYPE_7__** @cpus, align 8
  %114 = load i32, i32* %1, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %113, i64 %115
  %117 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %116, i32 0, i32 0
  store i32 %112, i32* %117, align 8
  %118 = load i32, i32* %1, align 4
  %119 = call i32 @get_physical_package_id(i32 %118)
  %120 = load %struct.TYPE_7__*, %struct.TYPE_7__** @cpus, align 8
  %121 = load i32, i32* %1, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %120, i64 %122
  %124 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %123, i32 0, i32 1
  store i32 %119, i32* %124, align 4
  %125 = load %struct.TYPE_7__*, %struct.TYPE_7__** @cpus, align 8
  %126 = load i32, i32* %1, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %125, i64 %127
  %129 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* %3, align 4
  %132 = icmp sgt i32 %130, %131
  br i1 %132, label %133, label %140

133:                                              ; preds = %111
  %134 = load %struct.TYPE_7__*, %struct.TYPE_7__** @cpus, align 8
  %135 = load i32, i32* %1, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %134, i64 %136
  %138 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  store i32 %139, i32* %3, align 4
  br label %140

140:                                              ; preds = %133, %111
  %141 = load i32, i32* %1, align 4
  %142 = call i32 @get_die_id(i32 %141)
  %143 = load %struct.TYPE_7__*, %struct.TYPE_7__** @cpus, align 8
  %144 = load i32, i32* %1, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %143, i64 %145
  %147 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %146, i32 0, i32 2
  store i32 %142, i32* %147, align 8
  %148 = load %struct.TYPE_7__*, %struct.TYPE_7__** @cpus, align 8
  %149 = load i32, i32* %1, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %148, i64 %150
  %152 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %151, i32 0, i32 2
  %153 = load i32, i32* %152, align 8
  %154 = load i32, i32* %4, align 4
  %155 = icmp sgt i32 %153, %154
  br i1 %155, label %156, label %163

156:                                              ; preds = %140
  %157 = load %struct.TYPE_7__*, %struct.TYPE_7__** @cpus, align 8
  %158 = load i32, i32* %1, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %157, i64 %159
  %161 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %160, i32 0, i32 2
  %162 = load i32, i32* %161, align 8
  store i32 %162, i32* %4, align 4
  br label %163

163:                                              ; preds = %156, %140
  %164 = load %struct.TYPE_7__*, %struct.TYPE_7__** @cpus, align 8
  %165 = load i32, i32* %1, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %164, i64 %166
  %168 = call i64 @get_physical_node_id(%struct.TYPE_7__* %167)
  %169 = load %struct.TYPE_7__*, %struct.TYPE_7__** @cpus, align 8
  %170 = load i32, i32* %1, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %169, i64 %171
  %173 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %172, i32 0, i32 3
  store i64 %168, i64* %173, align 8
  %174 = load %struct.TYPE_7__*, %struct.TYPE_7__** @cpus, align 8
  %175 = load i32, i32* %1, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %174, i64 %176
  %178 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %177, i32 0, i32 3
  %179 = load i64, i64* %178, align 8
  %180 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @topo, i32 0, i32 2), align 8
  %181 = icmp sgt i64 %179, %180
  br i1 %181, label %182, label %189

182:                                              ; preds = %163
  %183 = load %struct.TYPE_7__*, %struct.TYPE_7__** @cpus, align 8
  %184 = load i32, i32* %1, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %183, i64 %185
  %187 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %186, i32 0, i32 3
  %188 = load i64, i64* %187, align 8
  store i64 %188, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @topo, i32 0, i32 2), align 8
  br label %189

189:                                              ; preds = %182, %163
  %190 = load i32, i32* %1, align 4
  %191 = call i32 @get_core_id(i32 %190)
  %192 = load %struct.TYPE_7__*, %struct.TYPE_7__** @cpus, align 8
  %193 = load i32, i32* %1, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %192, i64 %194
  %196 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %195, i32 0, i32 4
  store i32 %191, i32* %196, align 8
  %197 = load %struct.TYPE_7__*, %struct.TYPE_7__** @cpus, align 8
  %198 = load i32, i32* %1, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %197, i64 %199
  %201 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %200, i32 0, i32 4
  %202 = load i32, i32* %201, align 8
  %203 = load i32, i32* %2, align 4
  %204 = icmp sgt i32 %202, %203
  br i1 %204, label %205, label %212

205:                                              ; preds = %189
  %206 = load %struct.TYPE_7__*, %struct.TYPE_7__** @cpus, align 8
  %207 = load i32, i32* %1, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %206, i64 %208
  %210 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %209, i32 0, i32 4
  %211 = load i32, i32* %210, align 8
  store i32 %211, i32* %2, align 4
  br label %212

212:                                              ; preds = %205, %189
  %213 = load %struct.TYPE_7__*, %struct.TYPE_7__** @cpus, align 8
  %214 = load i32, i32* %1, align 4
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %213, i64 %215
  %217 = call i32 @get_thread_siblings(%struct.TYPE_7__* %216)
  store i32 %217, i32* %6, align 4
  %218 = load i32, i32* %6, align 4
  %219 = load i32, i32* %5, align 4
  %220 = icmp sgt i32 %218, %219
  br i1 %220, label %221, label %223

221:                                              ; preds = %212
  %222 = load i32, i32* %6, align 4
  store i32 %222, i32* %5, align 4
  br label %223

223:                                              ; preds = %221, %212
  %224 = load %struct.TYPE_7__*, %struct.TYPE_7__** @cpus, align 8
  %225 = load i32, i32* %1, align 4
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %224, i64 %226
  %228 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %227, i32 0, i32 5
  %229 = load i64, i64* %228, align 8
  %230 = icmp eq i64 %229, 0
  br i1 %230, label %231, label %234

231:                                              ; preds = %223
  %232 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @topo, i32 0, i32 8), align 4
  %233 = add nsw i32 %232, 1
  store i32 %233, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @topo, i32 0, i32 8), align 4
  br label %234

234:                                              ; preds = %231, %223
  br label %235

235:                                              ; preds = %234, %110
  %236 = load i32, i32* %1, align 4
  %237 = add nsw i32 %236, 1
  store i32 %237, i32* %1, align 4
  br label %95

238:                                              ; preds = %95
  %239 = load i32, i32* %2, align 4
  %240 = add nsw i32 %239, 1
  store i32 %240, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @topo, i32 0, i32 3), align 8
  %241 = load i32, i32* @debug, align 4
  %242 = icmp sgt i32 %241, 1
  br i1 %242, label %243, label %248

243:                                              ; preds = %238
  %244 = load i32, i32* @outf, align 4
  %245 = load i32, i32* %2, align 4
  %246 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @topo, i32 0, i32 3), align 8
  %247 = call i32 (i32, i8*, i32, ...) @fprintf(i32 %244, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.5, i64 0, i64 0), i32 %245, i32 %246)
  br label %248

248:                                              ; preds = %243, %238
  %249 = load i32, i32* @summary_only, align 4
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %257, label %251

251:                                              ; preds = %248
  %252 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @topo, i32 0, i32 3), align 8
  %253 = icmp sgt i32 %252, 1
  br i1 %253, label %254, label %257

254:                                              ; preds = %251
  %255 = load i32, i32* @BIC_Core, align 4
  %256 = call i32 @BIC_PRESENT(i32 %255)
  br label %257

257:                                              ; preds = %254, %251, %248
  %258 = load i32, i32* %4, align 4
  %259 = add nsw i32 %258, 1
  store i32 %259, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @topo, i32 0, i32 4), align 4
  %260 = load i32, i32* @debug, align 4
  %261 = icmp sgt i32 %260, 1
  br i1 %261, label %262, label %267

262:                                              ; preds = %257
  %263 = load i32, i32* @outf, align 4
  %264 = load i32, i32* %4, align 4
  %265 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @topo, i32 0, i32 4), align 4
  %266 = call i32 (i32, i8*, i32, ...) @fprintf(i32 %263, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i64 0, i64 0), i32 %264, i32 %265)
  br label %267

267:                                              ; preds = %262, %257
  %268 = load i32, i32* @summary_only, align 4
  %269 = icmp ne i32 %268, 0
  br i1 %269, label %276, label %270

270:                                              ; preds = %267
  %271 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @topo, i32 0, i32 4), align 4
  %272 = icmp sgt i32 %271, 1
  br i1 %272, label %273, label %276

273:                                              ; preds = %270
  %274 = load i32, i32* @BIC_Die, align 4
  %275 = call i32 @BIC_PRESENT(i32 %274)
  br label %276

276:                                              ; preds = %273, %270, %267
  %277 = load i32, i32* %3, align 4
  %278 = add nsw i32 %277, 1
  store i32 %278, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @topo, i32 0, i32 5), align 8
  %279 = load i32, i32* @debug, align 4
  %280 = icmp sgt i32 %279, 1
  br i1 %280, label %281, label %286

281:                                              ; preds = %276
  %282 = load i32, i32* @outf, align 4
  %283 = load i32, i32* %3, align 4
  %284 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @topo, i32 0, i32 5), align 8
  %285 = call i32 (i32, i8*, i32, ...) @fprintf(i32 %282, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.7, i64 0, i64 0), i32 %283, i32 %284)
  br label %286

286:                                              ; preds = %281, %276
  %287 = load i32, i32* @summary_only, align 4
  %288 = icmp ne i32 %287, 0
  br i1 %288, label %295, label %289

289:                                              ; preds = %286
  %290 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @topo, i32 0, i32 5), align 8
  %291 = icmp sgt i32 %290, 1
  br i1 %291, label %292, label %295

292:                                              ; preds = %289
  %293 = load i32, i32* @BIC_Package, align 4
  %294 = call i32 @BIC_PRESENT(i32 %293)
  br label %295

295:                                              ; preds = %292, %289, %286
  %296 = call i32 (...) @set_node_data()
  %297 = load i32, i32* @debug, align 4
  %298 = icmp sgt i32 %297, 1
  br i1 %298, label %299, label %303

299:                                              ; preds = %295
  %300 = load i32, i32* @outf, align 4
  %301 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @topo, i32 0, i32 6), align 4
  %302 = call i32 (i32, i8*, i32, ...) @fprintf(i32 %300, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i64 0, i64 0), i32 %301)
  br label %303

303:                                              ; preds = %299, %295
  %304 = load i32, i32* @summary_only, align 4
  %305 = icmp ne i32 %304, 0
  br i1 %305, label %312, label %306

306:                                              ; preds = %303
  %307 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @topo, i32 0, i32 6), align 4
  %308 = icmp sgt i32 %307, 1
  br i1 %308, label %309, label %312

309:                                              ; preds = %306
  %310 = load i32, i32* @BIC_Node, align 4
  %311 = call i32 @BIC_PRESENT(i32 %310)
  br label %312

312:                                              ; preds = %309, %306, %303
  %313 = load i32, i32* %5, align 4
  store i32 %313, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @topo, i32 0, i32 7), align 8
  %314 = load i32, i32* @debug, align 4
  %315 = icmp sgt i32 %314, 1
  br i1 %315, label %316, label %320

316:                                              ; preds = %312
  %317 = load i32, i32* @outf, align 4
  %318 = load i32, i32* %5, align 4
  %319 = call i32 (i32, i8*, i32, ...) @fprintf(i32 %317, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i64 0, i64 0), i32 %318)
  br label %320

320:                                              ; preds = %316, %312
  %321 = load i32, i32* @debug, align 4
  %322 = icmp slt i32 %321, 1
  br i1 %322, label %323, label %324

323:                                              ; preds = %320
  br label %377

324:                                              ; preds = %320
  store i32 0, i32* %1, align 4
  br label %325

325:                                              ; preds = %374, %324
  %326 = load i32, i32* %1, align 4
  %327 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @topo, i32 0, i32 1), align 4
  %328 = icmp sle i32 %326, %327
  br i1 %328, label %329, label %377

329:                                              ; preds = %325
  %330 = load i32, i32* %1, align 4
  %331 = call i64 @cpu_is_not_present(i32 %330)
  %332 = icmp ne i64 %331, 0
  br i1 %332, label %333, label %334

333:                                              ; preds = %329
  br label %374

334:                                              ; preds = %329
  %335 = load i32, i32* @outf, align 4
  %336 = load i32, i32* %1, align 4
  %337 = load %struct.TYPE_7__*, %struct.TYPE_7__** @cpus, align 8
  %338 = load i32, i32* %1, align 4
  %339 = sext i32 %338 to i64
  %340 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %337, i64 %339
  %341 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %340, i32 0, i32 1
  %342 = load i32, i32* %341, align 4
  %343 = load %struct.TYPE_7__*, %struct.TYPE_7__** @cpus, align 8
  %344 = load i32, i32* %1, align 4
  %345 = sext i32 %344 to i64
  %346 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %343, i64 %345
  %347 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %346, i32 0, i32 2
  %348 = load i32, i32* %347, align 8
  %349 = load %struct.TYPE_7__*, %struct.TYPE_7__** @cpus, align 8
  %350 = load i32, i32* %1, align 4
  %351 = sext i32 %350 to i64
  %352 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %349, i64 %351
  %353 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %352, i32 0, i32 3
  %354 = load i64, i64* %353, align 8
  %355 = load %struct.TYPE_7__*, %struct.TYPE_7__** @cpus, align 8
  %356 = load i32, i32* %1, align 4
  %357 = sext i32 %356 to i64
  %358 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %355, i64 %357
  %359 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %358, i32 0, i32 6
  %360 = load i32, i32* %359, align 8
  %361 = load %struct.TYPE_7__*, %struct.TYPE_7__** @cpus, align 8
  %362 = load i32, i32* %1, align 4
  %363 = sext i32 %362 to i64
  %364 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %361, i64 %363
  %365 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %364, i32 0, i32 4
  %366 = load i32, i32* %365, align 8
  %367 = load %struct.TYPE_7__*, %struct.TYPE_7__** @cpus, align 8
  %368 = load i32, i32* %1, align 4
  %369 = sext i32 %368 to i64
  %370 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %367, i64 %369
  %371 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %370, i32 0, i32 5
  %372 = load i64, i64* %371, align 8
  %373 = call i32 (i32, i8*, i32, ...) @fprintf(i32 %335, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.10, i64 0, i64 0), i32 %336, i32 %342, i32 %348, i64 %354, i32 %360, i32 %366, i64 %372)
  br label %374

374:                                              ; preds = %334, %333
  %375 = load i32, i32* %1, align 4
  %376 = add nsw i32 %375, 1
  store i32 %376, i32* %1, align 4
  br label %325

377:                                              ; preds = %323, %325
  ret void
}

declare dso_local i32 @set_max_cpu_num(...) #1

declare dso_local i32 @for_all_proc_cpus(i32) #1

declare dso_local i32 @BIC_PRESENT(i32) #1

declare dso_local i32 @fprintf(i32, i8*, i32, ...) #1

declare dso_local %struct.TYPE_7__* @calloc(i32, i32) #1

declare dso_local i32 @err(i32, i8*, ...) #1

declare dso_local i32* @CPU_ALLOC(i32) #1

declare dso_local i32 @CPU_ALLOC_SIZE(i32) #1

declare dso_local i32 @CPU_ZERO_S(i32, i32*) #1

declare dso_local i64 @CPU_ISSET_S(i32, i32, i32*) #1

declare dso_local i64 @cpu_is_not_present(i32) #1

declare dso_local i32 @get_physical_package_id(i32) #1

declare dso_local i32 @get_die_id(i32) #1

declare dso_local i64 @get_physical_node_id(%struct.TYPE_7__*) #1

declare dso_local i32 @get_core_id(i32) #1

declare dso_local i32 @get_thread_siblings(%struct.TYPE_7__*) #1

declare dso_local i32 @set_node_data(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
