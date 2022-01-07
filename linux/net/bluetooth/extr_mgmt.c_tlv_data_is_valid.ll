; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_mgmt.c_tlv_data_is_valid.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_mgmt.c_tlv_data_is_valid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_dev = type { i32 }

@EIR_FLAGS = common dso_local global i32 0, align 4
@EIR_TX_POWER = common dso_local global i32 0, align 4
@EIR_NAME_COMPLETE = common dso_local global i32 0, align 4
@EIR_NAME_SHORT = common dso_local global i32 0, align 4
@EIR_APPEARANCE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hci_dev*, i32, i32*, i32, i32)* @tlv_data_is_valid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tlv_data_is_valid(%struct.hci_dev* %0, i32 %1, i32* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.hci_dev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.hci_dev* %0, %struct.hci_dev** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %15 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %16 = load i32, i32* %8, align 4
  %17 = load i32, i32* %11, align 4
  %18 = call i32 @tlv_data_max_len(%struct.hci_dev* %15, i32 %16, i32 %17)
  store i32 %18, i32* %14, align 4
  %19 = load i32, i32* %10, align 4
  %20 = load i32, i32* %14, align 4
  %21 = icmp sgt i32 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %120

23:                                               ; preds = %5
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  br label %24

24:                                               ; preds = %114, %23
  %25 = load i32, i32* %12, align 4
  %26 = load i32, i32* %10, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %119

28:                                               ; preds = %24
  %29 = load i32*, i32** %9, align 8
  %30 = load i32, i32* %12, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %13, align 4
  %34 = load i32*, i32** %9, align 8
  %35 = load i32, i32* %12, align 4
  %36 = add nsw i32 %35, 1
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %34, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @EIR_FLAGS, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %50

42:                                               ; preds = %28
  %43 = load i32, i32* %11, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %42
  %46 = load i32, i32* %8, align 4
  %47 = call i64 @flags_managed(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %45, %42
  store i32 0, i32* %6, align 4
  br label %120

50:                                               ; preds = %45, %28
  %51 = load i32*, i32** %9, align 8
  %52 = load i32, i32* %12, align 4
  %53 = add nsw i32 %52, 1
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %51, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @EIR_TX_POWER, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %64

59:                                               ; preds = %50
  %60 = load i32, i32* %8, align 4
  %61 = call i64 @tx_power_managed(i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %59
  store i32 0, i32* %6, align 4
  br label %120

64:                                               ; preds = %59, %50
  %65 = load i32*, i32** %9, align 8
  %66 = load i32, i32* %12, align 4
  %67 = add nsw i32 %66, 1
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %65, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @EIR_NAME_COMPLETE, align 4
  %72 = icmp eq i32 %70, %71
  br i1 %72, label %73, label %78

73:                                               ; preds = %64
  %74 = load i32, i32* %8, align 4
  %75 = call i64 @name_managed(i32 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %73
  store i32 0, i32* %6, align 4
  br label %120

78:                                               ; preds = %73, %64
  %79 = load i32*, i32** %9, align 8
  %80 = load i32, i32* %12, align 4
  %81 = add nsw i32 %80, 1
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %79, i64 %82
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @EIR_NAME_SHORT, align 4
  %86 = icmp eq i32 %84, %85
  br i1 %86, label %87, label %92

87:                                               ; preds = %78
  %88 = load i32, i32* %8, align 4
  %89 = call i64 @name_managed(i32 %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %87
  store i32 0, i32* %6, align 4
  br label %120

92:                                               ; preds = %87, %78
  %93 = load i32*, i32** %9, align 8
  %94 = load i32, i32* %12, align 4
  %95 = add nsw i32 %94, 1
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %93, i64 %96
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* @EIR_APPEARANCE, align 4
  %100 = icmp eq i32 %98, %99
  br i1 %100, label %101, label %106

101:                                              ; preds = %92
  %102 = load i32, i32* %8, align 4
  %103 = call i64 @appearance_managed(i32 %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %101
  store i32 0, i32* %6, align 4
  br label %120

106:                                              ; preds = %101, %92
  %107 = load i32, i32* %12, align 4
  %108 = load i32, i32* %13, align 4
  %109 = add nsw i32 %107, %108
  %110 = load i32, i32* %10, align 4
  %111 = icmp sge i32 %109, %110
  br i1 %111, label %112, label %113

112:                                              ; preds = %106
  store i32 0, i32* %6, align 4
  br label %120

113:                                              ; preds = %106
  br label %114

114:                                              ; preds = %113
  %115 = load i32, i32* %13, align 4
  %116 = add nsw i32 %115, 1
  %117 = load i32, i32* %12, align 4
  %118 = add nsw i32 %117, %116
  store i32 %118, i32* %12, align 4
  br label %24

119:                                              ; preds = %24
  store i32 1, i32* %6, align 4
  br label %120

120:                                              ; preds = %119, %112, %105, %91, %77, %63, %49, %22
  %121 = load i32, i32* %6, align 4
  ret i32 %121
}

declare dso_local i32 @tlv_data_max_len(%struct.hci_dev*, i32, i32) #1

declare dso_local i64 @flags_managed(i32) #1

declare dso_local i64 @tx_power_managed(i32) #1

declare dso_local i64 @name_managed(i32) #1

declare dso_local i64 @appearance_managed(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
