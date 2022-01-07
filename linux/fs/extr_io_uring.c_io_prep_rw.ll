; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_io_uring.c_io_prep_rw.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_io_uring.c_io_prep_rw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.io_kiocb = type { i64, i32, %struct.TYPE_9__*, %struct.kiocb, %struct.io_ring_ctx* }
%struct.TYPE_9__ = type { i32 }
%struct.kiocb = type { i32, i32, i32, %struct.TYPE_8__*, i32, i8* }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.io_ring_ctx = type { i32 }
%struct.sqe_submit = type { %struct.io_uring_sqe* }
%struct.io_uring_sqe = type { i32, i32, i32 }
%struct.TYPE_10__ = type { i32 }

@EBADF = common dso_local global i32 0, align 4
@REQ_F_ISREG = common dso_local global i32 0, align 4
@REQ_F_MUST_PUNT = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@IOCB_NOWAIT = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4
@REQ_F_NOWAIT = common dso_local global i32 0, align 4
@IORING_SETUP_IOPOLL = common dso_local global i32 0, align 4
@IOCB_DIRECT = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@IOCB_HIPRI = common dso_local global i32 0, align 4
@io_complete_rw_iopoll = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@io_complete_rw = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.io_kiocb*, %struct.sqe_submit*, i32)* @io_prep_rw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @io_prep_rw(%struct.io_kiocb* %0, %struct.sqe_submit* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.io_kiocb*, align 8
  %6 = alloca %struct.sqe_submit*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.io_uring_sqe*, align 8
  %9 = alloca %struct.io_ring_ctx*, align 8
  %10 = alloca %struct.kiocb*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.io_kiocb* %0, %struct.io_kiocb** %5, align 8
  store %struct.sqe_submit* %1, %struct.sqe_submit** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load %struct.sqe_submit*, %struct.sqe_submit** %6, align 8
  %14 = getelementptr inbounds %struct.sqe_submit, %struct.sqe_submit* %13, i32 0, i32 0
  %15 = load %struct.io_uring_sqe*, %struct.io_uring_sqe** %14, align 8
  store %struct.io_uring_sqe* %15, %struct.io_uring_sqe** %8, align 8
  %16 = load %struct.io_kiocb*, %struct.io_kiocb** %5, align 8
  %17 = getelementptr inbounds %struct.io_kiocb, %struct.io_kiocb* %16, i32 0, i32 4
  %18 = load %struct.io_ring_ctx*, %struct.io_ring_ctx** %17, align 8
  store %struct.io_ring_ctx* %18, %struct.io_ring_ctx** %9, align 8
  %19 = load %struct.io_kiocb*, %struct.io_kiocb** %5, align 8
  %20 = getelementptr inbounds %struct.io_kiocb, %struct.io_kiocb* %19, i32 0, i32 3
  store %struct.kiocb* %20, %struct.kiocb** %10, align 8
  %21 = load %struct.io_kiocb*, %struct.io_kiocb** %5, align 8
  %22 = getelementptr inbounds %struct.io_kiocb, %struct.io_kiocb* %21, i32 0, i32 2
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %22, align 8
  %24 = icmp ne %struct.TYPE_9__* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %3
  %26 = load i32, i32* @EBADF, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %4, align 4
  br label %197

28:                                               ; preds = %3
  %29 = load %struct.io_kiocb*, %struct.io_kiocb** %5, align 8
  %30 = getelementptr inbounds %struct.io_kiocb, %struct.io_kiocb* %29, i32 0, i32 2
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %30, align 8
  %32 = call %struct.TYPE_10__* @file_inode(%struct.TYPE_9__* %31)
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i64 @S_ISREG(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %28
  %38 = load i32, i32* @REQ_F_ISREG, align 4
  %39 = load %struct.io_kiocb*, %struct.io_kiocb** %5, align 8
  %40 = getelementptr inbounds %struct.io_kiocb, %struct.io_kiocb* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = or i32 %41, %38
  store i32 %42, i32* %40, align 8
  br label %43

43:                                               ; preds = %37, %28
  %44 = load i32, i32* %7, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %60

46:                                               ; preds = %43
  %47 = load %struct.io_kiocb*, %struct.io_kiocb** %5, align 8
  %48 = getelementptr inbounds %struct.io_kiocb, %struct.io_kiocb* %47, i32 0, i32 2
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %48, align 8
  %50 = call i32 @io_file_supports_async(%struct.TYPE_9__* %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %60, label %52

52:                                               ; preds = %46
  %53 = load i32, i32* @REQ_F_MUST_PUNT, align 4
  %54 = load %struct.io_kiocb*, %struct.io_kiocb** %5, align 8
  %55 = getelementptr inbounds %struct.io_kiocb, %struct.io_kiocb* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = or i32 %56, %53
  store i32 %57, i32* %55, align 8
  %58 = load i32, i32* @EAGAIN, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %4, align 4
  br label %197

60:                                               ; preds = %46, %43
  %61 = load %struct.io_uring_sqe*, %struct.io_uring_sqe** %8, align 8
  %62 = getelementptr inbounds %struct.io_uring_sqe, %struct.io_uring_sqe* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = call i8* @READ_ONCE(i32 %63)
  %65 = load %struct.kiocb*, %struct.kiocb** %10, align 8
  %66 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %65, i32 0, i32 5
  store i8* %64, i8** %66, align 8
  %67 = load %struct.kiocb*, %struct.kiocb** %10, align 8
  %68 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %67, i32 0, i32 3
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %68, align 8
  %70 = call i32 @iocb_flags(%struct.TYPE_8__* %69)
  %71 = load %struct.kiocb*, %struct.kiocb** %10, align 8
  %72 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %71, i32 0, i32 0
  store i32 %70, i32* %72, align 8
  %73 = load %struct.kiocb*, %struct.kiocb** %10, align 8
  %74 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %73, i32 0, i32 3
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %74, align 8
  %76 = call i32 @file_write_hint(%struct.TYPE_8__* %75)
  %77 = call i32 @ki_hint_validate(i32 %76)
  %78 = load %struct.kiocb*, %struct.kiocb** %10, align 8
  %79 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %78, i32 0, i32 4
  store i32 %77, i32* %79, align 8
  %80 = load %struct.io_uring_sqe*, %struct.io_uring_sqe** %8, align 8
  %81 = getelementptr inbounds %struct.io_uring_sqe, %struct.io_uring_sqe* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = call i8* @READ_ONCE(i32 %82)
  %84 = ptrtoint i8* %83 to i32
  store i32 %84, i32* %11, align 4
  %85 = load i32, i32* %11, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %98

87:                                               ; preds = %60
  %88 = load i32, i32* %11, align 4
  %89 = call i32 @ioprio_check_cap(i32 %88)
  store i32 %89, i32* %12, align 4
  %90 = load i32, i32* %12, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %87
  %93 = load i32, i32* %12, align 4
  store i32 %93, i32* %4, align 4
  br label %197

94:                                               ; preds = %87
  %95 = load i32, i32* %11, align 4
  %96 = load %struct.kiocb*, %struct.kiocb** %10, align 8
  %97 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %96, i32 0, i32 1
  store i32 %95, i32* %97, align 4
  br label %102

98:                                               ; preds = %60
  %99 = call i32 (...) @get_current_ioprio()
  %100 = load %struct.kiocb*, %struct.kiocb** %10, align 8
  %101 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %100, i32 0, i32 1
  store i32 %99, i32* %101, align 4
  br label %102

102:                                              ; preds = %98, %94
  %103 = load %struct.kiocb*, %struct.kiocb** %10, align 8
  %104 = load %struct.io_uring_sqe*, %struct.io_uring_sqe** %8, align 8
  %105 = getelementptr inbounds %struct.io_uring_sqe, %struct.io_uring_sqe* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = call i8* @READ_ONCE(i32 %106)
  %108 = call i32 @kiocb_set_rw_flags(%struct.kiocb* %103, i8* %107)
  store i32 %108, i32* %12, align 4
  %109 = load i32, i32* %12, align 4
  %110 = call i64 @unlikely(i32 %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %114

112:                                              ; preds = %102
  %113 = load i32, i32* %12, align 4
  store i32 %113, i32* %4, align 4
  br label %197

114:                                              ; preds = %102
  %115 = load %struct.kiocb*, %struct.kiocb** %10, align 8
  %116 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = load i32, i32* @IOCB_NOWAIT, align 4
  %119 = and i32 %117, %118
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %130, label %121

121:                                              ; preds = %114
  %122 = load %struct.io_kiocb*, %struct.io_kiocb** %5, align 8
  %123 = getelementptr inbounds %struct.io_kiocb, %struct.io_kiocb* %122, i32 0, i32 2
  %124 = load %struct.TYPE_9__*, %struct.TYPE_9__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* @O_NONBLOCK, align 4
  %128 = and i32 %126, %127
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %136

130:                                              ; preds = %121, %114
  %131 = load i32, i32* @REQ_F_NOWAIT, align 4
  %132 = load %struct.io_kiocb*, %struct.io_kiocb** %5, align 8
  %133 = getelementptr inbounds %struct.io_kiocb, %struct.io_kiocb* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 8
  %135 = or i32 %134, %131
  store i32 %135, i32* %133, align 8
  br label %136

136:                                              ; preds = %130, %121
  %137 = load i32, i32* %7, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %145

139:                                              ; preds = %136
  %140 = load i32, i32* @IOCB_NOWAIT, align 4
  %141 = load %struct.kiocb*, %struct.kiocb** %10, align 8
  %142 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = or i32 %143, %140
  store i32 %144, i32* %142, align 8
  br label %145

145:                                              ; preds = %139, %136
  %146 = load %struct.io_ring_ctx*, %struct.io_ring_ctx** %9, align 8
  %147 = getelementptr inbounds %struct.io_ring_ctx, %struct.io_ring_ctx* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = load i32, i32* @IORING_SETUP_IOPOLL, align 4
  %150 = and i32 %148, %149
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %182

152:                                              ; preds = %145
  %153 = load %struct.kiocb*, %struct.kiocb** %10, align 8
  %154 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = load i32, i32* @IOCB_DIRECT, align 4
  %157 = and i32 %155, %156
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %168

159:                                              ; preds = %152
  %160 = load %struct.kiocb*, %struct.kiocb** %10, align 8
  %161 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %160, i32 0, i32 3
  %162 = load %struct.TYPE_8__*, %struct.TYPE_8__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %162, i32 0, i32 0
  %164 = load %struct.TYPE_7__*, %struct.TYPE_7__** %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %171, label %168

168:                                              ; preds = %159, %152
  %169 = load i32, i32* @EOPNOTSUPP, align 4
  %170 = sub nsw i32 0, %169
  store i32 %170, i32* %4, align 4
  br label %197

171:                                              ; preds = %159
  %172 = load i32, i32* @IOCB_HIPRI, align 4
  %173 = load %struct.kiocb*, %struct.kiocb** %10, align 8
  %174 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  %176 = or i32 %175, %172
  store i32 %176, i32* %174, align 8
  %177 = load i32, i32* @io_complete_rw_iopoll, align 4
  %178 = load %struct.kiocb*, %struct.kiocb** %10, align 8
  %179 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %178, i32 0, i32 2
  store i32 %177, i32* %179, align 8
  %180 = load %struct.io_kiocb*, %struct.io_kiocb** %5, align 8
  %181 = getelementptr inbounds %struct.io_kiocb, %struct.io_kiocb* %180, i32 0, i32 0
  store i64 0, i64* %181, align 8
  br label %196

182:                                              ; preds = %145
  %183 = load %struct.kiocb*, %struct.kiocb** %10, align 8
  %184 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 8
  %186 = load i32, i32* @IOCB_HIPRI, align 4
  %187 = and i32 %185, %186
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %192

189:                                              ; preds = %182
  %190 = load i32, i32* @EINVAL, align 4
  %191 = sub nsw i32 0, %190
  store i32 %191, i32* %4, align 4
  br label %197

192:                                              ; preds = %182
  %193 = load i32, i32* @io_complete_rw, align 4
  %194 = load %struct.kiocb*, %struct.kiocb** %10, align 8
  %195 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %194, i32 0, i32 2
  store i32 %193, i32* %195, align 8
  br label %196

196:                                              ; preds = %192, %171
  store i32 0, i32* %4, align 4
  br label %197

197:                                              ; preds = %196, %189, %168, %112, %92, %52, %25
  %198 = load i32, i32* %4, align 4
  ret i32 %198
}

declare dso_local i64 @S_ISREG(i32) #1

declare dso_local %struct.TYPE_10__* @file_inode(%struct.TYPE_9__*) #1

declare dso_local i32 @io_file_supports_async(%struct.TYPE_9__*) #1

declare dso_local i8* @READ_ONCE(i32) #1

declare dso_local i32 @iocb_flags(%struct.TYPE_8__*) #1

declare dso_local i32 @ki_hint_validate(i32) #1

declare dso_local i32 @file_write_hint(%struct.TYPE_8__*) #1

declare dso_local i32 @ioprio_check_cap(i32) #1

declare dso_local i32 @get_current_ioprio(...) #1

declare dso_local i32 @kiocb_set_rw_flags(%struct.kiocb*, i8*) #1

declare dso_local i64 @unlikely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
