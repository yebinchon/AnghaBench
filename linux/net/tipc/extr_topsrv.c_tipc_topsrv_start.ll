; ModuleID = '/home/carl/AnghaBench/linux/net/tipc/extr_topsrv.c_tipc_topsrv_start.c'
source_filename = "/home/carl/AnghaBench/linux/net/tipc/extr_topsrv.c_tipc_topsrv_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.tipc_net = type { i32, %struct.tipc_topsrv* }
%struct.tipc_topsrv = type { i64, i32, i32, i32, i32, %struct.net* }

@__const.tipc_topsrv_start.name = private unnamed_addr constant [16 x i8] c"topology_server\00", align 16
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@tipc_topsrv_accept = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*)* @tipc_topsrv_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tipc_topsrv_start(%struct.net* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net*, align 8
  %4 = alloca %struct.tipc_net*, align 8
  %5 = alloca [16 x i8], align 16
  %6 = alloca %struct.tipc_topsrv*, align 8
  %7 = alloca i32, align 4
  store %struct.net* %0, %struct.net** %3, align 8
  %8 = load %struct.net*, %struct.net** %3, align 8
  %9 = call %struct.tipc_net* @tipc_net(%struct.net* %8)
  store %struct.tipc_net* %9, %struct.tipc_net** %4, align 8
  %10 = bitcast [16 x i8]* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %10, i8* align 16 getelementptr inbounds ([16 x i8], [16 x i8]* @__const.tipc_topsrv_start.name, i32 0, i32 0), i64 16, i1 false)
  %11 = load i32, i32* @GFP_ATOMIC, align 4
  %12 = call %struct.tipc_topsrv* @kzalloc(i32 32, i32 %11)
  store %struct.tipc_topsrv* %12, %struct.tipc_topsrv** %6, align 8
  %13 = load %struct.tipc_topsrv*, %struct.tipc_topsrv** %6, align 8
  %14 = icmp ne %struct.tipc_topsrv* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %61

18:                                               ; preds = %1
  %19 = load %struct.net*, %struct.net** %3, align 8
  %20 = load %struct.tipc_topsrv*, %struct.tipc_topsrv** %6, align 8
  %21 = getelementptr inbounds %struct.tipc_topsrv, %struct.tipc_topsrv* %20, i32 0, i32 5
  store %struct.net* %19, %struct.net** %21, align 8
  %22 = load %struct.tipc_topsrv*, %struct.tipc_topsrv** %6, align 8
  %23 = getelementptr inbounds %struct.tipc_topsrv, %struct.tipc_topsrv* %22, i32 0, i32 4
  %24 = load i32, i32* @tipc_topsrv_accept, align 4
  %25 = call i32 @INIT_WORK(i32* %23, i32 %24)
  %26 = load %struct.tipc_topsrv*, %struct.tipc_topsrv** %6, align 8
  %27 = getelementptr inbounds %struct.tipc_topsrv, %struct.tipc_topsrv* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 8
  %29 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i64 0, i64 0
  %30 = call i32 @strscpy(i32 %28, i8* %29, i32 4)
  %31 = load %struct.tipc_topsrv*, %struct.tipc_topsrv** %6, align 8
  %32 = load %struct.tipc_net*, %struct.tipc_net** %4, align 8
  %33 = getelementptr inbounds %struct.tipc_net, %struct.tipc_net* %32, i32 0, i32 1
  store %struct.tipc_topsrv* %31, %struct.tipc_topsrv** %33, align 8
  %34 = load %struct.tipc_net*, %struct.tipc_net** %4, align 8
  %35 = getelementptr inbounds %struct.tipc_net, %struct.tipc_net* %34, i32 0, i32 0
  %36 = call i32 @atomic_set(i32* %35, i32 0)
  %37 = load %struct.tipc_topsrv*, %struct.tipc_topsrv** %6, align 8
  %38 = getelementptr inbounds %struct.tipc_topsrv, %struct.tipc_topsrv* %37, i32 0, i32 2
  %39 = call i32 @spin_lock_init(i32* %38)
  %40 = load %struct.tipc_topsrv*, %struct.tipc_topsrv** %6, align 8
  %41 = getelementptr inbounds %struct.tipc_topsrv, %struct.tipc_topsrv* %40, i32 0, i32 1
  %42 = call i32 @idr_init(i32* %41)
  %43 = load %struct.tipc_topsrv*, %struct.tipc_topsrv** %6, align 8
  %44 = getelementptr inbounds %struct.tipc_topsrv, %struct.tipc_topsrv* %43, i32 0, i32 0
  store i64 0, i64* %44, align 8
  %45 = load %struct.tipc_topsrv*, %struct.tipc_topsrv** %6, align 8
  %46 = call i32 @tipc_topsrv_work_start(%struct.tipc_topsrv* %45)
  store i32 %46, i32* %7, align 4
  %47 = load i32, i32* %7, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %18
  %50 = load i32, i32* %7, align 4
  store i32 %50, i32* %2, align 4
  br label %61

51:                                               ; preds = %18
  %52 = load %struct.tipc_topsrv*, %struct.tipc_topsrv** %6, align 8
  %53 = call i32 @tipc_topsrv_create_listener(%struct.tipc_topsrv* %52)
  store i32 %53, i32* %7, align 4
  %54 = load i32, i32* %7, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %51
  %57 = load %struct.tipc_topsrv*, %struct.tipc_topsrv** %6, align 8
  %58 = call i32 @tipc_topsrv_work_stop(%struct.tipc_topsrv* %57)
  br label %59

59:                                               ; preds = %56, %51
  %60 = load i32, i32* %7, align 4
  store i32 %60, i32* %2, align 4
  br label %61

61:                                               ; preds = %59, %49, %15
  %62 = load i32, i32* %2, align 4
  ret i32 %62
}

declare dso_local %struct.tipc_net* @tipc_net(%struct.net*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local %struct.tipc_topsrv* @kzalloc(i32, i32) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @strscpy(i32, i8*, i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @idr_init(i32*) #1

declare dso_local i32 @tipc_topsrv_work_start(%struct.tipc_topsrv*) #1

declare dso_local i32 @tipc_topsrv_create_listener(%struct.tipc_topsrv*) #1

declare dso_local i32 @tipc_topsrv_work_stop(%struct.tipc_topsrv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
