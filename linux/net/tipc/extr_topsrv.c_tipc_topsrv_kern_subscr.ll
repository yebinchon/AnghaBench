; ModuleID = '/home/carl/AnghaBench/linux/net/tipc/extr_topsrv.c_tipc_topsrv_kern_subscr.c'
source_filename = "/home/carl/AnghaBench/linux/net/tipc/extr_topsrv.c_tipc_topsrv_kern_subscr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.tipc_subscr = type { i32, i8*, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8*, i8*, i8* }
%struct.tipc_conn = type { i32, i32* }

@TIPC_WAIT_FOREVER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tipc_topsrv_kern_subscr(%struct.net* %0, i8* %1, i8* %2, i8* %3, i8* %4, i8* %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.net*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.tipc_subscr, align 8
  %17 = alloca %struct.tipc_conn*, align 8
  %18 = alloca i32, align 4
  store %struct.net* %0, %struct.net** %9, align 8
  store i8* %1, i8** %10, align 8
  store i8* %2, i8** %11, align 8
  store i8* %3, i8** %12, align 8
  store i8* %4, i8** %13, align 8
  store i8* %5, i8** %14, align 8
  store i32* %6, i32** %15, align 8
  %19 = load i8*, i8** %11, align 8
  %20 = getelementptr inbounds %struct.tipc_subscr, %struct.tipc_subscr* %16, i32 0, i32 3
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 2
  store i8* %19, i8** %21, align 8
  %22 = load i8*, i8** %12, align 8
  %23 = getelementptr inbounds %struct.tipc_subscr, %struct.tipc_subscr* %16, i32 0, i32 3
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  store i8* %22, i8** %24, align 8
  %25 = load i8*, i8** %13, align 8
  %26 = getelementptr inbounds %struct.tipc_subscr, %struct.tipc_subscr* %16, i32 0, i32 3
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  store i8* %25, i8** %27, align 8
  %28 = load i32, i32* @TIPC_WAIT_FOREVER, align 4
  %29 = getelementptr inbounds %struct.tipc_subscr, %struct.tipc_subscr* %16, i32 0, i32 2
  store i32 %28, i32* %29, align 8
  %30 = load i8*, i8** %14, align 8
  %31 = getelementptr inbounds %struct.tipc_subscr, %struct.tipc_subscr* %16, i32 0, i32 1
  store i8* %30, i8** %31, align 8
  %32 = load i8*, i8** %10, align 8
  %33 = getelementptr inbounds %struct.tipc_subscr, %struct.tipc_subscr* %16, i32 0, i32 0
  %34 = bitcast i32* %33 to i8**
  store i8* %32, i8** %34, align 8
  %35 = load %struct.net*, %struct.net** %9, align 8
  %36 = call i32 @tipc_topsrv(%struct.net* %35)
  %37 = call %struct.tipc_conn* @tipc_conn_alloc(i32 %36)
  store %struct.tipc_conn* %37, %struct.tipc_conn** %17, align 8
  %38 = load %struct.tipc_conn*, %struct.tipc_conn** %17, align 8
  %39 = call i64 @IS_ERR(%struct.tipc_conn* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %7
  store i32 0, i32* %8, align 4
  br label %59

42:                                               ; preds = %7
  %43 = load %struct.tipc_conn*, %struct.tipc_conn** %17, align 8
  %44 = getelementptr inbounds %struct.tipc_conn, %struct.tipc_conn* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32*, i32** %15, align 8
  store i32 %45, i32* %46, align 4
  %47 = load %struct.tipc_conn*, %struct.tipc_conn** %17, align 8
  %48 = getelementptr inbounds %struct.tipc_conn, %struct.tipc_conn* %47, i32 0, i32 1
  store i32* null, i32** %48, align 8
  %49 = load %struct.net*, %struct.net** %9, align 8
  %50 = call i32 @tipc_topsrv(%struct.net* %49)
  %51 = load %struct.tipc_conn*, %struct.tipc_conn** %17, align 8
  %52 = call i32 @tipc_conn_rcv_sub(i32 %50, %struct.tipc_conn* %51, %struct.tipc_subscr* %16)
  store i32 %52, i32* %18, align 4
  %53 = load i32, i32* %18, align 4
  %54 = icmp sge i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %42
  store i32 1, i32* %8, align 4
  br label %59

56:                                               ; preds = %42
  %57 = load %struct.tipc_conn*, %struct.tipc_conn** %17, align 8
  %58 = call i32 @conn_put(%struct.tipc_conn* %57)
  store i32 0, i32* %8, align 4
  br label %59

59:                                               ; preds = %56, %55, %41
  %60 = load i32, i32* %8, align 4
  ret i32 %60
}

declare dso_local %struct.tipc_conn* @tipc_conn_alloc(i32) #1

declare dso_local i32 @tipc_topsrv(%struct.net*) #1

declare dso_local i64 @IS_ERR(%struct.tipc_conn*) #1

declare dso_local i32 @tipc_conn_rcv_sub(i32, %struct.tipc_conn*, %struct.tipc_subscr*) #1

declare dso_local i32 @conn_put(%struct.tipc_conn*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
