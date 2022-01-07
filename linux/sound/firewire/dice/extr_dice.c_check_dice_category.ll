; ModuleID = '/home/carl/AnghaBench/linux/sound/firewire/dice/extr_dice.c_check_dice_category.c'
source_filename = "/home/carl/AnghaBench/linux/sound/firewire/dice/extr_dice.c_check_dice_category.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fw_unit = type { i32 }
%struct.fw_device = type { i32* }
%struct.fw_csr_iterator = type { i32 }

@OUI_WEISS = common dso_local global i32 0, align 4
@WEISS_CATEGORY_ID = common dso_local global i32 0, align 4
@OUI_LOUD = common dso_local global i32 0, align 4
@LOUD_CATEGORY_ID = common dso_local global i32 0, align 4
@DICE_CATEGORY_ID = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fw_unit*)* @check_dice_category to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_dice_category(%struct.fw_unit* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fw_unit*, align 8
  %4 = alloca %struct.fw_device*, align 8
  %5 = alloca %struct.fw_csr_iterator, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.fw_unit* %0, %struct.fw_unit** %3, align 8
  %11 = load %struct.fw_unit*, %struct.fw_unit** %3, align 8
  %12 = call %struct.fw_device* @fw_parent_device(%struct.fw_unit* %11)
  store %struct.fw_device* %12, %struct.fw_device** %4, align 8
  store i32 -1, i32* %8, align 4
  store i32 -1, i32* %9, align 4
  %13 = load %struct.fw_unit*, %struct.fw_unit** %3, align 8
  %14 = getelementptr inbounds %struct.fw_unit, %struct.fw_unit* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @fw_csr_iterator_init(%struct.fw_csr_iterator* %5, i32 %15)
  br label %17

17:                                               ; preds = %26, %1
  %18 = call i64 @fw_csr_iterator_next(%struct.fw_csr_iterator* %5, i32* %6, i32* %7)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %27

20:                                               ; preds = %17
  %21 = load i32, i32* %6, align 4
  switch i32 %21, label %26 [
    i32 128, label %22
    i32 129, label %24
  ]

22:                                               ; preds = %20
  %23 = load i32, i32* %7, align 4
  store i32 %23, i32* %8, align 4
  br label %26

24:                                               ; preds = %20
  %25 = load i32, i32* %7, align 4
  store i32 %25, i32* %9, align 4
  br label %26

26:                                               ; preds = %20, %24, %22
  br label %17

27:                                               ; preds = %17
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* @OUI_WEISS, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %27
  %32 = load i32, i32* @WEISS_CATEGORY_ID, align 4
  store i32 %32, i32* %10, align 4
  br label %42

33:                                               ; preds = %27
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* @OUI_LOUD, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %33
  %38 = load i32, i32* @LOUD_CATEGORY_ID, align 4
  store i32 %38, i32* %10, align 4
  br label %41

39:                                               ; preds = %33
  %40 = load i32, i32* @DICE_CATEGORY_ID, align 4
  store i32 %40, i32* %10, align 4
  br label %41

41:                                               ; preds = %39, %37
  br label %42

42:                                               ; preds = %41, %31
  %43 = load %struct.fw_device*, %struct.fw_device** %4, align 8
  %44 = getelementptr inbounds %struct.fw_device, %struct.fw_device* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 3
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %8, align 4
  %49 = shl i32 %48, 8
  %50 = load i32, i32* %10, align 4
  %51 = or i32 %49, %50
  %52 = icmp ne i32 %47, %51
  br i1 %52, label %62, label %53

53:                                               ; preds = %42
  %54 = load %struct.fw_device*, %struct.fw_device** %4, align 8
  %55 = getelementptr inbounds %struct.fw_device, %struct.fw_device* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 4
  %58 = load i32, i32* %57, align 4
  %59 = ashr i32 %58, 22
  %60 = load i32, i32* %9, align 4
  %61 = icmp ne i32 %59, %60
  br i1 %61, label %62, label %65

62:                                               ; preds = %53, %42
  %63 = load i32, i32* @ENODEV, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %2, align 4
  br label %66

65:                                               ; preds = %53
  store i32 0, i32* %2, align 4
  br label %66

66:                                               ; preds = %65, %62
  %67 = load i32, i32* %2, align 4
  ret i32 %67
}

declare dso_local %struct.fw_device* @fw_parent_device(%struct.fw_unit*) #1

declare dso_local i32 @fw_csr_iterator_init(%struct.fw_csr_iterator*, i32) #1

declare dso_local i64 @fw_csr_iterator_next(%struct.fw_csr_iterator*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
