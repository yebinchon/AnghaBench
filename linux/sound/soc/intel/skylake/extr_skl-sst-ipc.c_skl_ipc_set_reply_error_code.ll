; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/skylake/extr_skl-sst-ipc.c_skl_ipc_set_reply_error_code.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/skylake/extr_skl-sst-ipc.c_skl_ipc_set_reply_error_code.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i64, i64 }
%struct.sst_generic_ipc = type { %struct.TYPE_8__*, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 (%struct.TYPE_8__*)* }

@skl_err_map = common dso_local global %struct.TYPE_9__* null, align 8
@.str = private unnamed_addr constant [36 x i8] c"ipc FW reply: %d FW Error Code: %u\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"ipc FW reply: %s FW Error Code: %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sst_generic_ipc*, i64)* @skl_ipc_set_reply_error_code to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @skl_ipc_set_reply_error_code(%struct.sst_generic_ipc* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sst_generic_ipc*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.sst_generic_ipc* %0, %struct.sst_generic_ipc** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 0, i32* %6, align 4
  br label %7

7:                                                ; preds = %23, %2
  %8 = load i32, i32* %6, align 4
  %9 = load %struct.TYPE_9__*, %struct.TYPE_9__** @skl_err_map, align 8
  %10 = call i32 @ARRAY_SIZE(%struct.TYPE_9__* %9)
  %11 = icmp slt i32 %8, %10
  br i1 %11, label %12, label %26

12:                                               ; preds = %7
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** @skl_err_map, align 8
  %14 = load i32, i32* %6, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i64 %15
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* %5, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %12
  br label %26

22:                                               ; preds = %12
  br label %23

23:                                               ; preds = %22
  %24 = load i32, i32* %6, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %6, align 4
  br label %7

26:                                               ; preds = %21, %7
  %27 = load i32, i32* %6, align 4
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** @skl_err_map, align 8
  %29 = call i32 @ARRAY_SIZE(%struct.TYPE_9__* %28)
  %30 = icmp eq i32 %27, %29
  br i1 %30, label %31, label %49

31:                                               ; preds = %26
  %32 = load %struct.sst_generic_ipc*, %struct.sst_generic_ipc** %4, align 8
  %33 = getelementptr inbounds %struct.sst_generic_ipc, %struct.sst_generic_ipc* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = load i64, i64* %5, align 8
  %36 = load %struct.sst_generic_ipc*, %struct.sst_generic_ipc** %4, align 8
  %37 = getelementptr inbounds %struct.sst_generic_ipc, %struct.sst_generic_ipc* %36, i32 0, i32 0
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  %41 = load i32 (%struct.TYPE_8__*)*, i32 (%struct.TYPE_8__*)** %40, align 8
  %42 = load %struct.sst_generic_ipc*, %struct.sst_generic_ipc** %4, align 8
  %43 = getelementptr inbounds %struct.sst_generic_ipc, %struct.sst_generic_ipc* %42, i32 0, i32 0
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %43, align 8
  %45 = call i32 %41(%struct.TYPE_8__* %44)
  %46 = call i32 @dev_err(i32 %34, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i64 %35, i32 %45)
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %3, align 4
  br label %107

49:                                               ; preds = %26
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** @skl_err_map, align 8
  %51 = load i32, i32* %6, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = icmp slt i64 %55, 0
  br i1 %56, label %57, label %78

57:                                               ; preds = %49
  %58 = load %struct.sst_generic_ipc*, %struct.sst_generic_ipc** %4, align 8
  %59 = getelementptr inbounds %struct.sst_generic_ipc, %struct.sst_generic_ipc* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** @skl_err_map, align 8
  %62 = load i32, i32* %6, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 2
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.sst_generic_ipc*, %struct.sst_generic_ipc** %4, align 8
  %68 = getelementptr inbounds %struct.sst_generic_ipc, %struct.sst_generic_ipc* %67, i32 0, i32 0
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 0
  %72 = load i32 (%struct.TYPE_8__*)*, i32 (%struct.TYPE_8__*)** %71, align 8
  %73 = load %struct.sst_generic_ipc*, %struct.sst_generic_ipc** %4, align 8
  %74 = getelementptr inbounds %struct.sst_generic_ipc, %struct.sst_generic_ipc* %73, i32 0, i32 0
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %74, align 8
  %76 = call i32 %72(%struct.TYPE_8__* %75)
  %77 = call i32 @dev_err(i32 %60, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i64 %66, i32 %76)
  br label %99

78:                                               ; preds = %49
  %79 = load %struct.sst_generic_ipc*, %struct.sst_generic_ipc** %4, align 8
  %80 = getelementptr inbounds %struct.sst_generic_ipc, %struct.sst_generic_ipc* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** @skl_err_map, align 8
  %83 = load i32, i32* %6, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 2
  %87 = load i64, i64* %86, align 8
  %88 = load %struct.sst_generic_ipc*, %struct.sst_generic_ipc** %4, align 8
  %89 = getelementptr inbounds %struct.sst_generic_ipc, %struct.sst_generic_ipc* %88, i32 0, i32 0
  %90 = load %struct.TYPE_8__*, %struct.TYPE_8__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 0
  %93 = load i32 (%struct.TYPE_8__*)*, i32 (%struct.TYPE_8__*)** %92, align 8
  %94 = load %struct.sst_generic_ipc*, %struct.sst_generic_ipc** %4, align 8
  %95 = getelementptr inbounds %struct.sst_generic_ipc, %struct.sst_generic_ipc* %94, i32 0, i32 0
  %96 = load %struct.TYPE_8__*, %struct.TYPE_8__** %95, align 8
  %97 = call i32 %93(%struct.TYPE_8__* %96)
  %98 = call i32 @dev_info(i32 %81, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i64 %87, i32 %97)
  br label %99

99:                                               ; preds = %78, %57
  %100 = load %struct.TYPE_9__*, %struct.TYPE_9__** @skl_err_map, align 8
  %101 = load i32, i32* %6, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %100, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %103, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = trunc i64 %105 to i32
  store i32 %106, i32* %3, align 4
  br label %107

107:                                              ; preds = %99, %31
  %108 = load i32, i32* %3, align 4
  ret i32 %108
}

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_9__*) #1

declare dso_local i32 @dev_err(i32, i8*, i64, i32) #1

declare dso_local i32 @dev_info(i32, i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
