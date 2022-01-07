; ModuleID = '/home/carl/AnghaBench/linux/net/nfc/extr_digital_technology.c_digital_in_iso_dep_pull_sod.c'
source_filename = "/home/carl/AnghaBench/linux/net/nfc/extr_digital_technology.c_digital_in_iso_dep_pull_sod.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfc_digital_dev = type { i32 }
%struct.sk_buff = type { i32, i64* }

@EIO = common dso_local global i32 0, align 4
@DIGITAL_ISO_DEP_I_BLOCK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [43 x i8] c"ISO_DEP R-block and S-block not supported\0A\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"DID field in ISO_DEP PCB not supported\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @digital_in_iso_dep_pull_sod(%struct.nfc_digital_dev* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nfc_digital_dev*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.nfc_digital_dev* %0, %struct.nfc_digital_dev** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %8 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %9 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp slt i32 %10, 1
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load i32, i32* @EIO, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %40

15:                                               ; preds = %2
  %16 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %17 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %16, i32 0, i32 1
  %18 = load i64*, i64** %17, align 8
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* %6, align 8
  %20 = load i64, i64* %6, align 8
  %21 = call i64 @DIGITAL_ISO_DEP_PCB_TYPE(i64 %20)
  store i64 %21, i64* %7, align 8
  %22 = load i64, i64* %7, align 8
  %23 = load i64, i64* @DIGITAL_ISO_DEP_I_BLOCK, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %15
  %26 = call i32 @pr_err(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  %27 = load i32, i32* @EIO, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %40

29:                                               ; preds = %15
  %30 = load i64, i64* %6, align 8
  %31 = call i64 @DIGITAL_ISO_DEP_BLOCK_HAS_DID(i64 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %29
  %34 = call i32 @pr_err(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  %35 = load i32, i32* @EIO, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %3, align 4
  br label %40

37:                                               ; preds = %29
  %38 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %39 = call i32 @skb_pull(%struct.sk_buff* %38, i32 1)
  store i32 0, i32* %3, align 4
  br label %40

40:                                               ; preds = %37, %33, %25, %12
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local i64 @DIGITAL_ISO_DEP_PCB_TYPE(i64) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i64 @DIGITAL_ISO_DEP_BLOCK_HAS_DID(i64) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
