; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/ti/extr_ams-delta.c_cx81801_receive.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/ti/extr_ams-delta.c_cx81801_receive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 (%struct.tty_struct*, i8*, i8*, i32)* }
%struct.tty_struct = type { %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@cx81801_timer = common dso_local global i32 0, align 4
@cx81801_timeout = common dso_local global i32 0, align 4
@v253_ops = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@ams_delta_hook_switch = common dso_local global i32 0, align 4
@ams_delta_hook_switch_pins = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [83 x i8] c"Failed to link hook switch to DAPM pins, will continue with hook switch unlinked.\0A\00", align 1
@ams_delta_lock = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@ams_delta_muted = common dso_local global i32 0, align 4
@cx81801_cmd_pending = common dso_local global i32 0, align 4
@gpiod_modem_codec = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tty_struct*, i8*, i8*, i32)* @cx81801_receive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cx81801_receive(%struct.tty_struct* %0, i8* %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.tty_struct*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.snd_soc_component*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.tty_struct* %0, %struct.tty_struct** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %13 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %14 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %13, i32 0, i32 0
  %15 = load %struct.snd_soc_component*, %struct.snd_soc_component** %14, align 8
  store %struct.snd_soc_component* %15, %struct.snd_soc_component** %9, align 8
  %16 = load %struct.snd_soc_component*, %struct.snd_soc_component** %9, align 8
  %17 = icmp ne %struct.snd_soc_component* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %4
  br label %94

19:                                               ; preds = %4
  %20 = load %struct.snd_soc_component*, %struct.snd_soc_component** %9, align 8
  %21 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %20, i32 0, i32 1
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %47, label %26

26:                                               ; preds = %19
  %27 = load i32, i32* @cx81801_timeout, align 4
  %28 = call i32 @timer_setup(i32* @cx81801_timer, i32 %27, i32 0)
  %29 = load i32 (%struct.tty_struct*, i8*, i8*, i32)*, i32 (%struct.tty_struct*, i8*, i8*, i32)** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @v253_ops, i32 0, i32 0), align 8
  %30 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %31 = load i8*, i8** %6, align 8
  %32 = load i8*, i8** %7, align 8
  %33 = load i32, i32* %8, align 4
  %34 = call i32 %29(%struct.tty_struct* %30, i8* %31, i8* %32, i32 %33)
  %35 = load i32, i32* @ams_delta_hook_switch_pins, align 4
  %36 = call i32 @ARRAY_SIZE(i32 %35)
  %37 = load i32, i32* @ams_delta_hook_switch_pins, align 4
  %38 = call i32 @snd_soc_jack_add_pins(i32* @ams_delta_hook_switch, i32 %36, i32 %37)
  store i32 %38, i32* %12, align 4
  %39 = load i32, i32* %12, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %26
  %42 = load %struct.snd_soc_component*, %struct.snd_soc_component** %9, align 8
  %43 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @dev_warn(i32 %44, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str, i64 0, i64 0))
  br label %46

46:                                               ; preds = %41, %26
  br label %94

47:                                               ; preds = %19
  %48 = load i32 (%struct.tty_struct*, i8*, i8*, i32)*, i32 (%struct.tty_struct*, i8*, i8*, i32)** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @v253_ops, i32 0, i32 0), align 8
  %49 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %50 = load i8*, i8** %6, align 8
  %51 = load i8*, i8** %7, align 8
  %52 = load i32, i32* %8, align 4
  %53 = call i32 %48(%struct.tty_struct* %49, i8* %50, i8* %51, i32 %52)
  %54 = load i8*, i8** %6, align 8
  %55 = load i32, i32* %8, align 4
  %56 = sub nsw i32 %55, 1
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i8, i8* %54, i64 %57
  store i8* %58, i8** %10, align 8
  br label %59

59:                                               ; preds = %91, %47
  %60 = load i8*, i8** %10, align 8
  %61 = load i8*, i8** %6, align 8
  %62 = icmp uge i8* %60, %61
  br i1 %62, label %63, label %94

63:                                               ; preds = %59
  %64 = load i8*, i8** %10, align 8
  %65 = load i8, i8* %64, align 1
  %66 = zext i8 %65 to i32
  %67 = icmp ne i32 %66, 13
  br i1 %67, label %68, label %69

68:                                               ; preds = %63
  br label %91

69:                                               ; preds = %63
  %70 = call i32 @spin_lock_bh(i32* @ams_delta_lock)
  %71 = load i64, i64* @jiffies, align 8
  %72 = call i64 @msecs_to_jiffies(i32 150)
  %73 = add nsw i64 %71, %72
  %74 = call i32 @mod_timer(i32* @cx81801_timer, i64 %73)
  %75 = load i32, i32* @ams_delta_muted, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %81, label %77

77:                                               ; preds = %69
  %78 = load i32, i32* @cx81801_cmd_pending, align 4
  %79 = icmp ne i32 %78, 0
  %80 = xor i1 %79, true
  br label %81

81:                                               ; preds = %77, %69
  %82 = phi i1 [ false, %69 ], [ %80, %77 ]
  %83 = zext i1 %82 to i32
  store i32 %83, i32* %11, align 4
  store i32 1, i32* @cx81801_cmd_pending, align 4
  %84 = call i32 @spin_unlock_bh(i32* @ams_delta_lock)
  %85 = load i32, i32* %11, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %81
  %88 = load i32, i32* @gpiod_modem_codec, align 4
  %89 = call i32 @gpiod_set_value(i32 %88, i32 1)
  br label %90

90:                                               ; preds = %87, %81
  br label %94

91:                                               ; preds = %68
  %92 = load i8*, i8** %10, align 8
  %93 = getelementptr inbounds i8, i8* %92, i32 -1
  store i8* %93, i8** %10, align 8
  br label %59

94:                                               ; preds = %18, %46, %90, %59
  ret void
}

declare dso_local i32 @timer_setup(i32*, i32, i32) #1

declare dso_local i32 @snd_soc_jack_add_pins(i32*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @gpiod_set_value(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
