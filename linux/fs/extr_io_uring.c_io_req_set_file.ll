; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_io_uring.c_io_req_set_file.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_io_uring.c_io_req_set_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.io_ring_ctx = type { i32, i32* }
%struct.sqe_submit = type { i64, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.io_submit_state = type { i32 }
%struct.io_kiocb = type { i32, i32, i32 }

@IOSQE_IO_DRAIN = common dso_local global i32 0, align 4
@REQ_F_IO_DRAIN = common dso_local global i32 0, align 4
@IOSQE_FIXED_FILE = common dso_local global i32 0, align 4
@EBADF = common dso_local global i32 0, align 4
@REQ_F_FIXED_FILE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.io_ring_ctx*, %struct.sqe_submit*, %struct.io_submit_state*, %struct.io_kiocb*)* @io_req_set_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @io_req_set_file(%struct.io_ring_ctx* %0, %struct.sqe_submit* %1, %struct.io_submit_state* %2, %struct.io_kiocb* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.io_ring_ctx*, align 8
  %7 = alloca %struct.sqe_submit*, align 8
  %8 = alloca %struct.io_submit_state*, align 8
  %9 = alloca %struct.io_kiocb*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.io_ring_ctx* %0, %struct.io_ring_ctx** %6, align 8
  store %struct.sqe_submit* %1, %struct.sqe_submit** %7, align 8
  store %struct.io_submit_state* %2, %struct.io_submit_state** %8, align 8
  store %struct.io_kiocb* %3, %struct.io_kiocb** %9, align 8
  %12 = load %struct.sqe_submit*, %struct.sqe_submit** %7, align 8
  %13 = getelementptr inbounds %struct.sqe_submit, %struct.sqe_submit* %12, i32 0, i32 1
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i8* @READ_ONCE(i32 %16)
  %18 = ptrtoint i8* %17 to i32
  store i32 %18, i32* %10, align 4
  %19 = load %struct.sqe_submit*, %struct.sqe_submit** %7, align 8
  %20 = getelementptr inbounds %struct.sqe_submit, %struct.sqe_submit* %19, i32 0, i32 1
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i8* @READ_ONCE(i32 %23)
  %25 = ptrtoint i8* %24 to i32
  store i32 %25, i32* %11, align 4
  %26 = load i32, i32* %10, align 4
  %27 = load i32, i32* @IOSQE_IO_DRAIN, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %4
  %31 = load i32, i32* @REQ_F_IO_DRAIN, align 4
  %32 = load %struct.io_kiocb*, %struct.io_kiocb** %9, align 8
  %33 = getelementptr inbounds %struct.io_kiocb, %struct.io_kiocb* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = or i32 %34, %31
  store i32 %35, i32* %33, align 4
  br label %36

36:                                               ; preds = %30, %4
  %37 = load %struct.sqe_submit*, %struct.sqe_submit** %7, align 8
  %38 = getelementptr inbounds %struct.sqe_submit, %struct.sqe_submit* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.io_kiocb*, %struct.io_kiocb** %9, align 8
  %41 = getelementptr inbounds %struct.io_kiocb, %struct.io_kiocb* %40, i32 0, i32 2
  store i32 %39, i32* %41, align 4
  %42 = load %struct.sqe_submit*, %struct.sqe_submit** %7, align 8
  %43 = getelementptr inbounds %struct.sqe_submit, %struct.sqe_submit* %42, i32 0, i32 1
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = call i32 @io_op_needs_file(%struct.TYPE_2__* %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %36
  store i32 0, i32* %5, align 4
  br label %114

48:                                               ; preds = %36
  %49 = load i32, i32* %10, align 4
  %50 = load i32, i32* @IOSQE_FIXED_FILE, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %87

53:                                               ; preds = %48
  %54 = load %struct.io_ring_ctx*, %struct.io_ring_ctx** %6, align 8
  %55 = getelementptr inbounds %struct.io_ring_ctx, %struct.io_ring_ctx* %54, i32 0, i32 1
  %56 = load i32*, i32** %55, align 8
  %57 = icmp ne i32* %56, null
  br i1 %57, label %58, label %64

58:                                               ; preds = %53
  %59 = load i32, i32* %11, align 4
  %60 = load %struct.io_ring_ctx*, %struct.io_ring_ctx** %6, align 8
  %61 = getelementptr inbounds %struct.io_ring_ctx, %struct.io_ring_ctx* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = icmp uge i32 %59, %62
  br label %64

64:                                               ; preds = %58, %53
  %65 = phi i1 [ true, %53 ], [ %63, %58 ]
  %66 = zext i1 %65 to i32
  %67 = call i64 @unlikely(i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %64
  %70 = load i32, i32* @EBADF, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %5, align 4
  br label %114

72:                                               ; preds = %64
  %73 = load %struct.io_ring_ctx*, %struct.io_ring_ctx** %6, align 8
  %74 = getelementptr inbounds %struct.io_ring_ctx, %struct.io_ring_ctx* %73, i32 0, i32 1
  %75 = load i32*, i32** %74, align 8
  %76 = load i32, i32* %11, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %75, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.io_kiocb*, %struct.io_kiocb** %9, align 8
  %81 = getelementptr inbounds %struct.io_kiocb, %struct.io_kiocb* %80, i32 0, i32 0
  store i32 %79, i32* %81, align 4
  %82 = load i32, i32* @REQ_F_FIXED_FILE, align 4
  %83 = load %struct.io_kiocb*, %struct.io_kiocb** %9, align 8
  %84 = getelementptr inbounds %struct.io_kiocb, %struct.io_kiocb* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = or i32 %85, %82
  store i32 %86, i32* %84, align 4
  br label %113

87:                                               ; preds = %48
  %88 = load %struct.sqe_submit*, %struct.sqe_submit** %7, align 8
  %89 = getelementptr inbounds %struct.sqe_submit, %struct.sqe_submit* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %87
  %93 = load i32, i32* @EBADF, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %5, align 4
  br label %114

95:                                               ; preds = %87
  %96 = load %struct.io_submit_state*, %struct.io_submit_state** %8, align 8
  %97 = load i32, i32* %11, align 4
  %98 = call i32 @io_file_get(%struct.io_submit_state* %96, i32 %97)
  %99 = load %struct.io_kiocb*, %struct.io_kiocb** %9, align 8
  %100 = getelementptr inbounds %struct.io_kiocb, %struct.io_kiocb* %99, i32 0, i32 0
  store i32 %98, i32* %100, align 4
  %101 = load %struct.io_kiocb*, %struct.io_kiocb** %9, align 8
  %102 = getelementptr inbounds %struct.io_kiocb, %struct.io_kiocb* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = icmp ne i32 %103, 0
  %105 = xor i1 %104, true
  %106 = zext i1 %105 to i32
  %107 = call i64 @unlikely(i32 %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %112

109:                                              ; preds = %95
  %110 = load i32, i32* @EBADF, align 4
  %111 = sub nsw i32 0, %110
  store i32 %111, i32* %5, align 4
  br label %114

112:                                              ; preds = %95
  br label %113

113:                                              ; preds = %112, %72
  store i32 0, i32* %5, align 4
  br label %114

114:                                              ; preds = %113, %109, %92, %69, %47
  %115 = load i32, i32* %5, align 4
  ret i32 %115
}

declare dso_local i8* @READ_ONCE(i32) #1

declare dso_local i32 @io_op_needs_file(%struct.TYPE_2__*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @io_file_get(%struct.io_submit_state*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
