; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/extr_svc.c_svc_process.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/extr_svc.c_svc_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rqst = type { i64, %struct.TYPE_7__, i32*, i32*, %struct.svc_serv*, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__*, i32, i64, i64, i64, i32*, %struct.kvec* }
%struct.TYPE_6__ = type { i64, i32* }
%struct.kvec = type { i64, i32 }
%struct.svc_serv = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_5__ = type { %struct.kvec* }

@PAGE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"bad direction %d, dropping request\0A\00", align 1
@IPPROTO_TCP = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @svc_process(%struct.svc_rqst* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.svc_rqst*, align 8
  %4 = alloca %struct.kvec*, align 8
  %5 = alloca %struct.kvec*, align 8
  %6 = alloca %struct.svc_serv*, align 8
  %7 = alloca i64, align 8
  store %struct.svc_rqst* %0, %struct.svc_rqst** %3, align 8
  %8 = load %struct.svc_rqst*, %struct.svc_rqst** %3, align 8
  %9 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %8, i32 0, i32 5
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load %struct.kvec*, %struct.kvec** %10, align 8
  %12 = getelementptr inbounds %struct.kvec, %struct.kvec* %11, i64 0
  store %struct.kvec* %12, %struct.kvec** %4, align 8
  %13 = load %struct.svc_rqst*, %struct.svc_rqst** %3, align 8
  %14 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 6
  %16 = load %struct.kvec*, %struct.kvec** %15, align 8
  %17 = getelementptr inbounds %struct.kvec, %struct.kvec* %16, i64 0
  store %struct.kvec* %17, %struct.kvec** %5, align 8
  %18 = load %struct.svc_rqst*, %struct.svc_rqst** %3, align 8
  %19 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %18, i32 0, i32 4
  %20 = load %struct.svc_serv*, %struct.svc_serv** %19, align 8
  store %struct.svc_serv* %20, %struct.svc_serv** %6, align 8
  %21 = load %struct.svc_rqst*, %struct.svc_rqst** %3, align 8
  %22 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %21, i32 0, i32 2
  %23 = load i32*, i32** %22, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 1
  %25 = load %struct.svc_rqst*, %struct.svc_rqst** %3, align 8
  %26 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %25, i32 0, i32 3
  store i32* %24, i32** %26, align 8
  %27 = load %struct.svc_rqst*, %struct.svc_rqst** %3, align 8
  %28 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %27, i32 0, i32 2
  %29 = load i32*, i32** %28, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @page_address(i32 %31)
  %33 = load %struct.kvec*, %struct.kvec** %5, align 8
  %34 = getelementptr inbounds %struct.kvec, %struct.kvec* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 8
  %35 = load %struct.kvec*, %struct.kvec** %5, align 8
  %36 = getelementptr inbounds %struct.kvec, %struct.kvec* %35, i32 0, i32 0
  store i64 0, i64* %36, align 8
  %37 = load %struct.svc_rqst*, %struct.svc_rqst** %3, align 8
  %38 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %37, i32 0, i32 2
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 1
  %41 = load %struct.svc_rqst*, %struct.svc_rqst** %3, align 8
  %42 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 5
  store i32* %40, i32** %43, align 8
  %44 = load %struct.svc_rqst*, %struct.svc_rqst** %3, align 8
  %45 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 4
  store i64 0, i64* %46, align 8
  %47 = load %struct.svc_rqst*, %struct.svc_rqst** %3, align 8
  %48 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 3
  store i64 0, i64* %49, align 8
  %50 = load %struct.svc_rqst*, %struct.svc_rqst** %3, align 8
  %51 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 2
  store i64 0, i64* %52, align 8
  %53 = load i32, i32* @PAGE_SIZE, align 4
  %54 = load %struct.svc_rqst*, %struct.svc_rqst** %3, align 8
  %55 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 1
  store i32 %53, i32* %56, align 8
  %57 = load %struct.svc_rqst*, %struct.svc_rqst** %3, align 8
  %58 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 0
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i64 0
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 1
  store i32* null, i32** %62, align 8
  %63 = load %struct.svc_rqst*, %struct.svc_rqst** %3, align 8
  %64 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 0
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i64 0
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  store i64 0, i64* %68, align 8
  %69 = load %struct.kvec*, %struct.kvec** %4, align 8
  %70 = call i64 @svc_getnl(%struct.kvec* %69)
  store i64 %70, i64* %7, align 8
  %71 = load i64, i64* %7, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %83

73:                                               ; preds = %1
  %74 = load %struct.svc_rqst*, %struct.svc_rqst** %3, align 8
  %75 = load i64, i64* %7, align 8
  %76 = call i32 @svc_printk(%struct.svc_rqst* %74, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i64 %75)
  %77 = load %struct.svc_serv*, %struct.svc_serv** %6, align 8
  %78 = getelementptr inbounds %struct.svc_serv, %struct.svc_serv* %77, i32 0, i32 0
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %80, align 4
  br label %103

83:                                               ; preds = %1
  %84 = load %struct.svc_rqst*, %struct.svc_rqst** %3, align 8
  %85 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @IPPROTO_TCP, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %89, label %92

89:                                               ; preds = %83
  %90 = load %struct.kvec*, %struct.kvec** %5, align 8
  %91 = call i32 @svc_putnl(%struct.kvec* %90, i32 0)
  br label %92

92:                                               ; preds = %89, %83
  %93 = load %struct.svc_rqst*, %struct.svc_rqst** %3, align 8
  %94 = load %struct.kvec*, %struct.kvec** %4, align 8
  %95 = load %struct.kvec*, %struct.kvec** %5, align 8
  %96 = call i32 @svc_process_common(%struct.svc_rqst* %93, %struct.kvec* %94, %struct.kvec* %95)
  %97 = call i64 @likely(i32 %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %92
  %100 = load %struct.svc_rqst*, %struct.svc_rqst** %3, align 8
  %101 = call i32 @svc_send(%struct.svc_rqst* %100)
  store i32 %101, i32* %2, align 4
  br label %106

102:                                              ; preds = %92
  br label %103

103:                                              ; preds = %102, %73
  %104 = load %struct.svc_rqst*, %struct.svc_rqst** %3, align 8
  %105 = call i32 @svc_drop(%struct.svc_rqst* %104)
  store i32 0, i32* %2, align 4
  br label %106

106:                                              ; preds = %103, %99
  %107 = load i32, i32* %2, align 4
  ret i32 %107
}

declare dso_local i32 @page_address(i32) #1

declare dso_local i64 @svc_getnl(%struct.kvec*) #1

declare dso_local i32 @svc_printk(%struct.svc_rqst*, i8*, i64) #1

declare dso_local i32 @svc_putnl(%struct.kvec*, i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @svc_process_common(%struct.svc_rqst*, %struct.kvec*, %struct.kvec*) #1

declare dso_local i32 @svc_send(%struct.svc_rqst*) #1

declare dso_local i32 @svc_drop(%struct.svc_rqst*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
