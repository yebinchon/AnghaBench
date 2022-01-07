; ModuleID = '/home/carl/AnghaBench/linux/sound/isa/es1688/extr_es1688_lib.c_snd_es1688_mixer.c'
source_filename = "/home/carl/AnghaBench/linux/sound/isa/es1688/extr_es1688_lib.c_snd_es1688_mixer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_card = type { i32 }
%struct.snd_es1688 = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@snd_es1688_controls = common dso_local global i32* null, align 8
@ES1688_INIT_TABLE_SIZE = common dso_local global i32 0, align 4
@snd_es1688_init_table = common dso_local global i8** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_es1688_mixer(%struct.snd_card* %0, %struct.snd_es1688* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_card*, align 8
  %5 = alloca %struct.snd_es1688*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  store %struct.snd_card* %0, %struct.snd_card** %4, align 8
  store %struct.snd_es1688* %1, %struct.snd_es1688** %5, align 8
  %10 = load %struct.snd_es1688*, %struct.snd_es1688** %5, align 8
  %11 = icmp ne %struct.snd_es1688* %10, null
  br i1 %11, label %12, label %16

12:                                               ; preds = %2
  %13 = load %struct.snd_card*, %struct.snd_card** %4, align 8
  %14 = icmp ne %struct.snd_card* %13, null
  %15 = xor i1 %14, true
  br label %16

16:                                               ; preds = %12, %2
  %17 = phi i1 [ true, %2 ], [ %15, %12 ]
  %18 = zext i1 %17 to i32
  %19 = call i64 @snd_BUG_ON(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %16
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %90

24:                                               ; preds = %16
  %25 = load %struct.snd_card*, %struct.snd_card** %4, align 8
  %26 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.snd_es1688*, %struct.snd_es1688** %5, align 8
  %29 = call i32 @snd_es1688_chip_id(%struct.snd_es1688* %28)
  %30 = call i32 @strcpy(i32 %27, i32 %29)
  store i32 0, i32* %6, align 4
  br label %31

31:                                               ; preds = %49, %24
  %32 = load i32, i32* %6, align 4
  %33 = load i32*, i32** @snd_es1688_controls, align 8
  %34 = call i32 @ARRAY_SIZE(i32* %33)
  %35 = icmp ult i32 %32, %34
  br i1 %35, label %36, label %52

36:                                               ; preds = %31
  %37 = load %struct.snd_card*, %struct.snd_card** %4, align 8
  %38 = load i32*, i32** @snd_es1688_controls, align 8
  %39 = load i32, i32* %6, align 4
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = load %struct.snd_es1688*, %struct.snd_es1688** %5, align 8
  %43 = call i32 @snd_ctl_new1(i32* %41, %struct.snd_es1688* %42)
  %44 = call i32 @snd_ctl_add(%struct.snd_card* %37, i32 %43)
  store i32 %44, i32* %7, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %36
  %47 = load i32, i32* %7, align 4
  store i32 %47, i32* %3, align 4
  br label %90

48:                                               ; preds = %36
  br label %49

49:                                               ; preds = %48
  %50 = load i32, i32* %6, align 4
  %51 = add i32 %50, 1
  store i32 %51, i32* %6, align 4
  br label %31

52:                                               ; preds = %31
  store i32 0, i32* %6, align 4
  br label %53

53:                                               ; preds = %86, %52
  %54 = load i32, i32* %6, align 4
  %55 = load i32, i32* @ES1688_INIT_TABLE_SIZE, align 4
  %56 = icmp ult i32 %54, %55
  br i1 %56, label %57, label %89

57:                                               ; preds = %53
  %58 = load i8**, i8*** @snd_es1688_init_table, align 8
  %59 = load i32, i32* %6, align 4
  %60 = zext i32 %59 to i64
  %61 = getelementptr inbounds i8*, i8** %58, i64 %60
  %62 = load i8*, i8** %61, align 8
  %63 = getelementptr inbounds i8, i8* %62, i64 0
  %64 = load i8, i8* %63, align 1
  store i8 %64, i8* %8, align 1
  %65 = load i8**, i8*** @snd_es1688_init_table, align 8
  %66 = load i32, i32* %6, align 4
  %67 = zext i32 %66 to i64
  %68 = getelementptr inbounds i8*, i8** %65, i64 %67
  %69 = load i8*, i8** %68, align 8
  %70 = getelementptr inbounds i8, i8* %69, i64 1
  %71 = load i8, i8* %70, align 1
  store i8 %71, i8* %9, align 1
  %72 = load i8, i8* %8, align 1
  %73 = zext i8 %72 to i32
  %74 = icmp slt i32 %73, 160
  br i1 %74, label %75, label %80

75:                                               ; preds = %57
  %76 = load %struct.snd_es1688*, %struct.snd_es1688** %5, align 8
  %77 = load i8, i8* %8, align 1
  %78 = load i8, i8* %9, align 1
  %79 = call i32 @snd_es1688_mixer_write(%struct.snd_es1688* %76, i8 zeroext %77, i8 zeroext %78)
  br label %85

80:                                               ; preds = %57
  %81 = load %struct.snd_es1688*, %struct.snd_es1688** %5, align 8
  %82 = load i8, i8* %8, align 1
  %83 = load i8, i8* %9, align 1
  %84 = call i32 @snd_es1688_write(%struct.snd_es1688* %81, i8 zeroext %82, i8 zeroext %83)
  br label %85

85:                                               ; preds = %80, %75
  br label %86

86:                                               ; preds = %85
  %87 = load i32, i32* %6, align 4
  %88 = add i32 %87, 1
  store i32 %88, i32* %6, align 4
  br label %53

89:                                               ; preds = %53
  store i32 0, i32* %3, align 4
  br label %90

90:                                               ; preds = %89, %46, %21
  %91 = load i32, i32* %3, align 4
  ret i32 %91
}

declare dso_local i64 @snd_BUG_ON(i32) #1

declare dso_local i32 @strcpy(i32, i32) #1

declare dso_local i32 @snd_es1688_chip_id(%struct.snd_es1688*) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @snd_ctl_add(%struct.snd_card*, i32) #1

declare dso_local i32 @snd_ctl_new1(i32*, %struct.snd_es1688*) #1

declare dso_local i32 @snd_es1688_mixer_write(%struct.snd_es1688*, i8 zeroext, i8 zeroext) #1

declare dso_local i32 @snd_es1688_write(%struct.snd_es1688*, i8 zeroext, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
