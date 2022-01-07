; ModuleID = '/home/carl/AnghaBench/linux/net/iucv/extr_iucv.c_iucv_message_send2way.c'
source_filename = "/home/carl/AnghaBench/linux/net/iucv/extr_iucv.c_iucv_message_send2way.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.iucv_param = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i8*, i8*, i8*, i8*, i32, i8*, i32, i32, i32 }
%struct.iucv_path = type { i32, i32 }
%struct.iucv_message = type { i32, i32, i32 }
%struct.TYPE_3__ = type { i32, i8*, i8*, i32, i8*, i32, i32, i32 }

@iucv_buffer_cpumask = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@iucv_param = common dso_local global %union.iucv_param** null, align 8
@IUCV_IPRMDATA = common dso_local global i32 0, align 4
@IUCV_SEND = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iucv_message_send2way(%struct.iucv_path* %0, %struct.iucv_message* %1, i32 %2, i8* %3, i8* %4, i64 %5, i8* %6, i64 %7, i64* %8) #0 {
  %10 = alloca %struct.iucv_path*, align 8
  %11 = alloca %struct.iucv_message*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64*, align 8
  %19 = alloca %union.iucv_param*, align 8
  %20 = alloca i32, align 4
  store %struct.iucv_path* %0, %struct.iucv_path** %10, align 8
  store %struct.iucv_message* %1, %struct.iucv_message** %11, align 8
  store i32 %2, i32* %12, align 4
  store i8* %3, i8** %13, align 8
  store i8* %4, i8** %14, align 8
  store i64 %5, i64* %15, align 8
  store i8* %6, i8** %16, align 8
  store i64 %7, i64* %17, align 8
  store i64* %8, i64** %18, align 8
  %21 = call i32 (...) @local_bh_disable()
  %22 = call i64 @cpumask_empty(i32* @iucv_buffer_cpumask)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %9
  %25 = load i32, i32* @EIO, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %20, align 4
  br label %149

27:                                               ; preds = %9
  %28 = load %union.iucv_param**, %union.iucv_param*** @iucv_param, align 8
  %29 = call i64 (...) @smp_processor_id()
  %30 = getelementptr inbounds %union.iucv_param*, %union.iucv_param** %28, i64 %29
  %31 = load %union.iucv_param*, %union.iucv_param** %30, align 8
  store %union.iucv_param* %31, %union.iucv_param** %19, align 8
  %32 = load %union.iucv_param*, %union.iucv_param** %19, align 8
  %33 = call i32 @memset(%union.iucv_param* %32, i32 0, i32 72)
  %34 = load i32, i32* %12, align 4
  %35 = load i32, i32* @IUCV_IPRMDATA, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %84

38:                                               ; preds = %27
  %39 = load %struct.iucv_path*, %struct.iucv_path** %10, align 8
  %40 = getelementptr inbounds %struct.iucv_path, %struct.iucv_path* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %union.iucv_param*, %union.iucv_param** %19, align 8
  %43 = bitcast %union.iucv_param* %42 to %struct.TYPE_3__*
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 7
  store i32 %41, i32* %44, align 8
  %45 = load %struct.iucv_path*, %struct.iucv_path** %10, align 8
  %46 = getelementptr inbounds %struct.iucv_path, %struct.iucv_path* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %union.iucv_param*, %union.iucv_param** %19, align 8
  %49 = bitcast %union.iucv_param* %48 to %struct.TYPE_3__*
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 6
  store i32 %47, i32* %50, align 4
  %51 = load %struct.iucv_message*, %struct.iucv_message** %11, align 8
  %52 = getelementptr inbounds %struct.iucv_message, %struct.iucv_message* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = load %union.iucv_param*, %union.iucv_param** %19, align 8
  %55 = bitcast %union.iucv_param* %54 to %struct.TYPE_3__*
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 5
  store i32 %53, i32* %56, align 8
  %57 = load i8*, i8** %13, align 8
  %58 = load %union.iucv_param*, %union.iucv_param** %19, align 8
  %59 = bitcast %union.iucv_param* %58 to %struct.TYPE_3__*
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 4
  store i8* %57, i8** %60, align 8
  %61 = load %struct.iucv_message*, %struct.iucv_message** %11, align 8
  %62 = getelementptr inbounds %struct.iucv_message, %struct.iucv_message* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load %union.iucv_param*, %union.iucv_param** %19, align 8
  %65 = bitcast %union.iucv_param* %64 to %struct.TYPE_3__*
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 3
  store i32 %63, i32* %66, align 8
  %67 = load i8*, i8** %16, align 8
  %68 = ptrtoint i8* %67 to i64
  %69 = inttoptr i64 %68 to i8*
  %70 = load %union.iucv_param*, %union.iucv_param** %19, align 8
  %71 = bitcast %union.iucv_param* %70 to %struct.TYPE_3__*
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 2
  store i8* %69, i8** %72, align 8
  %73 = load i64, i64* %17, align 8
  %74 = inttoptr i64 %73 to i8*
  %75 = load %union.iucv_param*, %union.iucv_param** %19, align 8
  %76 = bitcast %union.iucv_param* %75 to %struct.TYPE_3__*
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 1
  store i8* %74, i8** %77, align 8
  %78 = load %union.iucv_param*, %union.iucv_param** %19, align 8
  %79 = bitcast %union.iucv_param* %78 to %struct.TYPE_3__*
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load i8*, i8** %14, align 8
  %83 = call i32 @memcpy(i32 %81, i8* %82, i32 8)
  br label %135

84:                                               ; preds = %27
  %85 = load %struct.iucv_path*, %struct.iucv_path** %10, align 8
  %86 = getelementptr inbounds %struct.iucv_path, %struct.iucv_path* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = load %union.iucv_param*, %union.iucv_param** %19, align 8
  %89 = bitcast %union.iucv_param* %88 to %struct.TYPE_4__*
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 9
  store i32 %87, i32* %90, align 8
  %91 = load %struct.iucv_path*, %struct.iucv_path** %10, align 8
  %92 = getelementptr inbounds %struct.iucv_path, %struct.iucv_path* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load %union.iucv_param*, %union.iucv_param** %19, align 8
  %95 = bitcast %union.iucv_param* %94 to %struct.TYPE_4__*
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 8
  store i32 %93, i32* %96, align 4
  %97 = load %struct.iucv_message*, %struct.iucv_message** %11, align 8
  %98 = getelementptr inbounds %struct.iucv_message, %struct.iucv_message* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 4
  %100 = load %union.iucv_param*, %union.iucv_param** %19, align 8
  %101 = bitcast %union.iucv_param* %100 to %struct.TYPE_4__*
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 7
  store i32 %99, i32* %102, align 8
  %103 = load i8*, i8** %13, align 8
  %104 = load %union.iucv_param*, %union.iucv_param** %19, align 8
  %105 = bitcast %union.iucv_param* %104 to %struct.TYPE_4__*
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 6
  store i8* %103, i8** %106, align 8
  %107 = load %struct.iucv_message*, %struct.iucv_message** %11, align 8
  %108 = getelementptr inbounds %struct.iucv_message, %struct.iucv_message* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = load %union.iucv_param*, %union.iucv_param** %19, align 8
  %111 = bitcast %union.iucv_param* %110 to %struct.TYPE_4__*
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 5
  store i32 %109, i32* %112, align 8
  %113 = load i8*, i8** %14, align 8
  %114 = ptrtoint i8* %113 to i64
  %115 = inttoptr i64 %114 to i8*
  %116 = load %union.iucv_param*, %union.iucv_param** %19, align 8
  %117 = bitcast %union.iucv_param* %116 to %struct.TYPE_4__*
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 4
  store i8* %115, i8** %118, align 8
  %119 = load i64, i64* %15, align 8
  %120 = inttoptr i64 %119 to i8*
  %121 = load %union.iucv_param*, %union.iucv_param** %19, align 8
  %122 = bitcast %union.iucv_param* %121 to %struct.TYPE_4__*
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i32 0, i32 3
  store i8* %120, i8** %123, align 8
  %124 = load i8*, i8** %16, align 8
  %125 = ptrtoint i8* %124 to i64
  %126 = inttoptr i64 %125 to i8*
  %127 = load %union.iucv_param*, %union.iucv_param** %19, align 8
  %128 = bitcast %union.iucv_param* %127 to %struct.TYPE_4__*
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i32 0, i32 2
  store i8* %126, i8** %129, align 8
  %130 = load i64, i64* %17, align 8
  %131 = inttoptr i64 %130 to i8*
  %132 = load %union.iucv_param*, %union.iucv_param** %19, align 8
  %133 = bitcast %union.iucv_param* %132 to %struct.TYPE_4__*
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i32 0, i32 1
  store i8* %131, i8** %134, align 8
  br label %135

135:                                              ; preds = %84, %38
  %136 = load i32, i32* @IUCV_SEND, align 4
  %137 = load %union.iucv_param*, %union.iucv_param** %19, align 8
  %138 = call i32 @iucv_call_b2f0(i32 %136, %union.iucv_param* %137)
  store i32 %138, i32* %20, align 4
  %139 = load i32, i32* %20, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %148, label %141

141:                                              ; preds = %135
  %142 = load %union.iucv_param*, %union.iucv_param** %19, align 8
  %143 = bitcast %union.iucv_param* %142 to %struct.TYPE_4__*
  %144 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = load %struct.iucv_message*, %struct.iucv_message** %11, align 8
  %147 = getelementptr inbounds %struct.iucv_message, %struct.iucv_message* %146, i32 0, i32 0
  store i32 %145, i32* %147, align 4
  br label %148

148:                                              ; preds = %141, %135
  br label %149

149:                                              ; preds = %148, %24
  %150 = call i32 (...) @local_bh_enable()
  %151 = load i32, i32* %20, align 4
  ret i32 %151
}

declare dso_local i32 @local_bh_disable(...) #1

declare dso_local i64 @cpumask_empty(i32*) #1

declare dso_local i64 @smp_processor_id(...) #1

declare dso_local i32 @memset(%union.iucv_param*, i32, i32) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @iucv_call_b2f0(i32, %union.iucv_param*) #1

declare dso_local i32 @local_bh_enable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
