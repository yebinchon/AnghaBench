; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/extr_ak4531_codec.c_snd_ak4531_proc_init.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/extr_ak4531_codec.c_snd_ak4531_proc_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_card = type { i32 }
%struct.snd_ak4531 = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"ak4531\00", align 1
@snd_ak4531_proc_read = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_card*, %struct.snd_ak4531*)* @snd_ak4531_proc_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_ak4531_proc_init(%struct.snd_card* %0, %struct.snd_ak4531* %1) #0 {
  %3 = alloca %struct.snd_card*, align 8
  %4 = alloca %struct.snd_ak4531*, align 8
  store %struct.snd_card* %0, %struct.snd_card** %3, align 8
  store %struct.snd_ak4531* %1, %struct.snd_ak4531** %4, align 8
  %5 = load %struct.snd_card*, %struct.snd_card** %3, align 8
  %6 = load %struct.snd_ak4531*, %struct.snd_ak4531** %4, align 8
  %7 = load i32, i32* @snd_ak4531_proc_read, align 4
  %8 = call i32 @snd_card_ro_proc_new(%struct.snd_card* %5, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), %struct.snd_ak4531* %6, i32 %7)
  ret void
}

declare dso_local i32 @snd_card_ro_proc_new(%struct.snd_card*, i8*, %struct.snd_ak4531*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
