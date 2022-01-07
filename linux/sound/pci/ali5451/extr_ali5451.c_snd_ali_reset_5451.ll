; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ali5451/extr_ali5451.c_snd_ali_reset_5451.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ali5451/extr_ali5451.c_snd_ali_reset_5451.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_ali = type { %struct.pci_dev*, %struct.pci_dev* }
%struct.pci_dev = type { i32 }

@AC97_POWERDOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_ali*)* @snd_ali_reset_5451 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_ali_reset_5451(%struct.snd_ali* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_ali*, align 8
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca i16, align 2
  %6 = alloca i16, align 2
  %7 = alloca i32, align 4
  store %struct.snd_ali* %0, %struct.snd_ali** %3, align 8
  %8 = load %struct.snd_ali*, %struct.snd_ali** %3, align 8
  %9 = getelementptr inbounds %struct.snd_ali, %struct.snd_ali* %8, i32 0, i32 1
  %10 = load %struct.pci_dev*, %struct.pci_dev** %9, align 8
  store %struct.pci_dev* %10, %struct.pci_dev** %4, align 8
  %11 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %12 = icmp ne %struct.pci_dev* %11, null
  br i1 %12, label %13, label %28

13:                                               ; preds = %1
  %14 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %15 = call i32 @pci_read_config_dword(%struct.pci_dev* %14, i32 124, i32* %7)
  %16 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %17 = load i32, i32* %7, align 4
  %18 = or i32 %17, 134217728
  %19 = call i32 @pci_write_config_dword(%struct.pci_dev* %16, i32 124, i32 %18)
  %20 = call i32 @mdelay(i32 5)
  %21 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %22 = call i32 @pci_read_config_dword(%struct.pci_dev* %21, i32 124, i32* %7)
  %23 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %24 = load i32, i32* %7, align 4
  %25 = and i32 %24, -134217729
  %26 = call i32 @pci_write_config_dword(%struct.pci_dev* %23, i32 124, i32 %25)
  %27 = call i32 @mdelay(i32 5)
  br label %28

28:                                               ; preds = %13, %1
  %29 = load %struct.snd_ali*, %struct.snd_ali** %3, align 8
  %30 = getelementptr inbounds %struct.snd_ali, %struct.snd_ali* %29, i32 0, i32 0
  %31 = load %struct.pci_dev*, %struct.pci_dev** %30, align 8
  store %struct.pci_dev* %31, %struct.pci_dev** %4, align 8
  %32 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %33 = call i32 @pci_read_config_dword(%struct.pci_dev* %32, i32 68, i32* %7)
  %34 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %35 = load i32, i32* %7, align 4
  %36 = or i32 %35, 786432
  %37 = call i32 @pci_write_config_dword(%struct.pci_dev* %34, i32 68, i32 %36)
  %38 = call i32 @udelay(i32 500)
  %39 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %40 = call i32 @pci_read_config_dword(%struct.pci_dev* %39, i32 68, i32* %7)
  %41 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %42 = load i32, i32* %7, align 4
  %43 = and i32 %42, -262145
  %44 = call i32 @pci_write_config_dword(%struct.pci_dev* %41, i32 68, i32 %43)
  %45 = call i32 @mdelay(i32 5)
  store i16 200, i16* %5, align 2
  br label %46

46:                                               ; preds = %59, %28
  %47 = load i16, i16* %5, align 2
  %48 = add i16 %47, -1
  store i16 %48, i16* %5, align 2
  %49 = icmp ne i16 %47, 0
  br i1 %49, label %50, label %61

50:                                               ; preds = %46
  %51 = load %struct.snd_ali*, %struct.snd_ali** %3, align 8
  %52 = load i32, i32* @AC97_POWERDOWN, align 4
  %53 = call zeroext i16 @snd_ali_codec_peek(%struct.snd_ali* %51, i32 0, i32 %52)
  store i16 %53, i16* %6, align 2
  %54 = load i16, i16* %6, align 2
  %55 = zext i16 %54 to i32
  %56 = and i32 %55, 15
  %57 = icmp eq i32 %56, 15
  br i1 %57, label %58, label %59

58:                                               ; preds = %50
  store i32 0, i32* %2, align 4
  br label %62

59:                                               ; preds = %50
  %60 = call i32 @mdelay(i32 5)
  br label %46

61:                                               ; preds = %46
  store i32 0, i32* %2, align 4
  br label %62

62:                                               ; preds = %61, %58
  %63 = load i32, i32* %2, align 4
  ret i32 %63
}

declare dso_local i32 @pci_read_config_dword(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @pci_write_config_dword(%struct.pci_dev*, i32, i32) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local zeroext i16 @snd_ali_codec_peek(%struct.snd_ali*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
