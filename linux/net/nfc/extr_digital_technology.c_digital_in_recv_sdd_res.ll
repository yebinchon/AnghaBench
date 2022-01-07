; ModuleID = '/home/carl/AnghaBench/linux/net/nfc/extr_digital_technology.c_digital_in_recv_sdd_res.c'
source_filename = "/home/carl/AnghaBench/linux/net/nfc/extr_digital_technology.c_digital_in_recv_sdd_res.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfc_digital_dev = type { i32 }
%struct.sk_buff = type { i64, i64 }
%struct.nfc_target = type { i64, i64 }
%struct.digital_sdd_res = type { i32*, i32 }

@DIGITAL_SDD_RES_LEN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [8 x i8] c"4.7.2.8\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"4.7.2.6\00", align 1
@DIGITAL_SDD_RES_CT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfc_digital_dev*, i8*, %struct.sk_buff*)* @digital_in_recv_sdd_res to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @digital_in_recv_sdd_res(%struct.nfc_digital_dev* %0, i8* %1, %struct.sk_buff* %2) #0 {
  %4 = alloca %struct.nfc_digital_dev*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.nfc_target*, align 8
  %8 = alloca %struct.digital_sdd_res*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.nfc_digital_dev* %0, %struct.nfc_digital_dev** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %6, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = bitcast i8* %14 to %struct.nfc_target*
  store %struct.nfc_target* %15, %struct.nfc_target** %7, align 8
  %16 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %17 = call i64 @IS_ERR(%struct.sk_buff* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %3
  %20 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %21 = call i32 @PTR_ERR(%struct.sk_buff* %20)
  store i32 %21, i32* %9, align 4
  store %struct.sk_buff* null, %struct.sk_buff** %6, align 8
  br label %99

22:                                               ; preds = %3
  %23 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %24 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @DIGITAL_SDD_RES_LEN, align 8
  %27 = icmp slt i64 %25, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %22
  %29 = call i32 @PROTOCOL_ERR(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %9, align 4
  br label %99

32:                                               ; preds = %22
  %33 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %34 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = inttoptr i64 %35 to %struct.digital_sdd_res*
  store %struct.digital_sdd_res* %36, %struct.digital_sdd_res** %8, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  br label %37

37:                                               ; preds = %50, %32
  %38 = load i32, i32* %12, align 4
  %39 = icmp slt i32 %38, 4
  br i1 %39, label %40, label %53

40:                                               ; preds = %37
  %41 = load %struct.digital_sdd_res*, %struct.digital_sdd_res** %8, align 8
  %42 = getelementptr inbounds %struct.digital_sdd_res, %struct.digital_sdd_res* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = load i32, i32* %12, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %13, align 4
  %49 = xor i32 %48, %47
  store i32 %49, i32* %13, align 4
  br label %50

50:                                               ; preds = %40
  %51 = load i32, i32* %12, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %12, align 4
  br label %37

53:                                               ; preds = %37
  %54 = load i32, i32* %13, align 4
  %55 = load %struct.digital_sdd_res*, %struct.digital_sdd_res** %8, align 8
  %56 = getelementptr inbounds %struct.digital_sdd_res, %struct.digital_sdd_res* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = icmp ne i32 %54, %57
  br i1 %58, label %59, label %63

59:                                               ; preds = %53
  %60 = call i32 @PROTOCOL_ERR(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %61 = load i32, i32* @EINVAL, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %9, align 4
  br label %99

63:                                               ; preds = %53
  %64 = load %struct.digital_sdd_res*, %struct.digital_sdd_res** %8, align 8
  %65 = getelementptr inbounds %struct.digital_sdd_res, %struct.digital_sdd_res* %64, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @DIGITAL_SDD_RES_CT, align 4
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %63
  store i32 1, i32* %10, align 4
  store i32 3, i32* %11, align 4
  br label %73

72:                                               ; preds = %63
  store i32 0, i32* %10, align 4
  store i32 4, i32* %11, align 4
  br label %73

73:                                               ; preds = %72, %71
  %74 = load %struct.nfc_target*, %struct.nfc_target** %7, align 8
  %75 = getelementptr inbounds %struct.nfc_target, %struct.nfc_target* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.nfc_target*, %struct.nfc_target** %7, align 8
  %78 = getelementptr inbounds %struct.nfc_target, %struct.nfc_target* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = add nsw i64 %76, %79
  %81 = load %struct.digital_sdd_res*, %struct.digital_sdd_res** %8, align 8
  %82 = getelementptr inbounds %struct.digital_sdd_res, %struct.digital_sdd_res* %81, i32 0, i32 0
  %83 = load i32*, i32** %82, align 8
  %84 = load i32, i32* %10, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %83, i64 %85
  %87 = load i32, i32* %11, align 4
  %88 = call i32 @memcpy(i64 %80, i32* %86, i32 %87)
  %89 = load i32, i32* %11, align 4
  %90 = sext i32 %89 to i64
  %91 = load %struct.nfc_target*, %struct.nfc_target** %7, align 8
  %92 = getelementptr inbounds %struct.nfc_target, %struct.nfc_target* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = add nsw i64 %93, %90
  store i64 %94, i64* %92, align 8
  %95 = load %struct.nfc_digital_dev*, %struct.nfc_digital_dev** %4, align 8
  %96 = load %struct.nfc_target*, %struct.nfc_target** %7, align 8
  %97 = load %struct.digital_sdd_res*, %struct.digital_sdd_res** %8, align 8
  %98 = call i32 @digital_in_send_sel_req(%struct.nfc_digital_dev* %95, %struct.nfc_target* %96, %struct.digital_sdd_res* %97)
  store i32 %98, i32* %9, align 4
  br label %99

99:                                               ; preds = %73, %59, %28, %19
  %100 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %101 = call i32 @dev_kfree_skb(%struct.sk_buff* %100)
  %102 = load i32, i32* %9, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %109

104:                                              ; preds = %99
  %105 = load %struct.nfc_target*, %struct.nfc_target** %7, align 8
  %106 = call i32 @kfree(%struct.nfc_target* %105)
  %107 = load %struct.nfc_digital_dev*, %struct.nfc_digital_dev** %4, align 8
  %108 = call i32 @digital_poll_next_tech(%struct.nfc_digital_dev* %107)
  br label %109

109:                                              ; preds = %104, %99
  ret void
}

declare dso_local i64 @IS_ERR(%struct.sk_buff*) #1

declare dso_local i32 @PTR_ERR(%struct.sk_buff*) #1

declare dso_local i32 @PROTOCOL_ERR(i8*) #1

declare dso_local i32 @memcpy(i64, i32*, i32) #1

declare dso_local i32 @digital_in_send_sel_req(%struct.nfc_digital_dev*, %struct.nfc_target*, %struct.digital_sdd_res*) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @kfree(%struct.nfc_target*) #1

declare dso_local i32 @digital_poll_next_tech(%struct.nfc_digital_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
