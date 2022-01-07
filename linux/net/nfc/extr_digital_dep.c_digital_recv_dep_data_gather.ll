; ModuleID = '/home/carl/AnghaBench/linux/net/nfc/extr_digital_dep.c_digital_recv_dep_data_gather.c'
source_filename = "/home/carl/AnghaBench/linux/net/nfc/extr_digital_dep.c_digital_recv_dep_data_gather.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfc_digital_dev = type { i32, %struct.sk_buff* }
%struct.sk_buff = type { i64, i32 }
%struct.digital_data_exch = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.nfc_digital_dev*, i32, %struct.sk_buff*, i32 (%struct.nfc_digital_dev*, %struct.digital_data_exch*)*, %struct.digital_data_exch*)* @digital_recv_dep_data_gather to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @digital_recv_dep_data_gather(%struct.nfc_digital_dev* %0, i32 %1, %struct.sk_buff* %2, i32 (%struct.nfc_digital_dev*, %struct.digital_data_exch*)* %3, %struct.digital_data_exch* %4) #0 {
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.nfc_digital_dev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca i32 (%struct.nfc_digital_dev*, %struct.digital_data_exch*)*, align 8
  %11 = alloca %struct.digital_data_exch*, align 8
  %12 = alloca %struct.sk_buff*, align 8
  %13 = alloca i32, align 4
  store %struct.nfc_digital_dev* %0, %struct.nfc_digital_dev** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.sk_buff* %2, %struct.sk_buff** %9, align 8
  store i32 (%struct.nfc_digital_dev*, %struct.digital_data_exch*)* %3, i32 (%struct.nfc_digital_dev*, %struct.digital_data_exch*)** %10, align 8
  store %struct.digital_data_exch* %4, %struct.digital_data_exch** %11, align 8
  %14 = load i32, i32* %8, align 4
  %15 = call i64 @DIGITAL_NFC_DEP_MI_BIT_SET(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %39

17:                                               ; preds = %5
  %18 = load %struct.nfc_digital_dev*, %struct.nfc_digital_dev** %7, align 8
  %19 = getelementptr inbounds %struct.nfc_digital_dev, %struct.nfc_digital_dev* %18, i32 0, i32 1
  %20 = load %struct.sk_buff*, %struct.sk_buff** %19, align 8
  %21 = icmp ne %struct.sk_buff* %20, null
  br i1 %21, label %39, label %22

22:                                               ; preds = %17
  %23 = load %struct.nfc_digital_dev*, %struct.nfc_digital_dev** %7, align 8
  %24 = getelementptr inbounds %struct.nfc_digital_dev, %struct.nfc_digital_dev* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = mul nsw i32 8, %25
  %27 = load i32, i32* @GFP_KERNEL, align 4
  %28 = call %struct.sk_buff* @nfc_alloc_recv_skb(i32 %26, i32 %27)
  %29 = load %struct.nfc_digital_dev*, %struct.nfc_digital_dev** %7, align 8
  %30 = getelementptr inbounds %struct.nfc_digital_dev, %struct.nfc_digital_dev* %29, i32 0, i32 1
  store %struct.sk_buff* %28, %struct.sk_buff** %30, align 8
  %31 = load %struct.nfc_digital_dev*, %struct.nfc_digital_dev** %7, align 8
  %32 = getelementptr inbounds %struct.nfc_digital_dev, %struct.nfc_digital_dev* %31, i32 0, i32 1
  %33 = load %struct.sk_buff*, %struct.sk_buff** %32, align 8
  %34 = icmp ne %struct.sk_buff* %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %22
  %36 = load i32, i32* @ENOMEM, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %13, align 4
  br label %113

38:                                               ; preds = %22
  br label %39

39:                                               ; preds = %38, %17, %5
  %40 = load %struct.nfc_digital_dev*, %struct.nfc_digital_dev** %7, align 8
  %41 = getelementptr inbounds %struct.nfc_digital_dev, %struct.nfc_digital_dev* %40, i32 0, i32 1
  %42 = load %struct.sk_buff*, %struct.sk_buff** %41, align 8
  %43 = icmp ne %struct.sk_buff* %42, null
  br i1 %43, label %44, label %111

44:                                               ; preds = %39
  %45 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %46 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.nfc_digital_dev*, %struct.nfc_digital_dev** %7, align 8
  %49 = getelementptr inbounds %struct.nfc_digital_dev, %struct.nfc_digital_dev* %48, i32 0, i32 1
  %50 = load %struct.sk_buff*, %struct.sk_buff** %49, align 8
  %51 = call i64 @skb_tailroom(%struct.sk_buff* %50)
  %52 = icmp sgt i64 %47, %51
  br i1 %52, label %53, label %80

53:                                               ; preds = %44
  %54 = load %struct.nfc_digital_dev*, %struct.nfc_digital_dev** %7, align 8
  %55 = getelementptr inbounds %struct.nfc_digital_dev, %struct.nfc_digital_dev* %54, i32 0, i32 1
  %56 = load %struct.sk_buff*, %struct.sk_buff** %55, align 8
  %57 = load %struct.nfc_digital_dev*, %struct.nfc_digital_dev** %7, align 8
  %58 = getelementptr inbounds %struct.nfc_digital_dev, %struct.nfc_digital_dev* %57, i32 0, i32 1
  %59 = load %struct.sk_buff*, %struct.sk_buff** %58, align 8
  %60 = call i32 @skb_headroom(%struct.sk_buff* %59)
  %61 = load %struct.nfc_digital_dev*, %struct.nfc_digital_dev** %7, align 8
  %62 = getelementptr inbounds %struct.nfc_digital_dev, %struct.nfc_digital_dev* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = mul nsw i32 8, %63
  %65 = load i32, i32* @GFP_KERNEL, align 4
  %66 = call %struct.sk_buff* @skb_copy_expand(%struct.sk_buff* %56, i32 %60, i32 %64, i32 %65)
  store %struct.sk_buff* %66, %struct.sk_buff** %12, align 8
  %67 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %68 = icmp ne %struct.sk_buff* %67, null
  br i1 %68, label %72, label %69

69:                                               ; preds = %53
  %70 = load i32, i32* @ENOMEM, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %13, align 4
  br label %113

72:                                               ; preds = %53
  %73 = load %struct.nfc_digital_dev*, %struct.nfc_digital_dev** %7, align 8
  %74 = getelementptr inbounds %struct.nfc_digital_dev, %struct.nfc_digital_dev* %73, i32 0, i32 1
  %75 = load %struct.sk_buff*, %struct.sk_buff** %74, align 8
  %76 = call i32 @kfree_skb(%struct.sk_buff* %75)
  %77 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %78 = load %struct.nfc_digital_dev*, %struct.nfc_digital_dev** %7, align 8
  %79 = getelementptr inbounds %struct.nfc_digital_dev, %struct.nfc_digital_dev* %78, i32 0, i32 1
  store %struct.sk_buff* %77, %struct.sk_buff** %79, align 8
  br label %80

80:                                               ; preds = %72, %44
  %81 = load %struct.nfc_digital_dev*, %struct.nfc_digital_dev** %7, align 8
  %82 = getelementptr inbounds %struct.nfc_digital_dev, %struct.nfc_digital_dev* %81, i32 0, i32 1
  %83 = load %struct.sk_buff*, %struct.sk_buff** %82, align 8
  %84 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %85 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %88 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = call i32 @skb_put_data(%struct.sk_buff* %83, i32 %86, i64 %89)
  %91 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %92 = call i32 @kfree_skb(%struct.sk_buff* %91)
  store %struct.sk_buff* null, %struct.sk_buff** %9, align 8
  %93 = load i32, i32* %8, align 4
  %94 = call i64 @DIGITAL_NFC_DEP_MI_BIT_SET(i32 %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %105

96:                                               ; preds = %80
  %97 = load i32 (%struct.nfc_digital_dev*, %struct.digital_data_exch*)*, i32 (%struct.nfc_digital_dev*, %struct.digital_data_exch*)** %10, align 8
  %98 = load %struct.nfc_digital_dev*, %struct.nfc_digital_dev** %7, align 8
  %99 = load %struct.digital_data_exch*, %struct.digital_data_exch** %11, align 8
  %100 = call i32 %97(%struct.nfc_digital_dev* %98, %struct.digital_data_exch* %99)
  store i32 %100, i32* %13, align 4
  %101 = load i32, i32* %13, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %96
  br label %113

104:                                              ; preds = %96
  store %struct.sk_buff* null, %struct.sk_buff** %6, align 8
  br label %124

105:                                              ; preds = %80
  %106 = load %struct.nfc_digital_dev*, %struct.nfc_digital_dev** %7, align 8
  %107 = getelementptr inbounds %struct.nfc_digital_dev, %struct.nfc_digital_dev* %106, i32 0, i32 1
  %108 = load %struct.sk_buff*, %struct.sk_buff** %107, align 8
  store %struct.sk_buff* %108, %struct.sk_buff** %9, align 8
  %109 = load %struct.nfc_digital_dev*, %struct.nfc_digital_dev** %7, align 8
  %110 = getelementptr inbounds %struct.nfc_digital_dev, %struct.nfc_digital_dev* %109, i32 0, i32 1
  store %struct.sk_buff* null, %struct.sk_buff** %110, align 8
  br label %111

111:                                              ; preds = %105, %39
  %112 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  store %struct.sk_buff* %112, %struct.sk_buff** %6, align 8
  br label %124

113:                                              ; preds = %103, %69, %35
  %114 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %115 = call i32 @kfree_skb(%struct.sk_buff* %114)
  %116 = load %struct.nfc_digital_dev*, %struct.nfc_digital_dev** %7, align 8
  %117 = getelementptr inbounds %struct.nfc_digital_dev, %struct.nfc_digital_dev* %116, i32 0, i32 1
  %118 = load %struct.sk_buff*, %struct.sk_buff** %117, align 8
  %119 = call i32 @kfree_skb(%struct.sk_buff* %118)
  %120 = load %struct.nfc_digital_dev*, %struct.nfc_digital_dev** %7, align 8
  %121 = getelementptr inbounds %struct.nfc_digital_dev, %struct.nfc_digital_dev* %120, i32 0, i32 1
  store %struct.sk_buff* null, %struct.sk_buff** %121, align 8
  %122 = load i32, i32* %13, align 4
  %123 = call %struct.sk_buff* @ERR_PTR(i32 %122)
  store %struct.sk_buff* %123, %struct.sk_buff** %6, align 8
  br label %124

124:                                              ; preds = %113, %111, %104
  %125 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  ret %struct.sk_buff* %125
}

declare dso_local i64 @DIGITAL_NFC_DEP_MI_BIT_SET(i32) #1

declare dso_local %struct.sk_buff* @nfc_alloc_recv_skb(i32, i32) #1

declare dso_local i64 @skb_tailroom(%struct.sk_buff*) #1

declare dso_local %struct.sk_buff* @skb_copy_expand(%struct.sk_buff*, i32, i32, i32) #1

declare dso_local i32 @skb_headroom(%struct.sk_buff*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @skb_put_data(%struct.sk_buff*, i32, i64) #1

declare dso_local %struct.sk_buff* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
