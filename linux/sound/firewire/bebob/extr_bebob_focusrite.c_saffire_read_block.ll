; ModuleID = '/home/carl/AnghaBench/linux/sound/firewire/bebob/extr_bebob_focusrite.c_saffire_read_block.c'
source_filename = "/home/carl/AnghaBench/linux/sound/firewire/bebob/extr_bebob_focusrite.c_saffire_read_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_bebob = type { i32 }

@TCODE_READ_BLOCK_REQUEST = common dso_local global i32 0, align 4
@SAFFIRE_ADDRESS_BASE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_bebob*, i64, i32*, i32)* @saffire_read_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @saffire_read_block(%struct.snd_bebob* %0, i64 %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.snd_bebob*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  store %struct.snd_bebob* %0, %struct.snd_bebob** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = load i32*, i32** %7, align 8
  store i32* %12, i32** %11, align 8
  %13 = load %struct.snd_bebob*, %struct.snd_bebob** %5, align 8
  %14 = getelementptr inbounds %struct.snd_bebob, %struct.snd_bebob* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @TCODE_READ_BLOCK_REQUEST, align 4
  %17 = load i64, i64* @SAFFIRE_ADDRESS_BASE, align 8
  %18 = load i64, i64* %6, align 8
  %19 = add nsw i64 %17, %18
  %20 = load i32*, i32** %11, align 8
  %21 = load i32, i32* %8, align 4
  %22 = call i32 @snd_fw_transaction(i32 %15, i32 %16, i64 %19, i32* %20, i32 %21, i32 0)
  store i32 %22, i32* %10, align 4
  %23 = load i32, i32* %10, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %4
  br label %49

26:                                               ; preds = %4
  store i32 0, i32* %9, align 4
  br label %27

27:                                               ; preds = %45, %26
  %28 = load i32, i32* %9, align 4
  %29 = zext i32 %28 to i64
  %30 = load i32, i32* %8, align 4
  %31 = zext i32 %30 to i64
  %32 = udiv i64 %31, 4
  %33 = icmp ult i64 %29, %32
  br i1 %33, label %34, label %48

34:                                               ; preds = %27
  %35 = load i32*, i32** %11, align 8
  %36 = load i32, i32* %9, align 4
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @be32_to_cpu(i32 %39)
  %41 = load i32*, i32** %7, align 8
  %42 = load i32, i32* %9, align 4
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  store i32 %40, i32* %44, align 4
  br label %45

45:                                               ; preds = %34
  %46 = load i32, i32* %9, align 4
  %47 = add i32 %46, 1
  store i32 %47, i32* %9, align 4
  br label %27

48:                                               ; preds = %27
  br label %49

49:                                               ; preds = %48, %25
  %50 = load i32, i32* %10, align 4
  ret i32 %50
}

declare dso_local i32 @snd_fw_transaction(i32, i32, i64, i32*, i32, i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
