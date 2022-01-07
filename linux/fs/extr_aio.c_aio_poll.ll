; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_aio.c_aio_poll.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_aio.c_aio_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aio_kiocb = type { %struct.TYPE_5__, i32, i32, %struct.poll_iocb, %struct.kioctx* }
%struct.TYPE_5__ = type { i32 }
%struct.poll_iocb = type { i32, i32, i32, %struct.TYPE_7__*, %struct.TYPE_8__, i32, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.kioctx = type { i32, i32 }
%struct.iocb = type { i64, i64, i64, i64 }
%struct.aio_poll_table = type { i32, %struct.TYPE_6__, %struct.aio_kiocb* }
%struct.TYPE_6__ = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@aio_poll_complete_work = common dso_local global i32 0, align 4
@EPOLLERR = common dso_local global i32 0, align 4
@EPOLLHUP = common dso_local global i32 0, align 4
@aio_poll_queue_proc = common dso_local global i32 0, align 4
@aio_poll_wake = common dso_local global i32 0, align 4
@aio_poll_cancel = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aio_kiocb*, %struct.iocb*)* @aio_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aio_poll(%struct.aio_kiocb* %0, %struct.iocb* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.aio_kiocb*, align 8
  %5 = alloca %struct.iocb*, align 8
  %6 = alloca %struct.kioctx*, align 8
  %7 = alloca %struct.poll_iocb*, align 8
  %8 = alloca %struct.aio_poll_table, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.aio_kiocb* %0, %struct.aio_kiocb** %4, align 8
  store %struct.iocb* %1, %struct.iocb** %5, align 8
  %11 = load %struct.aio_kiocb*, %struct.aio_kiocb** %4, align 8
  %12 = getelementptr inbounds %struct.aio_kiocb, %struct.aio_kiocb* %11, i32 0, i32 4
  %13 = load %struct.kioctx*, %struct.kioctx** %12, align 8
  store %struct.kioctx* %13, %struct.kioctx** %6, align 8
  %14 = load %struct.aio_kiocb*, %struct.aio_kiocb** %4, align 8
  %15 = getelementptr inbounds %struct.aio_kiocb, %struct.aio_kiocb* %14, i32 0, i32 3
  store %struct.poll_iocb* %15, %struct.poll_iocb** %7, align 8
  store i32 0, i32* %9, align 4
  %16 = load %struct.iocb*, %struct.iocb** %5, align 8
  %17 = getelementptr inbounds %struct.iocb, %struct.iocb* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.iocb*, %struct.iocb** %5, align 8
  %20 = getelementptr inbounds %struct.iocb, %struct.iocb* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %18, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %2
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %186

26:                                               ; preds = %2
  %27 = load %struct.iocb*, %struct.iocb** %5, align 8
  %28 = getelementptr inbounds %struct.iocb, %struct.iocb* %27, i32 0, i32 3
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %41, label %31

31:                                               ; preds = %26
  %32 = load %struct.iocb*, %struct.iocb** %5, align 8
  %33 = getelementptr inbounds %struct.iocb, %struct.iocb* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %41, label %36

36:                                               ; preds = %31
  %37 = load %struct.iocb*, %struct.iocb** %5, align 8
  %38 = getelementptr inbounds %struct.iocb, %struct.iocb* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %36, %31, %26
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %3, align 4
  br label %186

44:                                               ; preds = %36
  %45 = load %struct.poll_iocb*, %struct.poll_iocb** %7, align 8
  %46 = getelementptr inbounds %struct.poll_iocb, %struct.poll_iocb* %45, i32 0, i32 6
  %47 = load i32, i32* @aio_poll_complete_work, align 4
  %48 = call i32 @INIT_WORK(i32* %46, i32 %47)
  %49 = load %struct.iocb*, %struct.iocb** %5, align 8
  %50 = getelementptr inbounds %struct.iocb, %struct.iocb* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = call i32 @demangle_poll(i64 %51)
  %53 = load i32, i32* @EPOLLERR, align 4
  %54 = or i32 %52, %53
  %55 = load i32, i32* @EPOLLHUP, align 4
  %56 = or i32 %54, %55
  %57 = load %struct.poll_iocb*, %struct.poll_iocb** %7, align 8
  %58 = getelementptr inbounds %struct.poll_iocb, %struct.poll_iocb* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 8
  %59 = load %struct.poll_iocb*, %struct.poll_iocb** %7, align 8
  %60 = getelementptr inbounds %struct.poll_iocb, %struct.poll_iocb* %59, i32 0, i32 3
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %60, align 8
  %61 = load %struct.poll_iocb*, %struct.poll_iocb** %7, align 8
  %62 = getelementptr inbounds %struct.poll_iocb, %struct.poll_iocb* %61, i32 0, i32 1
  store i32 0, i32* %62, align 4
  %63 = load %struct.poll_iocb*, %struct.poll_iocb** %7, align 8
  %64 = getelementptr inbounds %struct.poll_iocb, %struct.poll_iocb* %63, i32 0, i32 2
  store i32 0, i32* %64, align 8
  %65 = load i32, i32* @aio_poll_queue_proc, align 4
  %66 = getelementptr inbounds %struct.aio_poll_table, %struct.aio_poll_table* %8, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 1
  store i32 %65, i32* %67, align 4
  %68 = load %struct.poll_iocb*, %struct.poll_iocb** %7, align 8
  %69 = getelementptr inbounds %struct.poll_iocb, %struct.poll_iocb* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = getelementptr inbounds %struct.aio_poll_table, %struct.aio_poll_table* %8, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 0
  store i32 %70, i32* %72, align 4
  %73 = load %struct.aio_kiocb*, %struct.aio_kiocb** %4, align 8
  %74 = getelementptr inbounds %struct.aio_poll_table, %struct.aio_poll_table* %8, i32 0, i32 2
  store %struct.aio_kiocb* %73, %struct.aio_kiocb** %74, align 8
  %75 = load i32, i32* @EINVAL, align 4
  %76 = sub nsw i32 0, %75
  %77 = getelementptr inbounds %struct.aio_poll_table, %struct.aio_poll_table* %8, i32 0, i32 0
  store i32 %76, i32* %77, align 8
  %78 = load %struct.poll_iocb*, %struct.poll_iocb** %7, align 8
  %79 = getelementptr inbounds %struct.poll_iocb, %struct.poll_iocb* %78, i32 0, i32 4
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 0
  %81 = call i32 @INIT_LIST_HEAD(i32* %80)
  %82 = load %struct.poll_iocb*, %struct.poll_iocb** %7, align 8
  %83 = getelementptr inbounds %struct.poll_iocb, %struct.poll_iocb* %82, i32 0, i32 4
  %84 = load i32, i32* @aio_poll_wake, align 4
  %85 = call i32 @init_waitqueue_func_entry(%struct.TYPE_8__* %83, i32 %84)
  %86 = load %struct.poll_iocb*, %struct.poll_iocb** %7, align 8
  %87 = getelementptr inbounds %struct.poll_iocb, %struct.poll_iocb* %86, i32 0, i32 5
  %88 = load i32, i32* %87, align 4
  %89 = getelementptr inbounds %struct.aio_poll_table, %struct.aio_poll_table* %8, i32 0, i32 1
  %90 = call i32 @vfs_poll(i32 %88, %struct.TYPE_6__* %89)
  %91 = load %struct.poll_iocb*, %struct.poll_iocb** %7, align 8
  %92 = getelementptr inbounds %struct.poll_iocb, %struct.poll_iocb* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = and i32 %90, %93
  store i32 %94, i32* %10, align 4
  %95 = load %struct.kioctx*, %struct.kioctx** %6, align 8
  %96 = getelementptr inbounds %struct.kioctx, %struct.kioctx* %95, i32 0, i32 0
  %97 = call i32 @spin_lock_irq(i32* %96)
  %98 = load %struct.poll_iocb*, %struct.poll_iocb** %7, align 8
  %99 = getelementptr inbounds %struct.poll_iocb, %struct.poll_iocb* %98, i32 0, i32 3
  %100 = load %struct.TYPE_7__*, %struct.TYPE_7__** %99, align 8
  %101 = call i64 @likely(%struct.TYPE_7__* %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %164

103:                                              ; preds = %44
  %104 = load %struct.poll_iocb*, %struct.poll_iocb** %7, align 8
  %105 = getelementptr inbounds %struct.poll_iocb, %struct.poll_iocb* %104, i32 0, i32 3
  %106 = load %struct.TYPE_7__*, %struct.TYPE_7__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %106, i32 0, i32 0
  %108 = call i32 @spin_lock(i32* %107)
  %109 = load %struct.poll_iocb*, %struct.poll_iocb** %7, align 8
  %110 = getelementptr inbounds %struct.poll_iocb, %struct.poll_iocb* %109, i32 0, i32 4
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 0
  %112 = call i32 @list_empty(i32* %111)
  %113 = call i64 @unlikely(i32 %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %122

115:                                              ; preds = %103
  %116 = getelementptr inbounds %struct.aio_poll_table, %struct.aio_poll_table* %8, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %120

119:                                              ; preds = %115
  store i32 1, i32* %9, align 4
  br label %120

120:                                              ; preds = %119, %115
  %121 = getelementptr inbounds %struct.aio_poll_table, %struct.aio_poll_table* %8, i32 0, i32 0
  store i32 0, i32* %121, align 8
  store i32 0, i32* %10, align 4
  br label %122

122:                                              ; preds = %120, %103
  %123 = load i32, i32* %10, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %129, label %125

125:                                              ; preds = %122
  %126 = getelementptr inbounds %struct.aio_poll_table, %struct.aio_poll_table* %8, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %134

129:                                              ; preds = %125, %122
  %130 = load %struct.poll_iocb*, %struct.poll_iocb** %7, align 8
  %131 = getelementptr inbounds %struct.poll_iocb, %struct.poll_iocb* %130, i32 0, i32 4
  %132 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %131, i32 0, i32 0
  %133 = call i32 @list_del_init(i32* %132)
  br label %158

134:                                              ; preds = %125
  %135 = load i32, i32* %9, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %142

137:                                              ; preds = %134
  %138 = load %struct.poll_iocb*, %struct.poll_iocb** %7, align 8
  %139 = getelementptr inbounds %struct.poll_iocb, %struct.poll_iocb* %138, i32 0, i32 2
  %140 = load i32, i32* %139, align 8
  %141 = call i32 @WRITE_ONCE(i32 %140, i32 1)
  br label %157

142:                                              ; preds = %134
  %143 = load %struct.poll_iocb*, %struct.poll_iocb** %7, align 8
  %144 = getelementptr inbounds %struct.poll_iocb, %struct.poll_iocb* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %156, label %147

147:                                              ; preds = %142
  %148 = load %struct.aio_kiocb*, %struct.aio_kiocb** %4, align 8
  %149 = getelementptr inbounds %struct.aio_kiocb, %struct.aio_kiocb* %148, i32 0, i32 2
  %150 = load %struct.kioctx*, %struct.kioctx** %6, align 8
  %151 = getelementptr inbounds %struct.kioctx, %struct.kioctx* %150, i32 0, i32 1
  %152 = call i32 @list_add_tail(i32* %149, i32* %151)
  %153 = load i32, i32* @aio_poll_cancel, align 4
  %154 = load %struct.aio_kiocb*, %struct.aio_kiocb** %4, align 8
  %155 = getelementptr inbounds %struct.aio_kiocb, %struct.aio_kiocb* %154, i32 0, i32 1
  store i32 %153, i32* %155, align 4
  br label %156

156:                                              ; preds = %147, %142
  br label %157

157:                                              ; preds = %156, %137
  br label %158

158:                                              ; preds = %157, %129
  %159 = load %struct.poll_iocb*, %struct.poll_iocb** %7, align 8
  %160 = getelementptr inbounds %struct.poll_iocb, %struct.poll_iocb* %159, i32 0, i32 3
  %161 = load %struct.TYPE_7__*, %struct.TYPE_7__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %161, i32 0, i32 0
  %163 = call i32 @spin_unlock(i32* %162)
  br label %164

164:                                              ; preds = %158, %44
  %165 = load i32, i32* %10, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %174

167:                                              ; preds = %164
  %168 = load i32, i32* %10, align 4
  %169 = call i32 @mangle_poll(i32 %168)
  %170 = load %struct.aio_kiocb*, %struct.aio_kiocb** %4, align 8
  %171 = getelementptr inbounds %struct.aio_kiocb, %struct.aio_kiocb* %170, i32 0, i32 0
  %172 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %171, i32 0, i32 0
  store i32 %169, i32* %172, align 8
  %173 = getelementptr inbounds %struct.aio_poll_table, %struct.aio_poll_table* %8, i32 0, i32 0
  store i32 0, i32* %173, align 8
  br label %174

174:                                              ; preds = %167, %164
  %175 = load %struct.kioctx*, %struct.kioctx** %6, align 8
  %176 = getelementptr inbounds %struct.kioctx, %struct.kioctx* %175, i32 0, i32 0
  %177 = call i32 @spin_unlock_irq(i32* %176)
  %178 = load i32, i32* %10, align 4
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %183

180:                                              ; preds = %174
  %181 = load %struct.aio_kiocb*, %struct.aio_kiocb** %4, align 8
  %182 = call i32 @iocb_put(%struct.aio_kiocb* %181)
  br label %183

183:                                              ; preds = %180, %174
  %184 = getelementptr inbounds %struct.aio_poll_table, %struct.aio_poll_table* %8, i32 0, i32 0
  %185 = load i32, i32* %184, align 8
  store i32 %185, i32* %3, align 4
  br label %186

186:                                              ; preds = %183, %41, %23
  %187 = load i32, i32* %3, align 4
  ret i32 %187
}

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @demangle_poll(i64) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @init_waitqueue_func_entry(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @vfs_poll(i32, %struct.TYPE_6__*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i64 @likely(%struct.TYPE_7__*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @WRITE_ONCE(i32, i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @mangle_poll(i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @iocb_put(%struct.aio_kiocb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
