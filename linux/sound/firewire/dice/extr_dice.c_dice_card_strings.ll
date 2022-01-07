; ModuleID = '/home/carl/AnghaBench/linux/sound/firewire/dice/extr_dice.c_dice_card_strings.c'
source_filename = "/home/carl/AnghaBench/linux/sound/firewire/dice/extr_dice.c_dice_card_strings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_dice = type { %struct.TYPE_2__*, %struct.snd_card* }
%struct.TYPE_2__ = type { i32*, i32 }
%struct.snd_card = type { i8*, i8*, i8*, i32 }
%struct.fw_device = type { i32*, i32 }

@.str = private unnamed_addr constant [5 x i8] c"DICE\00", align 1
@NICK_NAME_SIZE = common dso_local global i32 0, align 4
@GLOBAL_NICK_NAME = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@CSR_VENDOR = common dso_local global i32 0, align 4
@CSR_MODEL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"%s %s (serial %u) at %s, S%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_dice*)* @dice_card_strings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dice_card_strings(%struct.snd_dice* %0) #0 {
  %2 = alloca %struct.snd_dice*, align 8
  %3 = alloca %struct.snd_card*, align 8
  %4 = alloca %struct.fw_device*, align 8
  %5 = alloca [32 x i8], align 16
  %6 = alloca [32 x i8], align 16
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.snd_dice* %0, %struct.snd_dice** %2, align 8
  %9 = load %struct.snd_dice*, %struct.snd_dice** %2, align 8
  %10 = getelementptr inbounds %struct.snd_dice, %struct.snd_dice* %9, i32 0, i32 1
  %11 = load %struct.snd_card*, %struct.snd_card** %10, align 8
  store %struct.snd_card* %11, %struct.snd_card** %3, align 8
  %12 = load %struct.snd_dice*, %struct.snd_dice** %2, align 8
  %13 = getelementptr inbounds %struct.snd_dice, %struct.snd_dice* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = call %struct.fw_device* @fw_parent_device(%struct.TYPE_2__* %14)
  store %struct.fw_device* %15, %struct.fw_device** %4, align 8
  %16 = load %struct.snd_card*, %struct.snd_card** %3, align 8
  %17 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  %19 = call i32 @strcpy(i8* %18, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %20 = load %struct.snd_card*, %struct.snd_card** %3, align 8
  %21 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %20, i32 0, i32 1
  %22 = load i8*, i8** %21, align 8
  %23 = call i32 @strcpy(i8* %22, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %24 = load i32, i32* @NICK_NAME_SIZE, align 4
  %25 = sext i32 %24 to i64
  %26 = icmp ult i64 %25, 8
  %27 = zext i1 %26 to i32
  %28 = call i32 @BUILD_BUG_ON(i32 %27)
  %29 = load %struct.snd_dice*, %struct.snd_dice** %2, align 8
  %30 = load i32, i32* @GLOBAL_NICK_NAME, align 4
  %31 = load %struct.snd_card*, %struct.snd_card** %3, align 8
  %32 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %31, i32 0, i32 1
  %33 = load i8*, i8** %32, align 8
  %34 = call i32 @snd_dice_transaction_read_global(%struct.snd_dice* %29, i32 %30, i8* %33, i32 8)
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %8, align 4
  %36 = icmp sge i32 %35, 0
  br i1 %36, label %37, label %60

37:                                               ; preds = %1
  %38 = call i32 @BUILD_BUG_ON(i32 0)
  store i32 0, i32* %7, align 4
  br label %39

39:                                               ; preds = %52, %37
  %40 = load i32, i32* %7, align 4
  %41 = zext i32 %40 to i64
  %42 = icmp ult i64 %41, 8
  br i1 %42, label %43, label %55

43:                                               ; preds = %39
  %44 = load %struct.snd_card*, %struct.snd_card** %3, align 8
  %45 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %44, i32 0, i32 1
  %46 = load i8*, i8** %45, align 8
  %47 = load i32, i32* %7, align 4
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds i8, i8* %46, i64 %48
  %50 = bitcast i8* %49 to i32*
  %51 = call i32 @swab32s(i32* %50)
  br label %52

52:                                               ; preds = %43
  %53 = load i32, i32* %7, align 4
  %54 = add i32 %53, 4
  store i32 %54, i32* %7, align 4
  br label %39

55:                                               ; preds = %39
  %56 = load %struct.snd_card*, %struct.snd_card** %3, align 8
  %57 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %56, i32 0, i32 1
  %58 = load i8*, i8** %57, align 8
  %59 = getelementptr inbounds i8, i8* %58, i64 7
  store i8 0, i8* %59, align 1
  br label %60

60:                                               ; preds = %55, %1
  %61 = getelementptr inbounds [32 x i8], [32 x i8]* %5, i64 0, i64 0
  %62 = call i32 @strcpy(i8* %61, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %63 = load %struct.fw_device*, %struct.fw_device** %4, align 8
  %64 = getelementptr inbounds %struct.fw_device, %struct.fw_device* %63, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 5
  %67 = load i32, i32* @CSR_VENDOR, align 4
  %68 = getelementptr inbounds [32 x i8], [32 x i8]* %5, i64 0, i64 0
  %69 = call i32 @fw_csr_string(i32* %66, i32 %67, i8* %68, i32 32)
  %70 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 0
  %71 = call i32 @strcpy(i8* %70, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %72 = load %struct.snd_dice*, %struct.snd_dice** %2, align 8
  %73 = getelementptr inbounds %struct.snd_dice, %struct.snd_dice* %72, i32 0, i32 0
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = load i32*, i32** %75, align 8
  %77 = load i32, i32* @CSR_MODEL, align 4
  %78 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 0
  %79 = call i32 @fw_csr_string(i32* %76, i32 %77, i8* %78, i32 32)
  %80 = load %struct.snd_card*, %struct.snd_card** %3, align 8
  %81 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 8
  %83 = getelementptr inbounds [32 x i8], [32 x i8]* %5, i64 0, i64 0
  %84 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 0
  %85 = load %struct.fw_device*, %struct.fw_device** %4, align 8
  %86 = getelementptr inbounds %struct.fw_device, %struct.fw_device* %85, i32 0, i32 0
  %87 = load i32*, i32** %86, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 4
  %89 = load i32, i32* %88, align 4
  %90 = and i32 %89, 4194303
  %91 = load %struct.snd_dice*, %struct.snd_dice** %2, align 8
  %92 = getelementptr inbounds %struct.snd_dice, %struct.snd_dice* %91, i32 0, i32 0
  %93 = load %struct.TYPE_2__*, %struct.TYPE_2__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 1
  %95 = call i8* @dev_name(i32* %94)
  %96 = load %struct.fw_device*, %struct.fw_device** %4, align 8
  %97 = getelementptr inbounds %struct.fw_device, %struct.fw_device* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 8
  %99 = shl i32 100, %98
  %100 = call i32 @snprintf(i32 %82, i32 4, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i8* %83, i8* %84, i32 %90, i8* %95, i32 %99)
  %101 = load %struct.snd_card*, %struct.snd_card** %3, align 8
  %102 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %101, i32 0, i32 2
  %103 = load i8*, i8** %102, align 8
  %104 = call i32 @strcpy(i8* %103, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  ret void
}

declare dso_local %struct.fw_device* @fw_parent_device(%struct.TYPE_2__*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @BUILD_BUG_ON(i32) #1

declare dso_local i32 @snd_dice_transaction_read_global(%struct.snd_dice*, i32, i8*, i32) #1

declare dso_local i32 @swab32s(i32*) #1

declare dso_local i32 @fw_csr_string(i32*, i32, i8*, i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*, i8*, i32, i8*, i32) #1

declare dso_local i8* @dev_name(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
