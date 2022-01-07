; ModuleID = '/home/carl/AnghaBench/linux/fs/fuse/extr_dev.c_fuse_simple_notify_reply.c'
source_filename = "/home/carl/AnghaBench/linux/fs/fuse/extr_dev.c_fuse_simple_notify_reply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fuse_conn = type { %struct.fuse_iqueue }
%struct.fuse_iqueue = type { i32, i64 }
%struct.fuse_args = type { i32 }
%struct.fuse_req = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@FR_ISREPLY = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fuse_conn*, %struct.fuse_args*, i32)* @fuse_simple_notify_reply to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fuse_simple_notify_reply(%struct.fuse_conn* %0, %struct.fuse_args* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.fuse_conn*, align 8
  %6 = alloca %struct.fuse_args*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.fuse_req*, align 8
  %9 = alloca %struct.fuse_iqueue*, align 8
  %10 = alloca i32, align 4
  store %struct.fuse_conn* %0, %struct.fuse_conn** %5, align 8
  store %struct.fuse_args* %1, %struct.fuse_args** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.fuse_conn*, %struct.fuse_conn** %5, align 8
  %12 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %11, i32 0, i32 0
  store %struct.fuse_iqueue* %12, %struct.fuse_iqueue** %9, align 8
  store i32 0, i32* %10, align 4
  %13 = load %struct.fuse_conn*, %struct.fuse_conn** %5, align 8
  %14 = call %struct.fuse_req* @fuse_get_req(%struct.fuse_conn* %13, i32 0)
  store %struct.fuse_req* %14, %struct.fuse_req** %8, align 8
  %15 = load %struct.fuse_req*, %struct.fuse_req** %8, align 8
  %16 = call i64 @IS_ERR(%struct.fuse_req* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %3
  %19 = load %struct.fuse_req*, %struct.fuse_req** %8, align 8
  %20 = call i32 @PTR_ERR(%struct.fuse_req* %19)
  store i32 %20, i32* %4, align 4
  br label %56

21:                                               ; preds = %3
  %22 = load i32, i32* @FR_ISREPLY, align 4
  %23 = load %struct.fuse_req*, %struct.fuse_req** %8, align 8
  %24 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %23, i32 0, i32 1
  %25 = call i32 @__clear_bit(i32 %22, i32* %24)
  %26 = load i32, i32* %7, align 4
  %27 = load %struct.fuse_req*, %struct.fuse_req** %8, align 8
  %28 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  store i32 %26, i32* %30, align 4
  %31 = load %struct.fuse_req*, %struct.fuse_req** %8, align 8
  %32 = load %struct.fuse_args*, %struct.fuse_args** %6, align 8
  %33 = call i32 @fuse_args_to_req(%struct.fuse_req* %31, %struct.fuse_args* %32)
  %34 = load %struct.fuse_iqueue*, %struct.fuse_iqueue** %9, align 8
  %35 = getelementptr inbounds %struct.fuse_iqueue, %struct.fuse_iqueue* %34, i32 0, i32 0
  %36 = call i32 @spin_lock(i32* %35)
  %37 = load %struct.fuse_iqueue*, %struct.fuse_iqueue** %9, align 8
  %38 = getelementptr inbounds %struct.fuse_iqueue, %struct.fuse_iqueue* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %21
  %42 = load %struct.fuse_iqueue*, %struct.fuse_iqueue** %9, align 8
  %43 = load %struct.fuse_req*, %struct.fuse_req** %8, align 8
  %44 = call i32 @queue_request_and_unlock(%struct.fuse_iqueue* %42, %struct.fuse_req* %43)
  br label %54

45:                                               ; preds = %21
  %46 = load i32, i32* @ENODEV, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %10, align 4
  %48 = load %struct.fuse_iqueue*, %struct.fuse_iqueue** %9, align 8
  %49 = getelementptr inbounds %struct.fuse_iqueue, %struct.fuse_iqueue* %48, i32 0, i32 0
  %50 = call i32 @spin_unlock(i32* %49)
  %51 = load %struct.fuse_conn*, %struct.fuse_conn** %5, align 8
  %52 = load %struct.fuse_req*, %struct.fuse_req** %8, align 8
  %53 = call i32 @fuse_put_request(%struct.fuse_conn* %51, %struct.fuse_req* %52)
  br label %54

54:                                               ; preds = %45, %41
  %55 = load i32, i32* %10, align 4
  store i32 %55, i32* %4, align 4
  br label %56

56:                                               ; preds = %54, %18
  %57 = load i32, i32* %4, align 4
  ret i32 %57
}

declare dso_local %struct.fuse_req* @fuse_get_req(%struct.fuse_conn*, i32) #1

declare dso_local i64 @IS_ERR(%struct.fuse_req*) #1

declare dso_local i32 @PTR_ERR(%struct.fuse_req*) #1

declare dso_local i32 @__clear_bit(i32, i32*) #1

declare dso_local i32 @fuse_args_to_req(%struct.fuse_req*, %struct.fuse_args*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @queue_request_and_unlock(%struct.fuse_iqueue*, %struct.fuse_req*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @fuse_put_request(%struct.fuse_conn*, %struct.fuse_req*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
