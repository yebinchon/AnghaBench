; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/fsl/extr_fsl_asrc.c_fsl_asrc_request_pair.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/fsl/extr_fsl_asrc.c_fsl_asrc_request_pair.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsl_asrc_pair = type { i32, i32, %struct.fsl_asrc* }
%struct.fsl_asrc = type { i32, i32, %struct.fsl_asrc_pair**, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { i32 }

@ASRC_INVALID_PAIR = common dso_local global i32 0, align 4
@ASRC_PAIR_A = common dso_local global i32 0, align 4
@ASRC_PAIR_MAX_NUM = common dso_local global i32 0, align 4
@ASRC_PAIR_B = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"all pairs are busy now\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"can't afford required channels: %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.fsl_asrc_pair*)* @fsl_asrc_request_pair to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fsl_asrc_request_pair(i32 %0, %struct.fsl_asrc_pair* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fsl_asrc_pair*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.fsl_asrc*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.fsl_asrc_pair* %1, %struct.fsl_asrc_pair** %4, align 8
  %11 = load i32, i32* @ASRC_INVALID_PAIR, align 4
  store i32 %11, i32* %5, align 4
  %12 = load %struct.fsl_asrc_pair*, %struct.fsl_asrc_pair** %4, align 8
  %13 = getelementptr inbounds %struct.fsl_asrc_pair, %struct.fsl_asrc_pair* %12, i32 0, i32 2
  %14 = load %struct.fsl_asrc*, %struct.fsl_asrc** %13, align 8
  store %struct.fsl_asrc* %14, %struct.fsl_asrc** %6, align 8
  %15 = load %struct.fsl_asrc*, %struct.fsl_asrc** %6, align 8
  %16 = getelementptr inbounds %struct.fsl_asrc, %struct.fsl_asrc* %15, i32 0, i32 3
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  store %struct.device* %18, %struct.device** %7, align 8
  store i32 0, i32* %10, align 4
  %19 = load %struct.fsl_asrc*, %struct.fsl_asrc** %6, align 8
  %20 = getelementptr inbounds %struct.fsl_asrc, %struct.fsl_asrc* %19, i32 0, i32 1
  %21 = load i64, i64* %8, align 8
  %22 = call i32 @spin_lock_irqsave(i32* %20, i64 %21)
  %23 = load i32, i32* @ASRC_PAIR_A, align 4
  store i32 %23, i32* %9, align 4
  br label %24

24:                                               ; preds = %45, %2
  %25 = load i32, i32* %9, align 4
  %26 = load i32, i32* @ASRC_PAIR_MAX_NUM, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %48

28:                                               ; preds = %24
  %29 = load %struct.fsl_asrc*, %struct.fsl_asrc** %6, align 8
  %30 = getelementptr inbounds %struct.fsl_asrc, %struct.fsl_asrc* %29, i32 0, i32 2
  %31 = load %struct.fsl_asrc_pair**, %struct.fsl_asrc_pair*** %30, align 8
  %32 = load i32, i32* %9, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.fsl_asrc_pair*, %struct.fsl_asrc_pair** %31, i64 %33
  %35 = load %struct.fsl_asrc_pair*, %struct.fsl_asrc_pair** %34, align 8
  %36 = icmp ne %struct.fsl_asrc_pair* %35, null
  br i1 %36, label %37, label %38

37:                                               ; preds = %28
  br label %45

38:                                               ; preds = %28
  %39 = load i32, i32* %9, align 4
  store i32 %39, i32* %5, align 4
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* @ASRC_PAIR_B, align 4
  %42 = icmp ne i32 %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %38
  br label %48

44:                                               ; preds = %38
  br label %45

45:                                               ; preds = %44, %37
  %46 = load i32, i32* %9, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %9, align 4
  br label %24

48:                                               ; preds = %43, %24
  %49 = load i32, i32* %5, align 4
  %50 = load i32, i32* @ASRC_INVALID_PAIR, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %57

52:                                               ; preds = %48
  %53 = load %struct.device*, %struct.device** %7, align 8
  %54 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %53, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %55 = load i32, i32* @EBUSY, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %10, align 4
  br label %89

57:                                               ; preds = %48
  %58 = load %struct.fsl_asrc*, %struct.fsl_asrc** %6, align 8
  %59 = getelementptr inbounds %struct.fsl_asrc, %struct.fsl_asrc* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* %3, align 4
  %62 = icmp slt i32 %60, %61
  br i1 %62, label %63, label %69

63:                                               ; preds = %57
  %64 = load %struct.device*, %struct.device** %7, align 8
  %65 = load i32, i32* %3, align 4
  %66 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %64, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %65)
  %67 = load i32, i32* @EINVAL, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %10, align 4
  br label %88

69:                                               ; preds = %57
  %70 = load i32, i32* %3, align 4
  %71 = load %struct.fsl_asrc*, %struct.fsl_asrc** %6, align 8
  %72 = getelementptr inbounds %struct.fsl_asrc, %struct.fsl_asrc* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = sub nsw i32 %73, %70
  store i32 %74, i32* %72, align 8
  %75 = load %struct.fsl_asrc_pair*, %struct.fsl_asrc_pair** %4, align 8
  %76 = load %struct.fsl_asrc*, %struct.fsl_asrc** %6, align 8
  %77 = getelementptr inbounds %struct.fsl_asrc, %struct.fsl_asrc* %76, i32 0, i32 2
  %78 = load %struct.fsl_asrc_pair**, %struct.fsl_asrc_pair*** %77, align 8
  %79 = load i32, i32* %5, align 4
  %80 = zext i32 %79 to i64
  %81 = getelementptr inbounds %struct.fsl_asrc_pair*, %struct.fsl_asrc_pair** %78, i64 %80
  store %struct.fsl_asrc_pair* %75, %struct.fsl_asrc_pair** %81, align 8
  %82 = load i32, i32* %3, align 4
  %83 = load %struct.fsl_asrc_pair*, %struct.fsl_asrc_pair** %4, align 8
  %84 = getelementptr inbounds %struct.fsl_asrc_pair, %struct.fsl_asrc_pair* %83, i32 0, i32 0
  store i32 %82, i32* %84, align 8
  %85 = load i32, i32* %5, align 4
  %86 = load %struct.fsl_asrc_pair*, %struct.fsl_asrc_pair** %4, align 8
  %87 = getelementptr inbounds %struct.fsl_asrc_pair, %struct.fsl_asrc_pair* %86, i32 0, i32 1
  store i32 %85, i32* %87, align 4
  br label %88

88:                                               ; preds = %69, %63
  br label %89

89:                                               ; preds = %88, %52
  %90 = load %struct.fsl_asrc*, %struct.fsl_asrc** %6, align 8
  %91 = getelementptr inbounds %struct.fsl_asrc, %struct.fsl_asrc* %90, i32 0, i32 1
  %92 = load i64, i64* %8, align 8
  %93 = call i32 @spin_unlock_irqrestore(i32* %91, i64 %92)
  %94 = load i32, i32* %10, align 4
  ret i32 %94
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
