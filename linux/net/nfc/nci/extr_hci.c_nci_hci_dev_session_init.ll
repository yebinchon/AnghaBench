; ModuleID = '/home/carl/AnghaBench/linux/net/nfc/nci/extr_hci.c_nci_hci_dev_session_init.c'
source_filename = "/home/carl/AnghaBench/linux/net/nfc/nci/extr_hci.c_nci_hci_dev_session_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nci_dev = type { %struct.TYPE_7__*, %struct.TYPE_5__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__, %struct.nci_conn_info*, i64, i64 }
%struct.TYPE_6__ = type { i32, %struct.TYPE_8__*, i32 }
%struct.TYPE_8__ = type { i64, i32, i32 }
%struct.nci_conn_info = type { %struct.nci_dev*, i32 }
%struct.TYPE_5__ = type { {}* }
%struct.sk_buff = type { i64, i32 }

@EPROTO = common dso_local global i32 0, align 4
@nci_hci_data_received_cb = common dso_local global i32 0, align 4
@NCI_HCI_ADMIN_GATE = common dso_local global i64 0, align 8
@NCI_HCI_ADMIN_PARAM_SESSION_IDENTITY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nci_hci_dev_session_init(%struct.nci_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nci_dev*, align 8
  %4 = alloca %struct.nci_conn_info*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i32, align 4
  store %struct.nci_dev* %0, %struct.nci_dev** %3, align 8
  %7 = load %struct.nci_dev*, %struct.nci_dev** %3, align 8
  %8 = getelementptr inbounds %struct.nci_dev, %struct.nci_dev* %7, i32 0, i32 0
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 3
  store i64 0, i64* %10, align 8
  %11 = load %struct.nci_dev*, %struct.nci_dev** %3, align 8
  %12 = getelementptr inbounds %struct.nci_dev, %struct.nci_dev* %11, i32 0, i32 0
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 2
  store i64 0, i64* %14, align 8
  %15 = load %struct.nci_dev*, %struct.nci_dev** %3, align 8
  %16 = getelementptr inbounds %struct.nci_dev, %struct.nci_dev* %15, i32 0, i32 0
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 1
  %19 = load %struct.nci_conn_info*, %struct.nci_conn_info** %18, align 8
  store %struct.nci_conn_info* %19, %struct.nci_conn_info** %4, align 8
  %20 = load %struct.nci_conn_info*, %struct.nci_conn_info** %4, align 8
  %21 = icmp ne %struct.nci_conn_info* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %1
  %23 = load i32, i32* @EPROTO, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %189

25:                                               ; preds = %1
  %26 = load i32, i32* @nci_hci_data_received_cb, align 4
  %27 = load %struct.nci_conn_info*, %struct.nci_conn_info** %4, align 8
  %28 = getelementptr inbounds %struct.nci_conn_info, %struct.nci_conn_info* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 8
  %29 = load %struct.nci_dev*, %struct.nci_dev** %3, align 8
  %30 = load %struct.nci_conn_info*, %struct.nci_conn_info** %4, align 8
  %31 = getelementptr inbounds %struct.nci_conn_info, %struct.nci_conn_info* %30, i32 0, i32 0
  store %struct.nci_dev* %29, %struct.nci_dev** %31, align 8
  %32 = load %struct.nci_dev*, %struct.nci_dev** %3, align 8
  %33 = getelementptr inbounds %struct.nci_dev, %struct.nci_dev* %32, i32 0, i32 0
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %33, align 8
  %35 = call i32 @nci_hci_reset_pipes(%struct.TYPE_7__* %34)
  %36 = load %struct.nci_dev*, %struct.nci_dev** %3, align 8
  %37 = getelementptr inbounds %struct.nci_dev, %struct.nci_dev* %36, i32 0, i32 0
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 1
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i64 0
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @NCI_HCI_ADMIN_GATE, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %25
  %48 = load i32, i32* @EPROTO, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %2, align 4
  br label %189

50:                                               ; preds = %25
  %51 = load %struct.nci_dev*, %struct.nci_dev** %3, align 8
  %52 = load %struct.nci_dev*, %struct.nci_dev** %3, align 8
  %53 = getelementptr inbounds %struct.nci_dev, %struct.nci_dev* %52, i32 0, i32 0
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 1
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i64 0
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.nci_dev*, %struct.nci_dev** %3, align 8
  %62 = getelementptr inbounds %struct.nci_dev, %struct.nci_dev* %61, i32 0, i32 0
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 1
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i64 0
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.nci_dev*, %struct.nci_dev** %3, align 8
  %71 = getelementptr inbounds %struct.nci_dev, %struct.nci_dev* %70, i32 0, i32 0
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 1
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i64 0
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @nci_hci_connect_gate(%struct.nci_dev* %51, i32 %60, i64 %69, i32 %78)
  store i32 %79, i32* %6, align 4
  %80 = load i32, i32* %6, align 4
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %50
  %83 = load i32, i32* %6, align 4
  store i32 %83, i32* %2, align 4
  br label %189

84:                                               ; preds = %50
  %85 = load %struct.nci_dev*, %struct.nci_dev** %3, align 8
  %86 = load i64, i64* @NCI_HCI_ADMIN_GATE, align 8
  %87 = load i32, i32* @NCI_HCI_ADMIN_PARAM_SESSION_IDENTITY, align 4
  %88 = call i32 @nci_hci_get_param(%struct.nci_dev* %85, i64 %86, i32 %87, %struct.sk_buff** %5)
  store i32 %88, i32* %6, align 4
  %89 = load i32, i32* %6, align 4
  %90 = icmp slt i32 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %84
  %92 = load i32, i32* %6, align 4
  store i32 %92, i32* %2, align 4
  br label %189

93:                                               ; preds = %84
  %94 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %95 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %142

98:                                               ; preds = %93
  %99 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %100 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = load %struct.nci_dev*, %struct.nci_dev** %3, align 8
  %103 = getelementptr inbounds %struct.nci_dev, %struct.nci_dev* %102, i32 0, i32 0
  %104 = load %struct.TYPE_7__*, %struct.TYPE_7__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = call i64 @strlen(i32 %107)
  %109 = icmp eq i64 %101, %108
  br i1 %109, label %110, label %142

110:                                              ; preds = %98
  %111 = load %struct.nci_dev*, %struct.nci_dev** %3, align 8
  %112 = getelementptr inbounds %struct.nci_dev, %struct.nci_dev* %111, i32 0, i32 0
  %113 = load %struct.TYPE_7__*, %struct.TYPE_7__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %118 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 8
  %120 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %121 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = call i32 @memcmp(i32 %116, i32 %119, i64 %122)
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %142, label %125

125:                                              ; preds = %110
  %126 = load %struct.nci_dev*, %struct.nci_dev** %3, align 8
  %127 = getelementptr inbounds %struct.nci_dev, %struct.nci_dev* %126, i32 0, i32 1
  %128 = load %struct.TYPE_5__*, %struct.TYPE_5__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %128, i32 0, i32 0
  %130 = bitcast {}** %129 to i32 (%struct.nci_dev*)**
  %131 = load i32 (%struct.nci_dev*)*, i32 (%struct.nci_dev*)** %130, align 8
  %132 = icmp ne i32 (%struct.nci_dev*)* %131, null
  br i1 %132, label %133, label %142

133:                                              ; preds = %125
  %134 = load %struct.nci_dev*, %struct.nci_dev** %3, align 8
  %135 = getelementptr inbounds %struct.nci_dev, %struct.nci_dev* %134, i32 0, i32 1
  %136 = load %struct.TYPE_5__*, %struct.TYPE_5__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %136, i32 0, i32 0
  %138 = bitcast {}** %137 to i32 (%struct.nci_dev*)**
  %139 = load i32 (%struct.nci_dev*)*, i32 (%struct.nci_dev*)** %138, align 8
  %140 = load %struct.nci_dev*, %struct.nci_dev** %3, align 8
  %141 = call i32 %139(%struct.nci_dev* %140)
  store i32 %141, i32* %6, align 4
  br label %184

142:                                              ; preds = %125, %110, %98, %93
  %143 = load %struct.nci_dev*, %struct.nci_dev** %3, align 8
  %144 = call i32 @nci_hci_clear_all_pipes(%struct.nci_dev* %143)
  store i32 %144, i32* %6, align 4
  %145 = load i32, i32* %6, align 4
  %146 = icmp slt i32 %145, 0
  br i1 %146, label %147, label %148

147:                                              ; preds = %142
  br label %185

148:                                              ; preds = %142
  %149 = load %struct.nci_dev*, %struct.nci_dev** %3, align 8
  %150 = load %struct.nci_dev*, %struct.nci_dev** %3, align 8
  %151 = getelementptr inbounds %struct.nci_dev, %struct.nci_dev* %150, i32 0, i32 0
  %152 = load %struct.TYPE_7__*, %struct.TYPE_7__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %153, i32 0, i32 2
  %155 = load i32, i32* %154, align 8
  %156 = load %struct.nci_dev*, %struct.nci_dev** %3, align 8
  %157 = getelementptr inbounds %struct.nci_dev, %struct.nci_dev* %156, i32 0, i32 0
  %158 = load %struct.TYPE_7__*, %struct.TYPE_7__** %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %159, i32 0, i32 1
  %161 = load %struct.TYPE_8__*, %struct.TYPE_8__** %160, align 8
  %162 = call i32 @nci_hci_dev_connect_gates(%struct.nci_dev* %149, i32 %155, %struct.TYPE_8__* %161)
  store i32 %162, i32* %6, align 4
  %163 = load i32, i32* %6, align 4
  %164 = icmp slt i32 %163, 0
  br i1 %164, label %165, label %166

165:                                              ; preds = %148
  br label %185

166:                                              ; preds = %148
  %167 = load %struct.nci_dev*, %struct.nci_dev** %3, align 8
  %168 = load i64, i64* @NCI_HCI_ADMIN_GATE, align 8
  %169 = load i32, i32* @NCI_HCI_ADMIN_PARAM_SESSION_IDENTITY, align 4
  %170 = load %struct.nci_dev*, %struct.nci_dev** %3, align 8
  %171 = getelementptr inbounds %struct.nci_dev, %struct.nci_dev* %170, i32 0, i32 0
  %172 = load %struct.TYPE_7__*, %struct.TYPE_7__** %171, align 8
  %173 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %172, i32 0, i32 0
  %174 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  %176 = load %struct.nci_dev*, %struct.nci_dev** %3, align 8
  %177 = getelementptr inbounds %struct.nci_dev, %struct.nci_dev* %176, i32 0, i32 0
  %178 = load %struct.TYPE_7__*, %struct.TYPE_7__** %177, align 8
  %179 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %178, i32 0, i32 0
  %180 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 8
  %182 = call i64 @strlen(i32 %181)
  %183 = call i32 @nci_hci_set_param(%struct.nci_dev* %167, i64 %168, i32 %169, i32 %175, i64 %182)
  store i32 %183, i32* %6, align 4
  br label %184

184:                                              ; preds = %166, %133
  br label %185

185:                                              ; preds = %184, %165, %147
  %186 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %187 = call i32 @kfree_skb(%struct.sk_buff* %186)
  %188 = load i32, i32* %6, align 4
  store i32 %188, i32* %2, align 4
  br label %189

189:                                              ; preds = %185, %91, %82, %47, %22
  %190 = load i32, i32* %2, align 4
  ret i32 %190
}

declare dso_local i32 @nci_hci_reset_pipes(%struct.TYPE_7__*) #1

declare dso_local i32 @nci_hci_connect_gate(%struct.nci_dev*, i32, i64, i32) #1

declare dso_local i32 @nci_hci_get_param(%struct.nci_dev*, i64, i32, %struct.sk_buff**) #1

declare dso_local i64 @strlen(i32) #1

declare dso_local i32 @memcmp(i32, i32, i64) #1

declare dso_local i32 @nci_hci_clear_all_pipes(%struct.nci_dev*) #1

declare dso_local i32 @nci_hci_dev_connect_gates(%struct.nci_dev*, i32, %struct.TYPE_8__*) #1

declare dso_local i32 @nci_hci_set_param(%struct.nci_dev*, i64, i32, i32, i64) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
