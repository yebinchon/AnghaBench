; ModuleID = '/home/carl/AnghaBench/linux/sound/firewire/extr_fcp.c_fcp_avc_transaction.c'
source_filename = "/home/carl/AnghaBench/linux/sound/firewire/extr_fcp.c_fcp_avc_transaction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fw_unit = type { i32 }
%struct.fcp_transaction = type { i32, i32, i64, i32, i32, %struct.fw_unit*, i32, i8* }

@STATE_PENDING = common dso_local global i64 0, align 8
@transactions_lock = common dso_local global i32 0, align 4
@transactions = common dso_local global i32 0, align 4
@TCODE_WRITE_QUADLET_REQUEST = common dso_local global i32 0, align 4
@TCODE_WRITE_BLOCK_REQUEST = common dso_local global i32 0, align 4
@CSR_REGISTER_BASE = common dso_local global i64 0, align 8
@CSR_FCP_COMMAND = common dso_local global i64 0, align 8
@FCP_TIMEOUT_MS = common dso_local global i32 0, align 4
@STATE_DEFERRED = common dso_local global i64 0, align 8
@STATE_COMPLETE = common dso_local global i64 0, align 8
@STATE_BUS_RESET = common dso_local global i64 0, align 8
@ERROR_DELAY_MS = common dso_local global i32 0, align 4
@ERROR_RETRIES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"FCP command timed out\0A\00", align 1
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fcp_avc_transaction(%struct.fw_unit* %0, i8* %1, i32 %2, i8* %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.fw_unit*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.fcp_transaction, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.fw_unit* %0, %struct.fw_unit** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  store i32 0, i32* %16, align 4
  %17 = load %struct.fw_unit*, %struct.fw_unit** %7, align 8
  %18 = getelementptr inbounds %struct.fcp_transaction, %struct.fcp_transaction* %13, i32 0, i32 5
  store %struct.fw_unit* %17, %struct.fw_unit** %18, align 8
  %19 = load i8*, i8** %10, align 8
  %20 = getelementptr inbounds %struct.fcp_transaction, %struct.fcp_transaction* %13, i32 0, i32 7
  store i8* %19, i8** %20, align 8
  %21 = load i32, i32* %11, align 4
  %22 = getelementptr inbounds %struct.fcp_transaction, %struct.fcp_transaction* %13, i32 0, i32 0
  store i32 %21, i32* %22, align 8
  %23 = load i32, i32* %12, align 4
  %24 = getelementptr inbounds %struct.fcp_transaction, %struct.fcp_transaction* %13, i32 0, i32 1
  store i32 %23, i32* %24, align 4
  %25 = load i64, i64* @STATE_PENDING, align 8
  %26 = getelementptr inbounds %struct.fcp_transaction, %struct.fcp_transaction* %13, i32 0, i32 2
  store i64 %25, i64* %26, align 8
  %27 = getelementptr inbounds %struct.fcp_transaction, %struct.fcp_transaction* %13, i32 0, i32 6
  %28 = call i32 @init_waitqueue_head(i32* %27)
  %29 = load i8*, i8** %8, align 8
  %30 = bitcast i8* %29 to i32*
  %31 = load i32, i32* %30, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %38, label %33

33:                                               ; preds = %6
  %34 = load i8*, i8** %8, align 8
  %35 = bitcast i8* %34 to i32*
  %36 = load i32, i32* %35, align 4
  %37 = icmp eq i32 %36, 3
  br i1 %37, label %38, label %40

38:                                               ; preds = %33, %6
  %39 = getelementptr inbounds %struct.fcp_transaction, %struct.fcp_transaction* %13, i32 0, i32 3
  store i32 1, i32* %39, align 8
  br label %40

40:                                               ; preds = %38, %33
  %41 = call i32 @spin_lock_irq(i32* @transactions_lock)
  %42 = getelementptr inbounds %struct.fcp_transaction, %struct.fcp_transaction* %13, i32 0, i32 4
  %43 = call i32 @list_add_tail(i32* %42, i32* @transactions)
  %44 = call i32 @spin_unlock_irq(i32* @transactions_lock)
  br label %45

45:                                               ; preds = %116, %40
  %46 = load i32, i32* %9, align 4
  %47 = icmp eq i32 %46, 4
  br i1 %47, label %48, label %50

48:                                               ; preds = %45
  %49 = load i32, i32* @TCODE_WRITE_QUADLET_REQUEST, align 4
  br label %52

50:                                               ; preds = %45
  %51 = load i32, i32* @TCODE_WRITE_BLOCK_REQUEST, align 4
  br label %52

52:                                               ; preds = %50, %48
  %53 = phi i32 [ %49, %48 ], [ %51, %50 ]
  store i32 %53, i32* %14, align 4
  %54 = getelementptr inbounds %struct.fcp_transaction, %struct.fcp_transaction* %13, i32 0, i32 5
  %55 = load %struct.fw_unit*, %struct.fw_unit** %54, align 8
  %56 = load i32, i32* %14, align 4
  %57 = load i64, i64* @CSR_REGISTER_BASE, align 8
  %58 = load i64, i64* @CSR_FCP_COMMAND, align 8
  %59 = add nsw i64 %57, %58
  %60 = load i8*, i8** %8, align 8
  %61 = load i32, i32* %9, align 4
  %62 = call i32 @snd_fw_transaction(%struct.fw_unit* %55, i32 %56, i64 %59, i8* %60, i32 %61, i32 0)
  store i32 %62, i32* %15, align 4
  %63 = load i32, i32* %15, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %52
  br label %117

66:                                               ; preds = %52
  br label %67

67:                                               ; preds = %82, %66
  %68 = getelementptr inbounds %struct.fcp_transaction, %struct.fcp_transaction* %13, i32 0, i32 6
  %69 = load i32, i32* %68, align 8
  %70 = getelementptr inbounds %struct.fcp_transaction, %struct.fcp_transaction* %13, i32 0, i32 2
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @STATE_PENDING, align 8
  %73 = icmp ne i64 %71, %72
  %74 = zext i1 %73 to i32
  %75 = load i32, i32* @FCP_TIMEOUT_MS, align 4
  %76 = call i32 @msecs_to_jiffies(i32 %75)
  %77 = call i32 @wait_event_timeout(i32 %69, i32 %74, i32 %76)
  %78 = getelementptr inbounds %struct.fcp_transaction, %struct.fcp_transaction* %13, i32 0, i32 2
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @STATE_DEFERRED, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %85

82:                                               ; preds = %67
  %83 = load i64, i64* @STATE_PENDING, align 8
  %84 = getelementptr inbounds %struct.fcp_transaction, %struct.fcp_transaction* %13, i32 0, i32 2
  store i64 %83, i64* %84, align 8
  br label %67

85:                                               ; preds = %67
  %86 = getelementptr inbounds %struct.fcp_transaction, %struct.fcp_transaction* %13, i32 0, i32 2
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @STATE_COMPLETE, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %90, label %93

90:                                               ; preds = %85
  %91 = getelementptr inbounds %struct.fcp_transaction, %struct.fcp_transaction* %13, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  store i32 %92, i32* %15, align 4
  br label %117

93:                                               ; preds = %85
  %94 = getelementptr inbounds %struct.fcp_transaction, %struct.fcp_transaction* %13, i32 0, i32 2
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @STATE_BUS_RESET, align 8
  %97 = icmp eq i64 %95, %96
  br i1 %97, label %98, label %101

98:                                               ; preds = %93
  %99 = load i32, i32* @ERROR_DELAY_MS, align 4
  %100 = call i32 @msleep(i32 %99)
  br label %114

101:                                              ; preds = %93
  %102 = load i32, i32* %16, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %16, align 4
  %104 = load i32, i32* @ERROR_RETRIES, align 4
  %105 = icmp sge i32 %103, %104
  br i1 %105, label %106, label %113

106:                                              ; preds = %101
  %107 = getelementptr inbounds %struct.fcp_transaction, %struct.fcp_transaction* %13, i32 0, i32 5
  %108 = load %struct.fw_unit*, %struct.fw_unit** %107, align 8
  %109 = getelementptr inbounds %struct.fw_unit, %struct.fw_unit* %108, i32 0, i32 0
  %110 = call i32 @dev_err(i32* %109, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %111 = load i32, i32* @EIO, align 4
  %112 = sub nsw i32 0, %111
  store i32 %112, i32* %15, align 4
  br label %117

113:                                              ; preds = %101
  br label %114

114:                                              ; preds = %113, %98
  br label %115

115:                                              ; preds = %114
  br label %116

116:                                              ; preds = %115
  br label %45

117:                                              ; preds = %106, %90, %65
  %118 = call i32 @spin_lock_irq(i32* @transactions_lock)
  %119 = getelementptr inbounds %struct.fcp_transaction, %struct.fcp_transaction* %13, i32 0, i32 4
  %120 = call i32 @list_del(i32* %119)
  %121 = call i32 @spin_unlock_irq(i32* @transactions_lock)
  %122 = load i32, i32* %15, align 4
  ret i32 %122
}

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @snd_fw_transaction(%struct.fw_unit*, i32, i64, i8*, i32, i32) #1

declare dso_local i32 @wait_event_timeout(i32, i32, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @list_del(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
