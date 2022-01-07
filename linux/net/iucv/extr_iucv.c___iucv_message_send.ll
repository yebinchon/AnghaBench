; ModuleID = '/home/carl/AnghaBench/linux/net/iucv/extr_iucv.c___iucv_message_send.c'
source_filename = "/home/carl/AnghaBench/linux/net/iucv/extr_iucv.c___iucv_message_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.iucv_param = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, i8*, i32, i32, i8*, i8* }
%struct.iucv_path = type { i32 }
%struct.iucv_message = type { i32, i32, i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i8*, i32, i32 }

@iucv_buffer_cpumask = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@iucv_param = common dso_local global %union.iucv_param** null, align 8
@IUCV_IPRMDATA = common dso_local global i32 0, align 4
@IUCV_IPNORPY = common dso_local global i32 0, align 4
@IUCV_SEND = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__iucv_message_send(%struct.iucv_path* %0, %struct.iucv_message* %1, i32 %2, i8* %3, i8* %4, i64 %5) #0 {
  %7 = alloca %struct.iucv_path*, align 8
  %8 = alloca %struct.iucv_message*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %union.iucv_param*, align 8
  %14 = alloca i32, align 4
  store %struct.iucv_path* %0, %struct.iucv_path** %7, align 8
  store %struct.iucv_message* %1, %struct.iucv_message** %8, align 8
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  store i64 %5, i64* %12, align 8
  %15 = call i64 @cpumask_empty(i32* @iucv_buffer_cpumask)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %6
  %18 = load i32, i32* @EIO, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %14, align 4
  br label %120

20:                                               ; preds = %6
  %21 = load %union.iucv_param**, %union.iucv_param*** @iucv_param, align 8
  %22 = call i64 (...) @smp_processor_id()
  %23 = getelementptr inbounds %union.iucv_param*, %union.iucv_param** %21, i64 %22
  %24 = load %union.iucv_param*, %union.iucv_param** %23, align 8
  store %union.iucv_param* %24, %union.iucv_param** %13, align 8
  %25 = load %union.iucv_param*, %union.iucv_param** %13, align 8
  %26 = call i32 @memset(%union.iucv_param* %25, i32 0, i32 48)
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* @IUCV_IPRMDATA, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %66

31:                                               ; preds = %20
  %32 = load %struct.iucv_path*, %struct.iucv_path** %7, align 8
  %33 = getelementptr inbounds %struct.iucv_path, %struct.iucv_path* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %union.iucv_param*, %union.iucv_param** %13, align 8
  %36 = bitcast %union.iucv_param* %35 to %struct.TYPE_3__*
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 5
  store i32 %34, i32* %37, align 4
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* @IUCV_IPNORPY, align 4
  %40 = or i32 %38, %39
  %41 = load %union.iucv_param*, %union.iucv_param** %13, align 8
  %42 = bitcast %union.iucv_param* %41 to %struct.TYPE_3__*
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  store i32 %40, i32* %43, align 8
  %44 = load %struct.iucv_message*, %struct.iucv_message** %8, align 8
  %45 = getelementptr inbounds %struct.iucv_message, %struct.iucv_message* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = load %union.iucv_param*, %union.iucv_param** %13, align 8
  %48 = bitcast %union.iucv_param* %47 to %struct.TYPE_3__*
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 4
  store i32 %46, i32* %49, align 8
  %50 = load i8*, i8** %10, align 8
  %51 = load %union.iucv_param*, %union.iucv_param** %13, align 8
  %52 = bitcast %union.iucv_param* %51 to %struct.TYPE_3__*
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 3
  store i8* %50, i8** %53, align 8
  %54 = load %struct.iucv_message*, %struct.iucv_message** %8, align 8
  %55 = getelementptr inbounds %struct.iucv_message, %struct.iucv_message* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load %union.iucv_param*, %union.iucv_param** %13, align 8
  %58 = bitcast %union.iucv_param* %57 to %struct.TYPE_3__*
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 2
  store i32 %56, i32* %59, align 8
  %60 = load %union.iucv_param*, %union.iucv_param** %13, align 8
  %61 = bitcast %union.iucv_param* %60 to %struct.TYPE_3__*
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load i8*, i8** %11, align 8
  %65 = call i32 @memcpy(i32 %63, i8* %64, i32 8)
  br label %106

66:                                               ; preds = %20
  %67 = load i8*, i8** %11, align 8
  %68 = ptrtoint i8* %67 to i64
  %69 = inttoptr i64 %68 to i8*
  %70 = load %union.iucv_param*, %union.iucv_param** %13, align 8
  %71 = bitcast %union.iucv_param* %70 to %struct.TYPE_4__*
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 7
  store i8* %69, i8** %72, align 8
  %73 = load i64, i64* %12, align 8
  %74 = inttoptr i64 %73 to i8*
  %75 = load %union.iucv_param*, %union.iucv_param** %13, align 8
  %76 = bitcast %union.iucv_param* %75 to %struct.TYPE_4__*
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 6
  store i8* %74, i8** %77, align 8
  %78 = load %struct.iucv_path*, %struct.iucv_path** %7, align 8
  %79 = getelementptr inbounds %struct.iucv_path, %struct.iucv_path* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load %union.iucv_param*, %union.iucv_param** %13, align 8
  %82 = bitcast %union.iucv_param* %81 to %struct.TYPE_4__*
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 5
  store i32 %80, i32* %83, align 4
  %84 = load i32, i32* %9, align 4
  %85 = load i32, i32* @IUCV_IPNORPY, align 4
  %86 = or i32 %84, %85
  %87 = load %union.iucv_param*, %union.iucv_param** %13, align 8
  %88 = bitcast %union.iucv_param* %87 to %struct.TYPE_4__*
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 0
  store i32 %86, i32* %89, align 8
  %90 = load %struct.iucv_message*, %struct.iucv_message** %8, align 8
  %91 = getelementptr inbounds %struct.iucv_message, %struct.iucv_message* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 4
  %93 = load %union.iucv_param*, %union.iucv_param** %13, align 8
  %94 = bitcast %union.iucv_param* %93 to %struct.TYPE_4__*
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 4
  store i32 %92, i32* %95, align 8
  %96 = load i8*, i8** %10, align 8
  %97 = load %union.iucv_param*, %union.iucv_param** %13, align 8
  %98 = bitcast %union.iucv_param* %97 to %struct.TYPE_4__*
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 3
  store i8* %96, i8** %99, align 8
  %100 = load %struct.iucv_message*, %struct.iucv_message** %8, align 8
  %101 = getelementptr inbounds %struct.iucv_message, %struct.iucv_message* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = load %union.iucv_param*, %union.iucv_param** %13, align 8
  %104 = bitcast %union.iucv_param* %103 to %struct.TYPE_4__*
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 2
  store i32 %102, i32* %105, align 8
  br label %106

106:                                              ; preds = %66, %31
  %107 = load i32, i32* @IUCV_SEND, align 4
  %108 = load %union.iucv_param*, %union.iucv_param** %13, align 8
  %109 = call i32 @iucv_call_b2f0(i32 %107, %union.iucv_param* %108)
  store i32 %109, i32* %14, align 4
  %110 = load i32, i32* %14, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %119, label %112

112:                                              ; preds = %106
  %113 = load %union.iucv_param*, %union.iucv_param** %13, align 8
  %114 = bitcast %union.iucv_param* %113 to %struct.TYPE_4__*
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.iucv_message*, %struct.iucv_message** %8, align 8
  %118 = getelementptr inbounds %struct.iucv_message, %struct.iucv_message* %117, i32 0, i32 0
  store i32 %116, i32* %118, align 4
  br label %119

119:                                              ; preds = %112, %106
  br label %120

120:                                              ; preds = %119, %17
  %121 = load i32, i32* %14, align 4
  ret i32 %121
}

declare dso_local i64 @cpumask_empty(i32*) #1

declare dso_local i64 @smp_processor_id(...) #1

declare dso_local i32 @memset(%union.iucv_param*, i32, i32) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @iucv_call_b2f0(i32, %union.iucv_param*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
