; ModuleID = '/home/carl/AnghaBench/linux/sound/firewire/dice/extr_dice-extension.c_snd_dice_detect_extension_formats.c'
source_filename = "/home/carl/AnghaBench/linux/sound/firewire/dice/extr_dice-extension.c_snd_dice_detect_extension_formats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_dice = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@TCODE_READ_BLOCK_REQUEST = common dso_local global i32 0, align 4
@DICE_EXT_APP_SPACE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_dice_detect_extension_formats(%struct.snd_dice* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_dice*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.snd_dice* %0, %struct.snd_dice** %3, align 8
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call i64* @kmalloc_array(i32 9, i32 16, i32 %9)
  store i64* %10, i64** %4, align 8
  %11 = load i64*, i64** %4, align 8
  %12 = icmp eq i64* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %76

16:                                               ; preds = %1
  %17 = load %struct.snd_dice*, %struct.snd_dice** %3, align 8
  %18 = getelementptr inbounds %struct.snd_dice, %struct.snd_dice* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @TCODE_READ_BLOCK_REQUEST, align 4
  %21 = load i64, i64* @DICE_EXT_APP_SPACE, align 8
  %22 = load i64*, i64** %4, align 8
  %23 = call i32 @snd_fw_transaction(i32 %19, i32 %20, i64 %21, i64* %22, i32 144, i32 0)
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %7, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %16
  br label %72

27:                                               ; preds = %16
  store i32 0, i32* %5, align 4
  br label %28

28:                                               ; preds = %57, %27
  %29 = load i32, i32* %5, align 4
  %30 = icmp ult i32 %29, 9
  br i1 %30, label %31, label %60

31:                                               ; preds = %28
  %32 = load i32, i32* %5, align 4
  %33 = add i32 %32, 1
  store i32 %33, i32* %8, align 4
  br label %34

34:                                               ; preds = %53, %31
  %35 = load i32, i32* %8, align 4
  %36 = icmp slt i32 %35, 9
  br i1 %36, label %37, label %56

37:                                               ; preds = %34
  %38 = load i64*, i64** %4, align 8
  %39 = load i32, i32* %5, align 4
  %40 = mul i32 %39, 2
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds i64, i64* %38, i64 %41
  %43 = load i64, i64* %42, align 8
  %44 = load i64*, i64** %4, align 8
  %45 = load i32, i32* %8, align 4
  %46 = mul nsw i32 %45, 2
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i64, i64* %44, i64 %47
  %49 = load i64, i64* %48, align 8
  %50 = icmp eq i64 %43, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %37
  br label %72

52:                                               ; preds = %37
  br label %53

53:                                               ; preds = %52
  %54 = load i32, i32* %8, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %8, align 4
  br label %34

56:                                               ; preds = %34
  br label %57

57:                                               ; preds = %56
  %58 = load i32, i32* %5, align 4
  %59 = add i32 %58, 1
  store i32 %59, i32* %5, align 4
  br label %28

60:                                               ; preds = %28
  %61 = load i64, i64* @DICE_EXT_APP_SPACE, align 8
  %62 = load i64*, i64** %4, align 8
  %63 = getelementptr inbounds i64, i64* %62, i64 12
  %64 = load i64, i64* %63, align 8
  %65 = call i32 @be32_to_cpu(i64 %64)
  %66 = mul nsw i32 %65, 4
  %67 = sext i32 %66 to i64
  %68 = add nsw i64 %61, %67
  store i64 %68, i64* %6, align 8
  %69 = load %struct.snd_dice*, %struct.snd_dice** %3, align 8
  %70 = load i64, i64* %6, align 8
  %71 = call i32 @detect_stream_formats(%struct.snd_dice* %69, i64 %70)
  store i32 %71, i32* %7, align 4
  br label %72

72:                                               ; preds = %60, %51, %26
  %73 = load i64*, i64** %4, align 8
  %74 = call i32 @kfree(i64* %73)
  %75 = load i32, i32* %7, align 4
  store i32 %75, i32* %2, align 4
  br label %76

76:                                               ; preds = %72, %13
  %77 = load i32, i32* %2, align 4
  ret i32 %77
}

declare dso_local i64* @kmalloc_array(i32, i32, i32) #1

declare dso_local i32 @snd_fw_transaction(i32, i32, i64, i64*, i32, i32) #1

declare dso_local i32 @be32_to_cpu(i64) #1

declare dso_local i32 @detect_stream_formats(%struct.snd_dice*, i64) #1

declare dso_local i32 @kfree(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
