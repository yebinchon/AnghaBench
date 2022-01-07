; ModuleID = '/home/carl/AnghaBench/linux/net/nfc/hci/extr_hcp.c_nfc_hci_hcp_message_tx.c'
source_filename = "/home/carl/AnghaBench/linux/net/nfc/hci/extr_hcp.c_nfc_hci_hcp_message_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfc_hci_dev = type { i32, i32, i32, i32, i64, %struct.nfc_dev* }
%struct.nfc_dev = type { i32, i32 }
%struct.hci_msg = type { i32, i64, i32, i32, i8*, i32 }
%struct.sk_buff = type { i64 }
%struct.hcp_packet = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.TYPE_2__*, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@NFC_HCI_HCP_COMMAND = common dso_local global i64 0, align 8
@NFC_HCI_HCP_PACKET_HEADER_LEN = common dso_local global i32 0, align 4
@NFC_HCI_FRAGMENT = common dso_local global i64 0, align 8
@ESHUTDOWN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfc_hci_hcp_message_tx(%struct.nfc_hci_dev* %0, i64 %1, i64 %2, i64 %3, i64* %4, i64 %5, i32 %6, i8* %7, i64 %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.nfc_hci_dev*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i64, align 8
  %20 = alloca %struct.nfc_dev*, align 8
  %21 = alloca %struct.hci_msg*, align 8
  %22 = alloca i64*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca %struct.sk_buff*, align 8
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca %struct.hcp_packet*, align 8
  store %struct.nfc_hci_dev* %0, %struct.nfc_hci_dev** %11, align 8
  store i64 %1, i64* %12, align 8
  store i64 %2, i64* %13, align 8
  store i64 %3, i64* %14, align 8
  store i64* %4, i64** %15, align 8
  store i64 %5, i64* %16, align 8
  store i32 %6, i32* %17, align 4
  store i8* %7, i8** %18, align 8
  store i64 %8, i64* %19, align 8
  %30 = load %struct.nfc_hci_dev*, %struct.nfc_hci_dev** %11, align 8
  %31 = getelementptr inbounds %struct.nfc_hci_dev, %struct.nfc_hci_dev* %30, i32 0, i32 5
  %32 = load %struct.nfc_dev*, %struct.nfc_dev** %31, align 8
  store %struct.nfc_dev* %32, %struct.nfc_dev** %20, align 8
  %33 = load i64*, i64** %15, align 8
  store i64* %33, i64** %22, align 8
  store i32 1, i32* %25, align 4
  %34 = load i32, i32* @GFP_KERNEL, align 4
  %35 = call %struct.hci_msg* @kzalloc(i32 40, i32 %34)
  store %struct.hci_msg* %35, %struct.hci_msg** %21, align 8
  %36 = load %struct.hci_msg*, %struct.hci_msg** %21, align 8
  %37 = icmp eq %struct.hci_msg* %36, null
  br i1 %37, label %38, label %41

38:                                               ; preds = %9
  %39 = load i32, i32* @ENOMEM, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %10, align 4
  br label %211

41:                                               ; preds = %9
  %42 = load %struct.hci_msg*, %struct.hci_msg** %21, align 8
  %43 = getelementptr inbounds %struct.hci_msg, %struct.hci_msg* %42, i32 0, i32 3
  %44 = call i32 @INIT_LIST_HEAD(i32* %43)
  %45 = load %struct.hci_msg*, %struct.hci_msg** %21, align 8
  %46 = getelementptr inbounds %struct.hci_msg, %struct.hci_msg* %45, i32 0, i32 2
  %47 = call i32 @skb_queue_head_init(i32* %46)
  %48 = load i64, i64* %13, align 8
  %49 = load i64, i64* @NFC_HCI_HCP_COMMAND, align 8
  %50 = icmp eq i64 %48, %49
  %51 = zext i1 %50 to i64
  %52 = select i1 %50, i32 1, i32 0
  %53 = load %struct.hci_msg*, %struct.hci_msg** %21, align 8
  %54 = getelementptr inbounds %struct.hci_msg, %struct.hci_msg* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 8
  %55 = load i32, i32* %17, align 4
  %56 = load %struct.hci_msg*, %struct.hci_msg** %21, align 8
  %57 = getelementptr inbounds %struct.hci_msg, %struct.hci_msg* %56, i32 0, i32 5
  store i32 %55, i32* %57, align 8
  %58 = load i8*, i8** %18, align 8
  %59 = load %struct.hci_msg*, %struct.hci_msg** %21, align 8
  %60 = getelementptr inbounds %struct.hci_msg, %struct.hci_msg* %59, i32 0, i32 4
  store i8* %58, i8** %60, align 8
  %61 = load i64, i64* %19, align 8
  %62 = load %struct.hci_msg*, %struct.hci_msg** %21, align 8
  %63 = getelementptr inbounds %struct.hci_msg, %struct.hci_msg* %62, i32 0, i32 1
  store i64 %61, i64* %63, align 8
  %64 = load i64, i64* %16, align 8
  %65 = add i64 %64, 1
  %66 = trunc i64 %65 to i32
  store i32 %66, i32* %23, align 4
  br label %67

67:                                               ; preds = %173, %41
  %68 = load i32, i32* %23, align 4
  %69 = icmp sgt i32 %68, 0
  br i1 %69, label %70, label %178

70:                                               ; preds = %67
  %71 = load i32, i32* @NFC_HCI_HCP_PACKET_HEADER_LEN, align 4
  %72 = load i32, i32* %23, align 4
  %73 = add nsw i32 %71, %72
  %74 = load %struct.nfc_hci_dev*, %struct.nfc_hci_dev** %11, align 8
  %75 = getelementptr inbounds %struct.nfc_hci_dev, %struct.nfc_hci_dev* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = icmp sle i32 %73, %76
  br i1 %77, label %78, label %80

78:                                               ; preds = %70
  %79 = load i32, i32* %23, align 4
  store i32 %79, i32* %28, align 4
  br label %86

80:                                               ; preds = %70
  %81 = load %struct.nfc_hci_dev*, %struct.nfc_hci_dev** %11, align 8
  %82 = getelementptr inbounds %struct.nfc_hci_dev, %struct.nfc_hci_dev* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* @NFC_HCI_HCP_PACKET_HEADER_LEN, align 4
  %85 = sub nsw i32 %83, %84
  store i32 %85, i32* %28, align 4
  br label %86

86:                                               ; preds = %80, %78
  %87 = load %struct.nfc_dev*, %struct.nfc_dev** %20, align 8
  %88 = getelementptr inbounds %struct.nfc_dev, %struct.nfc_dev* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @NFC_HCI_HCP_PACKET_HEADER_LEN, align 4
  %91 = add nsw i32 %89, %90
  %92 = load i32, i32* %28, align 4
  %93 = add nsw i32 %91, %92
  %94 = load %struct.nfc_dev*, %struct.nfc_dev** %20, align 8
  %95 = getelementptr inbounds %struct.nfc_dev, %struct.nfc_dev* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = add nsw i32 %93, %96
  store i32 %97, i32* %27, align 4
  %98 = load i32, i32* %28, align 4
  %99 = load i32, i32* %23, align 4
  %100 = sub nsw i32 %99, %98
  store i32 %100, i32* %23, align 4
  %101 = load i32, i32* %27, align 4
  %102 = load i32, i32* @GFP_KERNEL, align 4
  %103 = call %struct.sk_buff* @alloc_skb(i32 %101, i32 %102)
  store %struct.sk_buff* %103, %struct.sk_buff** %26, align 8
  %104 = load %struct.sk_buff*, %struct.sk_buff** %26, align 8
  %105 = icmp eq %struct.sk_buff* %104, null
  br i1 %105, label %106, label %109

106:                                              ; preds = %86
  %107 = load i32, i32* @ENOMEM, align 4
  %108 = sub nsw i32 0, %107
  store i32 %108, i32* %24, align 4
  br label %204

109:                                              ; preds = %86
  %110 = load %struct.sk_buff*, %struct.sk_buff** %26, align 8
  %111 = load %struct.nfc_dev*, %struct.nfc_dev** %20, align 8
  %112 = getelementptr inbounds %struct.nfc_dev, %struct.nfc_dev* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @skb_reserve(%struct.sk_buff* %110, i32 %113)
  %115 = load %struct.sk_buff*, %struct.sk_buff** %26, align 8
  %116 = load i32, i32* @NFC_HCI_HCP_PACKET_HEADER_LEN, align 4
  %117 = load i32, i32* %28, align 4
  %118 = add nsw i32 %116, %117
  %119 = call i32 @skb_put(%struct.sk_buff* %115, i32 %118)
  %120 = load %struct.sk_buff*, %struct.sk_buff** %26, align 8
  %121 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = inttoptr i64 %122 to %struct.hcp_packet*
  store %struct.hcp_packet* %123, %struct.hcp_packet** %29, align 8
  %124 = load i64, i64* %12, align 8
  %125 = load %struct.hcp_packet*, %struct.hcp_packet** %29, align 8
  %126 = getelementptr inbounds %struct.hcp_packet, %struct.hcp_packet* %125, i32 0, i32 0
  store i64 %124, i64* %126, align 8
  %127 = load i32, i32* %25, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %153

129:                                              ; preds = %109
  store i32 0, i32* %25, align 4
  %130 = load i64, i64* %13, align 8
  %131 = load i64, i64* %14, align 8
  %132 = call i32 @HCP_HEADER(i64 %130, i64 %131)
  %133 = load %struct.hcp_packet*, %struct.hcp_packet** %29, align 8
  %134 = getelementptr inbounds %struct.hcp_packet, %struct.hcp_packet* %133, i32 0, i32 1
  %135 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %134, i32 0, i32 1
  store i32 %132, i32* %135, align 8
  %136 = load i64*, i64** %22, align 8
  %137 = icmp ne i64* %136, null
  br i1 %137, label %138, label %152

138:                                              ; preds = %129
  %139 = load %struct.hcp_packet*, %struct.hcp_packet** %29, align 8
  %140 = getelementptr inbounds %struct.hcp_packet, %struct.hcp_packet* %139, i32 0, i32 1
  %141 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %140, i32 0, i32 0
  %142 = load %struct.TYPE_2__*, %struct.TYPE_2__** %141, align 8
  %143 = load i64*, i64** %22, align 8
  %144 = load i32, i32* %28, align 4
  %145 = sub nsw i32 %144, 1
  %146 = call i32 @memcpy(%struct.TYPE_2__* %142, i64* %143, i32 %145)
  %147 = load i32, i32* %28, align 4
  %148 = sub nsw i32 %147, 1
  %149 = load i64*, i64** %22, align 8
  %150 = sext i32 %148 to i64
  %151 = getelementptr inbounds i64, i64* %149, i64 %150
  store i64* %151, i64** %22, align 8
  br label %152

152:                                              ; preds = %138, %129
  br label %163

153:                                              ; preds = %109
  %154 = load %struct.hcp_packet*, %struct.hcp_packet** %29, align 8
  %155 = getelementptr inbounds %struct.hcp_packet, %struct.hcp_packet* %154, i32 0, i32 1
  %156 = load i64*, i64** %22, align 8
  %157 = load i32, i32* %28, align 4
  %158 = call i32 @memcpy(%struct.TYPE_2__* %155, i64* %156, i32 %157)
  %159 = load i32, i32* %28, align 4
  %160 = load i64*, i64** %22, align 8
  %161 = sext i32 %159 to i64
  %162 = getelementptr inbounds i64, i64* %160, i64 %161
  store i64* %162, i64** %22, align 8
  br label %163

163:                                              ; preds = %153, %152
  %164 = load i32, i32* %23, align 4
  %165 = icmp eq i32 %164, 0
  br i1 %165, label %166, label %173

166:                                              ; preds = %163
  %167 = load i64, i64* @NFC_HCI_FRAGMENT, align 8
  %168 = xor i64 %167, -1
  %169 = load %struct.hcp_packet*, %struct.hcp_packet** %29, align 8
  %170 = getelementptr inbounds %struct.hcp_packet, %struct.hcp_packet* %169, i32 0, i32 0
  %171 = load i64, i64* %170, align 8
  %172 = or i64 %171, %168
  store i64 %172, i64* %170, align 8
  br label %173

173:                                              ; preds = %166, %163
  %174 = load %struct.hci_msg*, %struct.hci_msg** %21, align 8
  %175 = getelementptr inbounds %struct.hci_msg, %struct.hci_msg* %174, i32 0, i32 2
  %176 = load %struct.sk_buff*, %struct.sk_buff** %26, align 8
  %177 = call i32 @skb_queue_tail(i32* %175, %struct.sk_buff* %176)
  br label %67

178:                                              ; preds = %67
  %179 = load %struct.nfc_hci_dev*, %struct.nfc_hci_dev** %11, align 8
  %180 = getelementptr inbounds %struct.nfc_hci_dev, %struct.nfc_hci_dev* %179, i32 0, i32 2
  %181 = call i32 @mutex_lock(i32* %180)
  %182 = load %struct.nfc_hci_dev*, %struct.nfc_hci_dev** %11, align 8
  %183 = getelementptr inbounds %struct.nfc_hci_dev, %struct.nfc_hci_dev* %182, i32 0, i32 4
  %184 = load i64, i64* %183, align 8
  %185 = icmp ne i64 %184, 0
  br i1 %185, label %186, label %192

186:                                              ; preds = %178
  %187 = load i32, i32* @ESHUTDOWN, align 4
  %188 = sub nsw i32 0, %187
  store i32 %188, i32* %24, align 4
  %189 = load %struct.nfc_hci_dev*, %struct.nfc_hci_dev** %11, align 8
  %190 = getelementptr inbounds %struct.nfc_hci_dev, %struct.nfc_hci_dev* %189, i32 0, i32 2
  %191 = call i32 @mutex_unlock(i32* %190)
  br label %204

192:                                              ; preds = %178
  %193 = load %struct.hci_msg*, %struct.hci_msg** %21, align 8
  %194 = getelementptr inbounds %struct.hci_msg, %struct.hci_msg* %193, i32 0, i32 3
  %195 = load %struct.nfc_hci_dev*, %struct.nfc_hci_dev** %11, align 8
  %196 = getelementptr inbounds %struct.nfc_hci_dev, %struct.nfc_hci_dev* %195, i32 0, i32 3
  %197 = call i32 @list_add_tail(i32* %194, i32* %196)
  %198 = load %struct.nfc_hci_dev*, %struct.nfc_hci_dev** %11, align 8
  %199 = getelementptr inbounds %struct.nfc_hci_dev, %struct.nfc_hci_dev* %198, i32 0, i32 2
  %200 = call i32 @mutex_unlock(i32* %199)
  %201 = load %struct.nfc_hci_dev*, %struct.nfc_hci_dev** %11, align 8
  %202 = getelementptr inbounds %struct.nfc_hci_dev, %struct.nfc_hci_dev* %201, i32 0, i32 1
  %203 = call i32 @schedule_work(i32* %202)
  store i32 0, i32* %10, align 4
  br label %211

204:                                              ; preds = %186, %106
  %205 = load %struct.hci_msg*, %struct.hci_msg** %21, align 8
  %206 = getelementptr inbounds %struct.hci_msg, %struct.hci_msg* %205, i32 0, i32 2
  %207 = call i32 @skb_queue_purge(i32* %206)
  %208 = load %struct.hci_msg*, %struct.hci_msg** %21, align 8
  %209 = call i32 @kfree(%struct.hci_msg* %208)
  %210 = load i32, i32* %24, align 4
  store i32 %210, i32* %10, align 4
  br label %211

211:                                              ; preds = %204, %192, %38
  %212 = load i32, i32* %10, align 4
  ret i32 %212
}

declare dso_local %struct.hci_msg* @kzalloc(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @skb_queue_head_init(i32*) #1

declare dso_local %struct.sk_buff* @alloc_skb(i32, i32) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @HCP_HEADER(i64, i64) #1

declare dso_local i32 @memcpy(%struct.TYPE_2__*, i64*, i32) #1

declare dso_local i32 @skb_queue_tail(i32*, %struct.sk_buff*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @schedule_work(i32*) #1

declare dso_local i32 @skb_queue_purge(i32*) #1

declare dso_local i32 @kfree(%struct.hci_msg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
