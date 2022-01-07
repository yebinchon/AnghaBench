; ModuleID = '/home/carl/AnghaBench/linux/net/nfc/extr_core.c_nfc_target_lost.c'
source_filename = "/home/carl/AnghaBench/linux/net/nfc/extr_core.c_nfc_target_lost.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfc_dev = type { i32, i32, %struct.nfc_target*, i32*, i32 }
%struct.nfc_target = type { i64 }

@.str = private unnamed_addr constant [25 x i8] c"dev_name %s n_target %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfc_target_lost(%struct.nfc_dev* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nfc_dev*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.nfc_target*, align 8
  %7 = alloca i32, align 4
  store %struct.nfc_dev* %0, %struct.nfc_dev** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load %struct.nfc_dev*, %struct.nfc_dev** %4, align 8
  %9 = getelementptr inbounds %struct.nfc_dev, %struct.nfc_dev* %8, i32 0, i32 1
  %10 = call i32 @dev_name(i32* %9)
  %11 = load i64, i64* %5, align 8
  %12 = call i32 @pr_debug(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %10, i64 %11)
  %13 = load %struct.nfc_dev*, %struct.nfc_dev** %4, align 8
  %14 = getelementptr inbounds %struct.nfc_dev, %struct.nfc_dev* %13, i32 0, i32 1
  %15 = call i32 @device_lock(i32* %14)
  store i32 0, i32* %7, align 4
  br label %16

16:                                               ; preds = %36, %2
  %17 = load i32, i32* %7, align 4
  %18 = load %struct.nfc_dev*, %struct.nfc_dev** %4, align 8
  %19 = getelementptr inbounds %struct.nfc_dev, %struct.nfc_dev* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp slt i32 %17, %20
  br i1 %21, label %22, label %39

22:                                               ; preds = %16
  %23 = load %struct.nfc_dev*, %struct.nfc_dev** %4, align 8
  %24 = getelementptr inbounds %struct.nfc_dev, %struct.nfc_dev* %23, i32 0, i32 2
  %25 = load %struct.nfc_target*, %struct.nfc_target** %24, align 8
  %26 = load i32, i32* %7, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.nfc_target, %struct.nfc_target* %25, i64 %27
  store %struct.nfc_target* %28, %struct.nfc_target** %6, align 8
  %29 = load %struct.nfc_target*, %struct.nfc_target** %6, align 8
  %30 = getelementptr inbounds %struct.nfc_target, %struct.nfc_target* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* %5, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %22
  br label %39

35:                                               ; preds = %22
  br label %36

36:                                               ; preds = %35
  %37 = load i32, i32* %7, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %7, align 4
  br label %16

39:                                               ; preds = %34, %16
  %40 = load i32, i32* %7, align 4
  %41 = load %struct.nfc_dev*, %struct.nfc_dev** %4, align 8
  %42 = getelementptr inbounds %struct.nfc_dev, %struct.nfc_dev* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp eq i32 %40, %43
  br i1 %44, label %45, label %51

45:                                               ; preds = %39
  %46 = load %struct.nfc_dev*, %struct.nfc_dev** %4, align 8
  %47 = getelementptr inbounds %struct.nfc_dev, %struct.nfc_dev* %46, i32 0, i32 1
  %48 = call i32 @device_unlock(i32* %47)
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %3, align 4
  br label %103

51:                                               ; preds = %39
  %52 = load %struct.nfc_dev*, %struct.nfc_dev** %4, align 8
  %53 = getelementptr inbounds %struct.nfc_dev, %struct.nfc_dev* %52, i32 0, i32 4
  %54 = load i32, i32* %53, align 8
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %53, align 8
  %56 = load %struct.nfc_dev*, %struct.nfc_dev** %4, align 8
  %57 = getelementptr inbounds %struct.nfc_dev, %struct.nfc_dev* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = add nsw i32 %58, -1
  store i32 %59, i32* %57, align 8
  %60 = load %struct.nfc_dev*, %struct.nfc_dev** %4, align 8
  %61 = getelementptr inbounds %struct.nfc_dev, %struct.nfc_dev* %60, i32 0, i32 3
  store i32* null, i32** %61, align 8
  %62 = load %struct.nfc_dev*, %struct.nfc_dev** %4, align 8
  %63 = getelementptr inbounds %struct.nfc_dev, %struct.nfc_dev* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %89

66:                                               ; preds = %51
  %67 = load %struct.nfc_dev*, %struct.nfc_dev** %4, align 8
  %68 = getelementptr inbounds %struct.nfc_dev, %struct.nfc_dev* %67, i32 0, i32 2
  %69 = load %struct.nfc_target*, %struct.nfc_target** %68, align 8
  %70 = load i32, i32* %7, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.nfc_target, %struct.nfc_target* %69, i64 %71
  %73 = load %struct.nfc_dev*, %struct.nfc_dev** %4, align 8
  %74 = getelementptr inbounds %struct.nfc_dev, %struct.nfc_dev* %73, i32 0, i32 2
  %75 = load %struct.nfc_target*, %struct.nfc_target** %74, align 8
  %76 = load i32, i32* %7, align 4
  %77 = add nsw i32 %76, 1
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.nfc_target, %struct.nfc_target* %75, i64 %78
  %80 = load %struct.nfc_dev*, %struct.nfc_dev** %4, align 8
  %81 = getelementptr inbounds %struct.nfc_dev, %struct.nfc_dev* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* %7, align 4
  %84 = sub nsw i32 %82, %83
  %85 = sext i32 %84 to i64
  %86 = mul i64 %85, 8
  %87 = trunc i64 %86 to i32
  %88 = call i32 @memcpy(%struct.nfc_target* %72, %struct.nfc_target* %79, i32 %87)
  br label %96

89:                                               ; preds = %51
  %90 = load %struct.nfc_dev*, %struct.nfc_dev** %4, align 8
  %91 = getelementptr inbounds %struct.nfc_dev, %struct.nfc_dev* %90, i32 0, i32 2
  %92 = load %struct.nfc_target*, %struct.nfc_target** %91, align 8
  %93 = call i32 @kfree(%struct.nfc_target* %92)
  %94 = load %struct.nfc_dev*, %struct.nfc_dev** %4, align 8
  %95 = getelementptr inbounds %struct.nfc_dev, %struct.nfc_dev* %94, i32 0, i32 2
  store %struct.nfc_target* null, %struct.nfc_target** %95, align 8
  br label %96

96:                                               ; preds = %89, %66
  %97 = load %struct.nfc_dev*, %struct.nfc_dev** %4, align 8
  %98 = getelementptr inbounds %struct.nfc_dev, %struct.nfc_dev* %97, i32 0, i32 1
  %99 = call i32 @device_unlock(i32* %98)
  %100 = load %struct.nfc_dev*, %struct.nfc_dev** %4, align 8
  %101 = load i64, i64* %5, align 8
  %102 = call i32 @nfc_genl_target_lost(%struct.nfc_dev* %100, i64 %101)
  store i32 0, i32* %3, align 4
  br label %103

103:                                              ; preds = %96, %45
  %104 = load i32, i32* %3, align 4
  ret i32 %104
}

declare dso_local i32 @pr_debug(i8*, i32, i64) #1

declare dso_local i32 @dev_name(i32*) #1

declare dso_local i32 @device_lock(i32*) #1

declare dso_local i32 @device_unlock(i32*) #1

declare dso_local i32 @memcpy(%struct.nfc_target*, %struct.nfc_target*, i32) #1

declare dso_local i32 @kfree(%struct.nfc_target*) #1

declare dso_local i32 @nfc_genl_target_lost(%struct.nfc_dev*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
