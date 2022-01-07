; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/hidp/extr_core.c_hidp_set_raw_report.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/hidp/extr_core.c_hidp_set_raw_report.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_device = type { %struct.hidp_session* }
%struct.hidp_session = type { i32, i32, i32, i32, i32 }

@HIDP_TRANS_SET_REPORT = common dso_local global i8 0, align 1
@HIDP_DATA_RTYPE_FEATURE = common dso_local global i8 0, align 1
@HIDP_DATA_RTYPE_INPUT = common dso_local global i8 0, align 1
@HIDP_DATA_RTYPE_OUPUT = common dso_local global i8 0, align 1
@EINVAL = common dso_local global i32 0, align 4
@ERESTARTSYS = common dso_local global i32 0, align 4
@HIDP_WAITING_FOR_SEND_ACK = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hid_device*, i8, i8*, i64, i8)* @hidp_set_raw_report to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hidp_set_raw_report(%struct.hid_device* %0, i8 zeroext %1, i8* %2, i64 %3, i8 zeroext %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.hid_device*, align 8
  %8 = alloca i8, align 1
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8, align 1
  %12 = alloca %struct.hidp_session*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.hid_device* %0, %struct.hid_device** %7, align 8
  store i8 %1, i8* %8, align 1
  store i8* %2, i8** %9, align 8
  store i64 %3, i64* %10, align 8
  store i8 %4, i8* %11, align 1
  %15 = load %struct.hid_device*, %struct.hid_device** %7, align 8
  %16 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %15, i32 0, i32 0
  %17 = load %struct.hidp_session*, %struct.hidp_session** %16, align 8
  store %struct.hidp_session* %17, %struct.hidp_session** %12, align 8
  %18 = load i8, i8* %11, align 1
  %19 = zext i8 %18 to i32
  switch i32 %19, label %41 [
    i32 130, label %20
    i32 129, label %27
    i32 128, label %34
  ]

20:                                               ; preds = %5
  %21 = load i8, i8* @HIDP_TRANS_SET_REPORT, align 1
  %22 = zext i8 %21 to i32
  %23 = load i8, i8* @HIDP_DATA_RTYPE_FEATURE, align 1
  %24 = zext i8 %23 to i32
  %25 = or i32 %22, %24
  %26 = trunc i32 %25 to i8
  store i8 %26, i8* %11, align 1
  br label %44

27:                                               ; preds = %5
  %28 = load i8, i8* @HIDP_TRANS_SET_REPORT, align 1
  %29 = zext i8 %28 to i32
  %30 = load i8, i8* @HIDP_DATA_RTYPE_INPUT, align 1
  %31 = zext i8 %30 to i32
  %32 = or i32 %29, %31
  %33 = trunc i32 %32 to i8
  store i8 %33, i8* %11, align 1
  br label %44

34:                                               ; preds = %5
  %35 = load i8, i8* @HIDP_TRANS_SET_REPORT, align 1
  %36 = zext i8 %35 to i32
  %37 = load i8, i8* @HIDP_DATA_RTYPE_OUPUT, align 1
  %38 = zext i8 %37 to i32
  %39 = or i32 %36, %38
  %40 = trunc i32 %39 to i8
  store i8 %40, i8* %11, align 1
  br label %44

41:                                               ; preds = %5
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %6, align 4
  br label %135

44:                                               ; preds = %34, %27, %20
  %45 = load %struct.hidp_session*, %struct.hidp_session** %12, align 8
  %46 = getelementptr inbounds %struct.hidp_session, %struct.hidp_session* %45, i32 0, i32 0
  %47 = call i64 @mutex_lock_interruptible(i32* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %44
  %50 = load i32, i32* @ERESTARTSYS, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %6, align 4
  br label %135

52:                                               ; preds = %44
  %53 = load i8, i8* %8, align 1
  %54 = load i8*, i8** %9, align 8
  %55 = getelementptr inbounds i8, i8* %54, i64 0
  store i8 %53, i8* %55, align 1
  %56 = load i32, i32* @HIDP_WAITING_FOR_SEND_ACK, align 4
  %57 = load %struct.hidp_session*, %struct.hidp_session** %12, align 8
  %58 = getelementptr inbounds %struct.hidp_session, %struct.hidp_session* %57, i32 0, i32 1
  %59 = call i32 @set_bit(i32 %56, i32* %58)
  %60 = load %struct.hidp_session*, %struct.hidp_session** %12, align 8
  %61 = load i8, i8* %11, align 1
  %62 = load i8*, i8** %9, align 8
  %63 = load i64, i64* %10, align 8
  %64 = call i32 @hidp_send_ctrl_message(%struct.hidp_session* %60, i8 zeroext %61, i8* %62, i64 %63)
  store i32 %64, i32* %13, align 4
  %65 = load i32, i32* %13, align 4
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %52
  br label %126

68:                                               ; preds = %52
  br label %69

69:                                               ; preds = %114, %68
  %70 = load i32, i32* @HIDP_WAITING_FOR_SEND_ACK, align 4
  %71 = load %struct.hidp_session*, %struct.hidp_session** %12, align 8
  %72 = getelementptr inbounds %struct.hidp_session, %struct.hidp_session* %71, i32 0, i32 1
  %73 = call i64 @test_bit(i32 %70, i32* %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %81

75:                                               ; preds = %69
  %76 = load %struct.hidp_session*, %struct.hidp_session** %12, align 8
  %77 = getelementptr inbounds %struct.hidp_session, %struct.hidp_session* %76, i32 0, i32 3
  %78 = call i64 @atomic_read(i32* %77)
  %79 = icmp ne i64 %78, 0
  %80 = xor i1 %79, true
  br label %81

81:                                               ; preds = %75, %69
  %82 = phi i1 [ false, %69 ], [ %80, %75 ]
  br i1 %82, label %83, label %115

83:                                               ; preds = %81
  %84 = load %struct.hidp_session*, %struct.hidp_session** %12, align 8
  %85 = getelementptr inbounds %struct.hidp_session, %struct.hidp_session* %84, i32 0, i32 4
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @HIDP_WAITING_FOR_SEND_ACK, align 4
  %88 = load %struct.hidp_session*, %struct.hidp_session** %12, align 8
  %89 = getelementptr inbounds %struct.hidp_session, %struct.hidp_session* %88, i32 0, i32 1
  %90 = call i64 @test_bit(i32 %87, i32* %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %97

92:                                               ; preds = %83
  %93 = load %struct.hidp_session*, %struct.hidp_session** %12, align 8
  %94 = getelementptr inbounds %struct.hidp_session, %struct.hidp_session* %93, i32 0, i32 3
  %95 = call i64 @atomic_read(i32* %94)
  %96 = icmp ne i64 %95, 0
  br label %97

97:                                               ; preds = %92, %83
  %98 = phi i1 [ true, %83 ], [ %96, %92 ]
  %99 = zext i1 %98 to i32
  %100 = load i32, i32* @HZ, align 4
  %101 = mul nsw i32 10, %100
  %102 = call i32 @wait_event_interruptible_timeout(i32 %86, i32 %99, i32 %101)
  store i32 %102, i32* %14, align 4
  %103 = load i32, i32* %14, align 4
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %108

105:                                              ; preds = %97
  %106 = load i32, i32* @EIO, align 4
  %107 = sub nsw i32 0, %106
  store i32 %107, i32* %13, align 4
  br label %126

108:                                              ; preds = %97
  %109 = load i32, i32* %14, align 4
  %110 = icmp slt i32 %109, 0
  br i1 %110, label %111, label %114

111:                                              ; preds = %108
  %112 = load i32, i32* @ERESTARTSYS, align 4
  %113 = sub nsw i32 0, %112
  store i32 %113, i32* %13, align 4
  br label %126

114:                                              ; preds = %108
  br label %69

115:                                              ; preds = %81
  %116 = load %struct.hidp_session*, %struct.hidp_session** %12, align 8
  %117 = getelementptr inbounds %struct.hidp_session, %struct.hidp_session* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %123, label %120

120:                                              ; preds = %115
  %121 = load i32, i32* @EIO, align 4
  %122 = sub nsw i32 0, %121
  store i32 %122, i32* %13, align 4
  br label %126

123:                                              ; preds = %115
  %124 = load i64, i64* %10, align 8
  %125 = trunc i64 %124 to i32
  store i32 %125, i32* %13, align 4
  br label %126

126:                                              ; preds = %123, %120, %111, %105, %67
  %127 = load i32, i32* @HIDP_WAITING_FOR_SEND_ACK, align 4
  %128 = load %struct.hidp_session*, %struct.hidp_session** %12, align 8
  %129 = getelementptr inbounds %struct.hidp_session, %struct.hidp_session* %128, i32 0, i32 1
  %130 = call i32 @clear_bit(i32 %127, i32* %129)
  %131 = load %struct.hidp_session*, %struct.hidp_session** %12, align 8
  %132 = getelementptr inbounds %struct.hidp_session, %struct.hidp_session* %131, i32 0, i32 0
  %133 = call i32 @mutex_unlock(i32* %132)
  %134 = load i32, i32* %13, align 4
  store i32 %134, i32* %6, align 4
  br label %135

135:                                              ; preds = %126, %49, %41
  %136 = load i32, i32* %6, align 4
  ret i32 %136
}

declare dso_local i64 @mutex_lock_interruptible(i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @hidp_send_ctrl_message(%struct.hidp_session*, i8 zeroext, i8*, i64) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @wait_event_interruptible_timeout(i32, i32, i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
