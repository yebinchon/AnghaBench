; ModuleID = '/home/carl/AnghaBench/linux/fs/fuse/extr_dev.c_fuse_get_req.c'
source_filename = "/home/carl/AnghaBench/linux/fs/fuse/extr_dev.c_fuse_get_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fuse_req = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i64, i32 }
%struct.fuse_conn = type { i32, i32, i32, i64, i32, i32 }

@EINTR = common dso_local global i32 0, align 4
@ENOTCONN = common dso_local global i32 0, align 4
@ECONNREFUSED = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@FR_WAITING = common dso_local global i32 0, align 4
@FR_BACKGROUND = common dso_local global i32 0, align 4
@EOVERFLOW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.fuse_req* (%struct.fuse_conn*, i32)* @fuse_get_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.fuse_req* @fuse_get_req(%struct.fuse_conn* %0, i32 %1) #0 {
  %3 = alloca %struct.fuse_req*, align 8
  %4 = alloca %struct.fuse_conn*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.fuse_req*, align 8
  %7 = alloca i32, align 4
  store %struct.fuse_conn* %0, %struct.fuse_conn** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.fuse_conn*, %struct.fuse_conn** %4, align 8
  %9 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %8, i32 0, i32 5
  %10 = call i32 @atomic_inc(i32* %9)
  %11 = load %struct.fuse_conn*, %struct.fuse_conn** %4, align 8
  %12 = load i32, i32* %5, align 4
  %13 = call i64 @fuse_block_alloc(%struct.fuse_conn* %11, i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %31

15:                                               ; preds = %2
  %16 = load i32, i32* @EINTR, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %7, align 4
  %18 = load %struct.fuse_conn*, %struct.fuse_conn** %4, align 8
  %19 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.fuse_conn*, %struct.fuse_conn** %4, align 8
  %22 = load i32, i32* %5, align 4
  %23 = call i64 @fuse_block_alloc(%struct.fuse_conn* %21, i32 %22)
  %24 = icmp ne i64 %23, 0
  %25 = xor i1 %24, true
  %26 = zext i1 %25 to i32
  %27 = call i64 @wait_event_killable_exclusive(i32 %20, i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %15
  br label %131

30:                                               ; preds = %15
  br label %31

31:                                               ; preds = %30, %2
  %32 = call i32 (...) @smp_rmb()
  %33 = load i32, i32* @ENOTCONN, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %7, align 4
  %35 = load %struct.fuse_conn*, %struct.fuse_conn** %4, align 8
  %36 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %35, i32 0, i32 4
  %37 = load i32, i32* %36, align 8
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %31
  br label %131

40:                                               ; preds = %31
  %41 = load i32, i32* @ECONNREFUSED, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %7, align 4
  %43 = load %struct.fuse_conn*, %struct.fuse_conn** %4, align 8
  %44 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %43, i32 0, i32 3
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %40
  br label %131

48:                                               ; preds = %40
  %49 = load i32, i32* @GFP_KERNEL, align 4
  %50 = call %struct.fuse_req* @fuse_request_alloc(i32 %49)
  store %struct.fuse_req* %50, %struct.fuse_req** %6, align 8
  %51 = load i32, i32* @ENOMEM, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %7, align 4
  %53 = load %struct.fuse_req*, %struct.fuse_req** %6, align 8
  %54 = icmp ne %struct.fuse_req* %53, null
  br i1 %54, label %63, label %55

55:                                               ; preds = %48
  %56 = load i32, i32* %5, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %55
  %59 = load %struct.fuse_conn*, %struct.fuse_conn** %4, align 8
  %60 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %59, i32 0, i32 2
  %61 = call i32 @wake_up(i32* %60)
  br label %62

62:                                               ; preds = %58, %55
  br label %131

63:                                               ; preds = %48
  %64 = load %struct.fuse_conn*, %struct.fuse_conn** %4, align 8
  %65 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = call i32 (...) @current_fsuid()
  %68 = call i64 @from_kuid(i32 %66, i32 %67)
  %69 = load %struct.fuse_req*, %struct.fuse_req** %6, align 8
  %70 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 0
  store i64 %68, i64* %72, align 8
  %73 = load %struct.fuse_conn*, %struct.fuse_conn** %4, align 8
  %74 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = call i32 (...) @current_fsgid()
  %77 = call i64 @from_kgid(i32 %75, i32 %76)
  %78 = load %struct.fuse_req*, %struct.fuse_req** %6, align 8
  %79 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 1
  store i64 %77, i64* %81, align 8
  %82 = load i32, i32* @current, align 4
  %83 = call i32 @task_pid(i32 %82)
  %84 = load %struct.fuse_conn*, %struct.fuse_conn** %4, align 8
  %85 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @pid_nr_ns(i32 %83, i32 %86)
  %88 = load %struct.fuse_req*, %struct.fuse_req** %6, align 8
  %89 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 2
  store i32 %87, i32* %91, align 8
  %92 = load i32, i32* @FR_WAITING, align 4
  %93 = load %struct.fuse_req*, %struct.fuse_req** %6, align 8
  %94 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %93, i32 0, i32 1
  %95 = call i32 @__set_bit(i32 %92, i32* %94)
  %96 = load i32, i32* %5, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %103

98:                                               ; preds = %63
  %99 = load i32, i32* @FR_BACKGROUND, align 4
  %100 = load %struct.fuse_req*, %struct.fuse_req** %6, align 8
  %101 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %100, i32 0, i32 1
  %102 = call i32 @__set_bit(i32 %99, i32* %101)
  br label %103

103:                                              ; preds = %98, %63
  %104 = load %struct.fuse_req*, %struct.fuse_req** %6, align 8
  %105 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = icmp eq i64 %108, -1
  br i1 %109, label %117, label %110

110:                                              ; preds = %103
  %111 = load %struct.fuse_req*, %struct.fuse_req** %6, align 8
  %112 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %113, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  %116 = icmp eq i64 %115, -1
  br label %117

117:                                              ; preds = %110, %103
  %118 = phi i1 [ true, %103 ], [ %116, %110 ]
  %119 = zext i1 %118 to i32
  %120 = call i64 @unlikely(i32 %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %129

122:                                              ; preds = %117
  %123 = load %struct.fuse_conn*, %struct.fuse_conn** %4, align 8
  %124 = load %struct.fuse_req*, %struct.fuse_req** %6, align 8
  %125 = call i32 @fuse_put_request(%struct.fuse_conn* %123, %struct.fuse_req* %124)
  %126 = load i32, i32* @EOVERFLOW, align 4
  %127 = sub nsw i32 0, %126
  %128 = call %struct.fuse_req* @ERR_PTR(i32 %127)
  store %struct.fuse_req* %128, %struct.fuse_req** %3, align 8
  br label %136

129:                                              ; preds = %117
  %130 = load %struct.fuse_req*, %struct.fuse_req** %6, align 8
  store %struct.fuse_req* %130, %struct.fuse_req** %3, align 8
  br label %136

131:                                              ; preds = %62, %47, %39, %29
  %132 = load %struct.fuse_conn*, %struct.fuse_conn** %4, align 8
  %133 = call i32 @fuse_drop_waiting(%struct.fuse_conn* %132)
  %134 = load i32, i32* %7, align 4
  %135 = call %struct.fuse_req* @ERR_PTR(i32 %134)
  store %struct.fuse_req* %135, %struct.fuse_req** %3, align 8
  br label %136

136:                                              ; preds = %131, %129, %122
  %137 = load %struct.fuse_req*, %struct.fuse_req** %3, align 8
  ret %struct.fuse_req* %137
}

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i64 @fuse_block_alloc(%struct.fuse_conn*, i32) #1

declare dso_local i64 @wait_event_killable_exclusive(i32, i32) #1

declare dso_local i32 @smp_rmb(...) #1

declare dso_local %struct.fuse_req* @fuse_request_alloc(i32) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i64 @from_kuid(i32, i32) #1

declare dso_local i32 @current_fsuid(...) #1

declare dso_local i64 @from_kgid(i32, i32) #1

declare dso_local i32 @current_fsgid(...) #1

declare dso_local i32 @pid_nr_ns(i32, i32) #1

declare dso_local i32 @task_pid(i32) #1

declare dso_local i32 @__set_bit(i32, i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @fuse_put_request(%struct.fuse_conn*, %struct.fuse_req*) #1

declare dso_local %struct.fuse_req* @ERR_PTR(i32) #1

declare dso_local i32 @fuse_drop_waiting(%struct.fuse_conn*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
