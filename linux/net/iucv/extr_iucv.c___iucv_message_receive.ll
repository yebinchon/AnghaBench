; ModuleID = '/home/carl/AnghaBench/linux/net/iucv/extr_iucv.c___iucv_message_receive.c'
source_filename = "/home/carl/AnghaBench/linux/net/iucv/extr_iucv.c___iucv_message_receive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.iucv_param = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32, i32, i32, i32, i8* }
%struct.iucv_path = type { i32 }
%struct.iucv_message = type { i32, i32, i32 }

@IUCV_IPRMDATA = common dso_local global i32 0, align 4
@iucv_buffer_cpumask = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@iucv_param = common dso_local global %union.iucv_param** null, align 8
@IUCV_IPFGPID = common dso_local global i32 0, align 4
@IUCV_IPFGMID = common dso_local global i32 0, align 4
@IUCV_IPTRGCLS = common dso_local global i32 0, align 4
@IUCV_RECEIVE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__iucv_message_receive(%struct.iucv_path* %0, %struct.iucv_message* %1, i32 %2, i8* %3, i64 %4, i64* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.iucv_path*, align 8
  %9 = alloca %struct.iucv_message*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64*, align 8
  %14 = alloca %union.iucv_param*, align 8
  %15 = alloca i32, align 4
  store %struct.iucv_path* %0, %struct.iucv_path** %8, align 8
  store %struct.iucv_message* %1, %struct.iucv_message** %9, align 8
  store i32 %2, i32* %10, align 4
  store i8* %3, i8** %11, align 8
  store i64 %4, i64* %12, align 8
  store i64* %5, i64** %13, align 8
  %16 = load %struct.iucv_message*, %struct.iucv_message** %9, align 8
  %17 = getelementptr inbounds %struct.iucv_message, %struct.iucv_message* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @IUCV_IPRMDATA, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %30

22:                                               ; preds = %6
  %23 = load %struct.iucv_path*, %struct.iucv_path** %8, align 8
  %24 = load %struct.iucv_message*, %struct.iucv_message** %9, align 8
  %25 = load i32, i32* %10, align 4
  %26 = load i8*, i8** %11, align 8
  %27 = load i64, i64* %12, align 8
  %28 = load i64*, i64** %13, align 8
  %29 = call i32 @iucv_message_receive_iprmdata(%struct.iucv_path* %23, %struct.iucv_message* %24, i32 %25, i8* %26, i64 %27, i64* %28)
  store i32 %29, i32* %7, align 4
  br label %110

30:                                               ; preds = %6
  %31 = call i64 @cpumask_empty(i32* @iucv_buffer_cpumask)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %30
  %34 = load i32, i32* @EIO, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %15, align 4
  br label %108

36:                                               ; preds = %30
  %37 = load %union.iucv_param**, %union.iucv_param*** @iucv_param, align 8
  %38 = call i64 (...) @smp_processor_id()
  %39 = getelementptr inbounds %union.iucv_param*, %union.iucv_param** %37, i64 %38
  %40 = load %union.iucv_param*, %union.iucv_param** %39, align 8
  store %union.iucv_param* %40, %union.iucv_param** %14, align 8
  %41 = load %union.iucv_param*, %union.iucv_param** %14, align 8
  %42 = call i32 @memset(%union.iucv_param* %41, i32 0, i32 32)
  %43 = load i8*, i8** %11, align 8
  %44 = ptrtoint i8* %43 to i64
  %45 = inttoptr i64 %44 to i8*
  %46 = load %union.iucv_param*, %union.iucv_param** %14, align 8
  %47 = bitcast %union.iucv_param* %46 to %struct.TYPE_2__*
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 5
  store i8* %45, i8** %48, align 8
  %49 = load i64, i64* %12, align 8
  %50 = inttoptr i64 %49 to i8*
  %51 = ptrtoint i8* %50 to i64
  %52 = load %union.iucv_param*, %union.iucv_param** %14, align 8
  %53 = bitcast %union.iucv_param* %52 to %struct.TYPE_2__*
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  store i64 %51, i64* %54, align 8
  %55 = load %struct.iucv_message*, %struct.iucv_message** %9, align 8
  %56 = getelementptr inbounds %struct.iucv_message, %struct.iucv_message* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = load %union.iucv_param*, %union.iucv_param** %14, align 8
  %59 = bitcast %union.iucv_param* %58 to %struct.TYPE_2__*
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 4
  store i32 %57, i32* %60, align 4
  %61 = load %struct.iucv_path*, %struct.iucv_path** %8, align 8
  %62 = getelementptr inbounds %struct.iucv_path, %struct.iucv_path* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load %union.iucv_param*, %union.iucv_param** %14, align 8
  %65 = bitcast %union.iucv_param* %64 to %struct.TYPE_2__*
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 3
  store i32 %63, i32* %66, align 8
  %67 = load %struct.iucv_message*, %struct.iucv_message** %9, align 8
  %68 = getelementptr inbounds %struct.iucv_message, %struct.iucv_message* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load %union.iucv_param*, %union.iucv_param** %14, align 8
  %71 = bitcast %union.iucv_param* %70 to %struct.TYPE_2__*
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 2
  store i32 %69, i32* %72, align 4
  %73 = load i32, i32* %10, align 4
  %74 = load i32, i32* @IUCV_IPFGPID, align 4
  %75 = or i32 %73, %74
  %76 = load i32, i32* @IUCV_IPFGMID, align 4
  %77 = or i32 %75, %76
  %78 = load i32, i32* @IUCV_IPTRGCLS, align 4
  %79 = or i32 %77, %78
  %80 = load %union.iucv_param*, %union.iucv_param** %14, align 8
  %81 = bitcast %union.iucv_param* %80 to %struct.TYPE_2__*
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 1
  store i32 %79, i32* %82, align 8
  %83 = load i32, i32* @IUCV_RECEIVE, align 4
  %84 = load %union.iucv_param*, %union.iucv_param** %14, align 8
  %85 = call i32 @iucv_call_b2f0(i32 %83, %union.iucv_param* %84)
  store i32 %85, i32* %15, align 4
  %86 = load i32, i32* %15, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %36
  %89 = load i32, i32* %15, align 4
  %90 = icmp eq i32 %89, 5
  br i1 %90, label %91, label %107

91:                                               ; preds = %88, %36
  %92 = load %union.iucv_param*, %union.iucv_param** %14, align 8
  %93 = bitcast %union.iucv_param* %92 to %struct.TYPE_2__*
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 8
  %96 = load %struct.iucv_message*, %struct.iucv_message** %9, align 8
  %97 = getelementptr inbounds %struct.iucv_message, %struct.iucv_message* %96, i32 0, i32 0
  store i32 %95, i32* %97, align 4
  %98 = load i64*, i64** %13, align 8
  %99 = icmp ne i64* %98, null
  br i1 %99, label %100, label %106

100:                                              ; preds = %91
  %101 = load %union.iucv_param*, %union.iucv_param** %14, align 8
  %102 = bitcast %union.iucv_param* %101 to %struct.TYPE_2__*
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = load i64*, i64** %13, align 8
  store i64 %104, i64* %105, align 8
  br label %106

106:                                              ; preds = %100, %91
  br label %107

107:                                              ; preds = %106, %88
  br label %108

108:                                              ; preds = %107, %33
  %109 = load i32, i32* %15, align 4
  store i32 %109, i32* %7, align 4
  br label %110

110:                                              ; preds = %108, %22
  %111 = load i32, i32* %7, align 4
  ret i32 %111
}

declare dso_local i32 @iucv_message_receive_iprmdata(%struct.iucv_path*, %struct.iucv_message*, i32, i8*, i64, i64*) #1

declare dso_local i64 @cpumask_empty(i32*) #1

declare dso_local i64 @smp_processor_id(...) #1

declare dso_local i32 @memset(%union.iucv_param*, i32, i32) #1

declare dso_local i32 @iucv_call_b2f0(i32, %union.iucv_param*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
