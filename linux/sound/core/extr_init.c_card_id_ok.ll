; ModuleID = '/home/carl/AnghaBench/linux/sound/core/extr_init.c_card_id_ok.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/extr_init.c_card_id_ok.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_card = type { i32 }

@snd_ecards_limit = common dso_local global i32 0, align 4
@snd_cards = common dso_local global %struct.snd_card** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_card*, i8*)* @card_id_ok to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @card_id_ok(%struct.snd_card* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_card*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.snd_card* %0, %struct.snd_card** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load i8*, i8** %5, align 8
  %8 = call i32 @snd_info_check_reserved_words(i8* %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %48

11:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %12

12:                                               ; preds = %44, %11
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* @snd_ecards_limit, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %47

16:                                               ; preds = %12
  %17 = load %struct.snd_card**, %struct.snd_card*** @snd_cards, align 8
  %18 = load i32, i32* %6, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.snd_card*, %struct.snd_card** %17, i64 %19
  %21 = load %struct.snd_card*, %struct.snd_card** %20, align 8
  %22 = icmp ne %struct.snd_card* %21, null
  br i1 %22, label %23, label %43

23:                                               ; preds = %16
  %24 = load %struct.snd_card**, %struct.snd_card*** @snd_cards, align 8
  %25 = load i32, i32* %6, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.snd_card*, %struct.snd_card** %24, i64 %26
  %28 = load %struct.snd_card*, %struct.snd_card** %27, align 8
  %29 = load %struct.snd_card*, %struct.snd_card** %4, align 8
  %30 = icmp ne %struct.snd_card* %28, %29
  br i1 %30, label %31, label %43

31:                                               ; preds = %23
  %32 = load %struct.snd_card**, %struct.snd_card*** @snd_cards, align 8
  %33 = load i32, i32* %6, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.snd_card*, %struct.snd_card** %32, i64 %34
  %36 = load %struct.snd_card*, %struct.snd_card** %35, align 8
  %37 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i8*, i8** %5, align 8
  %40 = call i32 @strcmp(i32 %38, i8* %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %31
  store i32 0, i32* %3, align 4
  br label %48

43:                                               ; preds = %31, %23, %16
  br label %44

44:                                               ; preds = %43
  %45 = load i32, i32* %6, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %6, align 4
  br label %12

47:                                               ; preds = %12
  store i32 1, i32* %3, align 4
  br label %48

48:                                               ; preds = %47, %42, %10
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

declare dso_local i32 @snd_info_check_reserved_words(i8*) #1

declare dso_local i32 @strcmp(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
