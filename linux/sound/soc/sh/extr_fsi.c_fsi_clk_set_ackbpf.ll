; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sh/extr_fsi.c_fsi_clk_set_ackbpf.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sh/extr_fsi.c_fsi_clk_set_ackbpf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.fsi_priv = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"unsupported rate (%d/%d)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"unsupported ackmd (%d)\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"unsupported bpfmd (%d)\0A\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"ACKMD/BPFMD = %d/%d\0A\00", align 1
@CKG1 = common dso_local global i32 0, align 4
@ACKMD_MASK = common dso_local global i32 0, align 4
@BPFMD_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.fsi_priv*, i32, i32)* @fsi_clk_set_ackbpf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fsi_clk_set_ackbpf(%struct.device* %0, %struct.fsi_priv* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.fsi_priv*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.fsi_priv* %1, %struct.fsi_priv** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %11 = load i32, i32* %9, align 4
  %12 = load i32, i32* %8, align 4
  %13 = icmp sgt i32 %11, %12
  br i1 %13, label %14, label %21

14:                                               ; preds = %4
  %15 = load %struct.device*, %struct.device** %6, align 8
  %16 = load i32, i32* %8, align 4
  %17 = load i32, i32* %9, align 4
  %18 = call i32 (%struct.device*, i8*, i32, ...) @dev_err(%struct.device* %15, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %16, i32 %17)
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %5, align 4
  br label %81

21:                                               ; preds = %4
  %22 = load i32, i32* %8, align 4
  switch i32 %22, label %37 [
    i32 512, label %23
    i32 256, label %25
    i32 128, label %28
    i32 64, label %31
    i32 32, label %34
  ]

23:                                               ; preds = %21
  %24 = load i32, i32* %10, align 4
  store i32 %24, i32* %10, align 4
  br label %43

25:                                               ; preds = %21
  %26 = load i32, i32* %10, align 4
  %27 = or i32 %26, 4096
  store i32 %27, i32* %10, align 4
  br label %43

28:                                               ; preds = %21
  %29 = load i32, i32* %10, align 4
  %30 = or i32 %29, 8192
  store i32 %30, i32* %10, align 4
  br label %43

31:                                               ; preds = %21
  %32 = load i32, i32* %10, align 4
  %33 = or i32 %32, 12288
  store i32 %33, i32* %10, align 4
  br label %43

34:                                               ; preds = %21
  %35 = load i32, i32* %10, align 4
  %36 = or i32 %35, 16384
  store i32 %36, i32* %10, align 4
  br label %43

37:                                               ; preds = %21
  %38 = load %struct.device*, %struct.device** %6, align 8
  %39 = load i32, i32* %8, align 4
  %40 = call i32 (%struct.device*, i8*, i32, ...) @dev_err(%struct.device* %38, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %39)
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %5, align 4
  br label %81

43:                                               ; preds = %34, %31, %28, %25, %23
  %44 = load i32, i32* %9, align 4
  switch i32 %44, label %62 [
    i32 32, label %45
    i32 64, label %47
    i32 128, label %50
    i32 256, label %53
    i32 512, label %56
    i32 16, label %59
  ]

45:                                               ; preds = %43
  %46 = load i32, i32* %10, align 4
  store i32 %46, i32* %10, align 4
  br label %68

47:                                               ; preds = %43
  %48 = load i32, i32* %10, align 4
  %49 = or i32 %48, 256
  store i32 %49, i32* %10, align 4
  br label %68

50:                                               ; preds = %43
  %51 = load i32, i32* %10, align 4
  %52 = or i32 %51, 512
  store i32 %52, i32* %10, align 4
  br label %68

53:                                               ; preds = %43
  %54 = load i32, i32* %10, align 4
  %55 = or i32 %54, 768
  store i32 %55, i32* %10, align 4
  br label %68

56:                                               ; preds = %43
  %57 = load i32, i32* %10, align 4
  %58 = or i32 %57, 1024
  store i32 %58, i32* %10, align 4
  br label %68

59:                                               ; preds = %43
  %60 = load i32, i32* %10, align 4
  %61 = or i32 %60, 1792
  store i32 %61, i32* %10, align 4
  br label %68

62:                                               ; preds = %43
  %63 = load %struct.device*, %struct.device** %6, align 8
  %64 = load i32, i32* %9, align 4
  %65 = call i32 (%struct.device*, i8*, i32, ...) @dev_err(%struct.device* %63, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %64)
  %66 = load i32, i32* @EINVAL, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %5, align 4
  br label %81

68:                                               ; preds = %59, %56, %53, %50, %47, %45
  %69 = load %struct.device*, %struct.device** %6, align 8
  %70 = load i32, i32* %8, align 4
  %71 = load i32, i32* %9, align 4
  %72 = call i32 @dev_dbg(%struct.device* %69, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32 %70, i32 %71)
  %73 = load %struct.fsi_priv*, %struct.fsi_priv** %7, align 8
  %74 = load i32, i32* @CKG1, align 4
  %75 = load i32, i32* @ACKMD_MASK, align 4
  %76 = load i32, i32* @BPFMD_MASK, align 4
  %77 = or i32 %75, %76
  %78 = load i32, i32* %10, align 4
  %79 = call i32 @fsi_reg_mask_set(%struct.fsi_priv* %73, i32 %74, i32 %77, i32 %78)
  %80 = call i32 @udelay(i32 10)
  store i32 0, i32* %5, align 4
  br label %81

81:                                               ; preds = %68, %62, %37, %14
  %82 = load i32, i32* %5, align 4
  ret i32 %82
}

declare dso_local i32 @dev_err(%struct.device*, i8*, i32, ...) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32, i32) #1

declare dso_local i32 @fsi_reg_mask_set(%struct.fsi_priv*, i32, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
