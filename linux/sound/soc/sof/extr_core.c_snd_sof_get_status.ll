; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sof/extr_core.c_snd_sof_get_status.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sof/extr_core.c_snd_sof_get_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }
%struct.snd_sof_dev = type { i32 }
%struct.sof_ipc_panic_info = type { i32, i32 }

@SOF_IPC_PANIC_MAGIC_MASK = common dso_local global i32 0, align 4
@SOF_IPC_PANIC_MAGIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"error: unexpected fault 0x%8.8x trace 0x%8.8x\0A\00", align 1
@SOF_IPC_PANIC_CODE_MASK = common dso_local global i32 0, align 4
@panic_msg = common dso_local global %struct.TYPE_3__* null, align 8
@.str.1 = private unnamed_addr constant [11 x i8] c"error: %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"error: trace point %8.8x\0A\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"error: unknown reason %8.8x\0A\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"error: panic at %s:%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @snd_sof_get_status(%struct.snd_sof_dev* %0, i32 %1, i32 %2, i8* %3, %struct.sof_ipc_panic_info* %4, i8* %5, i64 %6) #0 {
  %8 = alloca %struct.snd_sof_dev*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca %struct.sof_ipc_panic_info*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.snd_sof_dev* %0, %struct.snd_sof_dev** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i8* %3, i8** %11, align 8
  store %struct.sof_ipc_panic_info* %4, %struct.sof_ipc_panic_info** %12, align 8
  store i8* %5, i8** %13, align 8
  store i64 %6, i64* %14, align 8
  %17 = load i32, i32* %9, align 4
  %18 = load i32, i32* @SOF_IPC_PANIC_MAGIC_MASK, align 4
  %19 = and i32 %17, %18
  %20 = load i32, i32* @SOF_IPC_PANIC_MAGIC, align 4
  %21 = icmp ne i32 %19, %20
  br i1 %21, label %22, label %29

22:                                               ; preds = %7
  %23 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %8, align 8
  %24 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* %10, align 4
  %28 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %25, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %26, i32 %27)
  br label %99

29:                                               ; preds = %7
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* @SOF_IPC_PANIC_MAGIC_MASK, align 4
  %32 = load i32, i32* @SOF_IPC_PANIC_CODE_MASK, align 4
  %33 = or i32 %31, %32
  %34 = and i32 %30, %33
  store i32 %34, i32* %15, align 4
  store i32 0, i32* %16, align 4
  br label %35

35:                                               ; preds = %66, %29
  %36 = load i32, i32* %16, align 4
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** @panic_msg, align 8
  %38 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %37)
  %39 = icmp slt i32 %36, %38
  br i1 %39, label %40, label %69

40:                                               ; preds = %35
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** @panic_msg, align 8
  %42 = load i32, i32* %16, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %15, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %65

49:                                               ; preds = %40
  %50 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %8, align 8
  %51 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** @panic_msg, align 8
  %54 = load i32, i32* %16, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %52, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %58)
  %60 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %8, align 8
  %61 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* %10, align 4
  %64 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %62, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %63)
  br label %80

65:                                               ; preds = %40
  br label %66

66:                                               ; preds = %65
  %67 = load i32, i32* %16, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %16, align 4
  br label %35

69:                                               ; preds = %35
  %70 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %8, align 8
  %71 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* %9, align 4
  %74 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %72, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i32 %73)
  %75 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %8, align 8
  %76 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* %10, align 4
  %79 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %77, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %78)
  br label %80

80:                                               ; preds = %69, %49
  %81 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %8, align 8
  %82 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.sof_ipc_panic_info*, %struct.sof_ipc_panic_info** %12, align 8
  %85 = getelementptr inbounds %struct.sof_ipc_panic_info, %struct.sof_ipc_panic_info* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.sof_ipc_panic_info*, %struct.sof_ipc_panic_info** %12, align 8
  %88 = getelementptr inbounds %struct.sof_ipc_panic_info, %struct.sof_ipc_panic_info* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %83, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i32 %86, i32 %89)
  %91 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %8, align 8
  %92 = load i8*, i8** %11, align 8
  %93 = call i32 @sof_oops(%struct.snd_sof_dev* %91, i8* %92)
  %94 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %8, align 8
  %95 = load i8*, i8** %11, align 8
  %96 = load i8*, i8** %13, align 8
  %97 = load i64, i64* %14, align 8
  %98 = call i32 @sof_stack(%struct.snd_sof_dev* %94, i8* %95, i8* %96, i64 %97)
  br label %99

99:                                               ; preds = %80, %22
  ret void
}

declare dso_local i32 @dev_err(i32, i8*, i32, ...) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_3__*) #1

declare dso_local i32 @sof_oops(%struct.snd_sof_dev*, i8*) #1

declare dso_local i32 @sof_stack(%struct.snd_sof_dev*, i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
