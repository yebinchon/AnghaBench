; ModuleID = '/home/carl/AnghaBench/linux/net/nfc/extr_digital_technology.c_digital_in_recv_sensb_res.c'
source_filename = "/home/carl/AnghaBench/linux/net/nfc/extr_digital_technology.c_digital_in_recv_sensb_res.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfc_digital_dev = type { i32 }
%struct.sk_buff = type { i32, i64 }
%struct.nfc_target = type { i32 }
%struct.digital_sensb_res = type { i64, i32* }

@.str = private unnamed_addr constant [8 x i8] c"5.6.2.1\00", align 1
@EIO = common dso_local global i32 0, align 4
@DIGITAL_CMD_SENSB_RES = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [6 x i8] c"5.6.2\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"5.6.2.12\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"5.6.2.16\00", align 1
@DIGITAL_ATS_MAX_FSC = common dso_local global i32 0, align 4
@digital_ats_fsc = common dso_local global i32* null, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfc_digital_dev*, i8*, %struct.sk_buff*)* @digital_in_recv_sensb_res to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @digital_in_recv_sensb_res(%struct.nfc_digital_dev* %0, i8* %1, %struct.sk_buff* %2) #0 {
  %4 = alloca %struct.nfc_digital_dev*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.nfc_target*, align 8
  %8 = alloca %struct.digital_sensb_res*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.nfc_digital_dev* %0, %struct.nfc_digital_dev** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %6, align 8
  store %struct.nfc_target* null, %struct.nfc_target** %7, align 8
  %11 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %12 = call i64 @IS_ERR(%struct.sk_buff* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %3
  %15 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %16 = call i32 @PTR_ERR(%struct.sk_buff* %15)
  store i32 %16, i32* %10, align 4
  store %struct.sk_buff* null, %struct.sk_buff** %6, align 8
  br label %101

17:                                               ; preds = %3
  %18 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %19 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = sext i32 %20 to i64
  %22 = icmp ne i64 %21, 16
  br i1 %22, label %23, label %27

23:                                               ; preds = %17
  %24 = call i32 @PROTOCOL_ERR(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %25 = load i32, i32* @EIO, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %10, align 4
  br label %101

27:                                               ; preds = %17
  %28 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %29 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = inttoptr i64 %30 to %struct.digital_sensb_res*
  store %struct.digital_sensb_res* %31, %struct.digital_sensb_res** %8, align 8
  %32 = load %struct.digital_sensb_res*, %struct.digital_sensb_res** %8, align 8
  %33 = getelementptr inbounds %struct.digital_sensb_res, %struct.digital_sensb_res* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @DIGITAL_CMD_SENSB_RES, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %41

37:                                               ; preds = %27
  %38 = call i32 @PROTOCOL_ERR(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %39 = load i32, i32* @EIO, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %10, align 4
  br label %101

41:                                               ; preds = %27
  %42 = load %struct.digital_sensb_res*, %struct.digital_sensb_res** %8, align 8
  %43 = getelementptr inbounds %struct.digital_sensb_res, %struct.digital_sensb_res* %42, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @BIT(i32 0)
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %54, label %50

50:                                               ; preds = %41
  %51 = call i32 @PROTOCOL_ERR(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %52 = load i32, i32* @EIO, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %10, align 4
  br label %101

54:                                               ; preds = %41
  %55 = load %struct.digital_sensb_res*, %struct.digital_sensb_res** %8, align 8
  %56 = getelementptr inbounds %struct.digital_sensb_res, %struct.digital_sensb_res* %55, i32 0, i32 1
  %57 = load i32*, i32** %56, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 1
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @BIT(i32 3)
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %54
  %64 = call i32 @PROTOCOL_ERR(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %65 = load i32, i32* @EIO, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %10, align 4
  br label %101

67:                                               ; preds = %54
  %68 = load %struct.digital_sensb_res*, %struct.digital_sensb_res** %8, align 8
  %69 = getelementptr inbounds %struct.digital_sensb_res, %struct.digital_sensb_res* %68, i32 0, i32 1
  %70 = load i32*, i32** %69, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 1
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @DIGITAL_SENSB_FSCI(i32 %72)
  store i32 %73, i32* %9, align 4
  %74 = load i32, i32* %9, align 4
  %75 = icmp sge i32 %74, 8
  br i1 %75, label %76, label %80

76:                                               ; preds = %67
  %77 = load i32, i32* @DIGITAL_ATS_MAX_FSC, align 4
  %78 = load %struct.nfc_digital_dev*, %struct.nfc_digital_dev** %4, align 8
  %79 = getelementptr inbounds %struct.nfc_digital_dev, %struct.nfc_digital_dev* %78, i32 0, i32 0
  store i32 %77, i32* %79, align 4
  br label %88

80:                                               ; preds = %67
  %81 = load i32*, i32** @digital_ats_fsc, align 8
  %82 = load i32, i32* %9, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %81, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.nfc_digital_dev*, %struct.nfc_digital_dev** %4, align 8
  %87 = getelementptr inbounds %struct.nfc_digital_dev, %struct.nfc_digital_dev* %86, i32 0, i32 0
  store i32 %85, i32* %87, align 4
  br label %88

88:                                               ; preds = %80, %76
  %89 = load i32, i32* @GFP_KERNEL, align 4
  %90 = call %struct.nfc_target* @kzalloc(i32 4, i32 %89)
  store %struct.nfc_target* %90, %struct.nfc_target** %7, align 8
  %91 = load %struct.nfc_target*, %struct.nfc_target** %7, align 8
  %92 = icmp ne %struct.nfc_target* %91, null
  br i1 %92, label %96, label %93

93:                                               ; preds = %88
  %94 = load i32, i32* @ENOMEM, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %10, align 4
  br label %101

96:                                               ; preds = %88
  %97 = load %struct.nfc_digital_dev*, %struct.nfc_digital_dev** %4, align 8
  %98 = load %struct.nfc_target*, %struct.nfc_target** %7, align 8
  %99 = load %struct.digital_sensb_res*, %struct.digital_sensb_res** %8, align 8
  %100 = call i32 @digital_in_send_attrib_req(%struct.nfc_digital_dev* %97, %struct.nfc_target* %98, %struct.digital_sensb_res* %99)
  store i32 %100, i32* %10, align 4
  br label %101

101:                                              ; preds = %96, %93, %63, %50, %37, %23, %14
  %102 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %103 = call i32 @dev_kfree_skb(%struct.sk_buff* %102)
  %104 = load i32, i32* %10, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %111

106:                                              ; preds = %101
  %107 = load %struct.nfc_target*, %struct.nfc_target** %7, align 8
  %108 = call i32 @kfree(%struct.nfc_target* %107)
  %109 = load %struct.nfc_digital_dev*, %struct.nfc_digital_dev** %4, align 8
  %110 = call i32 @digital_poll_next_tech(%struct.nfc_digital_dev* %109)
  br label %111

111:                                              ; preds = %106, %101
  ret void
}

declare dso_local i64 @IS_ERR(%struct.sk_buff*) #1

declare dso_local i32 @PTR_ERR(%struct.sk_buff*) #1

declare dso_local i32 @PROTOCOL_ERR(i8*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @DIGITAL_SENSB_FSCI(i32) #1

declare dso_local %struct.nfc_target* @kzalloc(i32, i32) #1

declare dso_local i32 @digital_in_send_attrib_req(%struct.nfc_digital_dev*, %struct.nfc_target*, %struct.digital_sensb_res*) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @kfree(%struct.nfc_target*) #1

declare dso_local i32 @digital_poll_next_tech(%struct.nfc_digital_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
