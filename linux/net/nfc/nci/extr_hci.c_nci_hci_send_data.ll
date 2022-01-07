; ModuleID = '/home/carl/AnghaBench/linux/net/nfc/nci/extr_hci.c_nci_hci_send_data.c'
source_filename = "/home/carl/AnghaBench/linux/net/nfc/nci/extr_hci.c_nci_hci_send_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nci_dev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.nci_conn_info* }
%struct.nci_conn_info = type { i32, i32 }
%struct.sk_buff = type { i32 }

@EPROTO = common dso_local global i32 0, align 4
@NCI_DATA_HDR_SIZE = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@NCI_HFP_NO_CHAINING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nci_dev*, i32, i32, i32*, i64)* @nci_hci_send_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nci_hci_send_data(%struct.nci_dev* %0, i32 %1, i32 %2, i32* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.nci_dev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.nci_conn_info*, align 8
  %13 = alloca %struct.sk_buff*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.nci_dev* %0, %struct.nci_dev** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  %18 = load i32, i32* %8, align 4
  store i32 %18, i32* %17, align 4
  %19 = load %struct.nci_dev*, %struct.nci_dev** %7, align 8
  %20 = getelementptr inbounds %struct.nci_dev, %struct.nci_dev* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load %struct.nci_conn_info*, %struct.nci_conn_info** %22, align 8
  store %struct.nci_conn_info* %23, %struct.nci_conn_info** %12, align 8
  %24 = load %struct.nci_conn_info*, %struct.nci_conn_info** %12, align 8
  %25 = icmp ne %struct.nci_conn_info* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %5
  %27 = load i32, i32* @EPROTO, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %6, align 4
  br label %150

29:                                               ; preds = %5
  store i32 0, i32* %15, align 4
  %30 = load %struct.nci_dev*, %struct.nci_dev** %7, align 8
  %31 = load %struct.nci_conn_info*, %struct.nci_conn_info** %12, align 8
  %32 = getelementptr inbounds %struct.nci_conn_info, %struct.nci_conn_info* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = sext i32 %33 to i64
  %35 = load i64, i64* @NCI_DATA_HDR_SIZE, align 8
  %36 = add nsw i64 %34, %35
  %37 = load i32, i32* @GFP_KERNEL, align 4
  %38 = call %struct.sk_buff* @nci_skb_alloc(%struct.nci_dev* %30, i64 %36, i32 %37)
  store %struct.sk_buff* %38, %struct.sk_buff** %13, align 8
  %39 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %40 = icmp ne %struct.sk_buff* %39, null
  br i1 %40, label %44, label %41

41:                                               ; preds = %29
  %42 = load i32, i32* @ENOMEM, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %6, align 4
  br label %150

44:                                               ; preds = %29
  %45 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %46 = load i64, i64* @NCI_DATA_HDR_SIZE, align 8
  %47 = add nsw i64 %46, 2
  %48 = call i32 @skb_reserve(%struct.sk_buff* %45, i64 %47)
  %49 = load i32, i32* %9, align 4
  %50 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %51 = call i64 @skb_push(%struct.sk_buff* %50, i32 1)
  %52 = inttoptr i64 %51 to i32*
  store i32 %49, i32* %52, align 4
  br label %53

53:                                               ; preds = %143, %44
  %54 = load %struct.nci_conn_info*, %struct.nci_conn_info** %12, align 8
  %55 = getelementptr inbounds %struct.nci_conn_info, %struct.nci_conn_info* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  store i32 %56, i32* %14, align 4
  %57 = load i32, i32* %15, align 4
  %58 = load %struct.nci_conn_info*, %struct.nci_conn_info** %12, align 8
  %59 = getelementptr inbounds %struct.nci_conn_info, %struct.nci_conn_info* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = add nsw i32 %57, %60
  %62 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %63 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = add nsw i32 %64, 1
  %66 = sub nsw i32 %61, %65
  %67 = sext i32 %66 to i64
  %68 = load i64, i64* %11, align 8
  %69 = icmp uge i64 %67, %68
  br i1 %69, label %70, label %79

70:                                               ; preds = %53
  %71 = load i32, i32* @NCI_HFP_NO_CHAINING, align 4
  %72 = load i32, i32* %17, align 4
  %73 = or i32 %72, %71
  store i32 %73, i32* %17, align 4
  %74 = load i64, i64* %11, align 8
  %75 = load i32, i32* %15, align 4
  %76 = sext i32 %75 to i64
  %77 = sub i64 %74, %76
  %78 = trunc i64 %77 to i32
  store i32 %78, i32* %14, align 4
  br label %88

79:                                               ; preds = %53
  %80 = load %struct.nci_conn_info*, %struct.nci_conn_info** %12, align 8
  %81 = getelementptr inbounds %struct.nci_conn_info, %struct.nci_conn_info* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %84 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = sub nsw i32 %82, %85
  %87 = sub nsw i32 %86, 1
  store i32 %87, i32* %14, align 4
  br label %88

88:                                               ; preds = %79, %70
  %89 = load i32, i32* %17, align 4
  %90 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %91 = call i64 @skb_push(%struct.sk_buff* %90, i32 1)
  %92 = inttoptr i64 %91 to i32*
  store i32 %89, i32* %92, align 4
  %93 = load i32, i32* %14, align 4
  %94 = icmp sgt i32 %93, 0
  br i1 %94, label %95, label %103

95:                                               ; preds = %88
  %96 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %97 = load i32*, i32** %10, align 8
  %98 = load i32, i32* %15, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %97, i64 %99
  %101 = load i32, i32* %14, align 4
  %102 = call i32 @skb_put_data(%struct.sk_buff* %96, i32* %100, i32 %101)
  br label %103

103:                                              ; preds = %95, %88
  %104 = load %struct.nci_dev*, %struct.nci_dev** %7, align 8
  %105 = load %struct.nci_conn_info*, %struct.nci_conn_info** %12, align 8
  %106 = getelementptr inbounds %struct.nci_conn_info, %struct.nci_conn_info* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %109 = call i32 @nci_send_data(%struct.nci_dev* %104, i32 %107, %struct.sk_buff* %108)
  store i32 %109, i32* %16, align 4
  %110 = load i32, i32* %16, align 4
  %111 = icmp slt i32 %110, 0
  br i1 %111, label %112, label %114

112:                                              ; preds = %103
  %113 = load i32, i32* %16, align 4
  store i32 %113, i32* %6, align 4
  br label %150

114:                                              ; preds = %103
  %115 = load i32, i32* %14, align 4
  %116 = load i32, i32* %15, align 4
  %117 = add nsw i32 %116, %115
  store i32 %117, i32* %15, align 4
  %118 = load i32, i32* %15, align 4
  %119 = sext i32 %118 to i64
  %120 = load i64, i64* %11, align 8
  %121 = icmp ult i64 %119, %120
  br i1 %121, label %122, label %142

122:                                              ; preds = %114
  %123 = load %struct.nci_dev*, %struct.nci_dev** %7, align 8
  %124 = load %struct.nci_conn_info*, %struct.nci_conn_info** %12, align 8
  %125 = getelementptr inbounds %struct.nci_conn_info, %struct.nci_conn_info* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = sext i32 %126 to i64
  %128 = load i64, i64* @NCI_DATA_HDR_SIZE, align 8
  %129 = add nsw i64 %127, %128
  %130 = load i32, i32* @GFP_KERNEL, align 4
  %131 = call %struct.sk_buff* @nci_skb_alloc(%struct.nci_dev* %123, i64 %129, i32 %130)
  store %struct.sk_buff* %131, %struct.sk_buff** %13, align 8
  %132 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %133 = icmp ne %struct.sk_buff* %132, null
  br i1 %133, label %137, label %134

134:                                              ; preds = %122
  %135 = load i32, i32* @ENOMEM, align 4
  %136 = sub nsw i32 0, %135
  store i32 %136, i32* %6, align 4
  br label %150

137:                                              ; preds = %122
  %138 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %139 = load i64, i64* @NCI_DATA_HDR_SIZE, align 8
  %140 = add nsw i64 %139, 1
  %141 = call i32 @skb_reserve(%struct.sk_buff* %138, i64 %140)
  br label %142

142:                                              ; preds = %137, %114
  br label %143

143:                                              ; preds = %142
  %144 = load i32, i32* %15, align 4
  %145 = sext i32 %144 to i64
  %146 = load i64, i64* %11, align 8
  %147 = icmp ult i64 %145, %146
  br i1 %147, label %53, label %148

148:                                              ; preds = %143
  %149 = load i32, i32* %15, align 4
  store i32 %149, i32* %6, align 4
  br label %150

150:                                              ; preds = %148, %134, %112, %41, %26
  %151 = load i32, i32* %6, align 4
  ret i32 %151
}

declare dso_local %struct.sk_buff* @nci_skb_alloc(%struct.nci_dev*, i64, i32) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i64) #1

declare dso_local i64 @skb_push(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_put_data(%struct.sk_buff*, i32*, i32) #1

declare dso_local i32 @nci_send_data(%struct.nci_dev*, i32, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
