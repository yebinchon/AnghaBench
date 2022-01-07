; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/extr_azt3328.c_snd_azf3328_ctrl_reg_6AH_update.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/extr_azt3328.c_snd_azf3328_ctrl_reg_6AH_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_azf3328 = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [47 x i8] c"6AH_update mask 0x%04x do_mask %d: val 0x%04x\0A\00", align 1
@IDX_IO_6AH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_azf3328*, i32, i32)* @snd_azf3328_ctrl_reg_6AH_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_azf3328_ctrl_reg_6AH_update(%struct.snd_azf3328* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.snd_azf3328*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.snd_azf3328* %0, %struct.snd_azf3328** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %6, align 4
  %9 = icmp ne i32 %8, 0
  %10 = xor i1 %9, true
  %11 = zext i1 %10 to i32
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* %7, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %3
  %15 = load i32, i32* %5, align 4
  %16 = load %struct.snd_azf3328*, %struct.snd_azf3328** %4, align 8
  %17 = getelementptr inbounds %struct.snd_azf3328, %struct.snd_azf3328* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = or i32 %18, %15
  store i32 %19, i32* %17, align 8
  br label %27

20:                                               ; preds = %3
  %21 = load i32, i32* %5, align 4
  %22 = xor i32 %21, -1
  %23 = load %struct.snd_azf3328*, %struct.snd_azf3328** %4, align 8
  %24 = getelementptr inbounds %struct.snd_azf3328, %struct.snd_azf3328* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = and i32 %25, %22
  store i32 %26, i32* %24, align 8
  br label %27

27:                                               ; preds = %20, %14
  %28 = load %struct.snd_azf3328*, %struct.snd_azf3328** %4, align 8
  %29 = getelementptr inbounds %struct.snd_azf3328, %struct.snd_azf3328* %28, i32 0, i32 1
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* %7, align 4
  %35 = load %struct.snd_azf3328*, %struct.snd_azf3328** %4, align 8
  %36 = getelementptr inbounds %struct.snd_azf3328, %struct.snd_azf3328* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @dev_dbg(i32 %32, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %33, i32 %34, i32 %37)
  %39 = load %struct.snd_azf3328*, %struct.snd_azf3328** %4, align 8
  %40 = load i32, i32* @IDX_IO_6AH, align 4
  %41 = load %struct.snd_azf3328*, %struct.snd_azf3328** %4, align 8
  %42 = getelementptr inbounds %struct.snd_azf3328, %struct.snd_azf3328* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @snd_azf3328_ctrl_outw(%struct.snd_azf3328* %39, i32 %40, i32 %43)
  ret void
}

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @snd_azf3328_ctrl_outw(%struct.snd_azf3328*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
