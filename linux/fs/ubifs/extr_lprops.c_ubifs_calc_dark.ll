; ModuleID = '/home/carl/AnghaBench/linux/fs/ubifs/extr_lprops.c_ubifs_calc_dark.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ubifs/extr_lprops.c_ubifs_calc_dark.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { i32 }

@MIN_WRITE_SZ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ubifs_calc_dark(%struct.ubifs_info* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ubifs_info*, align 8
  %5 = alloca i32, align 4
  store %struct.ubifs_info* %0, %struct.ubifs_info** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %7 = load i32, i32* %5, align 4
  %8 = and i32 %7, 7
  %9 = icmp ne i32 %8, 0
  %10 = xor i1 %9, true
  %11 = zext i1 %10 to i32
  %12 = call i32 @ubifs_assert(%struct.ubifs_info* %6, i32 %11)
  %13 = load i32, i32* %5, align 4
  %14 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %15 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp slt i32 %13, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = load i32, i32* %5, align 4
  store i32 %19, i32* %3, align 4
  br label %36

20:                                               ; preds = %2
  %21 = load i32, i32* %5, align 4
  %22 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %23 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = sub nsw i32 %21, %24
  %26 = load i32, i32* @MIN_WRITE_SZ, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %20
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* @MIN_WRITE_SZ, align 4
  %31 = sub nsw i32 %29, %30
  store i32 %31, i32* %3, align 4
  br label %36

32:                                               ; preds = %20
  %33 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %34 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %3, align 4
  br label %36

36:                                               ; preds = %32, %28, %18
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local i32 @ubifs_assert(%struct.ubifs_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
