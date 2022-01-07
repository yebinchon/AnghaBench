; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_io_uring.c_io_ring_submit.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_io_uring.c_io_ring_submit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.io_ring_ctx = type { i32 }
%struct.io_submit_state = type { i32 }
%struct.io_kiocb = type { i32, i32, i32, i32 }
%struct.sqe_submit = type { i32, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@IO_PLUG_THRESHOLD = common dso_local global i32 0, align 4
@IOSQE_IO_LINK = common dso_local global i32 0, align 4
@IOSQE_IO_DRAIN = common dso_local global i32 0, align 4
@REQ_F_IO_DRAIN = common dso_local global i32 0, align 4
@REQ_F_SHADOW_DRAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.io_ring_ctx*, i32)* @io_ring_submit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @io_ring_submit(%struct.io_ring_ctx* %0, i32 %1) #0 {
  %3 = alloca %struct.io_ring_ctx*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.io_submit_state, align 4
  %6 = alloca %struct.io_submit_state*, align 8
  %7 = alloca %struct.io_kiocb*, align 8
  %8 = alloca %struct.io_kiocb*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.sqe_submit, align 8
  store %struct.io_ring_ctx* %0, %struct.io_ring_ctx** %3, align 8
  store i32 %1, i32* %4, align 4
  store %struct.io_submit_state* null, %struct.io_submit_state** %6, align 8
  store %struct.io_kiocb* null, %struct.io_kiocb** %7, align 8
  store %struct.io_kiocb* null, %struct.io_kiocb** %8, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %11, align 4
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @IO_PLUG_THRESHOLD, align 4
  %15 = icmp ugt i32 %13, %14
  br i1 %15, label %16, label %20

16:                                               ; preds = %2
  %17 = load %struct.io_ring_ctx*, %struct.io_ring_ctx** %3, align 8
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @io_submit_state_start(%struct.io_submit_state* %5, %struct.io_ring_ctx* %17, i32 %18)
  store %struct.io_submit_state* %5, %struct.io_submit_state** %6, align 8
  br label %20

20:                                               ; preds = %16, %2
  store i32 0, i32* %10, align 4
  br label %21

21:                                               ; preds = %101, %20
  %22 = load i32, i32* %10, align 4
  %23 = load i32, i32* %4, align 4
  %24 = icmp ult i32 %22, %23
  br i1 %24, label %25, label %104

25:                                               ; preds = %21
  %26 = load %struct.io_ring_ctx*, %struct.io_ring_ctx** %3, align 8
  %27 = call i32 @io_get_sqring(%struct.io_ring_ctx* %26, %struct.sqe_submit* %12)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %25
  br label %104

30:                                               ; preds = %25
  %31 = load i32, i32* %9, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %43, label %33

33:                                               ; preds = %30
  %34 = load %struct.io_kiocb*, %struct.io_kiocb** %7, align 8
  %35 = icmp ne %struct.io_kiocb* %34, null
  br i1 %35, label %36, label %43

36:                                               ; preds = %33
  %37 = load %struct.io_ring_ctx*, %struct.io_ring_ctx** %3, align 8
  %38 = load %struct.io_kiocb*, %struct.io_kiocb** %7, align 8
  %39 = load %struct.io_kiocb*, %struct.io_kiocb** %7, align 8
  %40 = getelementptr inbounds %struct.io_kiocb, %struct.io_kiocb* %39, i32 0, i32 1
  %41 = load %struct.io_kiocb*, %struct.io_kiocb** %8, align 8
  %42 = call i32 @io_queue_link_head(%struct.io_ring_ctx* %37, %struct.io_kiocb* %38, i32* %40, %struct.io_kiocb* %41)
  store %struct.io_kiocb* null, %struct.io_kiocb** %7, align 8
  store %struct.io_kiocb* null, %struct.io_kiocb** %8, align 8
  br label %43

43:                                               ; preds = %36, %33, %30
  %44 = getelementptr inbounds %struct.sqe_submit, %struct.sqe_submit* %12, i32 0, i32 4
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @IOSQE_IO_LINK, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  %51 = zext i1 %50 to i32
  store i32 %51, i32* %9, align 4
  %52 = load %struct.io_kiocb*, %struct.io_kiocb** %7, align 8
  %53 = icmp ne %struct.io_kiocb* %52, null
  br i1 %53, label %54, label %91

54:                                               ; preds = %43
  %55 = getelementptr inbounds %struct.sqe_submit, %struct.sqe_submit* %12, i32 0, i32 4
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @IOSQE_IO_DRAIN, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %91

62:                                               ; preds = %54
  %63 = load %struct.io_kiocb*, %struct.io_kiocb** %8, align 8
  %64 = icmp ne %struct.io_kiocb* %63, null
  br i1 %64, label %86, label %65

65:                                               ; preds = %62
  %66 = load %struct.io_ring_ctx*, %struct.io_ring_ctx** %3, align 8
  %67 = call %struct.io_kiocb* @io_get_req(%struct.io_ring_ctx* %66, i32* null)
  store %struct.io_kiocb* %67, %struct.io_kiocb** %8, align 8
  %68 = load %struct.io_kiocb*, %struct.io_kiocb** %8, align 8
  %69 = icmp ne %struct.io_kiocb* %68, null
  %70 = xor i1 %69, true
  %71 = zext i1 %70 to i32
  %72 = call i64 @unlikely(i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %65
  br label %92

75:                                               ; preds = %65
  %76 = load i32, i32* @REQ_F_IO_DRAIN, align 4
  %77 = load i32, i32* @REQ_F_SHADOW_DRAIN, align 4
  %78 = or i32 %76, %77
  %79 = load %struct.io_kiocb*, %struct.io_kiocb** %8, align 8
  %80 = getelementptr inbounds %struct.io_kiocb, %struct.io_kiocb* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = or i32 %81, %78
  store i32 %82, i32* %80, align 4
  %83 = load %struct.io_kiocb*, %struct.io_kiocb** %8, align 8
  %84 = getelementptr inbounds %struct.io_kiocb, %struct.io_kiocb* %83, i32 0, i32 3
  %85 = call i32 @refcount_dec(i32* %84)
  br label %86

86:                                               ; preds = %75, %62
  %87 = getelementptr inbounds %struct.sqe_submit, %struct.sqe_submit* %12, i32 0, i32 3
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.io_kiocb*, %struct.io_kiocb** %8, align 8
  %90 = getelementptr inbounds %struct.io_kiocb, %struct.io_kiocb* %89, i32 0, i32 2
  store i32 %88, i32* %90, align 4
  br label %91

91:                                               ; preds = %86, %54, %43
  br label %92

92:                                               ; preds = %91, %74
  %93 = getelementptr inbounds %struct.sqe_submit, %struct.sqe_submit* %12, i32 0, i32 0
  store i32 1, i32* %93, align 8
  %94 = getelementptr inbounds %struct.sqe_submit, %struct.sqe_submit* %12, i32 0, i32 1
  store i32 0, i32* %94, align 4
  %95 = getelementptr inbounds %struct.sqe_submit, %struct.sqe_submit* %12, i32 0, i32 2
  store i32 0, i32* %95, align 8
  %96 = load i32, i32* %11, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %11, align 4
  %98 = load %struct.io_ring_ctx*, %struct.io_ring_ctx** %3, align 8
  %99 = load %struct.io_submit_state*, %struct.io_submit_state** %6, align 8
  %100 = call i32 @io_submit_sqe(%struct.io_ring_ctx* %98, %struct.sqe_submit* %12, %struct.io_submit_state* %99, %struct.io_kiocb** %7)
  br label %101

101:                                              ; preds = %92
  %102 = load i32, i32* %10, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %10, align 4
  br label %21

104:                                              ; preds = %29, %21
  %105 = load %struct.io_kiocb*, %struct.io_kiocb** %7, align 8
  %106 = icmp ne %struct.io_kiocb* %105, null
  br i1 %106, label %107, label %114

107:                                              ; preds = %104
  %108 = load %struct.io_ring_ctx*, %struct.io_ring_ctx** %3, align 8
  %109 = load %struct.io_kiocb*, %struct.io_kiocb** %7, align 8
  %110 = load %struct.io_kiocb*, %struct.io_kiocb** %7, align 8
  %111 = getelementptr inbounds %struct.io_kiocb, %struct.io_kiocb* %110, i32 0, i32 1
  %112 = load %struct.io_kiocb*, %struct.io_kiocb** %8, align 8
  %113 = call i32 @io_queue_link_head(%struct.io_ring_ctx* %108, %struct.io_kiocb* %109, i32* %111, %struct.io_kiocb* %112)
  br label %114

114:                                              ; preds = %107, %104
  %115 = load %struct.io_submit_state*, %struct.io_submit_state** %6, align 8
  %116 = icmp ne %struct.io_submit_state* %115, null
  br i1 %116, label %117, label %120

117:                                              ; preds = %114
  %118 = load %struct.io_submit_state*, %struct.io_submit_state** %6, align 8
  %119 = call i32 @io_submit_state_end(%struct.io_submit_state* %118)
  br label %120

120:                                              ; preds = %117, %114
  %121 = load %struct.io_ring_ctx*, %struct.io_ring_ctx** %3, align 8
  %122 = call i32 @io_commit_sqring(%struct.io_ring_ctx* %121)
  %123 = load i32, i32* %11, align 4
  ret i32 %123
}

declare dso_local i32 @io_submit_state_start(%struct.io_submit_state*, %struct.io_ring_ctx*, i32) #1

declare dso_local i32 @io_get_sqring(%struct.io_ring_ctx*, %struct.sqe_submit*) #1

declare dso_local i32 @io_queue_link_head(%struct.io_ring_ctx*, %struct.io_kiocb*, i32*, %struct.io_kiocb*) #1

declare dso_local %struct.io_kiocb* @io_get_req(%struct.io_ring_ctx*, i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @refcount_dec(i32*) #1

declare dso_local i32 @io_submit_sqe(%struct.io_ring_ctx*, %struct.sqe_submit*, %struct.io_submit_state*, %struct.io_kiocb**) #1

declare dso_local i32 @io_submit_state_end(%struct.io_submit_state*) #1

declare dso_local i32 @io_commit_sqring(%struct.io_ring_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
