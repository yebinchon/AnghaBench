; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_io_uring.c_io_submit_sqes.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_io_uring.c_io_submit_sqes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.io_ring_ctx = type { i32 }
%struct.io_submit_state = type { i32 }
%struct.io_kiocb = type { i32, i32, i32, i32 }
%struct.sqe_submit = type { i32, i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@IO_PLUG_THRESHOLD = common dso_local global i32 0, align 4
@IOSQE_IO_LINK = common dso_local global i32 0, align 4
@IOSQE_IO_DRAIN = common dso_local global i32 0, align 4
@REQ_F_IO_DRAIN = common dso_local global i32 0, align 4
@REQ_F_SHADOW_DRAIN = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.io_ring_ctx*, i32, i32, i32)* @io_submit_sqes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @io_submit_sqes(%struct.io_ring_ctx* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.io_ring_ctx*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.io_submit_state, align 4
  %10 = alloca %struct.io_submit_state*, align 8
  %11 = alloca %struct.io_kiocb*, align 8
  %12 = alloca %struct.io_kiocb*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.sqe_submit, align 8
  store %struct.io_ring_ctx* %0, %struct.io_ring_ctx** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store %struct.io_submit_state* null, %struct.io_submit_state** %10, align 8
  store %struct.io_kiocb* null, %struct.io_kiocb** %11, align 8
  store %struct.io_kiocb* null, %struct.io_kiocb** %12, align 8
  store i32 0, i32* %13, align 4
  store i32 0, i32* %15, align 4
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* @IO_PLUG_THRESHOLD, align 4
  %19 = icmp ugt i32 %17, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %4
  %21 = load %struct.io_ring_ctx*, %struct.io_ring_ctx** %5, align 8
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @io_submit_state_start(%struct.io_submit_state* %9, %struct.io_ring_ctx* %21, i32 %22)
  store %struct.io_submit_state* %9, %struct.io_submit_state** %10, align 8
  br label %24

24:                                               ; preds = %20, %4
  store i32 0, i32* %14, align 4
  br label %25

25:                                               ; preds = %120, %24
  %26 = load i32, i32* %14, align 4
  %27 = load i32, i32* %6, align 4
  %28 = icmp ult i32 %26, %27
  br i1 %28, label %29, label %123

29:                                               ; preds = %25
  %30 = load %struct.io_ring_ctx*, %struct.io_ring_ctx** %5, align 8
  %31 = call i32 @io_get_sqring(%struct.io_ring_ctx* %30, %struct.sqe_submit* %16)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %29
  br label %123

34:                                               ; preds = %29
  %35 = load i32, i32* %13, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %47, label %37

37:                                               ; preds = %34
  %38 = load %struct.io_kiocb*, %struct.io_kiocb** %11, align 8
  %39 = icmp ne %struct.io_kiocb* %38, null
  br i1 %39, label %40, label %47

40:                                               ; preds = %37
  %41 = load %struct.io_ring_ctx*, %struct.io_ring_ctx** %5, align 8
  %42 = load %struct.io_kiocb*, %struct.io_kiocb** %11, align 8
  %43 = load %struct.io_kiocb*, %struct.io_kiocb** %11, align 8
  %44 = getelementptr inbounds %struct.io_kiocb, %struct.io_kiocb* %43, i32 0, i32 1
  %45 = load %struct.io_kiocb*, %struct.io_kiocb** %12, align 8
  %46 = call i32 @io_queue_link_head(%struct.io_ring_ctx* %41, %struct.io_kiocb* %42, i32* %44, %struct.io_kiocb* %45)
  store %struct.io_kiocb* null, %struct.io_kiocb** %11, align 8
  store %struct.io_kiocb* null, %struct.io_kiocb** %12, align 8
  br label %47

47:                                               ; preds = %40, %37, %34
  %48 = getelementptr inbounds %struct.sqe_submit, %struct.sqe_submit* %16, i32 0, i32 3
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @IOSQE_IO_LINK, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  %55 = zext i1 %54 to i32
  store i32 %55, i32* %13, align 4
  %56 = load %struct.io_kiocb*, %struct.io_kiocb** %11, align 8
  %57 = icmp ne %struct.io_kiocb* %56, null
  br i1 %57, label %58, label %95

58:                                               ; preds = %47
  %59 = getelementptr inbounds %struct.sqe_submit, %struct.sqe_submit* %16, i32 0, i32 3
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @IOSQE_IO_DRAIN, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %95

66:                                               ; preds = %58
  %67 = load %struct.io_kiocb*, %struct.io_kiocb** %12, align 8
  %68 = icmp ne %struct.io_kiocb* %67, null
  br i1 %68, label %90, label %69

69:                                               ; preds = %66
  %70 = load %struct.io_ring_ctx*, %struct.io_ring_ctx** %5, align 8
  %71 = call %struct.io_kiocb* @io_get_req(%struct.io_ring_ctx* %70, i32* null)
  store %struct.io_kiocb* %71, %struct.io_kiocb** %12, align 8
  %72 = load %struct.io_kiocb*, %struct.io_kiocb** %12, align 8
  %73 = icmp ne %struct.io_kiocb* %72, null
  %74 = xor i1 %73, true
  %75 = zext i1 %74 to i32
  %76 = call i64 @unlikely(i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %69
  br label %96

79:                                               ; preds = %69
  %80 = load i32, i32* @REQ_F_IO_DRAIN, align 4
  %81 = load i32, i32* @REQ_F_SHADOW_DRAIN, align 4
  %82 = or i32 %80, %81
  %83 = load %struct.io_kiocb*, %struct.io_kiocb** %12, align 8
  %84 = getelementptr inbounds %struct.io_kiocb, %struct.io_kiocb* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = or i32 %85, %82
  store i32 %86, i32* %84, align 4
  %87 = load %struct.io_kiocb*, %struct.io_kiocb** %12, align 8
  %88 = getelementptr inbounds %struct.io_kiocb, %struct.io_kiocb* %87, i32 0, i32 3
  %89 = call i32 @refcount_dec(i32* %88)
  br label %90

90:                                               ; preds = %79, %66
  %91 = getelementptr inbounds %struct.sqe_submit, %struct.sqe_submit* %16, i32 0, i32 4
  %92 = load i32, i32* %91, align 8
  %93 = load %struct.io_kiocb*, %struct.io_kiocb** %12, align 8
  %94 = getelementptr inbounds %struct.io_kiocb, %struct.io_kiocb* %93, i32 0, i32 2
  store i32 %92, i32* %94, align 4
  br label %95

95:                                               ; preds = %90, %58, %47
  br label %96

96:                                               ; preds = %95, %78
  %97 = load i32, i32* %8, align 4
  %98 = call i64 @unlikely(i32 %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %109

100:                                              ; preds = %96
  %101 = load %struct.io_ring_ctx*, %struct.io_ring_ctx** %5, align 8
  %102 = getelementptr inbounds %struct.sqe_submit, %struct.sqe_submit* %16, i32 0, i32 3
  %103 = load %struct.TYPE_2__*, %struct.TYPE_2__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* @EFAULT, align 4
  %107 = sub nsw i32 0, %106
  %108 = call i32 @io_cqring_add_event(%struct.io_ring_ctx* %101, i32 %105, i32 %107)
  br label %119

109:                                              ; preds = %96
  %110 = load i32, i32* %7, align 4
  %111 = getelementptr inbounds %struct.sqe_submit, %struct.sqe_submit* %16, i32 0, i32 0
  store i32 %110, i32* %111, align 8
  %112 = getelementptr inbounds %struct.sqe_submit, %struct.sqe_submit* %16, i32 0, i32 1
  store i32 1, i32* %112, align 4
  %113 = getelementptr inbounds %struct.sqe_submit, %struct.sqe_submit* %16, i32 0, i32 2
  store i32 1, i32* %113, align 8
  %114 = load %struct.io_ring_ctx*, %struct.io_ring_ctx** %5, align 8
  %115 = load %struct.io_submit_state*, %struct.io_submit_state** %10, align 8
  %116 = call i32 @io_submit_sqe(%struct.io_ring_ctx* %114, %struct.sqe_submit* %16, %struct.io_submit_state* %115, %struct.io_kiocb** %11)
  %117 = load i32, i32* %15, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %15, align 4
  br label %119

119:                                              ; preds = %109, %100
  br label %120

120:                                              ; preds = %119
  %121 = load i32, i32* %14, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %14, align 4
  br label %25

123:                                              ; preds = %33, %25
  %124 = load %struct.io_kiocb*, %struct.io_kiocb** %11, align 8
  %125 = icmp ne %struct.io_kiocb* %124, null
  br i1 %125, label %126, label %133

126:                                              ; preds = %123
  %127 = load %struct.io_ring_ctx*, %struct.io_ring_ctx** %5, align 8
  %128 = load %struct.io_kiocb*, %struct.io_kiocb** %11, align 8
  %129 = load %struct.io_kiocb*, %struct.io_kiocb** %11, align 8
  %130 = getelementptr inbounds %struct.io_kiocb, %struct.io_kiocb* %129, i32 0, i32 1
  %131 = load %struct.io_kiocb*, %struct.io_kiocb** %12, align 8
  %132 = call i32 @io_queue_link_head(%struct.io_ring_ctx* %127, %struct.io_kiocb* %128, i32* %130, %struct.io_kiocb* %131)
  br label %133

133:                                              ; preds = %126, %123
  %134 = load %struct.io_submit_state*, %struct.io_submit_state** %10, align 8
  %135 = icmp ne %struct.io_submit_state* %134, null
  br i1 %135, label %136, label %138

136:                                              ; preds = %133
  %137 = call i32 @io_submit_state_end(%struct.io_submit_state* %9)
  br label %138

138:                                              ; preds = %136, %133
  %139 = load i32, i32* %15, align 4
  ret i32 %139
}

declare dso_local i32 @io_submit_state_start(%struct.io_submit_state*, %struct.io_ring_ctx*, i32) #1

declare dso_local i32 @io_get_sqring(%struct.io_ring_ctx*, %struct.sqe_submit*) #1

declare dso_local i32 @io_queue_link_head(%struct.io_ring_ctx*, %struct.io_kiocb*, i32*, %struct.io_kiocb*) #1

declare dso_local %struct.io_kiocb* @io_get_req(%struct.io_ring_ctx*, i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @refcount_dec(i32*) #1

declare dso_local i32 @io_cqring_add_event(%struct.io_ring_ctx*, i32, i32) #1

declare dso_local i32 @io_submit_sqe(%struct.io_ring_ctx*, %struct.sqe_submit*, %struct.io_submit_state*, %struct.io_kiocb**) #1

declare dso_local i32 @io_submit_state_end(%struct.io_submit_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
