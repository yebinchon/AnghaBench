; ModuleID = '/home/carl/AnghaBench/linux/net/nfc/hci/extr_core.c_nfc_hci_target_discovered.c'
source_filename = "/home/carl/AnghaBench/linux/net/nfc/hci/extr_core.c_nfc_hci_target_discovered.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfc_hci_dev = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.nfc_hci_dev*, i32, %struct.nfc_target*)*, i32 (%struct.nfc_hci_dev*, i32, %struct.nfc_target*)* }
%struct.nfc_target = type { i32, i32, i32, i32, i32, i32 }
%struct.sk_buff = type { i32, i32* }

@.str = private unnamed_addr constant [14 x i8] c"from gate %d\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@NFC_HCI_RF_READER_A_ATQA = common dso_local global i32 0, align 4
@NFC_HCI_RF_READER_A_SAK = common dso_local global i32 0, align 4
@EPROTO = common dso_local global i32 0, align 4
@NFC_HCI_RF_READER_A_UID = common dso_local global i32 0, align 4
@NFC_NFCID1_MAXSIZE = common dso_local global i32 0, align 4
@NFC_PROTO_ISO14443_B_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfc_hci_target_discovered(%struct.nfc_hci_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nfc_hci_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.nfc_target*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca i32, align 4
  store %struct.nfc_hci_dev* %0, %struct.nfc_hci_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.sk_buff* null, %struct.sk_buff** %7, align 8
  store %struct.sk_buff* null, %struct.sk_buff** %8, align 8
  store %struct.sk_buff* null, %struct.sk_buff** %9, align 8
  %11 = load i32, i32* %5, align 4
  %12 = call i32 @pr_debug(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %11)
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.nfc_target* @kzalloc(i32 24, i32 %13)
  store %struct.nfc_target* %14, %struct.nfc_target** %6, align 8
  %15 = load %struct.nfc_target*, %struct.nfc_target** %6, align 8
  %16 = icmp eq %struct.nfc_target* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %212

20:                                               ; preds = %2
  %21 = load i32, i32* %5, align 4
  switch i32 %21, label %141 [
    i32 129, label %22
    i32 128, label %137
  ]

22:                                               ; preds = %20
  %23 = load %struct.nfc_hci_dev*, %struct.nfc_hci_dev** %4, align 8
  %24 = load i32, i32* @NFC_HCI_RF_READER_A_ATQA, align 4
  %25 = call i32 @nfc_hci_get_param(%struct.nfc_hci_dev* %23, i32 129, i32 %24, %struct.sk_buff** %7)
  store i32 %25, i32* %10, align 4
  %26 = load i32, i32* %10, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %22
  br label %202

29:                                               ; preds = %22
  %30 = load %struct.nfc_hci_dev*, %struct.nfc_hci_dev** %4, align 8
  %31 = load i32, i32* @NFC_HCI_RF_READER_A_SAK, align 4
  %32 = call i32 @nfc_hci_get_param(%struct.nfc_hci_dev* %30, i32 129, i32 %31, %struct.sk_buff** %8)
  store i32 %32, i32* %10, align 4
  %33 = load i32, i32* %10, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %29
  br label %202

36:                                               ; preds = %29
  %37 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %38 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp ne i32 %39, 2
  br i1 %40, label %46, label %41

41:                                               ; preds = %36
  %42 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %43 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp ne i32 %44, 1
  br i1 %45, label %46, label %49

46:                                               ; preds = %41, %36
  %47 = load i32, i32* @EPROTO, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %10, align 4
  br label %202

49:                                               ; preds = %41
  %50 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %51 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %50, i32 0, i32 1
  %52 = load i32*, i32** %51, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @nfc_hci_sak_to_protocol(i32 %54)
  %56 = load %struct.nfc_target*, %struct.nfc_target** %6, align 8
  %57 = getelementptr inbounds %struct.nfc_target, %struct.nfc_target* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 4
  %58 = load %struct.nfc_target*, %struct.nfc_target** %6, align 8
  %59 = getelementptr inbounds %struct.nfc_target, %struct.nfc_target* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = icmp eq i32 %60, -1
  br i1 %61, label %62, label %65

62:                                               ; preds = %49
  %63 = load i32, i32* @EPROTO, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %10, align 4
  br label %202

65:                                               ; preds = %49
  %66 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %67 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %66, i32 0, i32 1
  %68 = load i32*, i32** %67, align 8
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @be16_to_cpu(i32 %69)
  %71 = load %struct.nfc_target*, %struct.nfc_target** %6, align 8
  %72 = getelementptr inbounds %struct.nfc_target, %struct.nfc_target* %71, i32 0, i32 5
  store i32 %70, i32* %72, align 4
  %73 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %74 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %73, i32 0, i32 1
  %75 = load i32*, i32** %74, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 0
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.nfc_target*, %struct.nfc_target** %6, align 8
  %79 = getelementptr inbounds %struct.nfc_target, %struct.nfc_target* %78, i32 0, i32 4
  store i32 %77, i32* %79, align 4
  %80 = load %struct.nfc_hci_dev*, %struct.nfc_hci_dev** %4, align 8
  %81 = load i32, i32* @NFC_HCI_RF_READER_A_UID, align 4
  %82 = call i32 @nfc_hci_get_param(%struct.nfc_hci_dev* %80, i32 129, i32 %81, %struct.sk_buff** %9)
  store i32 %82, i32* %10, align 4
  %83 = load i32, i32* %10, align 4
  %84 = icmp slt i32 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %65
  br label %202

86:                                               ; preds = %65
  %87 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %88 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %97, label %91

91:                                               ; preds = %86
  %92 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %93 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* @NFC_NFCID1_MAXSIZE, align 4
  %96 = icmp sgt i32 %94, %95
  br i1 %96, label %97, label %100

97:                                               ; preds = %91, %86
  %98 = load i32, i32* @EPROTO, align 4
  %99 = sub nsw i32 0, %98
  store i32 %99, i32* %10, align 4
  br label %202

100:                                              ; preds = %91
  %101 = load %struct.nfc_target*, %struct.nfc_target** %6, align 8
  %102 = getelementptr inbounds %struct.nfc_target, %struct.nfc_target* %101, i32 0, i32 3
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %105 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %104, i32 0, i32 1
  %106 = load i32*, i32** %105, align 8
  %107 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %108 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = call i32 @memcpy(i32 %103, i32* %106, i32 %109)
  %111 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %112 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = load %struct.nfc_target*, %struct.nfc_target** %6, align 8
  %115 = getelementptr inbounds %struct.nfc_target, %struct.nfc_target* %114, i32 0, i32 1
  store i32 %113, i32* %115, align 4
  %116 = load %struct.nfc_hci_dev*, %struct.nfc_hci_dev** %4, align 8
  %117 = getelementptr inbounds %struct.nfc_hci_dev, %struct.nfc_hci_dev* %116, i32 0, i32 1
  %118 = load %struct.TYPE_2__*, %struct.TYPE_2__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %118, i32 0, i32 0
  %120 = load i32 (%struct.nfc_hci_dev*, i32, %struct.nfc_target*)*, i32 (%struct.nfc_hci_dev*, i32, %struct.nfc_target*)** %119, align 8
  %121 = icmp ne i32 (%struct.nfc_hci_dev*, i32, %struct.nfc_target*)* %120, null
  br i1 %121, label %122, label %136

122:                                              ; preds = %100
  %123 = load %struct.nfc_hci_dev*, %struct.nfc_hci_dev** %4, align 8
  %124 = getelementptr inbounds %struct.nfc_hci_dev, %struct.nfc_hci_dev* %123, i32 0, i32 1
  %125 = load %struct.TYPE_2__*, %struct.TYPE_2__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %125, i32 0, i32 0
  %127 = load i32 (%struct.nfc_hci_dev*, i32, %struct.nfc_target*)*, i32 (%struct.nfc_hci_dev*, i32, %struct.nfc_target*)** %126, align 8
  %128 = load %struct.nfc_hci_dev*, %struct.nfc_hci_dev** %4, align 8
  %129 = load i32, i32* %5, align 4
  %130 = load %struct.nfc_target*, %struct.nfc_target** %6, align 8
  %131 = call i32 %127(%struct.nfc_hci_dev* %128, i32 %129, %struct.nfc_target* %130)
  store i32 %131, i32* %10, align 4
  %132 = load i32, i32* %10, align 4
  %133 = icmp slt i32 %132, 0
  br i1 %133, label %134, label %135

134:                                              ; preds = %122
  br label %202

135:                                              ; preds = %122
  br label %136

136:                                              ; preds = %135, %100
  br label %187

137:                                              ; preds = %20
  %138 = load i32, i32* @NFC_PROTO_ISO14443_B_MASK, align 4
  %139 = load %struct.nfc_target*, %struct.nfc_target** %6, align 8
  %140 = getelementptr inbounds %struct.nfc_target, %struct.nfc_target* %139, i32 0, i32 0
  store i32 %138, i32* %140, align 4
  br label %187

141:                                              ; preds = %20
  %142 = load %struct.nfc_hci_dev*, %struct.nfc_hci_dev** %4, align 8
  %143 = getelementptr inbounds %struct.nfc_hci_dev, %struct.nfc_hci_dev* %142, i32 0, i32 1
  %144 = load %struct.TYPE_2__*, %struct.TYPE_2__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %144, i32 0, i32 1
  %146 = load i32 (%struct.nfc_hci_dev*, i32, %struct.nfc_target*)*, i32 (%struct.nfc_hci_dev*, i32, %struct.nfc_target*)** %145, align 8
  %147 = icmp ne i32 (%struct.nfc_hci_dev*, i32, %struct.nfc_target*)* %146, null
  br i1 %147, label %148, label %158

148:                                              ; preds = %141
  %149 = load %struct.nfc_hci_dev*, %struct.nfc_hci_dev** %4, align 8
  %150 = getelementptr inbounds %struct.nfc_hci_dev, %struct.nfc_hci_dev* %149, i32 0, i32 1
  %151 = load %struct.TYPE_2__*, %struct.TYPE_2__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %151, i32 0, i32 1
  %153 = load i32 (%struct.nfc_hci_dev*, i32, %struct.nfc_target*)*, i32 (%struct.nfc_hci_dev*, i32, %struct.nfc_target*)** %152, align 8
  %154 = load %struct.nfc_hci_dev*, %struct.nfc_hci_dev** %4, align 8
  %155 = load i32, i32* %5, align 4
  %156 = load %struct.nfc_target*, %struct.nfc_target** %6, align 8
  %157 = call i32 %153(%struct.nfc_hci_dev* %154, i32 %155, %struct.nfc_target* %156)
  store i32 %157, i32* %10, align 4
  br label %161

158:                                              ; preds = %141
  %159 = load i32, i32* @EPROTO, align 4
  %160 = sub nsw i32 0, %159
  store i32 %160, i32* %10, align 4
  br label %161

161:                                              ; preds = %158, %148
  %162 = load i32, i32* %10, align 4
  %163 = icmp slt i32 %162, 0
  br i1 %163, label %164, label %165

164:                                              ; preds = %161
  br label %202

165:                                              ; preds = %161
  %166 = load %struct.nfc_hci_dev*, %struct.nfc_hci_dev** %4, align 8
  %167 = getelementptr inbounds %struct.nfc_hci_dev, %struct.nfc_hci_dev* %166, i32 0, i32 1
  %168 = load %struct.TYPE_2__*, %struct.TYPE_2__** %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %168, i32 0, i32 0
  %170 = load i32 (%struct.nfc_hci_dev*, i32, %struct.nfc_target*)*, i32 (%struct.nfc_hci_dev*, i32, %struct.nfc_target*)** %169, align 8
  %171 = icmp ne i32 (%struct.nfc_hci_dev*, i32, %struct.nfc_target*)* %170, null
  br i1 %171, label %172, label %186

172:                                              ; preds = %165
  %173 = load %struct.nfc_hci_dev*, %struct.nfc_hci_dev** %4, align 8
  %174 = getelementptr inbounds %struct.nfc_hci_dev, %struct.nfc_hci_dev* %173, i32 0, i32 1
  %175 = load %struct.TYPE_2__*, %struct.TYPE_2__** %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %175, i32 0, i32 0
  %177 = load i32 (%struct.nfc_hci_dev*, i32, %struct.nfc_target*)*, i32 (%struct.nfc_hci_dev*, i32, %struct.nfc_target*)** %176, align 8
  %178 = load %struct.nfc_hci_dev*, %struct.nfc_hci_dev** %4, align 8
  %179 = load i32, i32* %5, align 4
  %180 = load %struct.nfc_target*, %struct.nfc_target** %6, align 8
  %181 = call i32 %177(%struct.nfc_hci_dev* %178, i32 %179, %struct.nfc_target* %180)
  store i32 %181, i32* %10, align 4
  %182 = load i32, i32* %10, align 4
  %183 = icmp slt i32 %182, 0
  br i1 %183, label %184, label %185

184:                                              ; preds = %172
  br label %202

185:                                              ; preds = %172
  br label %186

186:                                              ; preds = %185, %165
  br label %187

187:                                              ; preds = %186, %137, %136
  %188 = load %struct.nfc_target*, %struct.nfc_target** %6, align 8
  %189 = getelementptr inbounds %struct.nfc_target, %struct.nfc_target* %188, i32 0, i32 2
  %190 = load i32, i32* %189, align 4
  %191 = icmp eq i32 %190, 0
  br i1 %191, label %192, label %196

192:                                              ; preds = %187
  %193 = load i32, i32* %5, align 4
  %194 = load %struct.nfc_target*, %struct.nfc_target** %6, align 8
  %195 = getelementptr inbounds %struct.nfc_target, %struct.nfc_target* %194, i32 0, i32 2
  store i32 %193, i32* %195, align 4
  br label %196

196:                                              ; preds = %192, %187
  %197 = load %struct.nfc_hci_dev*, %struct.nfc_hci_dev** %4, align 8
  %198 = getelementptr inbounds %struct.nfc_hci_dev, %struct.nfc_hci_dev* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 8
  %200 = load %struct.nfc_target*, %struct.nfc_target** %6, align 8
  %201 = call i32 @nfc_targets_found(i32 %199, %struct.nfc_target* %200, i32 1)
  store i32 %201, i32* %10, align 4
  br label %202

202:                                              ; preds = %196, %184, %164, %134, %97, %85, %62, %46, %35, %28
  %203 = load %struct.nfc_target*, %struct.nfc_target** %6, align 8
  %204 = call i32 @kfree(%struct.nfc_target* %203)
  %205 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %206 = call i32 @kfree_skb(%struct.sk_buff* %205)
  %207 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %208 = call i32 @kfree_skb(%struct.sk_buff* %207)
  %209 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %210 = call i32 @kfree_skb(%struct.sk_buff* %209)
  %211 = load i32, i32* %10, align 4
  store i32 %211, i32* %3, align 4
  br label %212

212:                                              ; preds = %202, %17
  %213 = load i32, i32* %3, align 4
  ret i32 %213
}

declare dso_local i32 @pr_debug(i8*, i32) #1

declare dso_local %struct.nfc_target* @kzalloc(i32, i32) #1

declare dso_local i32 @nfc_hci_get_param(%struct.nfc_hci_dev*, i32, i32, %struct.sk_buff**) #1

declare dso_local i32 @nfc_hci_sak_to_protocol(i32) #1

declare dso_local i32 @be16_to_cpu(i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @nfc_targets_found(i32, %struct.nfc_target*, i32) #1

declare dso_local i32 @kfree(%struct.nfc_target*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
