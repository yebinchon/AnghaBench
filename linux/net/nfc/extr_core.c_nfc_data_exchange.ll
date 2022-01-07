; ModuleID = '/home/carl/AnghaBench/linux/net/nfc/extr_core.c_nfc_data_exchange.c'
source_filename = "/home/carl/AnghaBench/linux/net/nfc/extr_core.c_nfc_data_exchange.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfc_dev = type { i64, i32, %struct.TYPE_3__*, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i32 (%struct.nfc_dev*, %struct.TYPE_4__*, %struct.sk_buff*, i32, i8*)*, i32 (%struct.nfc_dev*, %struct.sk_buff*)*, i64 }
%struct.TYPE_4__ = type { i64 }
%struct.sk_buff = type { i32 }

@.str = private unnamed_addr constant [39 x i8] c"dev_name=%s target_idx=%u skb->len=%u\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@NFC_RF_INITIATOR = common dso_local global i64 0, align 8
@EADDRNOTAVAIL = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@NFC_CHECK_PRES_FREQ_MS = common dso_local global i32 0, align 4
@NFC_RF_TARGET = common dso_local global i64 0, align 8
@ENOTCONN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfc_data_exchange(%struct.nfc_dev* %0, i64 %1, %struct.sk_buff* %2, i32 %3, i8* %4) #0 {
  %6 = alloca %struct.nfc_dev*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store %struct.nfc_dev* %0, %struct.nfc_dev** %6, align 8
  store i64 %1, i64* %7, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %8, align 8
  store i32 %3, i32* %9, align 4
  store i8* %4, i8** %10, align 8
  %12 = load %struct.nfc_dev*, %struct.nfc_dev** %6, align 8
  %13 = getelementptr inbounds %struct.nfc_dev, %struct.nfc_dev* %12, i32 0, i32 1
  %14 = call i32 @dev_name(i32* %13)
  %15 = load i64, i64* %7, align 8
  %16 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %17 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @pr_debug(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %14, i64 %15, i32 %18)
  %20 = load %struct.nfc_dev*, %struct.nfc_dev** %6, align 8
  %21 = getelementptr inbounds %struct.nfc_dev, %struct.nfc_dev* %20, i32 0, i32 1
  %22 = call i32 @device_lock(i32* %21)
  %23 = load %struct.nfc_dev*, %struct.nfc_dev** %6, align 8
  %24 = getelementptr inbounds %struct.nfc_dev, %struct.nfc_dev* %23, i32 0, i32 1
  %25 = call i32 @device_is_registered(i32* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %32, label %27

27:                                               ; preds = %5
  %28 = load i32, i32* @ENODEV, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %11, align 4
  %30 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %31 = call i32 @kfree_skb(%struct.sk_buff* %30)
  br label %133

32:                                               ; preds = %5
  %33 = load %struct.nfc_dev*, %struct.nfc_dev** %6, align 8
  %34 = getelementptr inbounds %struct.nfc_dev, %struct.nfc_dev* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @NFC_RF_INITIATOR, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %104

38:                                               ; preds = %32
  %39 = load %struct.nfc_dev*, %struct.nfc_dev** %6, align 8
  %40 = getelementptr inbounds %struct.nfc_dev, %struct.nfc_dev* %39, i32 0, i32 5
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = icmp ne %struct.TYPE_4__* %41, null
  br i1 %42, label %43, label %104

43:                                               ; preds = %38
  %44 = load %struct.nfc_dev*, %struct.nfc_dev** %6, align 8
  %45 = getelementptr inbounds %struct.nfc_dev, %struct.nfc_dev* %44, i32 0, i32 5
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* %7, align 8
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %51, label %56

51:                                               ; preds = %43
  %52 = load i32, i32* @EADDRNOTAVAIL, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %11, align 4
  %54 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %55 = call i32 @kfree_skb(%struct.sk_buff* %54)
  br label %133

56:                                               ; preds = %43
  %57 = load %struct.nfc_dev*, %struct.nfc_dev** %6, align 8
  %58 = getelementptr inbounds %struct.nfc_dev, %struct.nfc_dev* %57, i32 0, i32 2
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %56
  %64 = load %struct.nfc_dev*, %struct.nfc_dev** %6, align 8
  %65 = getelementptr inbounds %struct.nfc_dev, %struct.nfc_dev* %64, i32 0, i32 3
  %66 = call i32 @del_timer_sync(i32* %65)
  br label %67

67:                                               ; preds = %63, %56
  %68 = load %struct.nfc_dev*, %struct.nfc_dev** %6, align 8
  %69 = getelementptr inbounds %struct.nfc_dev, %struct.nfc_dev* %68, i32 0, i32 2
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 0
  %72 = load i32 (%struct.nfc_dev*, %struct.TYPE_4__*, %struct.sk_buff*, i32, i8*)*, i32 (%struct.nfc_dev*, %struct.TYPE_4__*, %struct.sk_buff*, i32, i8*)** %71, align 8
  %73 = load %struct.nfc_dev*, %struct.nfc_dev** %6, align 8
  %74 = load %struct.nfc_dev*, %struct.nfc_dev** %6, align 8
  %75 = getelementptr inbounds %struct.nfc_dev, %struct.nfc_dev* %74, i32 0, i32 5
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %75, align 8
  %77 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %78 = load i32, i32* %9, align 4
  %79 = load i8*, i8** %10, align 8
  %80 = call i32 %72(%struct.nfc_dev* %73, %struct.TYPE_4__* %76, %struct.sk_buff* %77, i32 %78, i8* %79)
  store i32 %80, i32* %11, align 4
  %81 = load i32, i32* %11, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %103, label %83

83:                                               ; preds = %67
  %84 = load %struct.nfc_dev*, %struct.nfc_dev** %6, align 8
  %85 = getelementptr inbounds %struct.nfc_dev, %struct.nfc_dev* %84, i32 0, i32 2
  %86 = load %struct.TYPE_3__*, %struct.TYPE_3__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 2
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %103

90:                                               ; preds = %83
  %91 = load %struct.nfc_dev*, %struct.nfc_dev** %6, align 8
  %92 = getelementptr inbounds %struct.nfc_dev, %struct.nfc_dev* %91, i32 0, i32 4
  %93 = load i32, i32* %92, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %103, label %95

95:                                               ; preds = %90
  %96 = load %struct.nfc_dev*, %struct.nfc_dev** %6, align 8
  %97 = getelementptr inbounds %struct.nfc_dev, %struct.nfc_dev* %96, i32 0, i32 3
  %98 = load i64, i64* @jiffies, align 8
  %99 = load i32, i32* @NFC_CHECK_PRES_FREQ_MS, align 4
  %100 = call i64 @msecs_to_jiffies(i32 %99)
  %101 = add nsw i64 %98, %100
  %102 = call i32 @mod_timer(i32* %97, i64 %101)
  br label %103

103:                                              ; preds = %95, %90, %83, %67
  br label %132

104:                                              ; preds = %38, %32
  %105 = load %struct.nfc_dev*, %struct.nfc_dev** %6, align 8
  %106 = getelementptr inbounds %struct.nfc_dev, %struct.nfc_dev* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* @NFC_RF_TARGET, align 8
  %109 = icmp eq i64 %107, %108
  br i1 %109, label %110, label %126

110:                                              ; preds = %104
  %111 = load %struct.nfc_dev*, %struct.nfc_dev** %6, align 8
  %112 = getelementptr inbounds %struct.nfc_dev, %struct.nfc_dev* %111, i32 0, i32 2
  %113 = load %struct.TYPE_3__*, %struct.TYPE_3__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %113, i32 0, i32 1
  %115 = load i32 (%struct.nfc_dev*, %struct.sk_buff*)*, i32 (%struct.nfc_dev*, %struct.sk_buff*)** %114, align 8
  %116 = icmp ne i32 (%struct.nfc_dev*, %struct.sk_buff*)* %115, null
  br i1 %116, label %117, label %126

117:                                              ; preds = %110
  %118 = load %struct.nfc_dev*, %struct.nfc_dev** %6, align 8
  %119 = getelementptr inbounds %struct.nfc_dev, %struct.nfc_dev* %118, i32 0, i32 2
  %120 = load %struct.TYPE_3__*, %struct.TYPE_3__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %120, i32 0, i32 1
  %122 = load i32 (%struct.nfc_dev*, %struct.sk_buff*)*, i32 (%struct.nfc_dev*, %struct.sk_buff*)** %121, align 8
  %123 = load %struct.nfc_dev*, %struct.nfc_dev** %6, align 8
  %124 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %125 = call i32 %122(%struct.nfc_dev* %123, %struct.sk_buff* %124)
  store i32 %125, i32* %11, align 4
  br label %131

126:                                              ; preds = %110, %104
  %127 = load i32, i32* @ENOTCONN, align 4
  %128 = sub nsw i32 0, %127
  store i32 %128, i32* %11, align 4
  %129 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %130 = call i32 @kfree_skb(%struct.sk_buff* %129)
  br label %133

131:                                              ; preds = %117
  br label %132

132:                                              ; preds = %131, %103
  br label %133

133:                                              ; preds = %132, %126, %51, %27
  %134 = load %struct.nfc_dev*, %struct.nfc_dev** %6, align 8
  %135 = getelementptr inbounds %struct.nfc_dev, %struct.nfc_dev* %134, i32 0, i32 1
  %136 = call i32 @device_unlock(i32* %135)
  %137 = load i32, i32* %11, align 4
  ret i32 %137
}

declare dso_local i32 @pr_debug(i8*, i32, i64, i32) #1

declare dso_local i32 @dev_name(i32*) #1

declare dso_local i32 @device_lock(i32*) #1

declare dso_local i32 @device_is_registered(i32*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @device_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
