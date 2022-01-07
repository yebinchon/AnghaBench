; ModuleID = '/home/carl/AnghaBench/linux/fs/gfs2/extr_lock_dlm.c_make_flags.c'
source_filename = "/home/carl/AnghaBench/linux/fs/gfs2/extr_lock_dlm.c_make_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_glock = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64 }

@DLM_LKF_VALBLK = common dso_local global i32 0, align 4
@LM_FLAG_TRY = common dso_local global i32 0, align 4
@DLM_LKF_NOQUEUE = common dso_local global i32 0, align 4
@LM_FLAG_TRY_1CB = common dso_local global i32 0, align 4
@DLM_LKF_NOQUEUEBAST = common dso_local global i32 0, align 4
@LM_FLAG_PRIORITY = common dso_local global i32 0, align 4
@DLM_LKF_NOORDER = common dso_local global i32 0, align 4
@DLM_LKF_HEADQUE = common dso_local global i32 0, align 4
@LM_FLAG_ANY = common dso_local global i32 0, align 4
@DLM_LOCK_PR = common dso_local global i32 0, align 4
@DLM_LKF_ALTCW = common dso_local global i32 0, align 4
@DLM_LOCK_CW = common dso_local global i32 0, align 4
@DLM_LKF_ALTPR = common dso_local global i32 0, align 4
@DLM_LKF_CONVERT = common dso_local global i32 0, align 4
@GLF_BLOCKING = common dso_local global i32 0, align 4
@DLM_LKF_QUECVT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gfs2_glock*, i32, i32)* @make_flags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @make_flags(%struct.gfs2_glock* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.gfs2_glock*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.gfs2_glock* %0, %struct.gfs2_glock** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %8 = load %struct.gfs2_glock*, %struct.gfs2_glock** %4, align 8
  %9 = getelementptr inbounds %struct.gfs2_glock, %struct.gfs2_glock* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %3
  %14 = load i32, i32* @DLM_LKF_VALBLK, align 4
  %15 = load i32, i32* %7, align 4
  %16 = or i32 %15, %14
  store i32 %16, i32* %7, align 4
  br label %17

17:                                               ; preds = %13, %3
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @LM_FLAG_TRY, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %17
  %23 = load i32, i32* @DLM_LKF_NOQUEUE, align 4
  %24 = load i32, i32* %7, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %7, align 4
  br label %26

26:                                               ; preds = %22, %17
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* @LM_FLAG_TRY_1CB, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %26
  %32 = load i32, i32* @DLM_LKF_NOQUEUE, align 4
  %33 = load i32, i32* %7, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* @DLM_LKF_NOQUEUEBAST, align 4
  %36 = load i32, i32* %7, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %7, align 4
  br label %38

38:                                               ; preds = %31, %26
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* @LM_FLAG_PRIORITY, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %50

43:                                               ; preds = %38
  %44 = load i32, i32* @DLM_LKF_NOORDER, align 4
  %45 = load i32, i32* %7, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %7, align 4
  %47 = load i32, i32* @DLM_LKF_HEADQUE, align 4
  %48 = load i32, i32* %7, align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* %7, align 4
  br label %50

50:                                               ; preds = %43, %38
  %51 = load i32, i32* %5, align 4
  %52 = load i32, i32* @LM_FLAG_ANY, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %75

55:                                               ; preds = %50
  %56 = load i32, i32* %6, align 4
  %57 = load i32, i32* @DLM_LOCK_PR, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %63

59:                                               ; preds = %55
  %60 = load i32, i32* @DLM_LKF_ALTCW, align 4
  %61 = load i32, i32* %7, align 4
  %62 = or i32 %61, %60
  store i32 %62, i32* %7, align 4
  br label %74

63:                                               ; preds = %55
  %64 = load i32, i32* %6, align 4
  %65 = load i32, i32* @DLM_LOCK_CW, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %67, label %71

67:                                               ; preds = %63
  %68 = load i32, i32* @DLM_LKF_ALTPR, align 4
  %69 = load i32, i32* %7, align 4
  %70 = or i32 %69, %68
  store i32 %70, i32* %7, align 4
  br label %73

71:                                               ; preds = %63
  %72 = call i32 (...) @BUG()
  br label %73

73:                                               ; preds = %71, %67
  br label %74

74:                                               ; preds = %73, %59
  br label %75

75:                                               ; preds = %74, %50
  %76 = load %struct.gfs2_glock*, %struct.gfs2_glock** %4, align 8
  %77 = getelementptr inbounds %struct.gfs2_glock, %struct.gfs2_glock* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %95

81:                                               ; preds = %75
  %82 = load i32, i32* @DLM_LKF_CONVERT, align 4
  %83 = load i32, i32* %7, align 4
  %84 = or i32 %83, %82
  store i32 %84, i32* %7, align 4
  %85 = load i32, i32* @GLF_BLOCKING, align 4
  %86 = load %struct.gfs2_glock*, %struct.gfs2_glock** %4, align 8
  %87 = getelementptr inbounds %struct.gfs2_glock, %struct.gfs2_glock* %86, i32 0, i32 0
  %88 = call i64 @test_bit(i32 %85, i32* %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %94

90:                                               ; preds = %81
  %91 = load i32, i32* @DLM_LKF_QUECVT, align 4
  %92 = load i32, i32* %7, align 4
  %93 = or i32 %92, %91
  store i32 %93, i32* %7, align 4
  br label %94

94:                                               ; preds = %90, %81
  br label %95

95:                                               ; preds = %94, %75
  %96 = load i32, i32* %7, align 4
  ret i32 %96
}

declare dso_local i32 @BUG(...) #1

declare dso_local i64 @test_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
