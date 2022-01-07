; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_memcontrol.c___mem_cgroup_usage_register_event.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_memcontrol.c___mem_cgroup_usage_register_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_cgroup = type { i32, %struct.mem_cgroup_thresholds, %struct.mem_cgroup_thresholds }
%struct.mem_cgroup_thresholds = type { %struct.TYPE_6__*, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32 }
%struct.eventfd_ctx = type { i32 }
%struct.mem_cgroup_threshold_ary = type { i32, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64, %struct.eventfd_ctx* }

@.str = private unnamed_addr constant [3 x i8] c"-1\00", align 1
@_MEM = common dso_local global i32 0, align 4
@_MEMSWAP = common dso_local global i32 0, align 4
@entries = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@compare_thresholds = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mem_cgroup*, %struct.eventfd_ctx*, i8*, i32)* @__mem_cgroup_usage_register_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__mem_cgroup_usage_register_event(%struct.mem_cgroup* %0, %struct.eventfd_ctx* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mem_cgroup*, align 8
  %7 = alloca %struct.eventfd_ctx*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.mem_cgroup_thresholds*, align 8
  %11 = alloca %struct.mem_cgroup_threshold_ary*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.mem_cgroup* %0, %struct.mem_cgroup** %6, align 8
  store %struct.eventfd_ctx* %1, %struct.eventfd_ctx** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %17 = load i8*, i8** %8, align 8
  %18 = call i32 @page_counter_memparse(i8* %17, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i64* %12)
  store i32 %18, i32* %16, align 4
  %19 = load i32, i32* %16, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %4
  %22 = load i32, i32* %16, align 4
  store i32 %22, i32* %5, align 4
  br label %181

23:                                               ; preds = %4
  %24 = load %struct.mem_cgroup*, %struct.mem_cgroup** %6, align 8
  %25 = getelementptr inbounds %struct.mem_cgroup, %struct.mem_cgroup* %24, i32 0, i32 0
  %26 = call i32 @mutex_lock(i32* %25)
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* @_MEM, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %35

30:                                               ; preds = %23
  %31 = load %struct.mem_cgroup*, %struct.mem_cgroup** %6, align 8
  %32 = getelementptr inbounds %struct.mem_cgroup, %struct.mem_cgroup* %31, i32 0, i32 2
  store %struct.mem_cgroup_thresholds* %32, %struct.mem_cgroup_thresholds** %10, align 8
  %33 = load %struct.mem_cgroup*, %struct.mem_cgroup** %6, align 8
  %34 = call i64 @mem_cgroup_usage(%struct.mem_cgroup* %33, i32 0)
  store i64 %34, i64* %13, align 8
  br label %47

35:                                               ; preds = %23
  %36 = load i32, i32* %9, align 4
  %37 = load i32, i32* @_MEMSWAP, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %44

39:                                               ; preds = %35
  %40 = load %struct.mem_cgroup*, %struct.mem_cgroup** %6, align 8
  %41 = getelementptr inbounds %struct.mem_cgroup, %struct.mem_cgroup* %40, i32 0, i32 1
  store %struct.mem_cgroup_thresholds* %41, %struct.mem_cgroup_thresholds** %10, align 8
  %42 = load %struct.mem_cgroup*, %struct.mem_cgroup** %6, align 8
  %43 = call i64 @mem_cgroup_usage(%struct.mem_cgroup* %42, i32 1)
  store i64 %43, i64* %13, align 8
  br label %46

44:                                               ; preds = %35
  %45 = call i32 (...) @BUG()
  br label %46

46:                                               ; preds = %44, %39
  br label %47

47:                                               ; preds = %46, %30
  %48 = load %struct.mem_cgroup_thresholds*, %struct.mem_cgroup_thresholds** %10, align 8
  %49 = getelementptr inbounds %struct.mem_cgroup_thresholds, %struct.mem_cgroup_thresholds* %48, i32 0, i32 0
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %49, align 8
  %51 = icmp ne %struct.TYPE_6__* %50, null
  br i1 %51, label %52, label %59

52:                                               ; preds = %47
  %53 = load %struct.mem_cgroup*, %struct.mem_cgroup** %6, align 8
  %54 = load i32, i32* %9, align 4
  %55 = load i32, i32* @_MEMSWAP, align 4
  %56 = icmp eq i32 %54, %55
  %57 = zext i1 %56 to i32
  %58 = call i32 @__mem_cgroup_threshold(%struct.mem_cgroup* %53, i32 %57)
  br label %59

59:                                               ; preds = %52, %47
  %60 = load %struct.mem_cgroup_thresholds*, %struct.mem_cgroup_thresholds** %10, align 8
  %61 = getelementptr inbounds %struct.mem_cgroup_thresholds, %struct.mem_cgroup_thresholds* %60, i32 0, i32 0
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %61, align 8
  %63 = icmp ne %struct.TYPE_6__* %62, null
  br i1 %63, label %64, label %71

64:                                               ; preds = %59
  %65 = load %struct.mem_cgroup_thresholds*, %struct.mem_cgroup_thresholds** %10, align 8
  %66 = getelementptr inbounds %struct.mem_cgroup_thresholds, %struct.mem_cgroup_thresholds* %65, i32 0, i32 0
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = add nsw i32 %69, 1
  br label %72

71:                                               ; preds = %59
  br label %72

72:                                               ; preds = %71, %64
  %73 = phi i32 [ %70, %64 ], [ 1, %71 ]
  store i32 %73, i32* %15, align 4
  %74 = load %struct.mem_cgroup_threshold_ary*, %struct.mem_cgroup_threshold_ary** %11, align 8
  %75 = load i32, i32* @entries, align 4
  %76 = load i32, i32* %15, align 4
  %77 = call i32 @struct_size(%struct.mem_cgroup_threshold_ary* %74, i32 %75, i32 %76)
  %78 = load i32, i32* @GFP_KERNEL, align 4
  %79 = call %struct.mem_cgroup_threshold_ary* @kmalloc(i32 %77, i32 %78)
  store %struct.mem_cgroup_threshold_ary* %79, %struct.mem_cgroup_threshold_ary** %11, align 8
  %80 = load %struct.mem_cgroup_threshold_ary*, %struct.mem_cgroup_threshold_ary** %11, align 8
  %81 = icmp ne %struct.mem_cgroup_threshold_ary* %80, null
  br i1 %81, label %85, label %82

82:                                               ; preds = %72
  %83 = load i32, i32* @ENOMEM, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %16, align 4
  br label %176

85:                                               ; preds = %72
  %86 = load i32, i32* %15, align 4
  %87 = load %struct.mem_cgroup_threshold_ary*, %struct.mem_cgroup_threshold_ary** %11, align 8
  %88 = getelementptr inbounds %struct.mem_cgroup_threshold_ary, %struct.mem_cgroup_threshold_ary* %87, i32 0, i32 0
  store i32 %86, i32* %88, align 8
  %89 = load %struct.mem_cgroup_thresholds*, %struct.mem_cgroup_thresholds** %10, align 8
  %90 = getelementptr inbounds %struct.mem_cgroup_thresholds, %struct.mem_cgroup_thresholds* %89, i32 0, i32 0
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %90, align 8
  %92 = icmp ne %struct.TYPE_6__* %91, null
  br i1 %92, label %93, label %108

93:                                               ; preds = %85
  %94 = load %struct.mem_cgroup_threshold_ary*, %struct.mem_cgroup_threshold_ary** %11, align 8
  %95 = getelementptr inbounds %struct.mem_cgroup_threshold_ary, %struct.mem_cgroup_threshold_ary* %94, i32 0, i32 2
  %96 = load %struct.TYPE_5__*, %struct.TYPE_5__** %95, align 8
  %97 = load %struct.mem_cgroup_thresholds*, %struct.mem_cgroup_thresholds** %10, align 8
  %98 = getelementptr inbounds %struct.mem_cgroup_thresholds, %struct.mem_cgroup_thresholds* %97, i32 0, i32 0
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* %15, align 4
  %103 = sub nsw i32 %102, 1
  %104 = sext i32 %103 to i64
  %105 = mul i64 %104, 4
  %106 = trunc i64 %105 to i32
  %107 = call i32 @memcpy(%struct.TYPE_5__* %96, i32 %101, i32 %106)
  br label %108

108:                                              ; preds = %93, %85
  %109 = load %struct.eventfd_ctx*, %struct.eventfd_ctx** %7, align 8
  %110 = load %struct.mem_cgroup_threshold_ary*, %struct.mem_cgroup_threshold_ary** %11, align 8
  %111 = getelementptr inbounds %struct.mem_cgroup_threshold_ary, %struct.mem_cgroup_threshold_ary* %110, i32 0, i32 2
  %112 = load %struct.TYPE_5__*, %struct.TYPE_5__** %111, align 8
  %113 = load i32, i32* %15, align 4
  %114 = sub nsw i32 %113, 1
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %112, i64 %115
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %116, i32 0, i32 1
  store %struct.eventfd_ctx* %109, %struct.eventfd_ctx** %117, align 8
  %118 = load i64, i64* %12, align 8
  %119 = load %struct.mem_cgroup_threshold_ary*, %struct.mem_cgroup_threshold_ary** %11, align 8
  %120 = getelementptr inbounds %struct.mem_cgroup_threshold_ary, %struct.mem_cgroup_threshold_ary* %119, i32 0, i32 2
  %121 = load %struct.TYPE_5__*, %struct.TYPE_5__** %120, align 8
  %122 = load i32, i32* %15, align 4
  %123 = sub nsw i32 %122, 1
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %121, i64 %124
  %126 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %125, i32 0, i32 0
  store i64 %118, i64* %126, align 8
  %127 = load %struct.mem_cgroup_threshold_ary*, %struct.mem_cgroup_threshold_ary** %11, align 8
  %128 = getelementptr inbounds %struct.mem_cgroup_threshold_ary, %struct.mem_cgroup_threshold_ary* %127, i32 0, i32 2
  %129 = load %struct.TYPE_5__*, %struct.TYPE_5__** %128, align 8
  %130 = load i32, i32* %15, align 4
  %131 = load i32, i32* @compare_thresholds, align 4
  %132 = call i32 @sort(%struct.TYPE_5__* %129, i32 %130, i32 4, i32 %131, i32* null)
  %133 = load %struct.mem_cgroup_threshold_ary*, %struct.mem_cgroup_threshold_ary** %11, align 8
  %134 = getelementptr inbounds %struct.mem_cgroup_threshold_ary, %struct.mem_cgroup_threshold_ary* %133, i32 0, i32 1
  store i32 -1, i32* %134, align 4
  store i32 0, i32* %14, align 4
  br label %135

135:                                              ; preds = %157, %108
  %136 = load i32, i32* %14, align 4
  %137 = load i32, i32* %15, align 4
  %138 = icmp slt i32 %136, %137
  br i1 %138, label %139, label %160

139:                                              ; preds = %135
  %140 = load %struct.mem_cgroup_threshold_ary*, %struct.mem_cgroup_threshold_ary** %11, align 8
  %141 = getelementptr inbounds %struct.mem_cgroup_threshold_ary, %struct.mem_cgroup_threshold_ary* %140, i32 0, i32 2
  %142 = load %struct.TYPE_5__*, %struct.TYPE_5__** %141, align 8
  %143 = load i32, i32* %14, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %142, i64 %144
  %146 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = load i64, i64* %13, align 8
  %149 = icmp ule i64 %147, %148
  br i1 %149, label %150, label %155

150:                                              ; preds = %139
  %151 = load %struct.mem_cgroup_threshold_ary*, %struct.mem_cgroup_threshold_ary** %11, align 8
  %152 = getelementptr inbounds %struct.mem_cgroup_threshold_ary, %struct.mem_cgroup_threshold_ary* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %152, align 4
  br label %156

155:                                              ; preds = %139
  br label %160

156:                                              ; preds = %150
  br label %157

157:                                              ; preds = %156
  %158 = load i32, i32* %14, align 4
  %159 = add nsw i32 %158, 1
  store i32 %159, i32* %14, align 4
  br label %135

160:                                              ; preds = %155, %135
  %161 = load %struct.mem_cgroup_thresholds*, %struct.mem_cgroup_thresholds** %10, align 8
  %162 = getelementptr inbounds %struct.mem_cgroup_thresholds, %struct.mem_cgroup_thresholds* %161, i32 0, i32 1
  %163 = load %struct.TYPE_6__*, %struct.TYPE_6__** %162, align 8
  %164 = call i32 @kfree(%struct.TYPE_6__* %163)
  %165 = load %struct.mem_cgroup_thresholds*, %struct.mem_cgroup_thresholds** %10, align 8
  %166 = getelementptr inbounds %struct.mem_cgroup_thresholds, %struct.mem_cgroup_thresholds* %165, i32 0, i32 0
  %167 = load %struct.TYPE_6__*, %struct.TYPE_6__** %166, align 8
  %168 = load %struct.mem_cgroup_thresholds*, %struct.mem_cgroup_thresholds** %10, align 8
  %169 = getelementptr inbounds %struct.mem_cgroup_thresholds, %struct.mem_cgroup_thresholds* %168, i32 0, i32 1
  store %struct.TYPE_6__* %167, %struct.TYPE_6__** %169, align 8
  %170 = load %struct.mem_cgroup_thresholds*, %struct.mem_cgroup_thresholds** %10, align 8
  %171 = getelementptr inbounds %struct.mem_cgroup_thresholds, %struct.mem_cgroup_thresholds* %170, i32 0, i32 0
  %172 = load %struct.TYPE_6__*, %struct.TYPE_6__** %171, align 8
  %173 = load %struct.mem_cgroup_threshold_ary*, %struct.mem_cgroup_threshold_ary** %11, align 8
  %174 = call i32 @rcu_assign_pointer(%struct.TYPE_6__* %172, %struct.mem_cgroup_threshold_ary* %173)
  %175 = call i32 (...) @synchronize_rcu()
  br label %176

176:                                              ; preds = %160, %82
  %177 = load %struct.mem_cgroup*, %struct.mem_cgroup** %6, align 8
  %178 = getelementptr inbounds %struct.mem_cgroup, %struct.mem_cgroup* %177, i32 0, i32 0
  %179 = call i32 @mutex_unlock(i32* %178)
  %180 = load i32, i32* %16, align 4
  store i32 %180, i32* %5, align 4
  br label %181

181:                                              ; preds = %176, %21
  %182 = load i32, i32* %5, align 4
  ret i32 %182
}

declare dso_local i32 @page_counter_memparse(i8*, i8*, i64*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @mem_cgroup_usage(%struct.mem_cgroup*, i32) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @__mem_cgroup_threshold(%struct.mem_cgroup*, i32) #1

declare dso_local %struct.mem_cgroup_threshold_ary* @kmalloc(i32, i32) #1

declare dso_local i32 @struct_size(%struct.mem_cgroup_threshold_ary*, i32, i32) #1

declare dso_local i32 @memcpy(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @sort(%struct.TYPE_5__*, i32, i32, i32, i32*) #1

declare dso_local i32 @kfree(%struct.TYPE_6__*) #1

declare dso_local i32 @rcu_assign_pointer(%struct.TYPE_6__*, %struct.mem_cgroup_threshold_ary*) #1

declare dso_local i32 @synchronize_rcu(...) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
