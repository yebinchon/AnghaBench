; ModuleID = '/home/carl/AnghaBench/linux/fs/ubifs/extr_lpt.c_lpt_check_hash.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ubifs/extr_lpt.c_lpt_check_hash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@UBIFS_HASH_ARR_SZ = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Failed to authenticate LPT\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ubifs_info*)* @lpt_check_hash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpt_check_hash(%struct.ubifs_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ubifs_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.ubifs_info* %0, %struct.ubifs_info** %3, align 8
  %8 = load i32, i32* @UBIFS_HASH_ARR_SZ, align 4
  %9 = zext i32 %8 to i64
  %10 = call i8* @llvm.stacksave()
  store i8* %10, i8** %5, align 8
  %11 = alloca i32, i64 %9, align 16
  store i64 %9, i64* %6, align 8
  %12 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %13 = call i32 @ubifs_authenticated(%struct.ubifs_info* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  store i32 1, i32* %7, align 4
  br label %40

16:                                               ; preds = %1
  %17 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %18 = call i32 @ubifs_lpt_calc_hash(%struct.ubifs_info* %17, i32* %11)
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* %4, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %16
  %22 = load i32, i32* %4, align 4
  store i32 %22, i32* %2, align 4
  store i32 1, i32* %7, align 4
  br label %40

23:                                               ; preds = %16
  %24 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %25 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %26 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i64 @ubifs_check_hash(%struct.ubifs_info* %24, i32 %29, i32* %11)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %23
  %33 = load i32, i32* @EPERM, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %4, align 4
  %35 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %36 = call i32 @ubifs_err(%struct.ubifs_info* %35, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %38

37:                                               ; preds = %23
  store i32 0, i32* %4, align 4
  br label %38

38:                                               ; preds = %37, %32
  %39 = load i32, i32* %4, align 4
  store i32 %39, i32* %2, align 4
  store i32 1, i32* %7, align 4
  br label %40

40:                                               ; preds = %38, %21, %15
  %41 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %41)
  %42 = load i32, i32* %2, align 4
  ret i32 %42
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @ubifs_authenticated(%struct.ubifs_info*) #2

declare dso_local i32 @ubifs_lpt_calc_hash(%struct.ubifs_info*, i32*) #2

declare dso_local i64 @ubifs_check_hash(%struct.ubifs_info*, i32, i32*) #2

declare dso_local i32 @ubifs_err(%struct.ubifs_info*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
