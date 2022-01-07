; ModuleID = '/home/carl/AnghaBench/linux/sound/core/extr_init.c_snd_card_add_dev_attr.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/extr_init.c_snd_card_add_dev_attr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_card = type { i32, %struct.attribute_group** }
%struct.attribute_group = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"Too many groups assigned\0A\00", align 1
@ENOSPC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_card_add_dev_attr(%struct.snd_card* %0, %struct.attribute_group* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_card*, align 8
  %5 = alloca %struct.attribute_group*, align 8
  %6 = alloca i32, align 4
  store %struct.snd_card* %0, %struct.snd_card** %4, align 8
  store %struct.attribute_group* %1, %struct.attribute_group** %5, align 8
  store i32 0, i32* %6, align 4
  br label %7

7:                                                ; preds = %33, %2
  %8 = load i32, i32* %6, align 4
  %9 = load %struct.snd_card*, %struct.snd_card** %4, align 8
  %10 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %9, i32 0, i32 1
  %11 = load %struct.attribute_group**, %struct.attribute_group*** %10, align 8
  %12 = call i32 @ARRAY_SIZE(%struct.attribute_group** %11)
  %13 = sub nsw i32 %12, 1
  %14 = icmp slt i32 %8, %13
  br i1 %14, label %15, label %36

15:                                               ; preds = %7
  %16 = load %struct.snd_card*, %struct.snd_card** %4, align 8
  %17 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %16, i32 0, i32 1
  %18 = load %struct.attribute_group**, %struct.attribute_group*** %17, align 8
  %19 = load i32, i32* %6, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.attribute_group*, %struct.attribute_group** %18, i64 %20
  %22 = load %struct.attribute_group*, %struct.attribute_group** %21, align 8
  %23 = icmp ne %struct.attribute_group* %22, null
  br i1 %23, label %32, label %24

24:                                               ; preds = %15
  %25 = load %struct.attribute_group*, %struct.attribute_group** %5, align 8
  %26 = load %struct.snd_card*, %struct.snd_card** %4, align 8
  %27 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %26, i32 0, i32 1
  %28 = load %struct.attribute_group**, %struct.attribute_group*** %27, align 8
  %29 = load i32, i32* %6, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.attribute_group*, %struct.attribute_group** %28, i64 %30
  store %struct.attribute_group* %25, %struct.attribute_group** %31, align 8
  store i32 0, i32* %3, align 4
  br label %43

32:                                               ; preds = %15
  br label %33

33:                                               ; preds = %32
  %34 = load i32, i32* %6, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %6, align 4
  br label %7

36:                                               ; preds = %7
  %37 = load %struct.snd_card*, %struct.snd_card** %4, align 8
  %38 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @dev_err(i32 %39, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %41 = load i32, i32* @ENOSPC, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %3, align 4
  br label %43

43:                                               ; preds = %36, %24
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local i32 @ARRAY_SIZE(%struct.attribute_group**) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
