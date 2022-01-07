; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_memcontrol.c___mem_cgroup_usage_unregister_event.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_memcontrol.c___mem_cgroup_usage_unregister_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_cgroup = type { i32, %struct.mem_cgroup_thresholds, %struct.mem_cgroup_thresholds }
%struct.mem_cgroup_thresholds = type { %struct.mem_cgroup_threshold_ary*, %struct.mem_cgroup_threshold_ary* }
%struct.mem_cgroup_threshold_ary = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, %struct.eventfd_ctx* }
%struct.eventfd_ctx = type { i32 }

@_MEM = common dso_local global i32 0, align 4
@_MEMSWAP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mem_cgroup*, %struct.eventfd_ctx*, i32)* @__mem_cgroup_usage_unregister_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__mem_cgroup_usage_unregister_event(%struct.mem_cgroup* %0, %struct.eventfd_ctx* %1, i32 %2) #0 {
  %4 = alloca %struct.mem_cgroup*, align 8
  %5 = alloca %struct.eventfd_ctx*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.mem_cgroup_thresholds*, align 8
  %8 = alloca %struct.mem_cgroup_threshold_ary*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.mem_cgroup* %0, %struct.mem_cgroup** %4, align 8
  store %struct.eventfd_ctx* %1, %struct.eventfd_ctx** %5, align 8
  store i32 %2, i32* %6, align 4
  %13 = load %struct.mem_cgroup*, %struct.mem_cgroup** %4, align 8
  %14 = getelementptr inbounds %struct.mem_cgroup, %struct.mem_cgroup* %13, i32 0, i32 0
  %15 = call i32 @mutex_lock(i32* %14)
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* @_MEM, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %24

19:                                               ; preds = %3
  %20 = load %struct.mem_cgroup*, %struct.mem_cgroup** %4, align 8
  %21 = getelementptr inbounds %struct.mem_cgroup, %struct.mem_cgroup* %20, i32 0, i32 2
  store %struct.mem_cgroup_thresholds* %21, %struct.mem_cgroup_thresholds** %7, align 8
  %22 = load %struct.mem_cgroup*, %struct.mem_cgroup** %4, align 8
  %23 = call i64 @mem_cgroup_usage(%struct.mem_cgroup* %22, i32 0)
  store i64 %23, i64* %9, align 8
  br label %36

24:                                               ; preds = %3
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* @_MEMSWAP, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %33

28:                                               ; preds = %24
  %29 = load %struct.mem_cgroup*, %struct.mem_cgroup** %4, align 8
  %30 = getelementptr inbounds %struct.mem_cgroup, %struct.mem_cgroup* %29, i32 0, i32 1
  store %struct.mem_cgroup_thresholds* %30, %struct.mem_cgroup_thresholds** %7, align 8
  %31 = load %struct.mem_cgroup*, %struct.mem_cgroup** %4, align 8
  %32 = call i64 @mem_cgroup_usage(%struct.mem_cgroup* %31, i32 1)
  store i64 %32, i64* %9, align 8
  br label %35

33:                                               ; preds = %24
  %34 = call i32 (...) @BUG()
  br label %35

35:                                               ; preds = %33, %28
  br label %36

36:                                               ; preds = %35, %19
  %37 = load %struct.mem_cgroup_thresholds*, %struct.mem_cgroup_thresholds** %7, align 8
  %38 = getelementptr inbounds %struct.mem_cgroup_thresholds, %struct.mem_cgroup_thresholds* %37, i32 0, i32 1
  %39 = load %struct.mem_cgroup_threshold_ary*, %struct.mem_cgroup_threshold_ary** %38, align 8
  %40 = icmp ne %struct.mem_cgroup_threshold_ary* %39, null
  br i1 %40, label %42, label %41

41:                                               ; preds = %36
  br label %175

42:                                               ; preds = %36
  %43 = load %struct.mem_cgroup*, %struct.mem_cgroup** %4, align 8
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* @_MEMSWAP, align 4
  %46 = icmp eq i32 %44, %45
  %47 = zext i1 %46 to i32
  %48 = call i32 @__mem_cgroup_threshold(%struct.mem_cgroup* %43, i32 %47)
  store i32 0, i32* %12, align 4
  store i32 0, i32* %10, align 4
  br label %49

49:                                               ; preds = %74, %42
  %50 = load i32, i32* %10, align 4
  %51 = load %struct.mem_cgroup_thresholds*, %struct.mem_cgroup_thresholds** %7, align 8
  %52 = getelementptr inbounds %struct.mem_cgroup_thresholds, %struct.mem_cgroup_thresholds* %51, i32 0, i32 1
  %53 = load %struct.mem_cgroup_threshold_ary*, %struct.mem_cgroup_threshold_ary** %52, align 8
  %54 = getelementptr inbounds %struct.mem_cgroup_threshold_ary, %struct.mem_cgroup_threshold_ary* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = icmp slt i32 %50, %55
  br i1 %56, label %57, label %77

57:                                               ; preds = %49
  %58 = load %struct.mem_cgroup_thresholds*, %struct.mem_cgroup_thresholds** %7, align 8
  %59 = getelementptr inbounds %struct.mem_cgroup_thresholds, %struct.mem_cgroup_thresholds* %58, i32 0, i32 1
  %60 = load %struct.mem_cgroup_threshold_ary*, %struct.mem_cgroup_threshold_ary** %59, align 8
  %61 = getelementptr inbounds %struct.mem_cgroup_threshold_ary, %struct.mem_cgroup_threshold_ary* %60, i32 0, i32 2
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %61, align 8
  %63 = load i32, i32* %10, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 1
  %67 = load %struct.eventfd_ctx*, %struct.eventfd_ctx** %66, align 8
  %68 = load %struct.eventfd_ctx*, %struct.eventfd_ctx** %5, align 8
  %69 = icmp ne %struct.eventfd_ctx* %67, %68
  br i1 %69, label %70, label %73

70:                                               ; preds = %57
  %71 = load i32, i32* %12, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %12, align 4
  br label %73

73:                                               ; preds = %70, %57
  br label %74

74:                                               ; preds = %73
  %75 = load i32, i32* %10, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %10, align 4
  br label %49

77:                                               ; preds = %49
  %78 = load %struct.mem_cgroup_thresholds*, %struct.mem_cgroup_thresholds** %7, align 8
  %79 = getelementptr inbounds %struct.mem_cgroup_thresholds, %struct.mem_cgroup_thresholds* %78, i32 0, i32 0
  %80 = load %struct.mem_cgroup_threshold_ary*, %struct.mem_cgroup_threshold_ary** %79, align 8
  store %struct.mem_cgroup_threshold_ary* %80, %struct.mem_cgroup_threshold_ary** %8, align 8
  %81 = load i32, i32* %12, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %86, label %83

83:                                               ; preds = %77
  %84 = load %struct.mem_cgroup_threshold_ary*, %struct.mem_cgroup_threshold_ary** %8, align 8
  %85 = call i32 @kfree(%struct.mem_cgroup_threshold_ary* %84)
  store %struct.mem_cgroup_threshold_ary* null, %struct.mem_cgroup_threshold_ary** %8, align 8
  br label %153

86:                                               ; preds = %77
  %87 = load i32, i32* %12, align 4
  %88 = load %struct.mem_cgroup_threshold_ary*, %struct.mem_cgroup_threshold_ary** %8, align 8
  %89 = getelementptr inbounds %struct.mem_cgroup_threshold_ary, %struct.mem_cgroup_threshold_ary* %88, i32 0, i32 0
  store i32 %87, i32* %89, align 8
  %90 = load %struct.mem_cgroup_threshold_ary*, %struct.mem_cgroup_threshold_ary** %8, align 8
  %91 = getelementptr inbounds %struct.mem_cgroup_threshold_ary, %struct.mem_cgroup_threshold_ary* %90, i32 0, i32 1
  store i32 -1, i32* %91, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %92

92:                                               ; preds = %149, %86
  %93 = load i32, i32* %10, align 4
  %94 = load %struct.mem_cgroup_thresholds*, %struct.mem_cgroup_thresholds** %7, align 8
  %95 = getelementptr inbounds %struct.mem_cgroup_thresholds, %struct.mem_cgroup_thresholds* %94, i32 0, i32 1
  %96 = load %struct.mem_cgroup_threshold_ary*, %struct.mem_cgroup_threshold_ary** %95, align 8
  %97 = getelementptr inbounds %struct.mem_cgroup_threshold_ary, %struct.mem_cgroup_threshold_ary* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = icmp slt i32 %93, %98
  br i1 %99, label %100, label %152

100:                                              ; preds = %92
  %101 = load %struct.mem_cgroup_thresholds*, %struct.mem_cgroup_thresholds** %7, align 8
  %102 = getelementptr inbounds %struct.mem_cgroup_thresholds, %struct.mem_cgroup_thresholds* %101, i32 0, i32 1
  %103 = load %struct.mem_cgroup_threshold_ary*, %struct.mem_cgroup_threshold_ary** %102, align 8
  %104 = getelementptr inbounds %struct.mem_cgroup_threshold_ary, %struct.mem_cgroup_threshold_ary* %103, i32 0, i32 2
  %105 = load %struct.TYPE_2__*, %struct.TYPE_2__** %104, align 8
  %106 = load i32, i32* %10, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i64 %107
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 1
  %110 = load %struct.eventfd_ctx*, %struct.eventfd_ctx** %109, align 8
  %111 = load %struct.eventfd_ctx*, %struct.eventfd_ctx** %5, align 8
  %112 = icmp eq %struct.eventfd_ctx* %110, %111
  br i1 %112, label %113, label %114

113:                                              ; preds = %100
  br label %149

114:                                              ; preds = %100
  %115 = load %struct.mem_cgroup_threshold_ary*, %struct.mem_cgroup_threshold_ary** %8, align 8
  %116 = getelementptr inbounds %struct.mem_cgroup_threshold_ary, %struct.mem_cgroup_threshold_ary* %115, i32 0, i32 2
  %117 = load %struct.TYPE_2__*, %struct.TYPE_2__** %116, align 8
  %118 = load i32, i32* %11, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i64 %119
  %121 = load %struct.mem_cgroup_thresholds*, %struct.mem_cgroup_thresholds** %7, align 8
  %122 = getelementptr inbounds %struct.mem_cgroup_thresholds, %struct.mem_cgroup_thresholds* %121, i32 0, i32 1
  %123 = load %struct.mem_cgroup_threshold_ary*, %struct.mem_cgroup_threshold_ary** %122, align 8
  %124 = getelementptr inbounds %struct.mem_cgroup_threshold_ary, %struct.mem_cgroup_threshold_ary* %123, i32 0, i32 2
  %125 = load %struct.TYPE_2__*, %struct.TYPE_2__** %124, align 8
  %126 = load i32, i32* %10, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %125, i64 %127
  %129 = bitcast %struct.TYPE_2__* %120 to i8*
  %130 = bitcast %struct.TYPE_2__* %128 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %129, i8* align 8 %130, i64 16, i1 false)
  %131 = load %struct.mem_cgroup_threshold_ary*, %struct.mem_cgroup_threshold_ary** %8, align 8
  %132 = getelementptr inbounds %struct.mem_cgroup_threshold_ary, %struct.mem_cgroup_threshold_ary* %131, i32 0, i32 2
  %133 = load %struct.TYPE_2__*, %struct.TYPE_2__** %132, align 8
  %134 = load i32, i32* %11, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %133, i64 %135
  %137 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = load i64, i64* %9, align 8
  %140 = icmp ule i64 %138, %139
  br i1 %140, label %141, label %146

141:                                              ; preds = %114
  %142 = load %struct.mem_cgroup_threshold_ary*, %struct.mem_cgroup_threshold_ary** %8, align 8
  %143 = getelementptr inbounds %struct.mem_cgroup_threshold_ary, %struct.mem_cgroup_threshold_ary* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %143, align 4
  br label %146

146:                                              ; preds = %141, %114
  %147 = load i32, i32* %11, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %11, align 4
  br label %149

149:                                              ; preds = %146, %113
  %150 = load i32, i32* %10, align 4
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %10, align 4
  br label %92

152:                                              ; preds = %92
  br label %153

153:                                              ; preds = %152, %83
  %154 = load %struct.mem_cgroup_thresholds*, %struct.mem_cgroup_thresholds** %7, align 8
  %155 = getelementptr inbounds %struct.mem_cgroup_thresholds, %struct.mem_cgroup_thresholds* %154, i32 0, i32 1
  %156 = load %struct.mem_cgroup_threshold_ary*, %struct.mem_cgroup_threshold_ary** %155, align 8
  %157 = load %struct.mem_cgroup_thresholds*, %struct.mem_cgroup_thresholds** %7, align 8
  %158 = getelementptr inbounds %struct.mem_cgroup_thresholds, %struct.mem_cgroup_thresholds* %157, i32 0, i32 0
  store %struct.mem_cgroup_threshold_ary* %156, %struct.mem_cgroup_threshold_ary** %158, align 8
  %159 = load %struct.mem_cgroup_thresholds*, %struct.mem_cgroup_thresholds** %7, align 8
  %160 = getelementptr inbounds %struct.mem_cgroup_thresholds, %struct.mem_cgroup_thresholds* %159, i32 0, i32 1
  %161 = load %struct.mem_cgroup_threshold_ary*, %struct.mem_cgroup_threshold_ary** %160, align 8
  %162 = load %struct.mem_cgroup_threshold_ary*, %struct.mem_cgroup_threshold_ary** %8, align 8
  %163 = call i32 @rcu_assign_pointer(%struct.mem_cgroup_threshold_ary* %161, %struct.mem_cgroup_threshold_ary* %162)
  %164 = call i32 (...) @synchronize_rcu()
  %165 = load %struct.mem_cgroup_threshold_ary*, %struct.mem_cgroup_threshold_ary** %8, align 8
  %166 = icmp ne %struct.mem_cgroup_threshold_ary* %165, null
  br i1 %166, label %174, label %167

167:                                              ; preds = %153
  %168 = load %struct.mem_cgroup_thresholds*, %struct.mem_cgroup_thresholds** %7, align 8
  %169 = getelementptr inbounds %struct.mem_cgroup_thresholds, %struct.mem_cgroup_thresholds* %168, i32 0, i32 0
  %170 = load %struct.mem_cgroup_threshold_ary*, %struct.mem_cgroup_threshold_ary** %169, align 8
  %171 = call i32 @kfree(%struct.mem_cgroup_threshold_ary* %170)
  %172 = load %struct.mem_cgroup_thresholds*, %struct.mem_cgroup_thresholds** %7, align 8
  %173 = getelementptr inbounds %struct.mem_cgroup_thresholds, %struct.mem_cgroup_thresholds* %172, i32 0, i32 0
  store %struct.mem_cgroup_threshold_ary* null, %struct.mem_cgroup_threshold_ary** %173, align 8
  br label %174

174:                                              ; preds = %167, %153
  br label %175

175:                                              ; preds = %174, %41
  %176 = load %struct.mem_cgroup*, %struct.mem_cgroup** %4, align 8
  %177 = getelementptr inbounds %struct.mem_cgroup, %struct.mem_cgroup* %176, i32 0, i32 0
  %178 = call i32 @mutex_unlock(i32* %177)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @mem_cgroup_usage(%struct.mem_cgroup*, i32) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @__mem_cgroup_threshold(%struct.mem_cgroup*, i32) #1

declare dso_local i32 @kfree(%struct.mem_cgroup_threshold_ary*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @rcu_assign_pointer(%struct.mem_cgroup_threshold_ary*, %struct.mem_cgroup_threshold_ary*) #1

declare dso_local i32 @synchronize_rcu(...) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
