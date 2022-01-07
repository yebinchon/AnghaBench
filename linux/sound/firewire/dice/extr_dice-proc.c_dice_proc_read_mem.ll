; ModuleID = '/home/carl/AnghaBench/linux/sound/firewire/dice/extr_dice-proc.c_dice_proc_read_mem.c'
source_filename = "/home/carl/AnghaBench/linux/sound/firewire/dice/extr_dice-proc.c_dice_proc_read_mem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_dice = type { i32 }

@TCODE_READ_BLOCK_REQUEST = common dso_local global i32 0, align 4
@DICE_PRIVATE_SPACE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_dice*, i8*, i32, i32)* @dice_proc_read_mem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dice_proc_read_mem(%struct.snd_dice* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_dice*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.snd_dice* %0, %struct.snd_dice** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load %struct.snd_dice*, %struct.snd_dice** %6, align 8
  %13 = getelementptr inbounds %struct.snd_dice, %struct.snd_dice* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @TCODE_READ_BLOCK_REQUEST, align 4
  %16 = load i64, i64* @DICE_PRIVATE_SPACE, align 8
  %17 = load i32, i32* %8, align 4
  %18 = mul i32 4, %17
  %19 = zext i32 %18 to i64
  %20 = add nsw i64 %16, %19
  %21 = load i8*, i8** %7, align 8
  %22 = load i32, i32* %9, align 4
  %23 = mul i32 4, %22
  %24 = call i32 @snd_fw_transaction(i32 %14, i32 %15, i64 %20, i8* %21, i32 %23, i32 0)
  store i32 %24, i32* %11, align 4
  %25 = load i32, i32* %11, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %4
  %28 = load i32, i32* %11, align 4
  store i32 %28, i32* %5, align 4
  br label %45

29:                                               ; preds = %4
  store i32 0, i32* %10, align 4
  br label %30

30:                                               ; preds = %41, %29
  %31 = load i32, i32* %10, align 4
  %32 = load i32, i32* %9, align 4
  %33 = icmp ult i32 %31, %32
  br i1 %33, label %34, label %44

34:                                               ; preds = %30
  %35 = load i8*, i8** %7, align 8
  %36 = bitcast i8* %35 to i32*
  %37 = load i32, i32* %10, align 4
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = call i32 @be32_to_cpus(i32* %39)
  br label %41

41:                                               ; preds = %34
  %42 = load i32, i32* %10, align 4
  %43 = add i32 %42, 1
  store i32 %43, i32* %10, align 4
  br label %30

44:                                               ; preds = %30
  store i32 0, i32* %5, align 4
  br label %45

45:                                               ; preds = %44, %27
  %46 = load i32, i32* %5, align 4
  ret i32 %46
}

declare dso_local i32 @snd_fw_transaction(i32, i32, i64, i8*, i32, i32) #1

declare dso_local i32 @be32_to_cpus(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
