; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_auto_parser.c_snd_hda_get_input_pin_attr.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_auto_parser.c_snd_hda_get_input_pin_attr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AC_JACK_PORT_NONE = common dso_local global i32 0, align 4
@INPUT_PIN_ATTR_UNUSED = common dso_local global i32 0, align 4
@AC_JACK_PORT_FIXED = common dso_local global i32 0, align 4
@AC_JACK_PORT_BOTH = common dso_local global i32 0, align 4
@INPUT_PIN_ATTR_INT = common dso_local global i32 0, align 4
@AC_JACK_LOC_INTERNAL = common dso_local global i32 0, align 4
@AC_JACK_LOC_SEPARATE = common dso_local global i32 0, align 4
@INPUT_PIN_ATTR_DOCK = common dso_local global i32 0, align 4
@AC_JACK_LOC_REAR = common dso_local global i32 0, align 4
@INPUT_PIN_ATTR_REAR = common dso_local global i32 0, align 4
@AC_JACK_LOC_FRONT = common dso_local global i32 0, align 4
@INPUT_PIN_ATTR_FRONT = common dso_local global i32 0, align 4
@INPUT_PIN_ATTR_NORMAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_hda_get_input_pin_attr(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call i32 @get_defcfg_location(i32 %6)
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %3, align 4
  %9 = call i32 @get_defcfg_connect(i32 %8)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* @AC_JACK_PORT_NONE, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load i32, i32* @INPUT_PIN_ATTR_UNUSED, align 4
  store i32 %14, i32* %2, align 4
  br label %53

15:                                               ; preds = %1
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @AC_JACK_PORT_FIXED, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %23, label %19

19:                                               ; preds = %15
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* @AC_JACK_PORT_BOTH, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %19, %15
  %24 = load i32, i32* @INPUT_PIN_ATTR_INT, align 4
  store i32 %24, i32* %2, align 4
  br label %53

25:                                               ; preds = %19
  %26 = load i32, i32* %4, align 4
  %27 = and i32 %26, 48
  %28 = load i32, i32* @AC_JACK_LOC_INTERNAL, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %25
  %31 = load i32, i32* @INPUT_PIN_ATTR_INT, align 4
  store i32 %31, i32* %2, align 4
  br label %53

32:                                               ; preds = %25
  %33 = load i32, i32* %4, align 4
  %34 = and i32 %33, 48
  %35 = load i32, i32* @AC_JACK_LOC_SEPARATE, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %32
  %38 = load i32, i32* @INPUT_PIN_ATTR_DOCK, align 4
  store i32 %38, i32* %2, align 4
  br label %53

39:                                               ; preds = %32
  %40 = load i32, i32* %4, align 4
  %41 = load i32, i32* @AC_JACK_LOC_REAR, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %39
  %44 = load i32, i32* @INPUT_PIN_ATTR_REAR, align 4
  store i32 %44, i32* %2, align 4
  br label %53

45:                                               ; preds = %39
  %46 = load i32, i32* %4, align 4
  %47 = load i32, i32* @AC_JACK_LOC_FRONT, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %51

49:                                               ; preds = %45
  %50 = load i32, i32* @INPUT_PIN_ATTR_FRONT, align 4
  store i32 %50, i32* %2, align 4
  br label %53

51:                                               ; preds = %45
  %52 = load i32, i32* @INPUT_PIN_ATTR_NORMAL, align 4
  store i32 %52, i32* %2, align 4
  br label %53

53:                                               ; preds = %51, %49, %43, %37, %30, %23, %13
  %54 = load i32, i32* %2, align 4
  ret i32 %54
}

declare dso_local i32 @get_defcfg_location(i32) #1

declare dso_local i32 @get_defcfg_connect(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
