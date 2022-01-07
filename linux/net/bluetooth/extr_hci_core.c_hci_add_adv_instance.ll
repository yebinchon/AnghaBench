; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_core.c_hci_add_adv_instance.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_core.c_hci_add_adv_instance.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_dev = type { i64, i64, i32, i32 }
%struct.adv_info = type { i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i32, i32 }

@HCI_MAX_ADV_INSTANCES = common dso_local global i32 0, align 4
@EOVERFLOW = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@HCI_DEFAULT_ADV_DURATION = common dso_local global i64 0, align 8
@HCI_TX_POWER_INVALID = common dso_local global i32 0, align 4
@adv_instance_rpa_expired = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"%s for %dMR\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hci_add_adv_instance(%struct.hci_dev* %0, i32 %1, i32 %2, i64 %3, i32* %4, i64 %5, i32* %6, i64 %7, i64 %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.hci_dev*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca %struct.adv_info*, align 8
  store %struct.hci_dev* %0, %struct.hci_dev** %11, align 8
  store i32 %1, i32* %12, align 4
  store i32 %2, i32* %13, align 4
  store i64 %3, i64* %14, align 8
  store i32* %4, i32** %15, align 8
  store i64 %5, i64* %16, align 8
  store i32* %6, i32** %17, align 8
  store i64 %7, i64* %18, align 8
  store i64 %8, i64* %19, align 8
  %21 = load %struct.hci_dev*, %struct.hci_dev** %11, align 8
  %22 = load i32, i32* %12, align 4
  %23 = call %struct.adv_info* @hci_find_adv_instance(%struct.hci_dev* %21, i32 %22)
  store %struct.adv_info* %23, %struct.adv_info** %20, align 8
  %24 = load %struct.adv_info*, %struct.adv_info** %20, align 8
  %25 = icmp ne %struct.adv_info* %24, null
  br i1 %25, label %26, label %35

26:                                               ; preds = %9
  %27 = load %struct.adv_info*, %struct.adv_info** %20, align 8
  %28 = getelementptr inbounds %struct.adv_info, %struct.adv_info* %27, i32 0, i32 8
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @memset(i32 %29, i32 0, i32 4)
  %31 = load %struct.adv_info*, %struct.adv_info** %20, align 8
  %32 = getelementptr inbounds %struct.adv_info, %struct.adv_info* %31, i32 0, i32 7
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @memset(i32 %33, i32 0, i32 4)
  br label %76

35:                                               ; preds = %9
  %36 = load %struct.hci_dev*, %struct.hci_dev** %11, align 8
  %37 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.hci_dev*, %struct.hci_dev** %11, align 8
  %40 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = icmp sge i64 %38, %41
  br i1 %42, label %50, label %43

43:                                               ; preds = %35
  %44 = load i32, i32* %12, align 4
  %45 = icmp slt i32 %44, 1
  br i1 %45, label %50, label %46

46:                                               ; preds = %43
  %47 = load i32, i32* %12, align 4
  %48 = load i32, i32* @HCI_MAX_ADV_INSTANCES, align 4
  %49 = icmp sgt i32 %47, %48
  br i1 %49, label %50, label %53

50:                                               ; preds = %46, %43, %35
  %51 = load i32, i32* @EOVERFLOW, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %10, align 4
  br label %135

53:                                               ; preds = %46
  %54 = load i32, i32* @GFP_KERNEL, align 4
  %55 = call %struct.adv_info* @kzalloc(i32 72, i32 %54)
  store %struct.adv_info* %55, %struct.adv_info** %20, align 8
  %56 = load %struct.adv_info*, %struct.adv_info** %20, align 8
  %57 = icmp ne %struct.adv_info* %56, null
  br i1 %57, label %61, label %58

58:                                               ; preds = %53
  %59 = load i32, i32* @ENOMEM, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %10, align 4
  br label %135

61:                                               ; preds = %53
  %62 = load %struct.adv_info*, %struct.adv_info** %20, align 8
  %63 = getelementptr inbounds %struct.adv_info, %struct.adv_info* %62, i32 0, i32 0
  store i32 1, i32* %63, align 8
  %64 = load i32, i32* %12, align 4
  %65 = load %struct.adv_info*, %struct.adv_info** %20, align 8
  %66 = getelementptr inbounds %struct.adv_info, %struct.adv_info* %65, i32 0, i32 1
  store i32 %64, i32* %66, align 4
  %67 = load %struct.adv_info*, %struct.adv_info** %20, align 8
  %68 = getelementptr inbounds %struct.adv_info, %struct.adv_info* %67, i32 0, i32 12
  %69 = load %struct.hci_dev*, %struct.hci_dev** %11, align 8
  %70 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %69, i32 0, i32 3
  %71 = call i32 @list_add(i32* %68, i32* %70)
  %72 = load %struct.hci_dev*, %struct.hci_dev** %11, align 8
  %73 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = add nsw i64 %74, 1
  store i64 %75, i64* %73, align 8
  br label %76

76:                                               ; preds = %61, %26
  %77 = load i32, i32* %13, align 4
  %78 = load %struct.adv_info*, %struct.adv_info** %20, align 8
  %79 = getelementptr inbounds %struct.adv_info, %struct.adv_info* %78, i32 0, i32 11
  store i32 %77, i32* %79, align 8
  %80 = load i64, i64* %14, align 8
  %81 = load %struct.adv_info*, %struct.adv_info** %20, align 8
  %82 = getelementptr inbounds %struct.adv_info, %struct.adv_info* %81, i32 0, i32 10
  store i64 %80, i64* %82, align 8
  %83 = load i64, i64* %16, align 8
  %84 = load %struct.adv_info*, %struct.adv_info** %20, align 8
  %85 = getelementptr inbounds %struct.adv_info, %struct.adv_info* %84, i32 0, i32 9
  store i64 %83, i64* %85, align 8
  %86 = load i64, i64* %14, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %95

88:                                               ; preds = %76
  %89 = load %struct.adv_info*, %struct.adv_info** %20, align 8
  %90 = getelementptr inbounds %struct.adv_info, %struct.adv_info* %89, i32 0, i32 8
  %91 = load i32, i32* %90, align 4
  %92 = load i32*, i32** %15, align 8
  %93 = load i64, i64* %14, align 8
  %94 = call i32 @memcpy(i32 %91, i32* %92, i64 %93)
  br label %95

95:                                               ; preds = %88, %76
  %96 = load i64, i64* %16, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %105

98:                                               ; preds = %95
  %99 = load %struct.adv_info*, %struct.adv_info** %20, align 8
  %100 = getelementptr inbounds %struct.adv_info, %struct.adv_info* %99, i32 0, i32 7
  %101 = load i32, i32* %100, align 8
  %102 = load i32*, i32** %17, align 8
  %103 = load i64, i64* %16, align 8
  %104 = call i32 @memcpy(i32 %101, i32* %102, i64 %103)
  br label %105

105:                                              ; preds = %98, %95
  %106 = load i64, i64* %18, align 8
  %107 = load %struct.adv_info*, %struct.adv_info** %20, align 8
  %108 = getelementptr inbounds %struct.adv_info, %struct.adv_info* %107, i32 0, i32 6
  store i64 %106, i64* %108, align 8
  %109 = load i64, i64* %18, align 8
  %110 = load %struct.adv_info*, %struct.adv_info** %20, align 8
  %111 = getelementptr inbounds %struct.adv_info, %struct.adv_info* %110, i32 0, i32 5
  store i64 %109, i64* %111, align 8
  %112 = load i64, i64* %19, align 8
  %113 = icmp eq i64 %112, 0
  br i1 %113, label %114, label %118

114:                                              ; preds = %105
  %115 = load i64, i64* @HCI_DEFAULT_ADV_DURATION, align 8
  %116 = load %struct.adv_info*, %struct.adv_info** %20, align 8
  %117 = getelementptr inbounds %struct.adv_info, %struct.adv_info* %116, i32 0, i32 4
  store i64 %115, i64* %117, align 8
  br label %122

118:                                              ; preds = %105
  %119 = load i64, i64* %19, align 8
  %120 = load %struct.adv_info*, %struct.adv_info** %20, align 8
  %121 = getelementptr inbounds %struct.adv_info, %struct.adv_info* %120, i32 0, i32 4
  store i64 %119, i64* %121, align 8
  br label %122

122:                                              ; preds = %118, %114
  %123 = load i32, i32* @HCI_TX_POWER_INVALID, align 4
  %124 = load %struct.adv_info*, %struct.adv_info** %20, align 8
  %125 = getelementptr inbounds %struct.adv_info, %struct.adv_info* %124, i32 0, i32 3
  store i32 %123, i32* %125, align 4
  %126 = load %struct.adv_info*, %struct.adv_info** %20, align 8
  %127 = getelementptr inbounds %struct.adv_info, %struct.adv_info* %126, i32 0, i32 2
  %128 = load i32, i32* @adv_instance_rpa_expired, align 4
  %129 = call i32 @INIT_DELAYED_WORK(i32* %127, i32 %128)
  %130 = load %struct.hci_dev*, %struct.hci_dev** %11, align 8
  %131 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 8
  %133 = load i32, i32* %12, align 4
  %134 = call i32 @BT_DBG(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %132, i32 %133)
  store i32 0, i32* %10, align 4
  br label %135

135:                                              ; preds = %122, %58, %50
  %136 = load i32, i32* %10, align 4
  ret i32 %136
}

declare dso_local %struct.adv_info* @hci_find_adv_instance(%struct.hci_dev*, i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local %struct.adv_info* @kzalloc(i32, i32) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @memcpy(i32, i32*, i64) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @BT_DBG(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
