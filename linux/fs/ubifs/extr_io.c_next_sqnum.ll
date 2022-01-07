; ModuleID = '/home/carl/AnghaBench/linux/fs/ubifs/extr_io.c_next_sqnum.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ubifs/extr_io.c_next_sqnum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { i64, i32 }

@SQNUM_WARN_WATERMARK = common dso_local global i64 0, align 8
@SQNUM_WATERMARK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [43 x i8] c"sequence number overflow %llu, end of life\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [50 x i8] c"running out of sequence numbers, end of life soon\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.ubifs_info*)* @next_sqnum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @next_sqnum(%struct.ubifs_info* %0) #0 {
  %2 = alloca %struct.ubifs_info*, align 8
  %3 = alloca i64, align 8
  store %struct.ubifs_info* %0, %struct.ubifs_info** %2, align 8
  %4 = load %struct.ubifs_info*, %struct.ubifs_info** %2, align 8
  %5 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %4, i32 0, i32 1
  %6 = call i32 @spin_lock(i32* %5)
  %7 = load %struct.ubifs_info*, %struct.ubifs_info** %2, align 8
  %8 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = add i64 %9, 1
  store i64 %10, i64* %8, align 8
  store i64 %10, i64* %3, align 8
  %11 = load %struct.ubifs_info*, %struct.ubifs_info** %2, align 8
  %12 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %11, i32 0, i32 1
  %13 = call i32 @spin_unlock(i32* %12)
  %14 = load i64, i64* %3, align 8
  %15 = load i64, i64* @SQNUM_WARN_WATERMARK, align 8
  %16 = icmp uge i64 %14, %15
  %17 = zext i1 %16 to i32
  %18 = call i64 @unlikely(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %35

20:                                               ; preds = %1
  %21 = load i64, i64* %3, align 8
  %22 = load i64, i64* @SQNUM_WATERMARK, align 8
  %23 = icmp uge i64 %21, %22
  br i1 %23, label %24, label %32

24:                                               ; preds = %20
  %25 = load %struct.ubifs_info*, %struct.ubifs_info** %2, align 8
  %26 = load i64, i64* %3, align 8
  %27 = call i32 @ubifs_err(%struct.ubifs_info* %25, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i64 %26)
  %28 = load %struct.ubifs_info*, %struct.ubifs_info** %2, align 8
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  %31 = call i32 @ubifs_ro_mode(%struct.ubifs_info* %28, i32 %30)
  br label %32

32:                                               ; preds = %24, %20
  %33 = load %struct.ubifs_info*, %struct.ubifs_info** %2, align 8
  %34 = call i32 @ubifs_warn(%struct.ubifs_info* %33, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0))
  br label %35

35:                                               ; preds = %32, %1
  %36 = load i64, i64* %3, align 8
  ret i64 %36
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ubifs_err(%struct.ubifs_info*, i8*, i64) #1

declare dso_local i32 @ubifs_ro_mode(%struct.ubifs_info*, i32) #1

declare dso_local i32 @ubifs_warn(%struct.ubifs_info*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
