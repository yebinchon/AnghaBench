; ModuleID = '/home/carl/AnghaBench/linux/net/nfc/hci/extr_core.c_hci_dev_session_init.c'
source_filename = "/home/carl/AnghaBench/linux/net/nfc/hci/extr_core.c_hci_dev_session_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfc_hci_dev = type { %struct.TYPE_5__, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i32, %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { i64, i32 }
%struct.TYPE_4__ = type { {}* }
%struct.sk_buff = type { i64, i32 }

@NFC_HCI_ADMIN_GATE = common dso_local global i64 0, align 8
@EPROTO = common dso_local global i32 0, align 4
@NFC_HCI_HOST_CONTROLLER_ID = common dso_local global i32 0, align 4
@NFC_HCI_ADMIN_SESSION_IDENTITY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfc_hci_dev*)* @hci_dev_session_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hci_dev_session_init(%struct.nfc_hci_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nfc_hci_dev*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca i32, align 4
  store %struct.nfc_hci_dev* %0, %struct.nfc_hci_dev** %3, align 8
  store %struct.sk_buff* null, %struct.sk_buff** %4, align 8
  %6 = load %struct.nfc_hci_dev*, %struct.nfc_hci_dev** %3, align 8
  %7 = getelementptr inbounds %struct.nfc_hci_dev, %struct.nfc_hci_dev* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 1
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i64 0
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @NFC_HCI_ADMIN_GATE, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %1
  %16 = load i32, i32* @EPROTO, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %142

18:                                               ; preds = %1
  %19 = load %struct.nfc_hci_dev*, %struct.nfc_hci_dev** %3, align 8
  %20 = load i32, i32* @NFC_HCI_HOST_CONTROLLER_ID, align 4
  %21 = load %struct.nfc_hci_dev*, %struct.nfc_hci_dev** %3, align 8
  %22 = getelementptr inbounds %struct.nfc_hci_dev, %struct.nfc_hci_dev* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 1
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i64 0
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.nfc_hci_dev*, %struct.nfc_hci_dev** %3, align 8
  %29 = getelementptr inbounds %struct.nfc_hci_dev, %struct.nfc_hci_dev* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 1
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i64 0
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @nfc_hci_connect_gate(%struct.nfc_hci_dev* %19, i32 %20, i64 %27, i32 %34)
  store i32 %35, i32* %5, align 4
  %36 = load i32, i32* %5, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %18
  br label %138

39:                                               ; preds = %18
  %40 = load %struct.nfc_hci_dev*, %struct.nfc_hci_dev** %3, align 8
  %41 = load i64, i64* @NFC_HCI_ADMIN_GATE, align 8
  %42 = load i32, i32* @NFC_HCI_ADMIN_SESSION_IDENTITY, align 4
  %43 = call i32 @nfc_hci_get_param(%struct.nfc_hci_dev* %40, i64 %41, i32 %42, %struct.sk_buff** %4)
  store i32 %43, i32* %5, align 4
  %44 = load i32, i32* %5, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %39
  br label %135

47:                                               ; preds = %39
  %48 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %49 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %96

52:                                               ; preds = %47
  %53 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %54 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.nfc_hci_dev*, %struct.nfc_hci_dev** %3, align 8
  %57 = getelementptr inbounds %struct.nfc_hci_dev, %struct.nfc_hci_dev* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = call i64 @strlen(i32 %59)
  %61 = icmp eq i64 %55, %60
  br i1 %61, label %62, label %96

62:                                               ; preds = %52
  %63 = load %struct.nfc_hci_dev*, %struct.nfc_hci_dev** %3, align 8
  %64 = getelementptr inbounds %struct.nfc_hci_dev, %struct.nfc_hci_dev* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %68 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %71 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = call i64 @memcmp(i32 %66, i32 %69, i64 %72)
  %74 = icmp eq i64 %73, 0
  br i1 %74, label %75, label %96

75:                                               ; preds = %62
  %76 = load %struct.nfc_hci_dev*, %struct.nfc_hci_dev** %3, align 8
  %77 = getelementptr inbounds %struct.nfc_hci_dev, %struct.nfc_hci_dev* %76, i32 0, i32 1
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  %80 = bitcast {}** %79 to i32 (%struct.nfc_hci_dev*)**
  %81 = load i32 (%struct.nfc_hci_dev*)*, i32 (%struct.nfc_hci_dev*)** %80, align 8
  %82 = icmp ne i32 (%struct.nfc_hci_dev*)* %81, null
  br i1 %82, label %83, label %96

83:                                               ; preds = %75
  %84 = load %struct.nfc_hci_dev*, %struct.nfc_hci_dev** %3, align 8
  %85 = getelementptr inbounds %struct.nfc_hci_dev, %struct.nfc_hci_dev* %84, i32 0, i32 1
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  %88 = bitcast {}** %87 to i32 (%struct.nfc_hci_dev*)**
  %89 = load i32 (%struct.nfc_hci_dev*)*, i32 (%struct.nfc_hci_dev*)** %88, align 8
  %90 = load %struct.nfc_hci_dev*, %struct.nfc_hci_dev** %3, align 8
  %91 = call i32 %89(%struct.nfc_hci_dev* %90)
  store i32 %91, i32* %5, align 4
  %92 = load i32, i32* %5, align 4
  %93 = icmp slt i32 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %83
  br label %135

95:                                               ; preds = %83
  br label %130

96:                                               ; preds = %75, %62, %52, %47
  %97 = load %struct.nfc_hci_dev*, %struct.nfc_hci_dev** %3, align 8
  %98 = call i32 @nfc_hci_disconnect_all_gates(%struct.nfc_hci_dev* %97)
  store i32 %98, i32* %5, align 4
  %99 = load i32, i32* %5, align 4
  %100 = icmp slt i32 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %96
  br label %138

102:                                              ; preds = %96
  %103 = load %struct.nfc_hci_dev*, %struct.nfc_hci_dev** %3, align 8
  %104 = load %struct.nfc_hci_dev*, %struct.nfc_hci_dev** %3, align 8
  %105 = getelementptr inbounds %struct.nfc_hci_dev, %struct.nfc_hci_dev* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 8
  %108 = load %struct.nfc_hci_dev*, %struct.nfc_hci_dev** %3, align 8
  %109 = getelementptr inbounds %struct.nfc_hci_dev, %struct.nfc_hci_dev* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i32 0, i32 1
  %111 = load %struct.TYPE_6__*, %struct.TYPE_6__** %110, align 8
  %112 = call i32 @hci_dev_connect_gates(%struct.nfc_hci_dev* %103, i32 %107, %struct.TYPE_6__* %111)
  store i32 %112, i32* %5, align 4
  %113 = load i32, i32* %5, align 4
  %114 = icmp slt i32 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %102
  br label %135

116:                                              ; preds = %102
  %117 = load %struct.nfc_hci_dev*, %struct.nfc_hci_dev** %3, align 8
  %118 = load i64, i64* @NFC_HCI_ADMIN_GATE, align 8
  %119 = load i32, i32* @NFC_HCI_ADMIN_SESSION_IDENTITY, align 4
  %120 = load %struct.nfc_hci_dev*, %struct.nfc_hci_dev** %3, align 8
  %121 = getelementptr inbounds %struct.nfc_hci_dev, %struct.nfc_hci_dev* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = load %struct.nfc_hci_dev*, %struct.nfc_hci_dev** %3, align 8
  %125 = getelementptr inbounds %struct.nfc_hci_dev, %struct.nfc_hci_dev* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = call i64 @strlen(i32 %127)
  %129 = call i32 @nfc_hci_set_param(%struct.nfc_hci_dev* %117, i64 %118, i32 %119, i32 %123, i64 %128)
  store i32 %129, i32* %5, align 4
  br label %130

130:                                              ; preds = %116, %95
  %131 = load i32, i32* %5, align 4
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %133, label %134

133:                                              ; preds = %130
  br label %138

134:                                              ; preds = %130
  br label %135

135:                                              ; preds = %134, %115, %94, %46
  %136 = load %struct.nfc_hci_dev*, %struct.nfc_hci_dev** %3, align 8
  %137 = call i32 @nfc_hci_disconnect_all_gates(%struct.nfc_hci_dev* %136)
  br label %138

138:                                              ; preds = %135, %133, %101, %38
  %139 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %140 = call i32 @kfree_skb(%struct.sk_buff* %139)
  %141 = load i32, i32* %5, align 4
  store i32 %141, i32* %2, align 4
  br label %142

142:                                              ; preds = %138, %15
  %143 = load i32, i32* %2, align 4
  ret i32 %143
}

declare dso_local i32 @nfc_hci_connect_gate(%struct.nfc_hci_dev*, i32, i64, i32) #1

declare dso_local i32 @nfc_hci_get_param(%struct.nfc_hci_dev*, i64, i32, %struct.sk_buff**) #1

declare dso_local i64 @strlen(i32) #1

declare dso_local i64 @memcmp(i32, i32, i64) #1

declare dso_local i32 @nfc_hci_disconnect_all_gates(%struct.nfc_hci_dev*) #1

declare dso_local i32 @hci_dev_connect_gates(%struct.nfc_hci_dev*, i32, %struct.TYPE_6__*) #1

declare dso_local i32 @nfc_hci_set_param(%struct.nfc_hci_dev*, i64, i32, i32, i64) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
