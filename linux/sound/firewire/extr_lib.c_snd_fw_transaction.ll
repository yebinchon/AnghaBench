; ModuleID = '/home/carl/AnghaBench/linux/sound/firewire/extr_lib.c_snd_fw_transaction.c'
source_filename = "/home/carl/AnghaBench/linux/sound/firewire/extr_lib.c_snd_fw_transaction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fw_unit = type { i32 }
%struct.fw_device = type { i32, i32, i32, i32 }

@FW_GENERATION_MASK = common dso_local global i32 0, align 4
@FW_FIXED_GENERATION = common dso_local global i32 0, align 4
@RCODE_COMPLETE = common dso_local global i32 0, align 4
@RCODE_GENERATION = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@FW_QUIET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"transaction failed: %s\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@ERROR_RETRY_DELAY_MS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_fw_transaction(%struct.fw_unit* %0, i32 %1, i32 %2, i8* %3, i64 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.fw_unit*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.fw_device*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.fw_unit* %0, %struct.fw_unit** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i8* %3, i8** %11, align 8
  store i64 %4, i64* %12, align 8
  store i32 %5, i32* %13, align 4
  %18 = load %struct.fw_unit*, %struct.fw_unit** %8, align 8
  %19 = call %struct.fw_device* @fw_parent_device(%struct.fw_unit* %18)
  store %struct.fw_device* %19, %struct.fw_device** %14, align 8
  store i32 0, i32* %17, align 4
  %20 = load i32, i32* %13, align 4
  %21 = load i32, i32* @FW_GENERATION_MASK, align 4
  %22 = and i32 %20, %21
  store i32 %22, i32* %15, align 4
  br label %23

23:                                               ; preds = %87, %6
  %24 = load i32, i32* %13, align 4
  %25 = load i32, i32* @FW_FIXED_GENERATION, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %33, label %28

28:                                               ; preds = %23
  %29 = load %struct.fw_device*, %struct.fw_device** %14, align 8
  %30 = getelementptr inbounds %struct.fw_device, %struct.fw_device* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %15, align 4
  %32 = call i32 (...) @smp_rmb()
  br label %33

33:                                               ; preds = %28, %23
  %34 = load %struct.fw_device*, %struct.fw_device** %14, align 8
  %35 = getelementptr inbounds %struct.fw_device, %struct.fw_device* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %9, align 4
  %38 = load %struct.fw_device*, %struct.fw_device** %14, align 8
  %39 = getelementptr inbounds %struct.fw_device, %struct.fw_device* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %15, align 4
  %42 = load %struct.fw_device*, %struct.fw_device** %14, align 8
  %43 = getelementptr inbounds %struct.fw_device, %struct.fw_device* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %10, align 4
  %46 = load i8*, i8** %11, align 8
  %47 = load i64, i64* %12, align 8
  %48 = call i32 @fw_run_transaction(i32 %36, i32 %37, i32 %40, i32 %41, i32 %44, i32 %45, i8* %46, i64 %47)
  store i32 %48, i32* %16, align 4
  %49 = load i32, i32* %16, align 4
  %50 = load i32, i32* @RCODE_COMPLETE, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %33
  store i32 0, i32* %7, align 4
  br label %90

53:                                               ; preds = %33
  %54 = load i32, i32* %16, align 4
  %55 = load i32, i32* @RCODE_GENERATION, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %65

57:                                               ; preds = %53
  %58 = load i32, i32* %13, align 4
  %59 = load i32, i32* @FW_FIXED_GENERATION, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %57
  %63 = load i32, i32* @EAGAIN, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %7, align 4
  br label %90

65:                                               ; preds = %57, %53
  %66 = load i32, i32* %16, align 4
  %67 = call i64 @rcode_is_permanent_error(i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %73, label %69

69:                                               ; preds = %65
  %70 = load i32, i32* %17, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %17, align 4
  %72 = icmp sge i32 %71, 3
  br i1 %72, label %73, label %87

73:                                               ; preds = %69, %65
  %74 = load i32, i32* %13, align 4
  %75 = load i32, i32* @FW_QUIET, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %84, label %78

78:                                               ; preds = %73
  %79 = load %struct.fw_unit*, %struct.fw_unit** %8, align 8
  %80 = getelementptr inbounds %struct.fw_unit, %struct.fw_unit* %79, i32 0, i32 0
  %81 = load i32, i32* %16, align 4
  %82 = call i32 @fw_rcode_string(i32 %81)
  %83 = call i32 @dev_err(i32* %80, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %82)
  br label %84

84:                                               ; preds = %78, %73
  %85 = load i32, i32* @EIO, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %7, align 4
  br label %90

87:                                               ; preds = %69
  %88 = load i32, i32* @ERROR_RETRY_DELAY_MS, align 4
  %89 = call i32 @msleep(i32 %88)
  br label %23

90:                                               ; preds = %84, %62, %52
  %91 = load i32, i32* %7, align 4
  ret i32 %91
}

declare dso_local %struct.fw_device* @fw_parent_device(%struct.fw_unit*) #1

declare dso_local i32 @smp_rmb(...) #1

declare dso_local i32 @fw_run_transaction(i32, i32, i32, i32, i32, i32, i8*, i64) #1

declare dso_local i64 @rcode_is_permanent_error(i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @fw_rcode_string(i32) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
