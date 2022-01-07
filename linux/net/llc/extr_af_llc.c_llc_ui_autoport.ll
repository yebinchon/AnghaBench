; ModuleID = '/home/carl/AnghaBench/linux/net/llc/extr_af_llc.c_llc_ui_autoport.c'
source_filename = "/home/carl/AnghaBench/linux/net/llc/extr_af_llc.c_llc_ui_autoport.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.llc_sap = type { i32 }

@LLC_SAP_DYN_TRIES = common dso_local global i32 0, align 4
@llc_ui_sap_last_autoport = common dso_local global i32 0, align 4
@LLC_SAP_DYN_STOP = common dso_local global i32 0, align 4
@LLC_SAP_DYN_START = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @llc_ui_autoport to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @llc_ui_autoport() #0 {
  %1 = alloca %struct.llc_sap*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %28, %0
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* @LLC_SAP_DYN_TRIES, align 4
  %7 = icmp slt i32 %5, %6
  br i1 %7, label %8, label %32

8:                                                ; preds = %4
  %9 = load i32, i32* @llc_ui_sap_last_autoport, align 4
  store i32 %9, i32* %2, align 4
  br label %10

10:                                               ; preds = %25, %8
  %11 = load i32, i32* %2, align 4
  %12 = load i32, i32* @LLC_SAP_DYN_STOP, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %28

14:                                               ; preds = %10
  %15 = load i32, i32* %2, align 4
  %16 = call %struct.llc_sap* @llc_sap_find(i32 %15)
  store %struct.llc_sap* %16, %struct.llc_sap** %1, align 8
  %17 = load %struct.llc_sap*, %struct.llc_sap** %1, align 8
  %18 = icmp ne %struct.llc_sap* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %14
  %20 = load i32, i32* %2, align 4
  %21 = add nsw i32 %20, 2
  store i32 %21, i32* @llc_ui_sap_last_autoport, align 4
  br label %33

22:                                               ; preds = %14
  %23 = load %struct.llc_sap*, %struct.llc_sap** %1, align 8
  %24 = call i32 @llc_sap_put(%struct.llc_sap* %23)
  br label %25

25:                                               ; preds = %22
  %26 = load i32, i32* %2, align 4
  %27 = add nsw i32 %26, 2
  store i32 %27, i32* %2, align 4
  br label %10

28:                                               ; preds = %10
  %29 = load i32, i32* @LLC_SAP_DYN_START, align 4
  store i32 %29, i32* @llc_ui_sap_last_autoport, align 4
  %30 = load i32, i32* %3, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %3, align 4
  br label %4

32:                                               ; preds = %4
  store i32 0, i32* %2, align 4
  br label %33

33:                                               ; preds = %32, %19
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

declare dso_local %struct.llc_sap* @llc_sap_find(i32) #1

declare dso_local i32 @llc_sap_put(%struct.llc_sap*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
