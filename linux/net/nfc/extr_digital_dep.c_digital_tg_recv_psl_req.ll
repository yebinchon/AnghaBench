; ModuleID = '/home/carl/AnghaBench/linux/net/nfc/extr_digital_dep.c_digital_tg_recv_psl_req.c'
source_filename = "/home/carl/AnghaBench/linux/net/nfc/extr_digital_dep.c_digital_tg_recv_psl_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfc_digital_dev = type { i32 (%struct.sk_buff*)*, i32, i32 }
%struct.sk_buff = type { i32, i64 }
%struct.digital_psl_req = type { i64, i64, i32, i32, i32 }

@.str = private unnamed_addr constant [9 x i8] c"14.4.1.6\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"14.4.1.2\00", align 1
@DIGITAL_NFC_DEP_FRAME_DIR_OUT = common dso_local global i64 0, align 8
@DIGITAL_CMD_PSL_REQ = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@NFC_DIGITAL_RF_TECH_106A = common dso_local global i32 0, align 4
@NFC_DIGITAL_RF_TECH_212F = common dso_local global i32 0, align 4
@NFC_DIGITAL_RF_TECH_424F = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"Unsupported dsi value %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfc_digital_dev*, i8*, %struct.sk_buff*)* @digital_tg_recv_psl_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @digital_tg_recv_psl_req(%struct.nfc_digital_dev* %0, i8* %1, %struct.sk_buff* %2) #0 {
  %4 = alloca %struct.nfc_digital_dev*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.digital_psl_req*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.nfc_digital_dev* %0, %struct.nfc_digital_dev** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %6, align 8
  %13 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %14 = call i64 @IS_ERR(%struct.sk_buff* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %18 = call i32 @PTR_ERR(%struct.sk_buff* %17)
  store i32 %18, i32* %7, align 4
  store %struct.sk_buff* null, %struct.sk_buff** %6, align 8
  br label %113

19:                                               ; preds = %3
  %20 = load %struct.nfc_digital_dev*, %struct.nfc_digital_dev** %4, align 8
  %21 = getelementptr inbounds %struct.nfc_digital_dev, %struct.nfc_digital_dev* %20, i32 0, i32 0
  %22 = load i32 (%struct.sk_buff*)*, i32 (%struct.sk_buff*)** %21, align 8
  %23 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %24 = call i32 %22(%struct.sk_buff* %23)
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %19
  %28 = call i32 @PROTOCOL_ERR(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  br label %113

29:                                               ; preds = %19
  %30 = load %struct.nfc_digital_dev*, %struct.nfc_digital_dev** %4, align 8
  %31 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %32 = call i32 @digital_skb_pull_dep_sod(%struct.nfc_digital_dev* %30, %struct.sk_buff* %31)
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* %7, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %29
  %36 = call i32 @PROTOCOL_ERR(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  br label %113

37:                                               ; preds = %29
  %38 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %39 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = inttoptr i64 %40 to %struct.digital_psl_req*
  store %struct.digital_psl_req* %41, %struct.digital_psl_req** %8, align 8
  %42 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %43 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = sext i32 %44 to i64
  %46 = icmp ne i64 %45, 32
  br i1 %46, label %59, label %47

47:                                               ; preds = %37
  %48 = load %struct.digital_psl_req*, %struct.digital_psl_req** %8, align 8
  %49 = getelementptr inbounds %struct.digital_psl_req, %struct.digital_psl_req* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @DIGITAL_NFC_DEP_FRAME_DIR_OUT, align 8
  %52 = icmp ne i64 %50, %51
  br i1 %52, label %59, label %53

53:                                               ; preds = %47
  %54 = load %struct.digital_psl_req*, %struct.digital_psl_req** %8, align 8
  %55 = getelementptr inbounds %struct.digital_psl_req, %struct.digital_psl_req* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @DIGITAL_CMD_PSL_REQ, align 8
  %58 = icmp ne i64 %56, %57
  br i1 %58, label %59, label %62

59:                                               ; preds = %53, %47, %37
  %60 = load i32, i32* @EIO, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %7, align 4
  br label %113

62:                                               ; preds = %53
  %63 = load %struct.digital_psl_req*, %struct.digital_psl_req** %8, align 8
  %64 = getelementptr inbounds %struct.digital_psl_req, %struct.digital_psl_req* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = ashr i32 %65, 3
  %67 = and i32 %66, 7
  store i32 %67, i32* %10, align 4
  %68 = load i32, i32* %10, align 4
  switch i32 %68, label %75 [
    i32 0, label %69
    i32 1, label %71
    i32 2, label %73
  ]

69:                                               ; preds = %62
  %70 = load i32, i32* @NFC_DIGITAL_RF_TECH_106A, align 4
  store i32 %70, i32* %9, align 4
  br label %78

71:                                               ; preds = %62
  %72 = load i32, i32* @NFC_DIGITAL_RF_TECH_212F, align 4
  store i32 %72, i32* %9, align 4
  br label %78

73:                                               ; preds = %62
  %74 = load i32, i32* @NFC_DIGITAL_RF_TECH_424F, align 4
  store i32 %74, i32* %9, align 4
  br label %78

75:                                               ; preds = %62
  %76 = load i32, i32* %10, align 4
  %77 = call i32 @pr_err(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %76)
  br label %113

78:                                               ; preds = %73, %71, %69
  %79 = load %struct.digital_psl_req*, %struct.digital_psl_req** %8, align 8
  %80 = getelementptr inbounds %struct.digital_psl_req, %struct.digital_psl_req* %79, i32 0, i32 4
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @DIGITAL_PAYLOAD_FSL_TO_BITS(i32 %81)
  store i32 %82, i32* %12, align 4
  %83 = load i32, i32* %12, align 4
  %84 = call i32 @digital_payload_bits_to_size(i32 %83)
  store i32 %84, i32* %11, align 4
  %85 = load i32, i32* %11, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %97

87:                                               ; preds = %78
  %88 = load i32, i32* %11, align 4
  %89 = load %struct.nfc_digital_dev*, %struct.nfc_digital_dev** %4, align 8
  %90 = getelementptr inbounds %struct.nfc_digital_dev, %struct.nfc_digital_dev* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.nfc_digital_dev*, %struct.nfc_digital_dev** %4, align 8
  %93 = getelementptr inbounds %struct.nfc_digital_dev, %struct.nfc_digital_dev* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @min(i32 %91, i32 %94)
  %96 = icmp sgt i32 %88, %95
  br i1 %96, label %97, label %100

97:                                               ; preds = %87, %78
  %98 = load i32, i32* @EINVAL, align 4
  %99 = sub nsw i32 0, %98
  store i32 %99, i32* %7, align 4
  br label %113

100:                                              ; preds = %87
  %101 = load i32, i32* %11, align 4
  %102 = load %struct.nfc_digital_dev*, %struct.nfc_digital_dev** %4, align 8
  %103 = getelementptr inbounds %struct.nfc_digital_dev, %struct.nfc_digital_dev* %102, i32 0, i32 1
  store i32 %101, i32* %103, align 8
  %104 = load i32, i32* %11, align 4
  %105 = load %struct.nfc_digital_dev*, %struct.nfc_digital_dev** %4, align 8
  %106 = getelementptr inbounds %struct.nfc_digital_dev, %struct.nfc_digital_dev* %105, i32 0, i32 2
  store i32 %104, i32* %106, align 4
  %107 = load %struct.nfc_digital_dev*, %struct.nfc_digital_dev** %4, align 8
  %108 = load %struct.digital_psl_req*, %struct.digital_psl_req** %8, align 8
  %109 = getelementptr inbounds %struct.digital_psl_req, %struct.digital_psl_req* %108, i32 0, i32 3
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* %9, align 4
  %112 = call i32 @digital_tg_send_psl_res(%struct.nfc_digital_dev* %107, i32 %110, i32 %111)
  store i32 %112, i32* %7, align 4
  br label %113

113:                                              ; preds = %100, %97, %75, %59, %35, %27, %16
  %114 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %115 = call i32 @kfree_skb(%struct.sk_buff* %114)
  ret void
}

declare dso_local i64 @IS_ERR(%struct.sk_buff*) #1

declare dso_local i32 @PTR_ERR(%struct.sk_buff*) #1

declare dso_local i32 @PROTOCOL_ERR(i8*) #1

declare dso_local i32 @digital_skb_pull_dep_sod(%struct.nfc_digital_dev*, %struct.sk_buff*) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @DIGITAL_PAYLOAD_FSL_TO_BITS(i32) #1

declare dso_local i32 @digital_payload_bits_to_size(i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @digital_tg_send_psl_res(%struct.nfc_digital_dev*, i32, i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
