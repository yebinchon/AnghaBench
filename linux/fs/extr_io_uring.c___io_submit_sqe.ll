; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_io_uring.c___io_submit_sqe.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_io_uring.c___io_submit_sqe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.io_ring_ctx = type { i64, i32, i32 }
%struct.io_kiocb = type { i32, i8* }
%struct.sqe_submit = type { i64, i64, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@IORING_SETUP_IOPOLL = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.io_ring_ctx*, %struct.io_kiocb*, %struct.sqe_submit*, i32)* @__io_submit_sqe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__io_submit_sqe(%struct.io_ring_ctx* %0, %struct.io_kiocb* %1, %struct.sqe_submit* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.io_ring_ctx*, align 8
  %7 = alloca %struct.io_kiocb*, align 8
  %8 = alloca %struct.sqe_submit*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.io_ring_ctx* %0, %struct.io_ring_ctx** %6, align 8
  store %struct.io_kiocb* %1, %struct.io_kiocb** %7, align 8
  store %struct.sqe_submit* %2, %struct.sqe_submit** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load %struct.sqe_submit*, %struct.sqe_submit** %8, align 8
  %13 = getelementptr inbounds %struct.sqe_submit, %struct.sqe_submit* %12, i32 0, i32 2
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = call i8* @READ_ONCE(i32 %16)
  %18 = load %struct.io_kiocb*, %struct.io_kiocb** %7, align 8
  %19 = getelementptr inbounds %struct.io_kiocb, %struct.io_kiocb* %18, i32 0, i32 1
  store i8* %17, i8** %19, align 8
  %20 = load %struct.sqe_submit*, %struct.sqe_submit** %8, align 8
  %21 = getelementptr inbounds %struct.sqe_submit, %struct.sqe_submit* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.io_ring_ctx*, %struct.io_ring_ctx** %6, align 8
  %24 = getelementptr inbounds %struct.io_ring_ctx, %struct.io_ring_ctx* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp sge i64 %22, %25
  %27 = zext i1 %26 to i32
  %28 = call i64 @unlikely(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %4
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %5, align 4
  br label %183

33:                                               ; preds = %4
  %34 = load %struct.sqe_submit*, %struct.sqe_submit** %8, align 8
  %35 = getelementptr inbounds %struct.sqe_submit, %struct.sqe_submit* %34, i32 0, i32 2
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i8* @READ_ONCE(i32 %38)
  %40 = ptrtoint i8* %39 to i32
  store i32 %40, i32* %11, align 4
  %41 = load i32, i32* %11, align 4
  switch i32 %41, label %136 [
    i32 138, label %42
    i32 135, label %48
    i32 129, label %64
    i32 134, label %80
    i32 128, label %85
    i32 139, label %90
    i32 137, label %97
    i32 136, label %103
    i32 131, label %109
    i32 132, label %116
    i32 133, label %123
    i32 130, label %130
  ]

42:                                               ; preds = %33
  %43 = load %struct.io_kiocb*, %struct.io_kiocb** %7, align 8
  %44 = load %struct.io_kiocb*, %struct.io_kiocb** %7, align 8
  %45 = getelementptr inbounds %struct.io_kiocb, %struct.io_kiocb* %44, i32 0, i32 1
  %46 = load i8*, i8** %45, align 8
  %47 = call i32 @io_nop(%struct.io_kiocb* %43, i8* %46)
  store i32 %47, i32* %10, align 4
  br label %139

48:                                               ; preds = %33
  %49 = load %struct.sqe_submit*, %struct.sqe_submit** %8, align 8
  %50 = getelementptr inbounds %struct.sqe_submit, %struct.sqe_submit* %49, i32 0, i32 2
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i64 @unlikely(i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %48
  %57 = load i32, i32* @EINVAL, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %5, align 4
  br label %183

59:                                               ; preds = %48
  %60 = load %struct.io_kiocb*, %struct.io_kiocb** %7, align 8
  %61 = load %struct.sqe_submit*, %struct.sqe_submit** %8, align 8
  %62 = load i32, i32* %9, align 4
  %63 = call i32 @io_read(%struct.io_kiocb* %60, %struct.sqe_submit* %61, i32 %62)
  store i32 %63, i32* %10, align 4
  br label %139

64:                                               ; preds = %33
  %65 = load %struct.sqe_submit*, %struct.sqe_submit** %8, align 8
  %66 = getelementptr inbounds %struct.sqe_submit, %struct.sqe_submit* %65, i32 0, i32 2
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i64 @unlikely(i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %64
  %73 = load i32, i32* @EINVAL, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %5, align 4
  br label %183

75:                                               ; preds = %64
  %76 = load %struct.io_kiocb*, %struct.io_kiocb** %7, align 8
  %77 = load %struct.sqe_submit*, %struct.sqe_submit** %8, align 8
  %78 = load i32, i32* %9, align 4
  %79 = call i32 @io_write(%struct.io_kiocb* %76, %struct.sqe_submit* %77, i32 %78)
  store i32 %79, i32* %10, align 4
  br label %139

80:                                               ; preds = %33
  %81 = load %struct.io_kiocb*, %struct.io_kiocb** %7, align 8
  %82 = load %struct.sqe_submit*, %struct.sqe_submit** %8, align 8
  %83 = load i32, i32* %9, align 4
  %84 = call i32 @io_read(%struct.io_kiocb* %81, %struct.sqe_submit* %82, i32 %83)
  store i32 %84, i32* %10, align 4
  br label %139

85:                                               ; preds = %33
  %86 = load %struct.io_kiocb*, %struct.io_kiocb** %7, align 8
  %87 = load %struct.sqe_submit*, %struct.sqe_submit** %8, align 8
  %88 = load i32, i32* %9, align 4
  %89 = call i32 @io_write(%struct.io_kiocb* %86, %struct.sqe_submit* %87, i32 %88)
  store i32 %89, i32* %10, align 4
  br label %139

90:                                               ; preds = %33
  %91 = load %struct.io_kiocb*, %struct.io_kiocb** %7, align 8
  %92 = load %struct.sqe_submit*, %struct.sqe_submit** %8, align 8
  %93 = getelementptr inbounds %struct.sqe_submit, %struct.sqe_submit* %92, i32 0, i32 2
  %94 = load %struct.TYPE_8__*, %struct.TYPE_8__** %93, align 8
  %95 = load i32, i32* %9, align 4
  %96 = call i32 @io_fsync(%struct.io_kiocb* %91, %struct.TYPE_8__* %94, i32 %95)
  store i32 %96, i32* %10, align 4
  br label %139

97:                                               ; preds = %33
  %98 = load %struct.io_kiocb*, %struct.io_kiocb** %7, align 8
  %99 = load %struct.sqe_submit*, %struct.sqe_submit** %8, align 8
  %100 = getelementptr inbounds %struct.sqe_submit, %struct.sqe_submit* %99, i32 0, i32 2
  %101 = load %struct.TYPE_8__*, %struct.TYPE_8__** %100, align 8
  %102 = call i32 @io_poll_add(%struct.io_kiocb* %98, %struct.TYPE_8__* %101)
  store i32 %102, i32* %10, align 4
  br label %139

103:                                              ; preds = %33
  %104 = load %struct.io_kiocb*, %struct.io_kiocb** %7, align 8
  %105 = load %struct.sqe_submit*, %struct.sqe_submit** %8, align 8
  %106 = getelementptr inbounds %struct.sqe_submit, %struct.sqe_submit* %105, i32 0, i32 2
  %107 = load %struct.TYPE_8__*, %struct.TYPE_8__** %106, align 8
  %108 = call i32 @io_poll_remove(%struct.io_kiocb* %104, %struct.TYPE_8__* %107)
  store i32 %108, i32* %10, align 4
  br label %139

109:                                              ; preds = %33
  %110 = load %struct.io_kiocb*, %struct.io_kiocb** %7, align 8
  %111 = load %struct.sqe_submit*, %struct.sqe_submit** %8, align 8
  %112 = getelementptr inbounds %struct.sqe_submit, %struct.sqe_submit* %111, i32 0, i32 2
  %113 = load %struct.TYPE_8__*, %struct.TYPE_8__** %112, align 8
  %114 = load i32, i32* %9, align 4
  %115 = call i32 @io_sync_file_range(%struct.io_kiocb* %110, %struct.TYPE_8__* %113, i32 %114)
  store i32 %115, i32* %10, align 4
  br label %139

116:                                              ; preds = %33
  %117 = load %struct.io_kiocb*, %struct.io_kiocb** %7, align 8
  %118 = load %struct.sqe_submit*, %struct.sqe_submit** %8, align 8
  %119 = getelementptr inbounds %struct.sqe_submit, %struct.sqe_submit* %118, i32 0, i32 2
  %120 = load %struct.TYPE_8__*, %struct.TYPE_8__** %119, align 8
  %121 = load i32, i32* %9, align 4
  %122 = call i32 @io_sendmsg(%struct.io_kiocb* %117, %struct.TYPE_8__* %120, i32 %121)
  store i32 %122, i32* %10, align 4
  br label %139

123:                                              ; preds = %33
  %124 = load %struct.io_kiocb*, %struct.io_kiocb** %7, align 8
  %125 = load %struct.sqe_submit*, %struct.sqe_submit** %8, align 8
  %126 = getelementptr inbounds %struct.sqe_submit, %struct.sqe_submit* %125, i32 0, i32 2
  %127 = load %struct.TYPE_8__*, %struct.TYPE_8__** %126, align 8
  %128 = load i32, i32* %9, align 4
  %129 = call i32 @io_recvmsg(%struct.io_kiocb* %124, %struct.TYPE_8__* %127, i32 %128)
  store i32 %129, i32* %10, align 4
  br label %139

130:                                              ; preds = %33
  %131 = load %struct.io_kiocb*, %struct.io_kiocb** %7, align 8
  %132 = load %struct.sqe_submit*, %struct.sqe_submit** %8, align 8
  %133 = getelementptr inbounds %struct.sqe_submit, %struct.sqe_submit* %132, i32 0, i32 2
  %134 = load %struct.TYPE_8__*, %struct.TYPE_8__** %133, align 8
  %135 = call i32 @io_timeout(%struct.io_kiocb* %131, %struct.TYPE_8__* %134)
  store i32 %135, i32* %10, align 4
  br label %139

136:                                              ; preds = %33
  %137 = load i32, i32* @EINVAL, align 4
  %138 = sub nsw i32 0, %137
  store i32 %138, i32* %10, align 4
  br label %139

139:                                              ; preds = %136, %130, %123, %116, %109, %103, %97, %90, %85, %80, %75, %59, %42
  %140 = load i32, i32* %10, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %144

142:                                              ; preds = %139
  %143 = load i32, i32* %10, align 4
  store i32 %143, i32* %5, align 4
  br label %183

144:                                              ; preds = %139
  %145 = load %struct.io_ring_ctx*, %struct.io_ring_ctx** %6, align 8
  %146 = getelementptr inbounds %struct.io_ring_ctx, %struct.io_ring_ctx* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 8
  %148 = load i32, i32* @IORING_SETUP_IOPOLL, align 4
  %149 = and i32 %147, %148
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %182

151:                                              ; preds = %144
  %152 = load %struct.io_kiocb*, %struct.io_kiocb** %7, align 8
  %153 = getelementptr inbounds %struct.io_kiocb, %struct.io_kiocb* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = load i32, i32* @EAGAIN, align 4
  %156 = sub nsw i32 0, %155
  %157 = icmp eq i32 %154, %156
  br i1 %157, label %158, label %161

158:                                              ; preds = %151
  %159 = load i32, i32* @EAGAIN, align 4
  %160 = sub nsw i32 0, %159
  store i32 %160, i32* %5, align 4
  br label %183

161:                                              ; preds = %151
  %162 = load %struct.sqe_submit*, %struct.sqe_submit** %8, align 8
  %163 = getelementptr inbounds %struct.sqe_submit, %struct.sqe_submit* %162, i32 0, i32 1
  %164 = load i64, i64* %163, align 8
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %170

166:                                              ; preds = %161
  %167 = load %struct.io_ring_ctx*, %struct.io_ring_ctx** %6, align 8
  %168 = getelementptr inbounds %struct.io_ring_ctx, %struct.io_ring_ctx* %167, i32 0, i32 2
  %169 = call i32 @mutex_lock(i32* %168)
  br label %170

170:                                              ; preds = %166, %161
  %171 = load %struct.io_kiocb*, %struct.io_kiocb** %7, align 8
  %172 = call i32 @io_iopoll_req_issued(%struct.io_kiocb* %171)
  %173 = load %struct.sqe_submit*, %struct.sqe_submit** %8, align 8
  %174 = getelementptr inbounds %struct.sqe_submit, %struct.sqe_submit* %173, i32 0, i32 1
  %175 = load i64, i64* %174, align 8
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %181

177:                                              ; preds = %170
  %178 = load %struct.io_ring_ctx*, %struct.io_ring_ctx** %6, align 8
  %179 = getelementptr inbounds %struct.io_ring_ctx, %struct.io_ring_ctx* %178, i32 0, i32 2
  %180 = call i32 @mutex_unlock(i32* %179)
  br label %181

181:                                              ; preds = %177, %170
  br label %182

182:                                              ; preds = %181, %144
  store i32 0, i32* %5, align 4
  br label %183

183:                                              ; preds = %182, %158, %142, %72, %56, %30
  %184 = load i32, i32* %5, align 4
  ret i32 %184
}

declare dso_local i8* @READ_ONCE(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @io_nop(%struct.io_kiocb*, i8*) #1

declare dso_local i32 @io_read(%struct.io_kiocb*, %struct.sqe_submit*, i32) #1

declare dso_local i32 @io_write(%struct.io_kiocb*, %struct.sqe_submit*, i32) #1

declare dso_local i32 @io_fsync(%struct.io_kiocb*, %struct.TYPE_8__*, i32) #1

declare dso_local i32 @io_poll_add(%struct.io_kiocb*, %struct.TYPE_8__*) #1

declare dso_local i32 @io_poll_remove(%struct.io_kiocb*, %struct.TYPE_8__*) #1

declare dso_local i32 @io_sync_file_range(%struct.io_kiocb*, %struct.TYPE_8__*, i32) #1

declare dso_local i32 @io_sendmsg(%struct.io_kiocb*, %struct.TYPE_8__*, i32) #1

declare dso_local i32 @io_recvmsg(%struct.io_kiocb*, %struct.TYPE_8__*, i32) #1

declare dso_local i32 @io_timeout(%struct.io_kiocb*, %struct.TYPE_8__*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @io_iopoll_req_issued(%struct.io_kiocb*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
