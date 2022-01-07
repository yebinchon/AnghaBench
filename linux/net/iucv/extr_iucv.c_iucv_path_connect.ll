; ModuleID = '/home/carl/AnghaBench/linux/net/iucv/extr_iucv.c_iucv_path_connect.c'
source_filename = "/home/carl/AnghaBench/linux/net/iucv/extr_iucv.c_iucv_path_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.iucv_param = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32, i32, i32, i32, i32 }
%struct.iucv_path = type { i64, i32, i8*, %struct.iucv_handler*, i32, i32 }
%struct.iucv_handler = type { i32 }

@iucv_table_lock = common dso_local global i32 0, align 4
@iucv_buffer_cpumask = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@iucv_param = common dso_local global %union.iucv_param** null, align 8
@IUCV_CONNECT = common dso_local global i32 0, align 4
@iucv_max_pathid = common dso_local global i64 0, align 8
@iucv_path_table = common dso_local global %struct.iucv_path** null, align 8
@iucv_error_pathid = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iucv_path_connect(%struct.iucv_path* %0, %struct.iucv_handler* %1, i32* %2, i32* %3, i32* %4, i8* %5) #0 {
  %7 = alloca %struct.iucv_path*, align 8
  %8 = alloca %struct.iucv_handler*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %union.iucv_param*, align 8
  %14 = alloca i32, align 4
  store %struct.iucv_path* %0, %struct.iucv_path** %7, align 8
  store %struct.iucv_handler* %1, %struct.iucv_handler** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  store i8* %5, i8** %12, align 8
  %15 = call i32 @spin_lock_bh(i32* @iucv_table_lock)
  %16 = call i32 (...) @iucv_cleanup_queue()
  %17 = call i64 @cpumask_empty(i32* @iucv_buffer_cpumask)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %6
  %20 = load i32, i32* @EIO, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %14, align 4
  br label %150

22:                                               ; preds = %6
  %23 = load %union.iucv_param**, %union.iucv_param*** @iucv_param, align 8
  %24 = call i64 (...) @smp_processor_id()
  %25 = getelementptr inbounds %union.iucv_param*, %union.iucv_param** %23, i64 %24
  %26 = load %union.iucv_param*, %union.iucv_param** %25, align 8
  store %union.iucv_param* %26, %union.iucv_param** %13, align 8
  %27 = load %union.iucv_param*, %union.iucv_param** %13, align 8
  %28 = call i32 @memset(%union.iucv_param* %27, i32 0, i32 32)
  %29 = load %struct.iucv_path*, %struct.iucv_path** %7, align 8
  %30 = getelementptr inbounds %struct.iucv_path, %struct.iucv_path* %29, i32 0, i32 5
  %31 = load i32, i32* %30, align 4
  %32 = load %union.iucv_param*, %union.iucv_param** %13, align 8
  %33 = bitcast %union.iucv_param* %32 to %struct.TYPE_2__*
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 2
  store i32 %31, i32* %34, align 4
  %35 = load %struct.iucv_path*, %struct.iucv_path** %7, align 8
  %36 = getelementptr inbounds %struct.iucv_path, %struct.iucv_path* %35, i32 0, i32 4
  %37 = load i32, i32* %36, align 8
  %38 = load %union.iucv_param*, %union.iucv_param** %13, align 8
  %39 = bitcast %union.iucv_param* %38 to %struct.TYPE_2__*
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  store i32 %37, i32* %40, align 8
  %41 = load i32*, i32** %9, align 8
  %42 = icmp ne i32* %41, null
  br i1 %42, label %43, label %60

43:                                               ; preds = %22
  %44 = load %union.iucv_param*, %union.iucv_param** %13, align 8
  %45 = bitcast %union.iucv_param* %44 to %struct.TYPE_2__*
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 5
  %47 = load i32, i32* %46, align 8
  %48 = load i32*, i32** %9, align 8
  %49 = call i32 @memcpy(i32 %47, i32* %48, i32 4)
  %50 = load %union.iucv_param*, %union.iucv_param** %13, align 8
  %51 = bitcast %union.iucv_param* %50 to %struct.TYPE_2__*
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 5
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @ASCEBC(i32 %53, i32 4)
  %55 = load %union.iucv_param*, %union.iucv_param** %13, align 8
  %56 = bitcast %union.iucv_param* %55 to %struct.TYPE_2__*
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 5
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @EBC_TOUPPER(i32 %58, i32 4)
  br label %60

60:                                               ; preds = %43, %22
  %61 = load i32*, i32** %10, align 8
  %62 = icmp ne i32* %61, null
  br i1 %62, label %63, label %80

63:                                               ; preds = %60
  %64 = load %union.iucv_param*, %union.iucv_param** %13, align 8
  %65 = bitcast %union.iucv_param* %64 to %struct.TYPE_2__*
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 4
  %67 = load i32, i32* %66, align 4
  %68 = load i32*, i32** %10, align 8
  %69 = call i32 @memcpy(i32 %67, i32* %68, i32 4)
  %70 = load %union.iucv_param*, %union.iucv_param** %13, align 8
  %71 = bitcast %union.iucv_param* %70 to %struct.TYPE_2__*
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 4
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @ASCEBC(i32 %73, i32 4)
  %75 = load %union.iucv_param*, %union.iucv_param** %13, align 8
  %76 = bitcast %union.iucv_param* %75 to %struct.TYPE_2__*
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 4
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @EBC_TOUPPER(i32 %78, i32 4)
  br label %80

80:                                               ; preds = %63, %60
  %81 = load i32*, i32** %11, align 8
  %82 = icmp ne i32* %81, null
  br i1 %82, label %83, label %90

83:                                               ; preds = %80
  %84 = load %union.iucv_param*, %union.iucv_param** %13, align 8
  %85 = bitcast %union.iucv_param* %84 to %struct.TYPE_2__*
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 8
  %88 = load i32*, i32** %11, align 8
  %89 = call i32 @memcpy(i32 %87, i32* %88, i32 4)
  br label %90

90:                                               ; preds = %83, %80
  %91 = load i32, i32* @IUCV_CONNECT, align 4
  %92 = load %union.iucv_param*, %union.iucv_param** %13, align 8
  %93 = call i32 @iucv_call_b2f0(i32 %91, %union.iucv_param* %92)
  store i32 %93, i32* %14, align 4
  %94 = load i32, i32* %14, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %149, label %96

96:                                               ; preds = %90
  %97 = load %union.iucv_param*, %union.iucv_param** %13, align 8
  %98 = bitcast %union.iucv_param* %97 to %struct.TYPE_2__*
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* @iucv_max_pathid, align 8
  %102 = icmp slt i64 %100, %101
  br i1 %102, label %103, label %139

103:                                              ; preds = %96
  %104 = load %union.iucv_param*, %union.iucv_param** %13, align 8
  %105 = bitcast %union.iucv_param* %104 to %struct.TYPE_2__*
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = load %struct.iucv_path*, %struct.iucv_path** %7, align 8
  %109 = getelementptr inbounds %struct.iucv_path, %struct.iucv_path* %108, i32 0, i32 0
  store i64 %107, i64* %109, align 8
  %110 = load %union.iucv_param*, %union.iucv_param** %13, align 8
  %111 = bitcast %union.iucv_param* %110 to %struct.TYPE_2__*
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.iucv_path*, %struct.iucv_path** %7, align 8
  %115 = getelementptr inbounds %struct.iucv_path, %struct.iucv_path* %114, i32 0, i32 5
  store i32 %113, i32* %115, align 4
  %116 = load %union.iucv_param*, %union.iucv_param** %13, align 8
  %117 = bitcast %union.iucv_param* %116 to %struct.TYPE_2__*
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 8
  %120 = load %struct.iucv_path*, %struct.iucv_path** %7, align 8
  %121 = getelementptr inbounds %struct.iucv_path, %struct.iucv_path* %120, i32 0, i32 4
  store i32 %119, i32* %121, align 8
  %122 = load %struct.iucv_handler*, %struct.iucv_handler** %8, align 8
  %123 = load %struct.iucv_path*, %struct.iucv_path** %7, align 8
  %124 = getelementptr inbounds %struct.iucv_path, %struct.iucv_path* %123, i32 0, i32 3
  store %struct.iucv_handler* %122, %struct.iucv_handler** %124, align 8
  %125 = load i8*, i8** %12, align 8
  %126 = load %struct.iucv_path*, %struct.iucv_path** %7, align 8
  %127 = getelementptr inbounds %struct.iucv_path, %struct.iucv_path* %126, i32 0, i32 2
  store i8* %125, i8** %127, align 8
  %128 = load %struct.iucv_path*, %struct.iucv_path** %7, align 8
  %129 = getelementptr inbounds %struct.iucv_path, %struct.iucv_path* %128, i32 0, i32 1
  %130 = load %struct.iucv_handler*, %struct.iucv_handler** %8, align 8
  %131 = getelementptr inbounds %struct.iucv_handler, %struct.iucv_handler* %130, i32 0, i32 0
  %132 = call i32 @list_add_tail(i32* %129, i32* %131)
  %133 = load %struct.iucv_path*, %struct.iucv_path** %7, align 8
  %134 = load %struct.iucv_path**, %struct.iucv_path*** @iucv_path_table, align 8
  %135 = load %struct.iucv_path*, %struct.iucv_path** %7, align 8
  %136 = getelementptr inbounds %struct.iucv_path, %struct.iucv_path* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = getelementptr inbounds %struct.iucv_path*, %struct.iucv_path** %134, i64 %137
  store %struct.iucv_path* %133, %struct.iucv_path** %138, align 8
  br label %148

139:                                              ; preds = %96
  %140 = load %union.iucv_param*, %union.iucv_param** %13, align 8
  %141 = bitcast %union.iucv_param* %140 to %struct.TYPE_2__*
  %142 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = load i32, i32* @iucv_error_pathid, align 4
  %145 = call i32 @iucv_sever_pathid(i64 %143, i32 %144)
  %146 = load i32, i32* @EIO, align 4
  %147 = sub nsw i32 0, %146
  store i32 %147, i32* %14, align 4
  br label %148

148:                                              ; preds = %139, %103
  br label %149

149:                                              ; preds = %148, %90
  br label %150

150:                                              ; preds = %149, %19
  %151 = call i32 @spin_unlock_bh(i32* @iucv_table_lock)
  %152 = load i32, i32* %14, align 4
  ret i32 %152
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @iucv_cleanup_queue(...) #1

declare dso_local i64 @cpumask_empty(i32*) #1

declare dso_local i64 @smp_processor_id(...) #1

declare dso_local i32 @memset(%union.iucv_param*, i32, i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @ASCEBC(i32, i32) #1

declare dso_local i32 @EBC_TOUPPER(i32, i32) #1

declare dso_local i32 @iucv_call_b2f0(i32, %union.iucv_param*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @iucv_sever_pathid(i64, i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
