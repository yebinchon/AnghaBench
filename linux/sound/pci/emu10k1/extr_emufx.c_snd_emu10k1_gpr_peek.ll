; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/emu10k1/extr_emufx.c_snd_emu10k1_gpr_peek.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/emu10k1/extr_emufx.c_snd_emu10k1_gpr_peek.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_emu10k1 = type { i64, i64 }
%struct.snd_emu10k1_fx8010_code = type { i32*, i32 }

@EFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_emu10k1*, %struct.snd_emu10k1_fx8010_code*)* @snd_emu10k1_gpr_peek to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_emu10k1_gpr_peek(%struct.snd_emu10k1* %0, %struct.snd_emu10k1_fx8010_code* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_emu10k1*, align 8
  %5 = alloca %struct.snd_emu10k1_fx8010_code*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.snd_emu10k1* %0, %struct.snd_emu10k1** %4, align 8
  store %struct.snd_emu10k1_fx8010_code* %1, %struct.snd_emu10k1_fx8010_code** %5, align 8
  store i32 0, i32* %6, align 4
  br label %8

8:                                                ; preds = %44, %2
  %9 = load i32, i32* %6, align 4
  %10 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %11 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  %14 = zext i1 %13 to i64
  %15 = select i1 %13, i32 512, i32 256
  %16 = icmp slt i32 %9, %15
  br i1 %16, label %17, label %47

17:                                               ; preds = %8
  %18 = load i32, i32* %6, align 4
  %19 = load %struct.snd_emu10k1_fx8010_code*, %struct.snd_emu10k1_fx8010_code** %5, align 8
  %20 = getelementptr inbounds %struct.snd_emu10k1_fx8010_code, %struct.snd_emu10k1_fx8010_code* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @set_bit(i32 %18, i32 %21)
  %23 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %24 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %25 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i32, i32* %6, align 4
  %28 = sext i32 %27 to i64
  %29 = add nsw i64 %26, %28
  %30 = call i32 @snd_emu10k1_ptr_read(%struct.snd_emu10k1* %23, i64 %29, i32 0)
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %7, align 4
  %32 = load %struct.snd_emu10k1_fx8010_code*, %struct.snd_emu10k1_fx8010_code** %5, align 8
  %33 = getelementptr inbounds %struct.snd_emu10k1_fx8010_code, %struct.snd_emu10k1_fx8010_code* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = load i32, i32* %6, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  %38 = call i64 @put_user(i32 %31, i32* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %17
  %41 = load i32, i32* @EFAULT, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %3, align 4
  br label %48

43:                                               ; preds = %17
  br label %44

44:                                               ; preds = %43
  %45 = load i32, i32* %6, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %6, align 4
  br label %8

47:                                               ; preds = %8
  store i32 0, i32* %3, align 4
  br label %48

48:                                               ; preds = %47, %40
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

declare dso_local i32 @set_bit(i32, i32) #1

declare dso_local i32 @snd_emu10k1_ptr_read(%struct.snd_emu10k1*, i64, i32) #1

declare dso_local i64 @put_user(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
