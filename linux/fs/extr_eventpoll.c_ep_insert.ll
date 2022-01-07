; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_eventpoll.c_ep_insert.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_eventpoll.c_ep_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eventpoll = type { i32, i32, i32, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.epoll_event = type { i32 }
%struct.file = type { i32, i32 }
%struct.epitem = type { i64, i32, i32, i32, i32, %struct.epoll_event, i32, i32, %struct.eventpoll*, i32 }
%struct.ep_pqueue = type { i32, %struct.epitem* }

@max_user_watches = common dso_local global i64 0, align 8
@ENOSPC = common dso_local global i32 0, align 4
@epi_cache = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EP_UNACTIVE_PTR = common dso_local global i32 0, align 4
@EPOLLWAKEUP = common dso_local global i32 0, align 4
@ep_ptable_queue_proc = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.eventpoll*, %struct.epoll_event*, %struct.file*, i32, i32)* @ep_insert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ep_insert(%struct.eventpoll* %0, %struct.epoll_event* %1, %struct.file* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.eventpoll*, align 8
  %8 = alloca %struct.epoll_event*, align 8
  %9 = alloca %struct.file*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.epitem*, align 8
  %17 = alloca %struct.ep_pqueue, align 8
  store %struct.eventpoll* %0, %struct.eventpoll** %7, align 8
  store %struct.epoll_event* %1, %struct.epoll_event** %8, align 8
  store %struct.file* %2, %struct.file** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 0, i32* %13, align 4
  %18 = call i32 (...) @lockdep_assert_irqs_enabled()
  %19 = load %struct.eventpoll*, %struct.eventpoll** %7, align 8
  %20 = getelementptr inbounds %struct.eventpoll, %struct.eventpoll* %19, i32 0, i32 3
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = call i64 @atomic_long_read(i32* %22)
  store i64 %23, i64* %15, align 8
  %24 = load i64, i64* %15, align 8
  %25 = load i64, i64* @max_user_watches, align 8
  %26 = icmp sge i64 %24, %25
  %27 = zext i1 %26 to i32
  %28 = call i64 @unlikely(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %5
  %31 = load i32, i32* @ENOSPC, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %6, align 4
  br label %221

33:                                               ; preds = %5
  %34 = load i32, i32* @epi_cache, align 4
  %35 = load i32, i32* @GFP_KERNEL, align 4
  %36 = call %struct.epitem* @kmem_cache_alloc(i32 %34, i32 %35)
  store %struct.epitem* %36, %struct.epitem** %16, align 8
  %37 = icmp ne %struct.epitem* %36, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %33
  %39 = load i32, i32* @ENOMEM, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %6, align 4
  br label %221

41:                                               ; preds = %33
  %42 = load %struct.epitem*, %struct.epitem** %16, align 8
  %43 = getelementptr inbounds %struct.epitem, %struct.epitem* %42, i32 0, i32 1
  %44 = call i32 @INIT_LIST_HEAD(i32* %43)
  %45 = load %struct.epitem*, %struct.epitem** %16, align 8
  %46 = getelementptr inbounds %struct.epitem, %struct.epitem* %45, i32 0, i32 3
  %47 = call i32 @INIT_LIST_HEAD(i32* %46)
  %48 = load %struct.epitem*, %struct.epitem** %16, align 8
  %49 = getelementptr inbounds %struct.epitem, %struct.epitem* %48, i32 0, i32 9
  %50 = call i32 @INIT_LIST_HEAD(i32* %49)
  %51 = load %struct.eventpoll*, %struct.eventpoll** %7, align 8
  %52 = load %struct.epitem*, %struct.epitem** %16, align 8
  %53 = getelementptr inbounds %struct.epitem, %struct.epitem* %52, i32 0, i32 8
  store %struct.eventpoll* %51, %struct.eventpoll** %53, align 8
  %54 = load %struct.epitem*, %struct.epitem** %16, align 8
  %55 = getelementptr inbounds %struct.epitem, %struct.epitem* %54, i32 0, i32 7
  %56 = load %struct.file*, %struct.file** %9, align 8
  %57 = load i32, i32* %10, align 4
  %58 = call i32 @ep_set_ffd(i32* %55, %struct.file* %56, i32 %57)
  %59 = load %struct.epitem*, %struct.epitem** %16, align 8
  %60 = getelementptr inbounds %struct.epitem, %struct.epitem* %59, i32 0, i32 5
  %61 = load %struct.epoll_event*, %struct.epoll_event** %8, align 8
  %62 = bitcast %struct.epoll_event* %60 to i8*
  %63 = bitcast %struct.epoll_event* %61 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %62, i8* align 4 %63, i64 4, i1 false)
  %64 = load %struct.epitem*, %struct.epitem** %16, align 8
  %65 = getelementptr inbounds %struct.epitem, %struct.epitem* %64, i32 0, i32 0
  store i64 0, i64* %65, align 8
  %66 = load i32, i32* @EP_UNACTIVE_PTR, align 4
  %67 = load %struct.epitem*, %struct.epitem** %16, align 8
  %68 = getelementptr inbounds %struct.epitem, %struct.epitem* %67, i32 0, i32 6
  store i32 %66, i32* %68, align 4
  %69 = load %struct.epitem*, %struct.epitem** %16, align 8
  %70 = getelementptr inbounds %struct.epitem, %struct.epitem* %69, i32 0, i32 5
  %71 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* @EPOLLWAKEUP, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %83

76:                                               ; preds = %41
  %77 = load %struct.epitem*, %struct.epitem** %16, align 8
  %78 = call i32 @ep_create_wakeup_source(%struct.epitem* %77)
  store i32 %78, i32* %12, align 4
  %79 = load i32, i32* %12, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %76
  br label %216

82:                                               ; preds = %76
  br label %88

83:                                               ; preds = %41
  %84 = load %struct.epitem*, %struct.epitem** %16, align 8
  %85 = getelementptr inbounds %struct.epitem, %struct.epitem* %84, i32 0, i32 4
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @RCU_INIT_POINTER(i32 %86, i32* null)
  br label %88

88:                                               ; preds = %83, %82
  %89 = load %struct.epitem*, %struct.epitem** %16, align 8
  %90 = getelementptr inbounds %struct.ep_pqueue, %struct.ep_pqueue* %17, i32 0, i32 1
  store %struct.epitem* %89, %struct.epitem** %90, align 8
  %91 = getelementptr inbounds %struct.ep_pqueue, %struct.ep_pqueue* %17, i32 0, i32 0
  %92 = load i32, i32* @ep_ptable_queue_proc, align 4
  %93 = call i32 @init_poll_funcptr(i32* %91, i32 %92)
  %94 = load %struct.epitem*, %struct.epitem** %16, align 8
  %95 = getelementptr inbounds %struct.ep_pqueue, %struct.ep_pqueue* %17, i32 0, i32 0
  %96 = call i64 @ep_item_poll(%struct.epitem* %94, i32* %95, i32 1)
  store i64 %96, i64* %14, align 8
  %97 = load i32, i32* @ENOMEM, align 4
  %98 = sub nsw i32 0, %97
  store i32 %98, i32* %12, align 4
  %99 = load %struct.epitem*, %struct.epitem** %16, align 8
  %100 = getelementptr inbounds %struct.epitem, %struct.epitem* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = icmp slt i64 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %88
  br label %195

104:                                              ; preds = %88
  %105 = load %struct.file*, %struct.file** %9, align 8
  %106 = getelementptr inbounds %struct.file, %struct.file* %105, i32 0, i32 0
  %107 = call i32 @spin_lock(i32* %106)
  %108 = load %struct.epitem*, %struct.epitem** %16, align 8
  %109 = getelementptr inbounds %struct.epitem, %struct.epitem* %108, i32 0, i32 3
  %110 = load %struct.file*, %struct.file** %9, align 8
  %111 = getelementptr inbounds %struct.file, %struct.file* %110, i32 0, i32 1
  %112 = call i32 @list_add_tail_rcu(i32* %109, i32* %111)
  %113 = load %struct.file*, %struct.file** %9, align 8
  %114 = getelementptr inbounds %struct.file, %struct.file* %113, i32 0, i32 0
  %115 = call i32 @spin_unlock(i32* %114)
  %116 = load %struct.eventpoll*, %struct.eventpoll** %7, align 8
  %117 = load %struct.epitem*, %struct.epitem** %16, align 8
  %118 = call i32 @ep_rbtree_insert(%struct.eventpoll* %116, %struct.epitem* %117)
  %119 = load i32, i32* @EINVAL, align 4
  %120 = sub nsw i32 0, %119
  store i32 %120, i32* %12, align 4
  %121 = load i32, i32* %11, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %127

123:                                              ; preds = %104
  %124 = call i64 (...) @reverse_path_check()
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %127

126:                                              ; preds = %123
  br label %180

127:                                              ; preds = %123, %104
  %128 = load %struct.eventpoll*, %struct.eventpoll** %7, align 8
  %129 = getelementptr inbounds %struct.eventpoll, %struct.eventpoll* %128, i32 0, i32 0
  %130 = call i32 @write_lock_irq(i32* %129)
  %131 = load %struct.epitem*, %struct.epitem** %16, align 8
  %132 = call i32 @ep_set_busy_poll_napi_id(%struct.epitem* %131)
  %133 = load i64, i64* %14, align 8
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %164

135:                                              ; preds = %127
  %136 = load %struct.epitem*, %struct.epitem** %16, align 8
  %137 = call i64 @ep_is_linked(%struct.epitem* %136)
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %164, label %139

139:                                              ; preds = %135
  %140 = load %struct.epitem*, %struct.epitem** %16, align 8
  %141 = getelementptr inbounds %struct.epitem, %struct.epitem* %140, i32 0, i32 1
  %142 = load %struct.eventpoll*, %struct.eventpoll** %7, align 8
  %143 = getelementptr inbounds %struct.eventpoll, %struct.eventpoll* %142, i32 0, i32 5
  %144 = call i32 @list_add_tail(i32* %141, i32* %143)
  %145 = load %struct.epitem*, %struct.epitem** %16, align 8
  %146 = call i32 @ep_pm_stay_awake(%struct.epitem* %145)
  %147 = load %struct.eventpoll*, %struct.eventpoll** %7, align 8
  %148 = getelementptr inbounds %struct.eventpoll, %struct.eventpoll* %147, i32 0, i32 4
  %149 = call i64 @waitqueue_active(i32* %148)
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %155

151:                                              ; preds = %139
  %152 = load %struct.eventpoll*, %struct.eventpoll** %7, align 8
  %153 = getelementptr inbounds %struct.eventpoll, %struct.eventpoll* %152, i32 0, i32 4
  %154 = call i32 @wake_up(i32* %153)
  br label %155

155:                                              ; preds = %151, %139
  %156 = load %struct.eventpoll*, %struct.eventpoll** %7, align 8
  %157 = getelementptr inbounds %struct.eventpoll, %struct.eventpoll* %156, i32 0, i32 2
  %158 = call i64 @waitqueue_active(i32* %157)
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %163

160:                                              ; preds = %155
  %161 = load i32, i32* %13, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %13, align 4
  br label %163

163:                                              ; preds = %160, %155
  br label %164

164:                                              ; preds = %163, %135, %127
  %165 = load %struct.eventpoll*, %struct.eventpoll** %7, align 8
  %166 = getelementptr inbounds %struct.eventpoll, %struct.eventpoll* %165, i32 0, i32 0
  %167 = call i32 @write_unlock_irq(i32* %166)
  %168 = load %struct.eventpoll*, %struct.eventpoll** %7, align 8
  %169 = getelementptr inbounds %struct.eventpoll, %struct.eventpoll* %168, i32 0, i32 3
  %170 = load %struct.TYPE_2__*, %struct.TYPE_2__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %170, i32 0, i32 0
  %172 = call i32 @atomic_long_inc(i32* %171)
  %173 = load i32, i32* %13, align 4
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %179

175:                                              ; preds = %164
  %176 = load %struct.eventpoll*, %struct.eventpoll** %7, align 8
  %177 = getelementptr inbounds %struct.eventpoll, %struct.eventpoll* %176, i32 0, i32 2
  %178 = call i32 @ep_poll_safewake(i32* %177)
  br label %179

179:                                              ; preds = %175, %164
  store i32 0, i32* %6, align 4
  br label %221

180:                                              ; preds = %126
  %181 = load %struct.file*, %struct.file** %9, align 8
  %182 = getelementptr inbounds %struct.file, %struct.file* %181, i32 0, i32 0
  %183 = call i32 @spin_lock(i32* %182)
  %184 = load %struct.epitem*, %struct.epitem** %16, align 8
  %185 = getelementptr inbounds %struct.epitem, %struct.epitem* %184, i32 0, i32 3
  %186 = call i32 @list_del_rcu(i32* %185)
  %187 = load %struct.file*, %struct.file** %9, align 8
  %188 = getelementptr inbounds %struct.file, %struct.file* %187, i32 0, i32 0
  %189 = call i32 @spin_unlock(i32* %188)
  %190 = load %struct.epitem*, %struct.epitem** %16, align 8
  %191 = getelementptr inbounds %struct.epitem, %struct.epitem* %190, i32 0, i32 2
  %192 = load %struct.eventpoll*, %struct.eventpoll** %7, align 8
  %193 = getelementptr inbounds %struct.eventpoll, %struct.eventpoll* %192, i32 0, i32 1
  %194 = call i32 @rb_erase_cached(i32* %191, i32* %193)
  br label %195

195:                                              ; preds = %180, %103
  %196 = load %struct.eventpoll*, %struct.eventpoll** %7, align 8
  %197 = load %struct.epitem*, %struct.epitem** %16, align 8
  %198 = call i32 @ep_unregister_pollwait(%struct.eventpoll* %196, %struct.epitem* %197)
  %199 = load %struct.eventpoll*, %struct.eventpoll** %7, align 8
  %200 = getelementptr inbounds %struct.eventpoll, %struct.eventpoll* %199, i32 0, i32 0
  %201 = call i32 @write_lock_irq(i32* %200)
  %202 = load %struct.epitem*, %struct.epitem** %16, align 8
  %203 = call i64 @ep_is_linked(%struct.epitem* %202)
  %204 = icmp ne i64 %203, 0
  br i1 %204, label %205, label %209

205:                                              ; preds = %195
  %206 = load %struct.epitem*, %struct.epitem** %16, align 8
  %207 = getelementptr inbounds %struct.epitem, %struct.epitem* %206, i32 0, i32 1
  %208 = call i32 @list_del_init(i32* %207)
  br label %209

209:                                              ; preds = %205, %195
  %210 = load %struct.eventpoll*, %struct.eventpoll** %7, align 8
  %211 = getelementptr inbounds %struct.eventpoll, %struct.eventpoll* %210, i32 0, i32 0
  %212 = call i32 @write_unlock_irq(i32* %211)
  %213 = load %struct.epitem*, %struct.epitem** %16, align 8
  %214 = call i32 @ep_wakeup_source(%struct.epitem* %213)
  %215 = call i32 @wakeup_source_unregister(i32 %214)
  br label %216

216:                                              ; preds = %209, %81
  %217 = load i32, i32* @epi_cache, align 4
  %218 = load %struct.epitem*, %struct.epitem** %16, align 8
  %219 = call i32 @kmem_cache_free(i32 %217, %struct.epitem* %218)
  %220 = load i32, i32* %12, align 4
  store i32 %220, i32* %6, align 4
  br label %221

221:                                              ; preds = %216, %179, %38, %30
  %222 = load i32, i32* %6, align 4
  ret i32 %222
}

declare dso_local i32 @lockdep_assert_irqs_enabled(...) #1

declare dso_local i64 @atomic_long_read(i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.epitem* @kmem_cache_alloc(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @ep_set_ffd(i32*, %struct.file*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @ep_create_wakeup_source(%struct.epitem*) #1

declare dso_local i32 @RCU_INIT_POINTER(i32, i32*) #1

declare dso_local i32 @init_poll_funcptr(i32*, i32) #1

declare dso_local i64 @ep_item_poll(%struct.epitem*, i32*, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_add_tail_rcu(i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @ep_rbtree_insert(%struct.eventpoll*, %struct.epitem*) #1

declare dso_local i64 @reverse_path_check(...) #1

declare dso_local i32 @write_lock_irq(i32*) #1

declare dso_local i32 @ep_set_busy_poll_napi_id(%struct.epitem*) #1

declare dso_local i64 @ep_is_linked(%struct.epitem*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @ep_pm_stay_awake(%struct.epitem*) #1

declare dso_local i64 @waitqueue_active(i32*) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @write_unlock_irq(i32*) #1

declare dso_local i32 @atomic_long_inc(i32*) #1

declare dso_local i32 @ep_poll_safewake(i32*) #1

declare dso_local i32 @list_del_rcu(i32*) #1

declare dso_local i32 @rb_erase_cached(i32*, i32*) #1

declare dso_local i32 @ep_unregister_pollwait(%struct.eventpoll*, %struct.epitem*) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @wakeup_source_unregister(i32) #1

declare dso_local i32 @ep_wakeup_source(%struct.epitem*) #1

declare dso_local i32 @kmem_cache_free(i32, %struct.epitem*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
