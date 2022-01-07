; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_io_uring.c_io_submit_sqe.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_io_uring.c_io_submit_sqe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.io_ring_ctx = type { i32 }
%struct.sqe_submit = type { %struct.io_uring_sqe* }
%struct.io_uring_sqe = type { i32, i32 }
%struct.io_submit_state = type { i32 }
%struct.io_kiocb = type { i32, i32, i32, i32, i32 }

@SQE_VALID_FLAGS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@IOSQE_IO_LINK = common dso_local global i32 0, align 4
@REQ_F_LINK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.io_ring_ctx*, %struct.sqe_submit*, %struct.io_submit_state*, %struct.io_kiocb**)* @io_submit_sqe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @io_submit_sqe(%struct.io_ring_ctx* %0, %struct.sqe_submit* %1, %struct.io_submit_state* %2, %struct.io_kiocb** %3) #0 {
  %5 = alloca %struct.io_ring_ctx*, align 8
  %6 = alloca %struct.sqe_submit*, align 8
  %7 = alloca %struct.io_submit_state*, align 8
  %8 = alloca %struct.io_kiocb**, align 8
  %9 = alloca %struct.io_uring_sqe*, align 8
  %10 = alloca %struct.io_kiocb*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.io_kiocb*, align 8
  store %struct.io_ring_ctx* %0, %struct.io_ring_ctx** %5, align 8
  store %struct.sqe_submit* %1, %struct.sqe_submit** %6, align 8
  store %struct.io_submit_state* %2, %struct.io_submit_state** %7, align 8
  store %struct.io_kiocb** %3, %struct.io_kiocb*** %8, align 8
  %13 = load %struct.sqe_submit*, %struct.sqe_submit** %6, align 8
  %14 = getelementptr inbounds %struct.sqe_submit, %struct.sqe_submit* %13, i32 0, i32 0
  %15 = load %struct.io_uring_sqe*, %struct.io_uring_sqe** %14, align 8
  %16 = getelementptr inbounds %struct.io_uring_sqe, %struct.io_uring_sqe* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @SQE_VALID_FLAGS, align 4
  %19 = xor i32 %18, -1
  %20 = and i32 %17, %19
  %21 = call i64 @unlikely(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %4
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %11, align 4
  br label %52

26:                                               ; preds = %4
  %27 = load %struct.io_ring_ctx*, %struct.io_ring_ctx** %5, align 8
  %28 = load %struct.io_submit_state*, %struct.io_submit_state** %7, align 8
  %29 = call %struct.io_kiocb* @io_get_req(%struct.io_ring_ctx* %27, %struct.io_submit_state* %28)
  store %struct.io_kiocb* %29, %struct.io_kiocb** %10, align 8
  %30 = load %struct.io_kiocb*, %struct.io_kiocb** %10, align 8
  %31 = icmp ne %struct.io_kiocb* %30, null
  %32 = xor i1 %31, true
  %33 = zext i1 %32 to i32
  %34 = call i64 @unlikely(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %26
  %37 = load i32, i32* @EAGAIN, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %11, align 4
  br label %52

39:                                               ; preds = %26
  %40 = load %struct.io_ring_ctx*, %struct.io_ring_ctx** %5, align 8
  %41 = load %struct.sqe_submit*, %struct.sqe_submit** %6, align 8
  %42 = load %struct.io_submit_state*, %struct.io_submit_state** %7, align 8
  %43 = load %struct.io_kiocb*, %struct.io_kiocb** %10, align 8
  %44 = call i32 @io_req_set_file(%struct.io_ring_ctx* %40, %struct.sqe_submit* %41, %struct.io_submit_state* %42, %struct.io_kiocb* %43)
  store i32 %44, i32* %11, align 4
  %45 = load i32, i32* %11, align 4
  %46 = call i64 @unlikely(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %61

48:                                               ; preds = %39
  br label %49

49:                                               ; preds = %82, %48
  %50 = load %struct.io_kiocb*, %struct.io_kiocb** %10, align 8
  %51 = call i32 @io_free_req(%struct.io_kiocb* %50)
  br label %52

52:                                               ; preds = %49, %36, %23
  %53 = load %struct.io_ring_ctx*, %struct.io_ring_ctx** %5, align 8
  %54 = load %struct.sqe_submit*, %struct.sqe_submit** %6, align 8
  %55 = getelementptr inbounds %struct.sqe_submit, %struct.sqe_submit* %54, i32 0, i32 0
  %56 = load %struct.io_uring_sqe*, %struct.io_uring_sqe** %55, align 8
  %57 = getelementptr inbounds %struct.io_uring_sqe, %struct.io_uring_sqe* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %11, align 4
  %60 = call i32 @io_cqring_add_event(%struct.io_ring_ctx* %53, i32 %58, i32 %59)
  br label %128

61:                                               ; preds = %39
  %62 = load %struct.sqe_submit*, %struct.sqe_submit** %6, align 8
  %63 = getelementptr inbounds %struct.sqe_submit, %struct.sqe_submit* %62, i32 0, i32 0
  %64 = load %struct.io_uring_sqe*, %struct.io_uring_sqe** %63, align 8
  %65 = getelementptr inbounds %struct.io_uring_sqe, %struct.io_uring_sqe* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.io_kiocb*, %struct.io_kiocb** %10, align 8
  %68 = getelementptr inbounds %struct.io_kiocb, %struct.io_kiocb* %67, i32 0, i32 4
  store i32 %66, i32* %68, align 4
  %69 = load %struct.io_kiocb**, %struct.io_kiocb*** %8, align 8
  %70 = load %struct.io_kiocb*, %struct.io_kiocb** %69, align 8
  %71 = icmp ne %struct.io_kiocb* %70, null
  br i1 %71, label %72, label %98

72:                                               ; preds = %61
  %73 = load %struct.io_kiocb**, %struct.io_kiocb*** %8, align 8
  %74 = load %struct.io_kiocb*, %struct.io_kiocb** %73, align 8
  store %struct.io_kiocb* %74, %struct.io_kiocb** %12, align 8
  %75 = load %struct.sqe_submit*, %struct.sqe_submit** %6, align 8
  %76 = getelementptr inbounds %struct.sqe_submit, %struct.sqe_submit* %75, i32 0, i32 0
  %77 = load %struct.io_uring_sqe*, %struct.io_uring_sqe** %76, align 8
  %78 = load i32, i32* @GFP_KERNEL, align 4
  %79 = call %struct.io_uring_sqe* @kmemdup(%struct.io_uring_sqe* %77, i32 8, i32 %78)
  store %struct.io_uring_sqe* %79, %struct.io_uring_sqe** %9, align 8
  %80 = load %struct.io_uring_sqe*, %struct.io_uring_sqe** %9, align 8
  %81 = icmp ne %struct.io_uring_sqe* %80, null
  br i1 %81, label %85, label %82

82:                                               ; preds = %72
  %83 = load i32, i32* @EAGAIN, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %11, align 4
  br label %49

85:                                               ; preds = %72
  %86 = load %struct.io_uring_sqe*, %struct.io_uring_sqe** %9, align 8
  %87 = load %struct.sqe_submit*, %struct.sqe_submit** %6, align 8
  %88 = getelementptr inbounds %struct.sqe_submit, %struct.sqe_submit* %87, i32 0, i32 0
  store %struct.io_uring_sqe* %86, %struct.io_uring_sqe** %88, align 8
  %89 = load %struct.io_kiocb*, %struct.io_kiocb** %10, align 8
  %90 = getelementptr inbounds %struct.io_kiocb, %struct.io_kiocb* %89, i32 0, i32 1
  %91 = load %struct.sqe_submit*, %struct.sqe_submit** %6, align 8
  %92 = call i32 @memcpy(i32* %90, %struct.sqe_submit* %91, i32 8)
  %93 = load %struct.io_kiocb*, %struct.io_kiocb** %10, align 8
  %94 = getelementptr inbounds %struct.io_kiocb, %struct.io_kiocb* %93, i32 0, i32 3
  %95 = load %struct.io_kiocb*, %struct.io_kiocb** %12, align 8
  %96 = getelementptr inbounds %struct.io_kiocb, %struct.io_kiocb* %95, i32 0, i32 0
  %97 = call i32 @list_add_tail(i32* %94, i32* %96)
  br label %128

98:                                               ; preds = %61
  %99 = load %struct.sqe_submit*, %struct.sqe_submit** %6, align 8
  %100 = getelementptr inbounds %struct.sqe_submit, %struct.sqe_submit* %99, i32 0, i32 0
  %101 = load %struct.io_uring_sqe*, %struct.io_uring_sqe** %100, align 8
  %102 = getelementptr inbounds %struct.io_uring_sqe, %struct.io_uring_sqe* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* @IOSQE_IO_LINK, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %122

107:                                              ; preds = %98
  %108 = load i32, i32* @REQ_F_LINK, align 4
  %109 = load %struct.io_kiocb*, %struct.io_kiocb** %10, align 8
  %110 = getelementptr inbounds %struct.io_kiocb, %struct.io_kiocb* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 4
  %112 = or i32 %111, %108
  store i32 %112, i32* %110, align 4
  %113 = load %struct.io_kiocb*, %struct.io_kiocb** %10, align 8
  %114 = getelementptr inbounds %struct.io_kiocb, %struct.io_kiocb* %113, i32 0, i32 1
  %115 = load %struct.sqe_submit*, %struct.sqe_submit** %6, align 8
  %116 = call i32 @memcpy(i32* %114, %struct.sqe_submit* %115, i32 8)
  %117 = load %struct.io_kiocb*, %struct.io_kiocb** %10, align 8
  %118 = getelementptr inbounds %struct.io_kiocb, %struct.io_kiocb* %117, i32 0, i32 0
  %119 = call i32 @INIT_LIST_HEAD(i32* %118)
  %120 = load %struct.io_kiocb*, %struct.io_kiocb** %10, align 8
  %121 = load %struct.io_kiocb**, %struct.io_kiocb*** %8, align 8
  store %struct.io_kiocb* %120, %struct.io_kiocb** %121, align 8
  br label %127

122:                                              ; preds = %98
  %123 = load %struct.io_ring_ctx*, %struct.io_ring_ctx** %5, align 8
  %124 = load %struct.io_kiocb*, %struct.io_kiocb** %10, align 8
  %125 = load %struct.sqe_submit*, %struct.sqe_submit** %6, align 8
  %126 = call i32 @io_queue_sqe(%struct.io_ring_ctx* %123, %struct.io_kiocb* %124, %struct.sqe_submit* %125)
  br label %127

127:                                              ; preds = %122, %107
  br label %128

128:                                              ; preds = %52, %127, %85
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.io_kiocb* @io_get_req(%struct.io_ring_ctx*, %struct.io_submit_state*) #1

declare dso_local i32 @io_req_set_file(%struct.io_ring_ctx*, %struct.sqe_submit*, %struct.io_submit_state*, %struct.io_kiocb*) #1

declare dso_local i32 @io_free_req(%struct.io_kiocb*) #1

declare dso_local i32 @io_cqring_add_event(%struct.io_ring_ctx*, i32, i32) #1

declare dso_local %struct.io_uring_sqe* @kmemdup(%struct.io_uring_sqe*, i32, i32) #1

declare dso_local i32 @memcpy(i32*, %struct.sqe_submit*, i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @io_queue_sqe(%struct.io_ring_ctx*, %struct.io_kiocb*, %struct.sqe_submit*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
