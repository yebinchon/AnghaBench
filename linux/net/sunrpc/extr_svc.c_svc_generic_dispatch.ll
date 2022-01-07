; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/extr_svc.c_svc_generic_dispatch.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/extr_svc.c_svc_generic_dispatch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rqst = type { i32, %struct.svc_procedure*, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.svc_procedure = type { i32 (%struct.svc_rqst*, i64)*, i32 (%struct.svc_rqst*)*, i32 (%struct.svc_rqst*, i64)* }
%struct.TYPE_4__ = type { %struct.kvec* }
%struct.kvec = type { i64, i64 }
%struct.TYPE_3__ = type { %struct.kvec* }

@rpc_garbage_args = common dso_local global i32 0, align 4
@rpc_drop_reply = common dso_local global i32 0, align 4
@RQ_DROPME = common dso_local global i32 0, align 4
@RQ_AUTHERR = common dso_local global i32 0, align 4
@rpc_success = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"svc: failed to encode reply\0A\00", align 1
@rpc_system_err = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.svc_rqst*, i32*)* @svc_generic_dispatch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @svc_generic_dispatch(%struct.svc_rqst* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.svc_rqst*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.kvec*, align 8
  %7 = alloca %struct.kvec*, align 8
  %8 = alloca %struct.svc_procedure*, align 8
  store %struct.svc_rqst* %0, %struct.svc_rqst** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %10 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %9, i32 0, i32 3
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load %struct.kvec*, %struct.kvec** %11, align 8
  %13 = getelementptr inbounds %struct.kvec, %struct.kvec* %12, i64 0
  store %struct.kvec* %13, %struct.kvec** %6, align 8
  %14 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %15 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load %struct.kvec*, %struct.kvec** %16, align 8
  %18 = getelementptr inbounds %struct.kvec, %struct.kvec* %17, i64 0
  store %struct.kvec* %18, %struct.kvec** %7, align 8
  %19 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %20 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %19, i32 0, i32 1
  %21 = load %struct.svc_procedure*, %struct.svc_procedure** %20, align 8
  store %struct.svc_procedure* %21, %struct.svc_procedure** %8, align 8
  %22 = load %struct.svc_procedure*, %struct.svc_procedure** %8, align 8
  %23 = getelementptr inbounds %struct.svc_procedure, %struct.svc_procedure* %22, i32 0, i32 2
  %24 = load i32 (%struct.svc_rqst*, i64)*, i32 (%struct.svc_rqst*, i64)** %23, align 8
  %25 = icmp ne i32 (%struct.svc_rqst*, i64)* %24, null
  br i1 %25, label %26, label %39

26:                                               ; preds = %2
  %27 = load %struct.svc_procedure*, %struct.svc_procedure** %8, align 8
  %28 = getelementptr inbounds %struct.svc_procedure, %struct.svc_procedure* %27, i32 0, i32 2
  %29 = load i32 (%struct.svc_rqst*, i64)*, i32 (%struct.svc_rqst*, i64)** %28, align 8
  %30 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %31 = load %struct.kvec*, %struct.kvec** %6, align 8
  %32 = getelementptr inbounds %struct.kvec, %struct.kvec* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = call i32 %29(%struct.svc_rqst* %30, i64 %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %26
  %37 = load i32, i32* @rpc_garbage_args, align 4
  %38 = load i32*, i32** %5, align 8
  store i32 %37, i32* %38, align 4
  store i32 1, i32* %3, align 4
  br label %94

39:                                               ; preds = %26, %2
  %40 = load %struct.svc_procedure*, %struct.svc_procedure** %8, align 8
  %41 = getelementptr inbounds %struct.svc_procedure, %struct.svc_procedure* %40, i32 0, i32 1
  %42 = load i32 (%struct.svc_rqst*)*, i32 (%struct.svc_rqst*)** %41, align 8
  %43 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %44 = call i32 %42(%struct.svc_rqst* %43)
  %45 = load i32*, i32** %5, align 8
  store i32 %44, i32* %45, align 4
  %46 = load i32*, i32** %5, align 8
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @rpc_drop_reply, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %56, label %50

50:                                               ; preds = %39
  %51 = load i32, i32* @RQ_DROPME, align 4
  %52 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %53 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %52, i32 0, i32 0
  %54 = call i64 @test_bit(i32 %51, i32* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %50, %39
  store i32 0, i32* %3, align 4
  br label %94

57:                                               ; preds = %50
  %58 = load i32, i32* @RQ_AUTHERR, align 4
  %59 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %60 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %59, i32 0, i32 0
  %61 = call i64 @test_bit(i32 %58, i32* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %57
  store i32 1, i32* %3, align 4
  br label %94

64:                                               ; preds = %57
  %65 = load i32*, i32** %5, align 8
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @rpc_success, align 4
  %68 = icmp ne i32 %66, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %64
  store i32 1, i32* %3, align 4
  br label %94

70:                                               ; preds = %64
  %71 = load %struct.svc_procedure*, %struct.svc_procedure** %8, align 8
  %72 = getelementptr inbounds %struct.svc_procedure, %struct.svc_procedure* %71, i32 0, i32 0
  %73 = load i32 (%struct.svc_rqst*, i64)*, i32 (%struct.svc_rqst*, i64)** %72, align 8
  %74 = icmp ne i32 (%struct.svc_rqst*, i64)* %73, null
  br i1 %74, label %75, label %93

75:                                               ; preds = %70
  %76 = load %struct.svc_procedure*, %struct.svc_procedure** %8, align 8
  %77 = getelementptr inbounds %struct.svc_procedure, %struct.svc_procedure* %76, i32 0, i32 0
  %78 = load i32 (%struct.svc_rqst*, i64)*, i32 (%struct.svc_rqst*, i64)** %77, align 8
  %79 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %80 = load %struct.kvec*, %struct.kvec** %7, align 8
  %81 = getelementptr inbounds %struct.kvec, %struct.kvec* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = load %struct.kvec*, %struct.kvec** %7, align 8
  %84 = getelementptr inbounds %struct.kvec, %struct.kvec* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = add nsw i64 %82, %85
  %87 = call i32 %78(%struct.svc_rqst* %79, i64 %86)
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %93, label %89

89:                                               ; preds = %75
  %90 = call i32 @dprintk(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %91 = load i32, i32* @rpc_system_err, align 4
  %92 = load i32*, i32** %5, align 8
  store i32 %91, i32* %92, align 4
  br label %93

93:                                               ; preds = %89, %75, %70
  store i32 1, i32* %3, align 4
  br label %94

94:                                               ; preds = %93, %69, %63, %56, %36
  %95 = load i32, i32* %3, align 4
  ret i32 %95
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @dprintk(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
