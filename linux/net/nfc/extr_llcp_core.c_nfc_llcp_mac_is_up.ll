; ModuleID = '/home/carl/AnghaBench/linux/net/nfc/extr_llcp_core.c_nfc_llcp_mac_is_up.c'
source_filename = "/home/carl/AnghaBench/linux/net/nfc/extr_llcp_core.c_nfc_llcp_mac_is_up.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfc_dev = type { i32 }
%struct.nfc_llcp_local = type { i32, i32, i32, i64, i64, i32 }

@.str = private unnamed_addr constant [12 x i8] c"rf mode %d\0A\00", align 1
@NFC_RF_INITIATOR = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [18 x i8] c"Queueing Tx work\0A\00", align 1
@jiffies = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nfc_llcp_mac_is_up(%struct.nfc_dev* %0, i32 %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.nfc_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.nfc_llcp_local*, align 8
  store %struct.nfc_dev* %0, %struct.nfc_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %10 = load i64, i64* %8, align 8
  %11 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i64 %10)
  %12 = load %struct.nfc_dev*, %struct.nfc_dev** %5, align 8
  %13 = call %struct.nfc_llcp_local* @nfc_llcp_find_local(%struct.nfc_dev* %12)
  store %struct.nfc_llcp_local* %13, %struct.nfc_llcp_local** %9, align 8
  %14 = load %struct.nfc_llcp_local*, %struct.nfc_llcp_local** %9, align 8
  %15 = icmp eq %struct.nfc_llcp_local* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %4
  br label %45

17:                                               ; preds = %4
  %18 = load i32, i32* %6, align 4
  %19 = load %struct.nfc_llcp_local*, %struct.nfc_llcp_local** %9, align 8
  %20 = getelementptr inbounds %struct.nfc_llcp_local, %struct.nfc_llcp_local* %19, i32 0, i32 5
  store i32 %18, i32* %20, align 8
  %21 = load i64, i64* %7, align 8
  %22 = load %struct.nfc_llcp_local*, %struct.nfc_llcp_local** %9, align 8
  %23 = getelementptr inbounds %struct.nfc_llcp_local, %struct.nfc_llcp_local* %22, i32 0, i32 4
  store i64 %21, i64* %23, align 8
  %24 = load i64, i64* %8, align 8
  %25 = load %struct.nfc_llcp_local*, %struct.nfc_llcp_local** %9, align 8
  %26 = getelementptr inbounds %struct.nfc_llcp_local, %struct.nfc_llcp_local* %25, i32 0, i32 3
  store i64 %24, i64* %26, align 8
  %27 = load i64, i64* %8, align 8
  %28 = load i64, i64* @NFC_RF_INITIATOR, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %35

30:                                               ; preds = %17
  %31 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %32 = load %struct.nfc_llcp_local*, %struct.nfc_llcp_local** %9, align 8
  %33 = getelementptr inbounds %struct.nfc_llcp_local, %struct.nfc_llcp_local* %32, i32 0, i32 2
  %34 = call i32 @schedule_work(i32* %33)
  br label %45

35:                                               ; preds = %17
  %36 = load %struct.nfc_llcp_local*, %struct.nfc_llcp_local** %9, align 8
  %37 = getelementptr inbounds %struct.nfc_llcp_local, %struct.nfc_llcp_local* %36, i32 0, i32 1
  %38 = load i64, i64* @jiffies, align 8
  %39 = load %struct.nfc_llcp_local*, %struct.nfc_llcp_local** %9, align 8
  %40 = getelementptr inbounds %struct.nfc_llcp_local, %struct.nfc_llcp_local* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i64 @msecs_to_jiffies(i32 %41)
  %43 = add nsw i64 %38, %42
  %44 = call i32 @mod_timer(i32* %37, i64 %43)
  br label %45

45:                                               ; preds = %16, %35, %30
  ret void
}

declare dso_local i32 @pr_debug(i8*, ...) #1

declare dso_local %struct.nfc_llcp_local* @nfc_llcp_find_local(%struct.nfc_dev*) #1

declare dso_local i32 @schedule_work(i32*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
