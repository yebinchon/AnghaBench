; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm_adsp.c_wm_adsp_create_name.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm_adsp.c_wm_adsp_create_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wm_adsp = type { i8*, i64, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"DSP%d\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wm_adsp*)* @wm_adsp_create_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm_adsp_create_name(%struct.wm_adsp* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.wm_adsp*, align 8
  %4 = alloca i8*, align 8
  store %struct.wm_adsp* %0, %struct.wm_adsp** %3, align 8
  %5 = load %struct.wm_adsp*, %struct.wm_adsp** %3, align 8
  %6 = getelementptr inbounds %struct.wm_adsp, %struct.wm_adsp* %5, i32 0, i32 1
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %28, label %9

9:                                                ; preds = %1
  %10 = load %struct.wm_adsp*, %struct.wm_adsp** %3, align 8
  %11 = getelementptr inbounds %struct.wm_adsp, %struct.wm_adsp* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = load %struct.wm_adsp*, %struct.wm_adsp** %3, align 8
  %15 = getelementptr inbounds %struct.wm_adsp, %struct.wm_adsp* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 4
  %17 = call i64 @devm_kasprintf(i32 %12, i32 %13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = load %struct.wm_adsp*, %struct.wm_adsp** %3, align 8
  %19 = getelementptr inbounds %struct.wm_adsp, %struct.wm_adsp* %18, i32 0, i32 1
  store i64 %17, i64* %19, align 8
  %20 = load %struct.wm_adsp*, %struct.wm_adsp** %3, align 8
  %21 = getelementptr inbounds %struct.wm_adsp, %struct.wm_adsp* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %9
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %66

27:                                               ; preds = %9
  br label %28

28:                                               ; preds = %27, %1
  %29 = load %struct.wm_adsp*, %struct.wm_adsp** %3, align 8
  %30 = getelementptr inbounds %struct.wm_adsp, %struct.wm_adsp* %29, i32 0, i32 0
  %31 = load i8*, i8** %30, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %65, label %33

33:                                               ; preds = %28
  %34 = load %struct.wm_adsp*, %struct.wm_adsp** %3, align 8
  %35 = getelementptr inbounds %struct.wm_adsp, %struct.wm_adsp* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.wm_adsp*, %struct.wm_adsp** %3, align 8
  %38 = getelementptr inbounds %struct.wm_adsp, %struct.wm_adsp* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load i32, i32* @GFP_KERNEL, align 4
  %41 = call i8* @devm_kstrdup(i32 %36, i64 %39, i32 %40)
  store i8* %41, i8** %4, align 8
  %42 = load i8*, i8** %4, align 8
  %43 = icmp ne i8* %42, null
  br i1 %43, label %47, label %44

44:                                               ; preds = %33
  %45 = load i32, i32* @ENOMEM, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %2, align 4
  br label %66

47:                                               ; preds = %33
  %48 = load i8*, i8** %4, align 8
  %49 = load %struct.wm_adsp*, %struct.wm_adsp** %3, align 8
  %50 = getelementptr inbounds %struct.wm_adsp, %struct.wm_adsp* %49, i32 0, i32 0
  store i8* %48, i8** %50, align 8
  br label %51

51:                                               ; preds = %61, %47
  %52 = load i8*, i8** %4, align 8
  %53 = load i8, i8* %52, align 1
  %54 = sext i8 %53 to i32
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %64

56:                                               ; preds = %51
  %57 = load i8*, i8** %4, align 8
  %58 = load i8, i8* %57, align 1
  %59 = call signext i8 @tolower(i8 signext %58)
  %60 = load i8*, i8** %4, align 8
  store i8 %59, i8* %60, align 1
  br label %61

61:                                               ; preds = %56
  %62 = load i8*, i8** %4, align 8
  %63 = getelementptr inbounds i8, i8* %62, i32 1
  store i8* %63, i8** %4, align 8
  br label %51

64:                                               ; preds = %51
  br label %65

65:                                               ; preds = %64, %28
  store i32 0, i32* %2, align 4
  br label %66

66:                                               ; preds = %65, %44, %24
  %67 = load i32, i32* %2, align 4
  ret i32 %67
}

declare dso_local i64 @devm_kasprintf(i32, i32, i8*, i32) #1

declare dso_local i8* @devm_kstrdup(i32, i64, i32) #1

declare dso_local signext i8 @tolower(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
