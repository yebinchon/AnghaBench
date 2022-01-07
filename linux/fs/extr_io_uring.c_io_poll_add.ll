; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_io_uring.c_io_poll_add.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_io_uring.c_io_poll_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.io_kiocb = type { i32, i32, %struct.TYPE_5__, %struct.io_ring_ctx*, %struct.io_poll_iocb }
%struct.TYPE_5__ = type { i32* }
%struct.io_ring_ctx = type { i32, i32, i32 }
%struct.io_poll_iocb = type { i32, i32, i32, %struct.TYPE_7__*, %struct.TYPE_8__, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.io_uring_sqe = type { i32, i64, i64, i64, i64, i64 }
%struct.io_poll_table = type { i32, %struct.TYPE_6__, %struct.io_kiocb* }
%struct.TYPE_6__ = type { i32, i32 }

@IORING_SETUP_IOPOLL = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@EBADF = common dso_local global i32 0, align 4
@io_poll_complete_work = common dso_local global i32 0, align 4
@EPOLLERR = common dso_local global i32 0, align 4
@EPOLLHUP = common dso_local global i32 0, align 4
@io_poll_queue_proc = common dso_local global i32 0, align 4
@io_poll_wake = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.io_kiocb*, %struct.io_uring_sqe*)* @io_poll_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @io_poll_add(%struct.io_kiocb* %0, %struct.io_uring_sqe* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.io_kiocb*, align 8
  %5 = alloca %struct.io_uring_sqe*, align 8
  %6 = alloca %struct.io_poll_iocb*, align 8
  %7 = alloca %struct.io_ring_ctx*, align 8
  %8 = alloca %struct.io_poll_table, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.io_kiocb* %0, %struct.io_kiocb** %4, align 8
  store %struct.io_uring_sqe* %1, %struct.io_uring_sqe** %5, align 8
  %12 = load %struct.io_kiocb*, %struct.io_kiocb** %4, align 8
  %13 = getelementptr inbounds %struct.io_kiocb, %struct.io_kiocb* %12, i32 0, i32 4
  store %struct.io_poll_iocb* %13, %struct.io_poll_iocb** %6, align 8
  %14 = load %struct.io_kiocb*, %struct.io_kiocb** %4, align 8
  %15 = getelementptr inbounds %struct.io_kiocb, %struct.io_kiocb* %14, i32 0, i32 3
  %16 = load %struct.io_ring_ctx*, %struct.io_ring_ctx** %15, align 8
  store %struct.io_ring_ctx* %16, %struct.io_ring_ctx** %7, align 8
  store i32 0, i32* %9, align 4
  %17 = load %struct.io_kiocb*, %struct.io_kiocb** %4, align 8
  %18 = getelementptr inbounds %struct.io_kiocb, %struct.io_kiocb* %17, i32 0, i32 3
  %19 = load %struct.io_ring_ctx*, %struct.io_ring_ctx** %18, align 8
  %20 = getelementptr inbounds %struct.io_ring_ctx, %struct.io_ring_ctx* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @IORING_SETUP_IOPOLL, align 4
  %23 = and i32 %21, %22
  %24 = call i64 @unlikely(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %2
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %213

29:                                               ; preds = %2
  %30 = load %struct.io_uring_sqe*, %struct.io_uring_sqe** %5, align 8
  %31 = getelementptr inbounds %struct.io_uring_sqe, %struct.io_uring_sqe* %30, i32 0, i32 5
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %54, label %34

34:                                               ; preds = %29
  %35 = load %struct.io_uring_sqe*, %struct.io_uring_sqe** %5, align 8
  %36 = getelementptr inbounds %struct.io_uring_sqe, %struct.io_uring_sqe* %35, i32 0, i32 4
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %54, label %39

39:                                               ; preds = %34
  %40 = load %struct.io_uring_sqe*, %struct.io_uring_sqe** %5, align 8
  %41 = getelementptr inbounds %struct.io_uring_sqe, %struct.io_uring_sqe* %40, i32 0, i32 3
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %54, label %44

44:                                               ; preds = %39
  %45 = load %struct.io_uring_sqe*, %struct.io_uring_sqe** %5, align 8
  %46 = getelementptr inbounds %struct.io_uring_sqe, %struct.io_uring_sqe* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %54, label %49

49:                                               ; preds = %44
  %50 = load %struct.io_uring_sqe*, %struct.io_uring_sqe** %5, align 8
  %51 = getelementptr inbounds %struct.io_uring_sqe, %struct.io_uring_sqe* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %49, %44, %39, %34, %29
  %55 = load i32, i32* @EINVAL, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %3, align 4
  br label %213

57:                                               ; preds = %49
  %58 = load %struct.io_poll_iocb*, %struct.io_poll_iocb** %6, align 8
  %59 = getelementptr inbounds %struct.io_poll_iocb, %struct.io_poll_iocb* %58, i32 0, i32 5
  %60 = load i32, i32* %59, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %65, label %62

62:                                               ; preds = %57
  %63 = load i32, i32* @EBADF, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %3, align 4
  br label %213

65:                                               ; preds = %57
  %66 = load %struct.io_kiocb*, %struct.io_kiocb** %4, align 8
  %67 = getelementptr inbounds %struct.io_kiocb, %struct.io_kiocb* %66, i32 0, i32 2
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 0
  store i32* null, i32** %68, align 8
  %69 = load %struct.io_kiocb*, %struct.io_kiocb** %4, align 8
  %70 = getelementptr inbounds %struct.io_kiocb, %struct.io_kiocb* %69, i32 0, i32 1
  %71 = load i32, i32* @io_poll_complete_work, align 4
  %72 = call i32 @INIT_WORK(i32* %70, i32 %71)
  %73 = load %struct.io_uring_sqe*, %struct.io_uring_sqe** %5, align 8
  %74 = getelementptr inbounds %struct.io_uring_sqe, %struct.io_uring_sqe* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @READ_ONCE(i32 %75)
  store i32 %76, i32* %11, align 4
  %77 = load i32, i32* %11, align 4
  %78 = call i32 @demangle_poll(i32 %77)
  %79 = load i32, i32* @EPOLLERR, align 4
  %80 = or i32 %78, %79
  %81 = load i32, i32* @EPOLLHUP, align 4
  %82 = or i32 %80, %81
  %83 = load %struct.io_poll_iocb*, %struct.io_poll_iocb** %6, align 8
  %84 = getelementptr inbounds %struct.io_poll_iocb, %struct.io_poll_iocb* %83, i32 0, i32 0
  store i32 %82, i32* %84, align 8
  %85 = load %struct.io_poll_iocb*, %struct.io_poll_iocb** %6, align 8
  %86 = getelementptr inbounds %struct.io_poll_iocb, %struct.io_poll_iocb* %85, i32 0, i32 3
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %86, align 8
  %87 = load %struct.io_poll_iocb*, %struct.io_poll_iocb** %6, align 8
  %88 = getelementptr inbounds %struct.io_poll_iocb, %struct.io_poll_iocb* %87, i32 0, i32 1
  store i32 0, i32* %88, align 4
  %89 = load %struct.io_poll_iocb*, %struct.io_poll_iocb** %6, align 8
  %90 = getelementptr inbounds %struct.io_poll_iocb, %struct.io_poll_iocb* %89, i32 0, i32 2
  store i32 0, i32* %90, align 8
  %91 = load i32, i32* @io_poll_queue_proc, align 4
  %92 = getelementptr inbounds %struct.io_poll_table, %struct.io_poll_table* %8, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 1
  store i32 %91, i32* %93, align 4
  %94 = load %struct.io_poll_iocb*, %struct.io_poll_iocb** %6, align 8
  %95 = getelementptr inbounds %struct.io_poll_iocb, %struct.io_poll_iocb* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = getelementptr inbounds %struct.io_poll_table, %struct.io_poll_table* %8, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 0
  store i32 %96, i32* %98, align 4
  %99 = load %struct.io_kiocb*, %struct.io_kiocb** %4, align 8
  %100 = getelementptr inbounds %struct.io_poll_table, %struct.io_poll_table* %8, i32 0, i32 2
  store %struct.io_kiocb* %99, %struct.io_kiocb** %100, align 8
  %101 = load i32, i32* @EINVAL, align 4
  %102 = sub nsw i32 0, %101
  %103 = getelementptr inbounds %struct.io_poll_table, %struct.io_poll_table* %8, i32 0, i32 0
  store i32 %102, i32* %103, align 8
  %104 = load %struct.io_poll_iocb*, %struct.io_poll_iocb** %6, align 8
  %105 = getelementptr inbounds %struct.io_poll_iocb, %struct.io_poll_iocb* %104, i32 0, i32 4
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i32 0, i32 0
  %107 = call i32 @INIT_LIST_HEAD(i32* %106)
  %108 = load %struct.io_poll_iocb*, %struct.io_poll_iocb** %6, align 8
  %109 = getelementptr inbounds %struct.io_poll_iocb, %struct.io_poll_iocb* %108, i32 0, i32 4
  %110 = load i32, i32* @io_poll_wake, align 4
  %111 = call i32 @init_waitqueue_func_entry(%struct.TYPE_8__* %109, i32 %110)
  %112 = load %struct.io_kiocb*, %struct.io_kiocb** %4, align 8
  %113 = getelementptr inbounds %struct.io_kiocb, %struct.io_kiocb* %112, i32 0, i32 0
  %114 = call i32 @INIT_LIST_HEAD(i32* %113)
  %115 = load %struct.io_poll_iocb*, %struct.io_poll_iocb** %6, align 8
  %116 = getelementptr inbounds %struct.io_poll_iocb, %struct.io_poll_iocb* %115, i32 0, i32 5
  %117 = load i32, i32* %116, align 4
  %118 = getelementptr inbounds %struct.io_poll_table, %struct.io_poll_table* %8, i32 0, i32 1
  %119 = call i32 @vfs_poll(i32 %117, %struct.TYPE_6__* %118)
  %120 = load %struct.io_poll_iocb*, %struct.io_poll_iocb** %6, align 8
  %121 = getelementptr inbounds %struct.io_poll_iocb, %struct.io_poll_iocb* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = and i32 %119, %122
  store i32 %123, i32* %10, align 4
  %124 = load %struct.io_ring_ctx*, %struct.io_ring_ctx** %7, align 8
  %125 = getelementptr inbounds %struct.io_ring_ctx, %struct.io_ring_ctx* %124, i32 0, i32 1
  %126 = call i32 @spin_lock_irq(i32* %125)
  %127 = load %struct.io_poll_iocb*, %struct.io_poll_iocb** %6, align 8
  %128 = getelementptr inbounds %struct.io_poll_iocb, %struct.io_poll_iocb* %127, i32 0, i32 3
  %129 = load %struct.TYPE_7__*, %struct.TYPE_7__** %128, align 8
  %130 = call i64 @likely(%struct.TYPE_7__* %129)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %190

132:                                              ; preds = %65
  %133 = load %struct.io_poll_iocb*, %struct.io_poll_iocb** %6, align 8
  %134 = getelementptr inbounds %struct.io_poll_iocb, %struct.io_poll_iocb* %133, i32 0, i32 3
  %135 = load %struct.TYPE_7__*, %struct.TYPE_7__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %135, i32 0, i32 0
  %137 = call i32 @spin_lock(i32* %136)
  %138 = load %struct.io_poll_iocb*, %struct.io_poll_iocb** %6, align 8
  %139 = getelementptr inbounds %struct.io_poll_iocb, %struct.io_poll_iocb* %138, i32 0, i32 4
  %140 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %139, i32 0, i32 0
  %141 = call i32 @list_empty(i32* %140)
  %142 = call i64 @unlikely(i32 %141)
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %151

144:                                              ; preds = %132
  %145 = getelementptr inbounds %struct.io_poll_table, %struct.io_poll_table* %8, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %149

148:                                              ; preds = %144
  store i32 1, i32* %9, align 4
  br label %149

149:                                              ; preds = %148, %144
  %150 = getelementptr inbounds %struct.io_poll_table, %struct.io_poll_table* %8, i32 0, i32 0
  store i32 0, i32* %150, align 8
  store i32 0, i32* %10, align 4
  br label %151

151:                                              ; preds = %149, %132
  %152 = load i32, i32* %10, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %158, label %154

154:                                              ; preds = %151
  %155 = getelementptr inbounds %struct.io_poll_table, %struct.io_poll_table* %8, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %163

158:                                              ; preds = %154, %151
  %159 = load %struct.io_poll_iocb*, %struct.io_poll_iocb** %6, align 8
  %160 = getelementptr inbounds %struct.io_poll_iocb, %struct.io_poll_iocb* %159, i32 0, i32 4
  %161 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %160, i32 0, i32 0
  %162 = call i32 @list_del_init(i32* %161)
  br label %184

163:                                              ; preds = %154
  %164 = load i32, i32* %9, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %171

166:                                              ; preds = %163
  %167 = load %struct.io_poll_iocb*, %struct.io_poll_iocb** %6, align 8
  %168 = getelementptr inbounds %struct.io_poll_iocb, %struct.io_poll_iocb* %167, i32 0, i32 2
  %169 = load i32, i32* %168, align 8
  %170 = call i32 @WRITE_ONCE(i32 %169, i32 1)
  br label %183

171:                                              ; preds = %163
  %172 = load %struct.io_poll_iocb*, %struct.io_poll_iocb** %6, align 8
  %173 = getelementptr inbounds %struct.io_poll_iocb, %struct.io_poll_iocb* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %182, label %176

176:                                              ; preds = %171
  %177 = load %struct.io_kiocb*, %struct.io_kiocb** %4, align 8
  %178 = getelementptr inbounds %struct.io_kiocb, %struct.io_kiocb* %177, i32 0, i32 0
  %179 = load %struct.io_ring_ctx*, %struct.io_ring_ctx** %7, align 8
  %180 = getelementptr inbounds %struct.io_ring_ctx, %struct.io_ring_ctx* %179, i32 0, i32 2
  %181 = call i32 @list_add_tail(i32* %178, i32* %180)
  br label %182

182:                                              ; preds = %176, %171
  br label %183

183:                                              ; preds = %182, %166
  br label %184

184:                                              ; preds = %183, %158
  %185 = load %struct.io_poll_iocb*, %struct.io_poll_iocb** %6, align 8
  %186 = getelementptr inbounds %struct.io_poll_iocb, %struct.io_poll_iocb* %185, i32 0, i32 3
  %187 = load %struct.TYPE_7__*, %struct.TYPE_7__** %186, align 8
  %188 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %187, i32 0, i32 0
  %189 = call i32 @spin_unlock(i32* %188)
  br label %190

190:                                              ; preds = %184, %65
  %191 = load i32, i32* %10, align 4
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %199

193:                                              ; preds = %190
  %194 = getelementptr inbounds %struct.io_poll_table, %struct.io_poll_table* %8, i32 0, i32 0
  store i32 0, i32* %194, align 8
  %195 = load %struct.io_ring_ctx*, %struct.io_ring_ctx** %7, align 8
  %196 = load %struct.io_kiocb*, %struct.io_kiocb** %4, align 8
  %197 = load i32, i32* %10, align 4
  %198 = call i32 @io_poll_complete(%struct.io_ring_ctx* %195, %struct.io_kiocb* %196, i32 %197)
  br label %199

199:                                              ; preds = %193, %190
  %200 = load %struct.io_ring_ctx*, %struct.io_ring_ctx** %7, align 8
  %201 = getelementptr inbounds %struct.io_ring_ctx, %struct.io_ring_ctx* %200, i32 0, i32 1
  %202 = call i32 @spin_unlock_irq(i32* %201)
  %203 = load i32, i32* %10, align 4
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %210

205:                                              ; preds = %199
  %206 = load %struct.io_ring_ctx*, %struct.io_ring_ctx** %7, align 8
  %207 = call i32 @io_cqring_ev_posted(%struct.io_ring_ctx* %206)
  %208 = load %struct.io_kiocb*, %struct.io_kiocb** %4, align 8
  %209 = call i32 @io_put_req(%struct.io_kiocb* %208)
  br label %210

210:                                              ; preds = %205, %199
  %211 = getelementptr inbounds %struct.io_poll_table, %struct.io_poll_table* %8, i32 0, i32 0
  %212 = load i32, i32* %211, align 8
  store i32 %212, i32* %3, align 4
  br label %213

213:                                              ; preds = %210, %62, %54, %26
  %214 = load i32, i32* %3, align 4
  ret i32 %214
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @READ_ONCE(i32) #1

declare dso_local i32 @demangle_poll(i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @init_waitqueue_func_entry(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @vfs_poll(i32, %struct.TYPE_6__*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i64 @likely(%struct.TYPE_7__*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @WRITE_ONCE(i32, i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @io_poll_complete(%struct.io_ring_ctx*, %struct.io_kiocb*, i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @io_cqring_ev_posted(%struct.io_ring_ctx*) #1

declare dso_local i32 @io_put_req(%struct.io_kiocb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
