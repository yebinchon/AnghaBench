; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/common/extr_sst-dsp.c_sst_dsp_register_poll.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/common/extr_sst-dsp.c_sst_dsp_register_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sst_dsp = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [39 x i8] c"FW Poll Status: reg=%#x %s successful\0A\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"FW Poll Status: reg=%#x %s timedout\0A\00", align 1
@ETIME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sst_dsp_register_poll(%struct.sst_dsp* %0, i32 %1, i32 %2, i32 %3, i32 %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.sst_dsp*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.sst_dsp* %0, %struct.sst_dsp** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i8* %5, i8** %13, align 8
  store i32 0, i32* %16, align 4
  store i32 500, i32* %17, align 4
  %18 = load i64, i64* @jiffies, align 8
  %19 = load i32, i32* %12, align 4
  %20 = call i64 @msecs_to_jiffies(i32 %19)
  %21 = add i64 %18, %20
  store i64 %21, i64* %15, align 8
  br label %22

22:                                               ; preds = %43, %6
  %23 = load %struct.sst_dsp*, %struct.sst_dsp** %8, align 8
  %24 = load i32, i32* %9, align 4
  %25 = call i32 @sst_dsp_shim_read_unlocked(%struct.sst_dsp* %23, i32 %24)
  store i32 %25, i32* %14, align 4
  %26 = load i32, i32* %10, align 4
  %27 = and i32 %25, %26
  %28 = load i32, i32* %11, align 4
  %29 = icmp ne i32 %27, %28
  br i1 %29, label %30, label %35

30:                                               ; preds = %22
  %31 = load i64, i64* @jiffies, align 8
  %32 = load i64, i64* %15, align 8
  %33 = call i64 @time_before(i64 %31, i64 %32)
  %34 = icmp ne i64 %33, 0
  br label %35

35:                                               ; preds = %30, %22
  %36 = phi i1 [ false, %22 ], [ %34, %30 ]
  br i1 %36, label %37, label %48

37:                                               ; preds = %35
  %38 = load i32, i32* %16, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %16, align 4
  %40 = load i32, i32* %16, align 4
  %41 = icmp sgt i32 %40, 10
  br i1 %41, label %42, label %43

42:                                               ; preds = %37
  store i32 5000, i32* %17, align 4
  br label %43

43:                                               ; preds = %42, %37
  %44 = load i32, i32* %17, align 4
  %45 = load i32, i32* %17, align 4
  %46 = mul nsw i32 2, %45
  %47 = call i32 @usleep_range(i32 %44, i32 %46)
  br label %22

48:                                               ; preds = %35
  %49 = load i32, i32* %14, align 4
  %50 = load i32, i32* %10, align 4
  %51 = and i32 %49, %50
  %52 = load i32, i32* %11, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %61

54:                                               ; preds = %48
  %55 = load %struct.sst_dsp*, %struct.sst_dsp** %8, align 8
  %56 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %14, align 4
  %59 = load i8*, i8** %13, align 8
  %60 = call i32 @dev_dbg(i32 %57, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %58, i8* %59)
  store i32 0, i32* %7, align 4
  br label %70

61:                                               ; preds = %48
  %62 = load %struct.sst_dsp*, %struct.sst_dsp** %8, align 8
  %63 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* %14, align 4
  %66 = load i8*, i8** %13, align 8
  %67 = call i32 @dev_dbg(i32 %64, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %65, i8* %66)
  %68 = load i32, i32* @ETIME, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %7, align 4
  br label %70

70:                                               ; preds = %61, %54
  %71 = load i32, i32* %7, align 4
  ret i32 %71
}

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @sst_dsp_shim_read_unlocked(%struct.sst_dsp*, i32) #1

declare dso_local i64 @time_before(i64, i64) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
