; ModuleID = '/home/carl/AnghaBench/linux/sound/firewire/bebob/extr_bebob_focusrite.c_saffirepro_both_clk_src_get.c'
source_filename = "/home/carl/AnghaBench/linux/sound/firewire/bebob/extr_bebob_focusrite.c_saffirepro_both_clk_src_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_bebob = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }

@SAFFIREPRO_OFFSET_CLOCK_SOURCE = common dso_local global i32 0, align 4
@saffirepro_10_clk_src_types = common dso_local global i64 0, align 8
@saffirepro_clk_maps = common dso_local global i8** null, align 8
@SAFFIREPRO_CLOCK_SOURCE_SELECT_MASK = common dso_local global i64 0, align 8
@SAFFIREPRO_CLOCK_SOURCE_COUNT = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_bebob*, i32*)* @saffirepro_both_clk_src_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @saffirepro_both_clk_src_get(%struct.snd_bebob* %0, i32* %1) #0 {
  %3 = alloca %struct.snd_bebob*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store %struct.snd_bebob* %0, %struct.snd_bebob** %3, align 8
  store i32* %1, i32** %4, align 8
  %8 = load %struct.snd_bebob*, %struct.snd_bebob** %3, align 8
  %9 = load i32, i32* @SAFFIREPRO_OFFSET_CLOCK_SOURCE, align 4
  %10 = call i32 @saffire_read_quad(%struct.snd_bebob* %8, i32 %9, i64* %6)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  br label %56

14:                                               ; preds = %2
  %15 = load %struct.snd_bebob*, %struct.snd_bebob** %3, align 8
  %16 = getelementptr inbounds %struct.snd_bebob, %struct.snd_bebob* %15, i32 0, i32 0
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @saffirepro_10_clk_src_types, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %14
  %25 = load i8**, i8*** @saffirepro_clk_maps, align 8
  %26 = getelementptr inbounds i8*, i8** %25, i64 0
  %27 = load i8*, i8** %26, align 8
  store i8* %27, i8** %7, align 8
  br label %32

28:                                               ; preds = %14
  %29 = load i8**, i8*** @saffirepro_clk_maps, align 8
  %30 = getelementptr inbounds i8*, i8** %29, i64 1
  %31 = load i8*, i8** %30, align 8
  store i8* %31, i8** %7, align 8
  br label %32

32:                                               ; preds = %28, %24
  %33 = load i64, i64* @SAFFIREPRO_CLOCK_SOURCE_SELECT_MASK, align 8
  %34 = load i64, i64* %6, align 8
  %35 = and i64 %34, %33
  store i64 %35, i64* %6, align 8
  %36 = load i64, i64* %6, align 8
  %37 = load i64, i64* @SAFFIREPRO_CLOCK_SOURCE_COUNT, align 8
  %38 = icmp uge i64 %36, %37
  br i1 %38, label %46, label %39

39:                                               ; preds = %32
  %40 = load i8*, i8** %7, align 8
  %41 = load i64, i64* %6, align 8
  %42 = getelementptr inbounds i8, i8* %40, i64 %41
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %39, %32
  %47 = load i32, i32* @EIO, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %5, align 4
  br label %56

49:                                               ; preds = %39
  %50 = load i8*, i8** %7, align 8
  %51 = load i64, i64* %6, align 8
  %52 = getelementptr inbounds i8, i8* %50, i64 %51
  %53 = load i8, i8* %52, align 1
  %54 = sext i8 %53 to i32
  %55 = load i32*, i32** %4, align 8
  store i32 %54, i32* %55, align 4
  br label %56

56:                                               ; preds = %49, %46, %13
  %57 = load i32, i32* %5, align 4
  ret i32 %57
}

declare dso_local i32 @saffire_read_quad(%struct.snd_bebob*, i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
