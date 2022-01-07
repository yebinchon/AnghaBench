; ModuleID = '/home/carl/AnghaBench/linux/net/nfc/extr_core.c_nfc_targets_found.c'
source_filename = "/home/carl/AnghaBench/linux/net/nfc/extr_core.c_nfc_targets_found.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfc_dev = type { i32, i32, i32, i32*, i32, i32 }
%struct.nfc_target = type { i64 }

@.str = private unnamed_addr constant [26 x i8] c"dev_name=%s n_targets=%d\0A\00", align 1
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfc_targets_found(%struct.nfc_dev* %0, %struct.nfc_target* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nfc_dev*, align 8
  %6 = alloca %struct.nfc_target*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.nfc_dev* %0, %struct.nfc_dev** %5, align 8
  store %struct.nfc_target* %1, %struct.nfc_target** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.nfc_dev*, %struct.nfc_dev** %5, align 8
  %10 = getelementptr inbounds %struct.nfc_dev, %struct.nfc_dev* %9, i32 0, i32 2
  %11 = call i32 @dev_name(i32* %10)
  %12 = load i32, i32* %7, align 4
  %13 = call i32 @pr_debug(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %11, i32 %12)
  store i32 0, i32* %8, align 4
  br label %14

14:                                               ; preds = %29, %3
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* %7, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %32

18:                                               ; preds = %14
  %19 = load %struct.nfc_dev*, %struct.nfc_dev** %5, align 8
  %20 = getelementptr inbounds %struct.nfc_dev, %struct.nfc_dev* %19, i32 0, i32 5
  %21 = load i32, i32* %20, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %20, align 4
  %23 = sext i32 %21 to i64
  %24 = load %struct.nfc_target*, %struct.nfc_target** %6, align 8
  %25 = load i32, i32* %8, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.nfc_target, %struct.nfc_target* %24, i64 %26
  %28 = getelementptr inbounds %struct.nfc_target, %struct.nfc_target* %27, i32 0, i32 0
  store i64 %23, i64* %28, align 8
  br label %29

29:                                               ; preds = %18
  %30 = load i32, i32* %8, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %8, align 4
  br label %14

32:                                               ; preds = %14
  %33 = load %struct.nfc_dev*, %struct.nfc_dev** %5, align 8
  %34 = getelementptr inbounds %struct.nfc_dev, %struct.nfc_dev* %33, i32 0, i32 2
  %35 = call i32 @device_lock(i32* %34)
  %36 = load %struct.nfc_dev*, %struct.nfc_dev** %5, align 8
  %37 = getelementptr inbounds %struct.nfc_dev, %struct.nfc_dev* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %32
  %41 = load %struct.nfc_dev*, %struct.nfc_dev** %5, align 8
  %42 = getelementptr inbounds %struct.nfc_dev, %struct.nfc_dev* %41, i32 0, i32 2
  %43 = call i32 @device_unlock(i32* %42)
  store i32 0, i32* %4, align 4
  br label %91

44:                                               ; preds = %32
  %45 = load %struct.nfc_dev*, %struct.nfc_dev** %5, align 8
  %46 = getelementptr inbounds %struct.nfc_dev, %struct.nfc_dev* %45, i32 0, i32 0
  store i32 0, i32* %46, align 8
  %47 = load %struct.nfc_dev*, %struct.nfc_dev** %5, align 8
  %48 = getelementptr inbounds %struct.nfc_dev, %struct.nfc_dev* %47, i32 0, i32 4
  %49 = load i32, i32* %48, align 8
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %48, align 8
  %51 = load %struct.nfc_dev*, %struct.nfc_dev** %5, align 8
  %52 = getelementptr inbounds %struct.nfc_dev, %struct.nfc_dev* %51, i32 0, i32 3
  %53 = load i32*, i32** %52, align 8
  %54 = call i32 @kfree(i32* %53)
  %55 = load %struct.nfc_dev*, %struct.nfc_dev** %5, align 8
  %56 = getelementptr inbounds %struct.nfc_dev, %struct.nfc_dev* %55, i32 0, i32 3
  store i32* null, i32** %56, align 8
  %57 = load %struct.nfc_target*, %struct.nfc_target** %6, align 8
  %58 = icmp ne %struct.nfc_target* %57, null
  br i1 %58, label %59, label %82

59:                                               ; preds = %44
  %60 = load %struct.nfc_target*, %struct.nfc_target** %6, align 8
  %61 = load i32, i32* %7, align 4
  %62 = sext i32 %61 to i64
  %63 = mul i64 %62, 8
  %64 = trunc i64 %63 to i32
  %65 = load i32, i32* @GFP_ATOMIC, align 4
  %66 = call i32* @kmemdup(%struct.nfc_target* %60, i32 %64, i32 %65)
  %67 = load %struct.nfc_dev*, %struct.nfc_dev** %5, align 8
  %68 = getelementptr inbounds %struct.nfc_dev, %struct.nfc_dev* %67, i32 0, i32 3
  store i32* %66, i32** %68, align 8
  %69 = load %struct.nfc_dev*, %struct.nfc_dev** %5, align 8
  %70 = getelementptr inbounds %struct.nfc_dev, %struct.nfc_dev* %69, i32 0, i32 3
  %71 = load i32*, i32** %70, align 8
  %72 = icmp ne i32* %71, null
  br i1 %72, label %81, label %73

73:                                               ; preds = %59
  %74 = load %struct.nfc_dev*, %struct.nfc_dev** %5, align 8
  %75 = getelementptr inbounds %struct.nfc_dev, %struct.nfc_dev* %74, i32 0, i32 1
  store i32 0, i32* %75, align 4
  %76 = load %struct.nfc_dev*, %struct.nfc_dev** %5, align 8
  %77 = getelementptr inbounds %struct.nfc_dev, %struct.nfc_dev* %76, i32 0, i32 2
  %78 = call i32 @device_unlock(i32* %77)
  %79 = load i32, i32* @ENOMEM, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %4, align 4
  br label %91

81:                                               ; preds = %59
  br label %82

82:                                               ; preds = %81, %44
  %83 = load i32, i32* %7, align 4
  %84 = load %struct.nfc_dev*, %struct.nfc_dev** %5, align 8
  %85 = getelementptr inbounds %struct.nfc_dev, %struct.nfc_dev* %84, i32 0, i32 1
  store i32 %83, i32* %85, align 4
  %86 = load %struct.nfc_dev*, %struct.nfc_dev** %5, align 8
  %87 = getelementptr inbounds %struct.nfc_dev, %struct.nfc_dev* %86, i32 0, i32 2
  %88 = call i32 @device_unlock(i32* %87)
  %89 = load %struct.nfc_dev*, %struct.nfc_dev** %5, align 8
  %90 = call i32 @nfc_genl_targets_found(%struct.nfc_dev* %89)
  store i32 0, i32* %4, align 4
  br label %91

91:                                               ; preds = %82, %73, %40
  %92 = load i32, i32* %4, align 4
  ret i32 %92
}

declare dso_local i32 @pr_debug(i8*, i32, i32) #1

declare dso_local i32 @dev_name(i32*) #1

declare dso_local i32 @device_lock(i32*) #1

declare dso_local i32 @device_unlock(i32*) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32* @kmemdup(%struct.nfc_target*, i32, i32) #1

declare dso_local i32 @nfc_genl_targets_found(%struct.nfc_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
