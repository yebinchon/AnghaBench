; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_request.c_hci_get_random_address.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_request.c_hci_get_random_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32* }
%struct.hci_dev = type { i32, i32, i32, i32, %struct.TYPE_9__, i32, i32, i32 }
%struct.adv_info = type { i32, i32, i32 }

@BDADDR_ANY = common dso_local global %struct.TYPE_9__* null, align 8
@ADDR_LE_DEV_RANDOM = common dso_local global i32 0, align 4
@HCI_RPA_EXPIRED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"%s failed to generate new RPA\00", align 1
@ADDR_LE_DEV_PUBLIC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hci_get_random_address(%struct.hci_dev* %0, i32 %1, i32 %2, %struct.adv_info* %3, i32* %4, %struct.TYPE_9__* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.hci_dev*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.adv_info*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_9__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_9__, align 8
  store %struct.hci_dev* %0, %struct.hci_dev** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store %struct.adv_info* %3, %struct.adv_info** %11, align 8
  store i32* %4, i32** %12, align 8
  store %struct.TYPE_9__* %5, %struct.TYPE_9__** %13, align 8
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** @BDADDR_ANY, align 8
  %19 = call i32 @bacpy(%struct.TYPE_9__* %17, %struct.TYPE_9__* %18)
  %20 = load i32, i32* %10, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %102

22:                                               ; preds = %6
  %23 = load i32, i32* @ADDR_LE_DEV_RANDOM, align 4
  %24 = load i32*, i32** %12, align 8
  store i32 %23, i32* %24, align 4
  %25 = load %struct.adv_info*, %struct.adv_info** %11, align 8
  %26 = icmp ne %struct.adv_info* %25, null
  br i1 %26, label %27, label %43

27:                                               ; preds = %22
  %28 = load %struct.adv_info*, %struct.adv_info** %11, align 8
  %29 = getelementptr inbounds %struct.adv_info, %struct.adv_info* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %40, label %32

32:                                               ; preds = %27
  %33 = load %struct.adv_info*, %struct.adv_info** %11, align 8
  %34 = getelementptr inbounds %struct.adv_info, %struct.adv_info* %33, i32 0, i32 2
  %35 = load %struct.hci_dev*, %struct.hci_dev** %8, align 8
  %36 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %35, i32 0, i32 4
  %37 = call i64 @bacmp(i32* %34, %struct.TYPE_9__* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %32
  store i32 0, i32* %7, align 4
  br label %127

40:                                               ; preds = %32, %27
  %41 = load %struct.adv_info*, %struct.adv_info** %11, align 8
  %42 = getelementptr inbounds %struct.adv_info, %struct.adv_info* %41, i32 0, i32 0
  store i32 0, i32* %42, align 4
  br label %57

43:                                               ; preds = %22
  %44 = load %struct.hci_dev*, %struct.hci_dev** %8, align 8
  %45 = load i32, i32* @HCI_RPA_EXPIRED, align 4
  %46 = call i32 @hci_dev_test_and_clear_flag(%struct.hci_dev* %44, i32 %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %56, label %48

48:                                               ; preds = %43
  %49 = load %struct.hci_dev*, %struct.hci_dev** %8, align 8
  %50 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %49, i32 0, i32 7
  %51 = load %struct.hci_dev*, %struct.hci_dev** %8, align 8
  %52 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %51, i32 0, i32 4
  %53 = call i64 @bacmp(i32* %50, %struct.TYPE_9__* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %56, label %55

55:                                               ; preds = %48
  store i32 0, i32* %7, align 4
  br label %127

56:                                               ; preds = %48, %43
  br label %57

57:                                               ; preds = %56, %40
  %58 = load %struct.hci_dev*, %struct.hci_dev** %8, align 8
  %59 = load %struct.hci_dev*, %struct.hci_dev** %8, align 8
  %60 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %59, i32 0, i32 6
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.hci_dev*, %struct.hci_dev** %8, align 8
  %63 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %62, i32 0, i32 4
  %64 = call i32 @smp_generate_rpa(%struct.hci_dev* %58, i32 %61, %struct.TYPE_9__* %63)
  store i32 %64, i32* %14, align 4
  %65 = load i32, i32* %14, align 4
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %67, label %73

67:                                               ; preds = %57
  %68 = load %struct.hci_dev*, %struct.hci_dev** %8, align 8
  %69 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %68, i32 0, i32 5
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @BT_ERR(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %70)
  %72 = load i32, i32* %14, align 4
  store i32 %72, i32* %7, align 4
  br label %127

73:                                               ; preds = %57
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %75 = load %struct.hci_dev*, %struct.hci_dev** %8, align 8
  %76 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %75, i32 0, i32 4
  %77 = call i32 @bacpy(%struct.TYPE_9__* %74, %struct.TYPE_9__* %76)
  %78 = load %struct.hci_dev*, %struct.hci_dev** %8, align 8
  %79 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = mul nsw i32 %80, 1000
  %82 = call i32 @msecs_to_jiffies(i32 %81)
  store i32 %82, i32* %15, align 4
  %83 = load %struct.adv_info*, %struct.adv_info** %11, align 8
  %84 = icmp ne %struct.adv_info* %83, null
  br i1 %84, label %85, label %93

85:                                               ; preds = %73
  %86 = load %struct.hci_dev*, %struct.hci_dev** %8, align 8
  %87 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.adv_info*, %struct.adv_info** %11, align 8
  %90 = getelementptr inbounds %struct.adv_info, %struct.adv_info* %89, i32 0, i32 1
  %91 = load i32, i32* %15, align 4
  %92 = call i32 @queue_delayed_work(i32 %88, i32* %90, i32 %91)
  br label %101

93:                                               ; preds = %73
  %94 = load %struct.hci_dev*, %struct.hci_dev** %8, align 8
  %95 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %94, i32 0, i32 3
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.hci_dev*, %struct.hci_dev** %8, align 8
  %98 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %97, i32 0, i32 2
  %99 = load i32, i32* %15, align 4
  %100 = call i32 @queue_delayed_work(i32 %96, i32* %98, i32 %99)
  br label %101

101:                                              ; preds = %93, %85
  store i32 0, i32* %7, align 4
  br label %127

102:                                              ; preds = %6
  %103 = load i32, i32* %9, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %124

105:                                              ; preds = %102
  br label %106

106:                                              ; preds = %105, %118
  %107 = call i32 @get_random_bytes(%struct.TYPE_9__* %16, i32 6)
  %108 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 0
  %109 = load i32*, i32** %108, align 8
  %110 = getelementptr inbounds i32, i32* %109, i64 5
  %111 = load i32, i32* %110, align 4
  %112 = and i32 %111, 63
  store i32 %112, i32* %110, align 4
  %113 = load %struct.hci_dev*, %struct.hci_dev** %8, align 8
  %114 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %113, i32 0, i32 1
  %115 = call i64 @bacmp(i32* %114, %struct.TYPE_9__* %16)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %106
  br label %119

118:                                              ; preds = %106
  br label %106

119:                                              ; preds = %117
  %120 = load i32, i32* @ADDR_LE_DEV_RANDOM, align 4
  %121 = load i32*, i32** %12, align 8
  store i32 %120, i32* %121, align 4
  %122 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %123 = call i32 @bacpy(%struct.TYPE_9__* %122, %struct.TYPE_9__* %16)
  store i32 0, i32* %7, align 4
  br label %127

124:                                              ; preds = %102
  %125 = load i32, i32* @ADDR_LE_DEV_PUBLIC, align 4
  %126 = load i32*, i32** %12, align 8
  store i32 %125, i32* %126, align 4
  store i32 0, i32* %7, align 4
  br label %127

127:                                              ; preds = %124, %119, %101, %67, %55, %39
  %128 = load i32, i32* %7, align 4
  ret i32 %128
}

declare dso_local i32 @bacpy(%struct.TYPE_9__*, %struct.TYPE_9__*) #1

declare dso_local i64 @bacmp(i32*, %struct.TYPE_9__*) #1

declare dso_local i32 @hci_dev_test_and_clear_flag(%struct.hci_dev*, i32) #1

declare dso_local i32 @smp_generate_rpa(%struct.hci_dev*, i32, %struct.TYPE_9__*) #1

declare dso_local i32 @BT_ERR(i8*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @queue_delayed_work(i32, i32*, i32) #1

declare dso_local i32 @get_random_bytes(%struct.TYPE_9__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
