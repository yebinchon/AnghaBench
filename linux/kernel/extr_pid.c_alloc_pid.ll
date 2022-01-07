; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_pid.c_alloc_pid.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_pid.c_alloc_pid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pid = type { i32, %struct.upid*, i32, i32*, i32 }
%struct.upid = type { i32, %struct.pid_namespace* }
%struct.pid_namespace = type { i32, i32, i32, i32, %struct.pid_namespace* }

@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@pidmap_lock = common dso_local global i32 0, align 4
@RESERVED_PIDS = common dso_local global i32 0, align 4
@pid_max = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@PIDTYPE_MAX = common dso_local global i32 0, align 4
@PIDNS_ADDING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.pid* @alloc_pid(%struct.pid_namespace* %0) #0 {
  %2 = alloca %struct.pid*, align 8
  %3 = alloca %struct.pid_namespace*, align 8
  %4 = alloca %struct.pid*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.pid_namespace*, align 8
  %9 = alloca %struct.upid*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.pid_namespace* %0, %struct.pid_namespace** %3, align 8
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %10, align 4
  %14 = load %struct.pid_namespace*, %struct.pid_namespace** %3, align 8
  %15 = getelementptr inbounds %struct.pid_namespace, %struct.pid_namespace* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call %struct.pid* @kmem_cache_alloc(i32 %16, i32 %17)
  store %struct.pid* %18, %struct.pid** %4, align 8
  %19 = load %struct.pid*, %struct.pid** %4, align 8
  %20 = icmp ne %struct.pid* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %1
  %22 = load i32, i32* %10, align 4
  %23 = call %struct.pid* @ERR_PTR(i32 %22)
  store %struct.pid* %23, %struct.pid** %2, align 8
  br label %222

24:                                               ; preds = %1
  %25 = load %struct.pid_namespace*, %struct.pid_namespace** %3, align 8
  store %struct.pid_namespace* %25, %struct.pid_namespace** %8, align 8
  %26 = load %struct.pid_namespace*, %struct.pid_namespace** %3, align 8
  %27 = getelementptr inbounds %struct.pid_namespace, %struct.pid_namespace* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.pid*, %struct.pid** %4, align 8
  %30 = getelementptr inbounds %struct.pid, %struct.pid* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 8
  %31 = load %struct.pid_namespace*, %struct.pid_namespace** %3, align 8
  %32 = getelementptr inbounds %struct.pid_namespace, %struct.pid_namespace* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  store i32 %33, i32* %6, align 4
  br label %34

34:                                               ; preds = %91, %24
  %35 = load i32, i32* %6, align 4
  %36 = icmp sge i32 %35, 0
  br i1 %36, label %37, label %94

37:                                               ; preds = %34
  store i32 1, i32* %11, align 4
  %38 = load i32, i32* @GFP_KERNEL, align 4
  %39 = call i32 @idr_preload(i32 %38)
  %40 = call i32 @spin_lock_irq(i32* @pidmap_lock)
  %41 = load %struct.pid_namespace*, %struct.pid_namespace** %8, align 8
  %42 = getelementptr inbounds %struct.pid_namespace, %struct.pid_namespace* %41, i32 0, i32 3
  %43 = call i32 @idr_get_cursor(i32* %42)
  %44 = load i32, i32* @RESERVED_PIDS, align 4
  %45 = icmp sgt i32 %43, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %37
  %47 = load i32, i32* @RESERVED_PIDS, align 4
  store i32 %47, i32* %11, align 4
  br label %48

48:                                               ; preds = %46, %37
  %49 = load %struct.pid_namespace*, %struct.pid_namespace** %8, align 8
  %50 = getelementptr inbounds %struct.pid_namespace, %struct.pid_namespace* %49, i32 0, i32 3
  %51 = load i32, i32* %11, align 4
  %52 = load i32, i32* @pid_max, align 4
  %53 = load i32, i32* @GFP_ATOMIC, align 4
  %54 = call i32 @idr_alloc_cyclic(i32* %50, i32* null, i32 %51, i32 %52, i32 %53)
  store i32 %54, i32* %7, align 4
  %55 = call i32 @spin_unlock_irq(i32* @pidmap_lock)
  %56 = call i32 (...) @idr_preload_end()
  %57 = load i32, i32* %7, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %71

59:                                               ; preds = %48
  %60 = load i32, i32* %7, align 4
  %61 = load i32, i32* @ENOSPC, align 4
  %62 = sub nsw i32 0, %61
  %63 = icmp eq i32 %60, %62
  br i1 %63, label %64, label %67

64:                                               ; preds = %59
  %65 = load i32, i32* @EAGAIN, align 4
  %66 = sub nsw i32 0, %65
  br label %69

67:                                               ; preds = %59
  %68 = load i32, i32* %7, align 4
  br label %69

69:                                               ; preds = %67, %64
  %70 = phi i32 [ %66, %64 ], [ %68, %67 ]
  store i32 %70, i32* %10, align 4
  br label %179

71:                                               ; preds = %48
  %72 = load i32, i32* %7, align 4
  %73 = load %struct.pid*, %struct.pid** %4, align 8
  %74 = getelementptr inbounds %struct.pid, %struct.pid* %73, i32 0, i32 1
  %75 = load %struct.upid*, %struct.upid** %74, align 8
  %76 = load i32, i32* %6, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.upid, %struct.upid* %75, i64 %77
  %79 = getelementptr inbounds %struct.upid, %struct.upid* %78, i32 0, i32 0
  store i32 %72, i32* %79, align 8
  %80 = load %struct.pid_namespace*, %struct.pid_namespace** %8, align 8
  %81 = load %struct.pid*, %struct.pid** %4, align 8
  %82 = getelementptr inbounds %struct.pid, %struct.pid* %81, i32 0, i32 1
  %83 = load %struct.upid*, %struct.upid** %82, align 8
  %84 = load i32, i32* %6, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.upid, %struct.upid* %83, i64 %85
  %87 = getelementptr inbounds %struct.upid, %struct.upid* %86, i32 0, i32 1
  store %struct.pid_namespace* %80, %struct.pid_namespace** %87, align 8
  %88 = load %struct.pid_namespace*, %struct.pid_namespace** %8, align 8
  %89 = getelementptr inbounds %struct.pid_namespace, %struct.pid_namespace* %88, i32 0, i32 4
  %90 = load %struct.pid_namespace*, %struct.pid_namespace** %89, align 8
  store %struct.pid_namespace* %90, %struct.pid_namespace** %8, align 8
  br label %91

91:                                               ; preds = %71
  %92 = load i32, i32* %6, align 4
  %93 = add nsw i32 %92, -1
  store i32 %93, i32* %6, align 4
  br label %34

94:                                               ; preds = %34
  %95 = load %struct.pid*, %struct.pid** %4, align 8
  %96 = call i32 @is_child_reaper(%struct.pid* %95)
  %97 = call i64 @unlikely(i32 %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %105

99:                                               ; preds = %94
  %100 = load %struct.pid_namespace*, %struct.pid_namespace** %3, align 8
  %101 = call i64 @pid_ns_prepare_proc(%struct.pid_namespace* %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %99
  br label %179

104:                                              ; preds = %99
  br label %105

105:                                              ; preds = %104, %94
  %106 = load %struct.pid_namespace*, %struct.pid_namespace** %3, align 8
  %107 = call i32 @get_pid_ns(%struct.pid_namespace* %106)
  %108 = load %struct.pid*, %struct.pid** %4, align 8
  %109 = getelementptr inbounds %struct.pid, %struct.pid* %108, i32 0, i32 4
  %110 = call i32 @refcount_set(i32* %109, i32 1)
  store i32 0, i32* %5, align 4
  br label %111

111:                                              ; preds = %123, %105
  %112 = load i32, i32* %5, align 4
  %113 = load i32, i32* @PIDTYPE_MAX, align 4
  %114 = icmp ult i32 %112, %113
  br i1 %114, label %115, label %126

115:                                              ; preds = %111
  %116 = load %struct.pid*, %struct.pid** %4, align 8
  %117 = getelementptr inbounds %struct.pid, %struct.pid* %116, i32 0, i32 3
  %118 = load i32*, i32** %117, align 8
  %119 = load i32, i32* %5, align 4
  %120 = zext i32 %119 to i64
  %121 = getelementptr inbounds i32, i32* %118, i64 %120
  %122 = call i32 @INIT_HLIST_HEAD(i32* %121)
  br label %123

123:                                              ; preds = %115
  %124 = load i32, i32* %5, align 4
  %125 = add i32 %124, 1
  store i32 %125, i32* %5, align 4
  br label %111

126:                                              ; preds = %111
  %127 = load %struct.pid*, %struct.pid** %4, align 8
  %128 = getelementptr inbounds %struct.pid, %struct.pid* %127, i32 0, i32 2
  %129 = call i32 @init_waitqueue_head(i32* %128)
  %130 = load %struct.pid*, %struct.pid** %4, align 8
  %131 = getelementptr inbounds %struct.pid, %struct.pid* %130, i32 0, i32 1
  %132 = load %struct.upid*, %struct.upid** %131, align 8
  %133 = load %struct.pid_namespace*, %struct.pid_namespace** %3, align 8
  %134 = getelementptr inbounds %struct.pid_namespace, %struct.pid_namespace* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds %struct.upid, %struct.upid* %132, i64 %136
  store %struct.upid* %137, %struct.upid** %9, align 8
  %138 = call i32 @spin_lock_irq(i32* @pidmap_lock)
  %139 = load %struct.pid_namespace*, %struct.pid_namespace** %3, align 8
  %140 = getelementptr inbounds %struct.pid_namespace, %struct.pid_namespace* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = load i32, i32* @PIDNS_ADDING, align 4
  %143 = and i32 %141, %142
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %146, label %145

145:                                              ; preds = %126
  br label %175

146:                                              ; preds = %126
  br label %147

147:                                              ; preds = %169, %146
  %148 = load %struct.upid*, %struct.upid** %9, align 8
  %149 = load %struct.pid*, %struct.pid** %4, align 8
  %150 = getelementptr inbounds %struct.pid, %struct.pid* %149, i32 0, i32 1
  %151 = load %struct.upid*, %struct.upid** %150, align 8
  %152 = icmp uge %struct.upid* %148, %151
  br i1 %152, label %153, label %172

153:                                              ; preds = %147
  %154 = load %struct.upid*, %struct.upid** %9, align 8
  %155 = getelementptr inbounds %struct.upid, %struct.upid* %154, i32 0, i32 1
  %156 = load %struct.pid_namespace*, %struct.pid_namespace** %155, align 8
  %157 = getelementptr inbounds %struct.pid_namespace, %struct.pid_namespace* %156, i32 0, i32 3
  %158 = load %struct.pid*, %struct.pid** %4, align 8
  %159 = load %struct.upid*, %struct.upid** %9, align 8
  %160 = getelementptr inbounds %struct.upid, %struct.upid* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = call i32 @idr_replace(i32* %157, %struct.pid* %158, i32 %161)
  %163 = load %struct.upid*, %struct.upid** %9, align 8
  %164 = getelementptr inbounds %struct.upid, %struct.upid* %163, i32 0, i32 1
  %165 = load %struct.pid_namespace*, %struct.pid_namespace** %164, align 8
  %166 = getelementptr inbounds %struct.pid_namespace, %struct.pid_namespace* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %166, align 4
  br label %169

169:                                              ; preds = %153
  %170 = load %struct.upid*, %struct.upid** %9, align 8
  %171 = getelementptr inbounds %struct.upid, %struct.upid* %170, i32 -1
  store %struct.upid* %171, %struct.upid** %9, align 8
  br label %147

172:                                              ; preds = %147
  %173 = call i32 @spin_unlock_irq(i32* @pidmap_lock)
  %174 = load %struct.pid*, %struct.pid** %4, align 8
  store %struct.pid* %174, %struct.pid** %2, align 8
  br label %222

175:                                              ; preds = %145
  %176 = call i32 @spin_unlock_irq(i32* @pidmap_lock)
  %177 = load %struct.pid_namespace*, %struct.pid_namespace** %3, align 8
  %178 = call i32 @put_pid_ns(%struct.pid_namespace* %177)
  br label %179

179:                                              ; preds = %175, %103, %69
  %180 = call i32 @spin_lock_irq(i32* @pidmap_lock)
  br label %181

181:                                              ; preds = %188, %179
  %182 = load i32, i32* %6, align 4
  %183 = add nsw i32 %182, 1
  store i32 %183, i32* %6, align 4
  %184 = load %struct.pid_namespace*, %struct.pid_namespace** %3, align 8
  %185 = getelementptr inbounds %struct.pid_namespace, %struct.pid_namespace* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 8
  %187 = icmp sle i32 %183, %186
  br i1 %187, label %188, label %203

188:                                              ; preds = %181
  %189 = load %struct.pid*, %struct.pid** %4, align 8
  %190 = getelementptr inbounds %struct.pid, %struct.pid* %189, i32 0, i32 1
  %191 = load %struct.upid*, %struct.upid** %190, align 8
  %192 = load i32, i32* %6, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds %struct.upid, %struct.upid* %191, i64 %193
  store %struct.upid* %194, %struct.upid** %9, align 8
  %195 = load %struct.upid*, %struct.upid** %9, align 8
  %196 = getelementptr inbounds %struct.upid, %struct.upid* %195, i32 0, i32 1
  %197 = load %struct.pid_namespace*, %struct.pid_namespace** %196, align 8
  %198 = getelementptr inbounds %struct.pid_namespace, %struct.pid_namespace* %197, i32 0, i32 3
  %199 = load %struct.upid*, %struct.upid** %9, align 8
  %200 = getelementptr inbounds %struct.upid, %struct.upid* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 8
  %202 = call i32 @idr_remove(i32* %198, i32 %201)
  br label %181

203:                                              ; preds = %181
  %204 = load %struct.pid_namespace*, %struct.pid_namespace** %3, align 8
  %205 = getelementptr inbounds %struct.pid_namespace, %struct.pid_namespace* %204, i32 0, i32 1
  %206 = load i32, i32* %205, align 4
  %207 = load i32, i32* @PIDNS_ADDING, align 4
  %208 = icmp eq i32 %206, %207
  br i1 %208, label %209, label %213

209:                                              ; preds = %203
  %210 = load %struct.pid_namespace*, %struct.pid_namespace** %3, align 8
  %211 = getelementptr inbounds %struct.pid_namespace, %struct.pid_namespace* %210, i32 0, i32 3
  %212 = call i32 @idr_set_cursor(i32* %211, i32 0)
  br label %213

213:                                              ; preds = %209, %203
  %214 = call i32 @spin_unlock_irq(i32* @pidmap_lock)
  %215 = load %struct.pid_namespace*, %struct.pid_namespace** %3, align 8
  %216 = getelementptr inbounds %struct.pid_namespace, %struct.pid_namespace* %215, i32 0, i32 2
  %217 = load i32, i32* %216, align 8
  %218 = load %struct.pid*, %struct.pid** %4, align 8
  %219 = call i32 @kmem_cache_free(i32 %217, %struct.pid* %218)
  %220 = load i32, i32* %10, align 4
  %221 = call %struct.pid* @ERR_PTR(i32 %220)
  store %struct.pid* %221, %struct.pid** %2, align 8
  br label %222

222:                                              ; preds = %213, %172, %21
  %223 = load %struct.pid*, %struct.pid** %2, align 8
  ret %struct.pid* %223
}

declare dso_local %struct.pid* @kmem_cache_alloc(i32, i32) #1

declare dso_local %struct.pid* @ERR_PTR(i32) #1

declare dso_local i32 @idr_preload(i32) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @idr_get_cursor(i32*) #1

declare dso_local i32 @idr_alloc_cyclic(i32*, i32*, i32, i32, i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @idr_preload_end(...) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @is_child_reaper(%struct.pid*) #1

declare dso_local i64 @pid_ns_prepare_proc(%struct.pid_namespace*) #1

declare dso_local i32 @get_pid_ns(%struct.pid_namespace*) #1

declare dso_local i32 @refcount_set(i32*, i32) #1

declare dso_local i32 @INIT_HLIST_HEAD(i32*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @idr_replace(i32*, %struct.pid*, i32) #1

declare dso_local i32 @put_pid_ns(%struct.pid_namespace*) #1

declare dso_local i32 @idr_remove(i32*, i32) #1

declare dso_local i32 @idr_set_cursor(i32*, i32) #1

declare dso_local i32 @kmem_cache_free(i32, %struct.pid*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
