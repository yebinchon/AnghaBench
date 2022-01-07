; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/atom/sst/extr_sst_loader.c_sst_load_fw.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/atom/sst/extr_sst_loader.c_sst_load_fw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_sst_drv = type { i64, %struct.TYPE_2__*, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { {}*, {}*, i32 (...)*, {}* }
%struct.sst_block = type { i32 }

@.str = private unnamed_addr constant [13 x i8] c"sst_load_fw\0A\00", align 1
@SST_RESET = common dso_local global i64 0, align 8
@SST_SHUTDOWN = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"sst: FW not in memory retry to download\0A\00", align 1
@FW_DWNL_ID = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@SST_FW_LOADING = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [23 x i8] c"fw download failed %d\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@PM_QOS_DEFAULT_VALUE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [23 x i8] c"fw load successful!!!\0A\00", align 1
@SST_FW_RUNNING = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sst_load_fw(%struct.intel_sst_drv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.intel_sst_drv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sst_block*, align 8
  store %struct.intel_sst_drv* %0, %struct.intel_sst_drv** %3, align 8
  store i32 0, i32* %4, align 4
  %6 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %3, align 8
  %7 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 8
  %9 = call i32 @dev_dbg(i32 %8, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %3, align 8
  %11 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @SST_RESET, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %21, label %15

15:                                               ; preds = %1
  %16 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %3, align 8
  %17 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @SST_SHUTDOWN, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %15, %1
  %22 = load i32, i32* @EAGAIN, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %147

24:                                               ; preds = %15
  %25 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %3, align 8
  %26 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %25, i32 0, i32 5
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %41, label %29

29:                                               ; preds = %24
  %30 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %3, align 8
  %31 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @dev_dbg(i32 %32, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %34 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %3, align 8
  %35 = call i32 @sst_request_fw(%struct.intel_sst_drv* %34)
  store i32 %35, i32* %4, align 4
  %36 = load i32, i32* %4, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %29
  %39 = load i32, i32* %4, align 4
  store i32 %39, i32* %2, align 4
  br label %147

40:                                               ; preds = %29
  br label %41

41:                                               ; preds = %40, %24
  %42 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %3, align 8
  %43 = load i32, i32* @FW_DWNL_ID, align 4
  %44 = call %struct.sst_block* @sst_create_block(%struct.intel_sst_drv* %42, i32 0, i32 %43)
  store %struct.sst_block* %44, %struct.sst_block** %5, align 8
  %45 = load %struct.sst_block*, %struct.sst_block** %5, align 8
  %46 = icmp eq %struct.sst_block* %45, null
  br i1 %46, label %47, label %50

47:                                               ; preds = %41
  %48 = load i32, i32* @ENOMEM, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %2, align 4
  br label %147

50:                                               ; preds = %41
  %51 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %3, align 8
  %52 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @pm_qos_update_request(i32 %53, i32 0)
  %55 = load i64, i64* @SST_FW_LOADING, align 8
  %56 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %3, align 8
  %57 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %56, i32 0, i32 0
  store i64 %55, i64* %57, align 8
  %58 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %3, align 8
  %59 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %58, i32 0, i32 1
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = bitcast {}** %61 to i32 (%struct.intel_sst_drv*)**
  %63 = load i32 (%struct.intel_sst_drv*)*, i32 (%struct.intel_sst_drv*)** %62, align 8
  %64 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %3, align 8
  %65 = call i32 %63(%struct.intel_sst_drv* %64)
  store i32 %65, i32* %4, align 4
  %66 = load i32, i32* %4, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %50
  br label %116

69:                                               ; preds = %50
  %70 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %3, align 8
  %71 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %70, i32 0, i32 4
  %72 = call i32 @sst_do_memcpy(i32* %71)
  %73 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %3, align 8
  %74 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %73, i32 0, i32 1
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 3
  %77 = bitcast {}** %76 to i32 (%struct.intel_sst_drv*)**
  %78 = load i32 (%struct.intel_sst_drv*)*, i32 (%struct.intel_sst_drv*)** %77, align 8
  %79 = icmp ne i32 (%struct.intel_sst_drv*)* %78, null
  br i1 %79, label %80, label %89

80:                                               ; preds = %69
  %81 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %3, align 8
  %82 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %81, i32 0, i32 1
  %83 = load %struct.TYPE_2__*, %struct.TYPE_2__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 3
  %85 = bitcast {}** %84 to i32 (%struct.intel_sst_drv*)**
  %86 = load i32 (%struct.intel_sst_drv*)*, i32 (%struct.intel_sst_drv*)** %85, align 8
  %87 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %3, align 8
  %88 = call i32 %86(%struct.intel_sst_drv* %87)
  br label %89

89:                                               ; preds = %80, %69
  %90 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %3, align 8
  %91 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %90, i32 0, i32 1
  %92 = load %struct.TYPE_2__*, %struct.TYPE_2__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 1
  %94 = bitcast {}** %93 to i32 (%struct.intel_sst_drv*)**
  %95 = load i32 (%struct.intel_sst_drv*)*, i32 (%struct.intel_sst_drv*)** %94, align 8
  %96 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %3, align 8
  %97 = call i32 %95(%struct.intel_sst_drv* %96)
  store i32 %97, i32* %4, align 4
  %98 = load i32, i32* %4, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %89
  br label %116

101:                                              ; preds = %89
  %102 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %3, align 8
  %103 = load %struct.sst_block*, %struct.sst_block** %5, align 8
  %104 = call i32 @sst_wait_timeout(%struct.intel_sst_drv* %102, %struct.sst_block* %103)
  store i32 %104, i32* %4, align 4
  %105 = load i32, i32* %4, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %115

107:                                              ; preds = %101
  %108 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %3, align 8
  %109 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 8
  %111 = load i32, i32* %4, align 4
  %112 = call i32 @dev_err(i32 %110, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %111)
  %113 = load i32, i32* @EBUSY, align 4
  %114 = sub nsw i32 0, %113
  store i32 %114, i32* %4, align 4
  br label %115

115:                                              ; preds = %107, %101
  br label %116

116:                                              ; preds = %115, %100, %68
  %117 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %3, align 8
  %118 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %117, i32 0, i32 3
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* @PM_QOS_DEFAULT_VALUE, align 4
  %121 = call i32 @pm_qos_update_request(i32 %119, i32 %120)
  %122 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %3, align 8
  %123 = load %struct.sst_block*, %struct.sst_block** %5, align 8
  %124 = call i32 @sst_free_block(%struct.intel_sst_drv* %122, %struct.sst_block* %123)
  %125 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %3, align 8
  %126 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 8
  %128 = call i32 @dev_dbg(i32 %127, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  %129 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %3, align 8
  %130 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %129, i32 0, i32 1
  %131 = load %struct.TYPE_2__*, %struct.TYPE_2__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %131, i32 0, i32 2
  %133 = load i32 (...)*, i32 (...)** %132, align 8
  %134 = icmp ne i32 (...)* %133, null
  br i1 %134, label %135, label %142

135:                                              ; preds = %116
  %136 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %3, align 8
  %137 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %136, i32 0, i32 1
  %138 = load %struct.TYPE_2__*, %struct.TYPE_2__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %138, i32 0, i32 2
  %140 = load i32 (...)*, i32 (...)** %139, align 8
  %141 = call i32 (...) %140()
  br label %142

142:                                              ; preds = %135, %116
  %143 = load i64, i64* @SST_FW_RUNNING, align 8
  %144 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %3, align 8
  %145 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %144, i32 0, i32 0
  store i64 %143, i64* %145, align 8
  %146 = load i32, i32* %4, align 4
  store i32 %146, i32* %2, align 4
  br label %147

147:                                              ; preds = %142, %47, %38, %21
  %148 = load i32, i32* %2, align 4
  ret i32 %148
}

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @sst_request_fw(%struct.intel_sst_drv*) #1

declare dso_local %struct.sst_block* @sst_create_block(%struct.intel_sst_drv*, i32, i32) #1

declare dso_local i32 @pm_qos_update_request(i32, i32) #1

declare dso_local i32 @sst_do_memcpy(i32*) #1

declare dso_local i32 @sst_wait_timeout(%struct.intel_sst_drv*, %struct.sst_block*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @sst_free_block(%struct.intel_sst_drv*, %struct.sst_block*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
