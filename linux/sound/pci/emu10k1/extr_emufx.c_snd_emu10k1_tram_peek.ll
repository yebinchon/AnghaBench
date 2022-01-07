; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/emu10k1/extr_emufx.c_snd_emu10k1_tram_peek.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/emu10k1/extr_emufx.c_snd_emu10k1_tram_peek.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_emu10k1 = type { i64 }
%struct.snd_emu10k1_fx8010_code = type { i32*, i32*, i32 }

@TANKMEMDATAREGBASE = common dso_local global i64 0, align 8
@TANKMEMADDRREGBASE = common dso_local global i64 0, align 8
@A_TANKMEMCTLREGBASE = common dso_local global i64 0, align 8
@EFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_emu10k1*, %struct.snd_emu10k1_fx8010_code*)* @snd_emu10k1_tram_peek to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_emu10k1_tram_peek(%struct.snd_emu10k1* %0, %struct.snd_emu10k1_fx8010_code* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_emu10k1*, align 8
  %5 = alloca %struct.snd_emu10k1_fx8010_code*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.snd_emu10k1* %0, %struct.snd_emu10k1** %4, align 8
  store %struct.snd_emu10k1_fx8010_code* %1, %struct.snd_emu10k1_fx8010_code** %5, align 8
  %9 = load %struct.snd_emu10k1_fx8010_code*, %struct.snd_emu10k1_fx8010_code** %5, align 8
  %10 = getelementptr inbounds %struct.snd_emu10k1_fx8010_code, %struct.snd_emu10k1_fx8010_code* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @memset(i32 %11, i32 0, i32 4)
  store i32 0, i32* %6, align 4
  br label %13

13:                                               ; preds = %86, %2
  %14 = load i32, i32* %6, align 4
  %15 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %16 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  %19 = zext i1 %18 to i64
  %20 = select i1 %18, i32 256, i32 160
  %21 = icmp slt i32 %14, %20
  br i1 %21, label %22, label %89

22:                                               ; preds = %13
  %23 = load i32, i32* %6, align 4
  %24 = load %struct.snd_emu10k1_fx8010_code*, %struct.snd_emu10k1_fx8010_code** %5, align 8
  %25 = getelementptr inbounds %struct.snd_emu10k1_fx8010_code, %struct.snd_emu10k1_fx8010_code* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @set_bit(i32 %23, i32 %26)
  %28 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %29 = load i64, i64* @TANKMEMDATAREGBASE, align 8
  %30 = load i32, i32* %6, align 4
  %31 = sext i32 %30 to i64
  %32 = add nsw i64 %29, %31
  %33 = call i32 @snd_emu10k1_ptr_read(%struct.snd_emu10k1* %28, i64 %32, i32 0)
  store i32 %33, i32* %7, align 4
  %34 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %35 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %45, label %38

38:                                               ; preds = %22
  %39 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %40 = load i64, i64* @TANKMEMADDRREGBASE, align 8
  %41 = load i32, i32* %6, align 4
  %42 = sext i32 %41 to i64
  %43 = add nsw i64 %40, %42
  %44 = call i32 @snd_emu10k1_ptr_read(%struct.snd_emu10k1* %39, i64 %43, i32 0)
  store i32 %44, i32* %8, align 4
  br label %62

45:                                               ; preds = %22
  %46 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %47 = load i64, i64* @TANKMEMADDRREGBASE, align 8
  %48 = load i32, i32* %6, align 4
  %49 = sext i32 %48 to i64
  %50 = add nsw i64 %47, %49
  %51 = call i32 @snd_emu10k1_ptr_read(%struct.snd_emu10k1* %46, i64 %50, i32 0)
  %52 = ashr i32 %51, 12
  store i32 %52, i32* %8, align 4
  %53 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %54 = load i64, i64* @A_TANKMEMCTLREGBASE, align 8
  %55 = load i32, i32* %6, align 4
  %56 = sext i32 %55 to i64
  %57 = add nsw i64 %54, %56
  %58 = call i32 @snd_emu10k1_ptr_read(%struct.snd_emu10k1* %53, i64 %57, i32 0)
  %59 = shl i32 %58, 20
  %60 = load i32, i32* %8, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %8, align 4
  br label %62

62:                                               ; preds = %45, %38
  %63 = load i32, i32* %7, align 4
  %64 = load %struct.snd_emu10k1_fx8010_code*, %struct.snd_emu10k1_fx8010_code** %5, align 8
  %65 = getelementptr inbounds %struct.snd_emu10k1_fx8010_code, %struct.snd_emu10k1_fx8010_code* %64, i32 0, i32 1
  %66 = load i32*, i32** %65, align 8
  %67 = load i32, i32* %6, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  %70 = call i64 @put_user(i32 %63, i32* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %82, label %72

72:                                               ; preds = %62
  %73 = load i32, i32* %8, align 4
  %74 = load %struct.snd_emu10k1_fx8010_code*, %struct.snd_emu10k1_fx8010_code** %5, align 8
  %75 = getelementptr inbounds %struct.snd_emu10k1_fx8010_code, %struct.snd_emu10k1_fx8010_code* %74, i32 0, i32 0
  %76 = load i32*, i32** %75, align 8
  %77 = load i32, i32* %6, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %76, i64 %78
  %80 = call i64 @put_user(i32 %73, i32* %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %72, %62
  %83 = load i32, i32* @EFAULT, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %3, align 4
  br label %90

85:                                               ; preds = %72
  br label %86

86:                                               ; preds = %85
  %87 = load i32, i32* %6, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %6, align 4
  br label %13

89:                                               ; preds = %13
  store i32 0, i32* %3, align 4
  br label %90

90:                                               ; preds = %89, %82
  %91 = load i32, i32* %3, align 4
  ret i32 %91
}

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @set_bit(i32, i32) #1

declare dso_local i32 @snd_emu10k1_ptr_read(%struct.snd_emu10k1*, i64, i32) #1

declare dso_local i64 @put_user(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
