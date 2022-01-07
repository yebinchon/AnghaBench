; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/extr_ens1370.c_snd_ensoniq_midi_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/extr_ens1370.c_snd_ensoniq_midi_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ensoniq = type { i32, i8, i32, i32, i32, %struct.snd_rawmidi* }
%struct.snd_rawmidi = type { i32 }

@ES_MODE_INPUT = common dso_local global i32 0, align 4
@ES_RXRDY = common dso_local global i8 0, align 1
@UART_STATUS = common dso_local global i32 0, align 4
@UART_DATA = common dso_local global i32 0, align 4
@ES_MODE_OUTPUT = common dso_local global i32 0, align 4
@ES_TXRDY = common dso_local global i8 0, align 1
@ES_TXINTENM = common dso_local global i8 0, align 1
@UART_CONTROL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ensoniq*)* @snd_ensoniq_midi_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_ensoniq_midi_interrupt(%struct.ensoniq* %0) #0 {
  %2 = alloca %struct.ensoniq*, align 8
  %3 = alloca %struct.snd_rawmidi*, align 8
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  store %struct.ensoniq* %0, %struct.ensoniq** %2, align 8
  %7 = load %struct.ensoniq*, %struct.ensoniq** %2, align 8
  %8 = getelementptr inbounds %struct.ensoniq, %struct.ensoniq* %7, i32 0, i32 5
  %9 = load %struct.snd_rawmidi*, %struct.snd_rawmidi** %8, align 8
  store %struct.snd_rawmidi* %9, %struct.snd_rawmidi** %3, align 8
  %10 = load %struct.snd_rawmidi*, %struct.snd_rawmidi** %3, align 8
  %11 = icmp eq %struct.snd_rawmidi* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  br label %130

13:                                               ; preds = %1
  %14 = load %struct.ensoniq*, %struct.ensoniq** %2, align 8
  %15 = getelementptr inbounds %struct.ensoniq, %struct.ensoniq* %14, i32 0, i32 2
  %16 = call i32 @spin_lock(i32* %15)
  %17 = load %struct.ensoniq*, %struct.ensoniq** %2, align 8
  %18 = getelementptr inbounds %struct.ensoniq, %struct.ensoniq* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @ES_MODE_INPUT, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %13
  %24 = load i8, i8* @ES_RXRDY, align 1
  %25 = zext i8 %24 to i32
  br label %27

26:                                               ; preds = %13
  br label %27

27:                                               ; preds = %26, %23
  %28 = phi i32 [ %25, %23 ], [ 0, %26 ]
  %29 = trunc i32 %28 to i8
  store i8 %29, i8* %5, align 1
  br label %30

30:                                               ; preds = %45, %27
  %31 = load i8, i8* %5, align 1
  %32 = icmp ne i8 %31, 0
  br i1 %32, label %33, label %54

33:                                               ; preds = %30
  %34 = load %struct.ensoniq*, %struct.ensoniq** %2, align 8
  %35 = load i32, i32* @UART_STATUS, align 4
  %36 = call i32 @ES_REG(%struct.ensoniq* %34, i32 %35)
  %37 = call zeroext i8 @inb(i32 %36)
  store i8 %37, i8* %4, align 1
  %38 = load i8, i8* %4, align 1
  %39 = zext i8 %38 to i32
  %40 = load i8, i8* %5, align 1
  %41 = zext i8 %40 to i32
  %42 = and i32 %39, %41
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %33
  br label %54

45:                                               ; preds = %33
  %46 = load %struct.ensoniq*, %struct.ensoniq** %2, align 8
  %47 = load i32, i32* @UART_DATA, align 4
  %48 = call i32 @ES_REG(%struct.ensoniq* %46, i32 %47)
  %49 = call zeroext i8 @inb(i32 %48)
  store i8 %49, i8* %6, align 1
  %50 = load %struct.ensoniq*, %struct.ensoniq** %2, align 8
  %51 = getelementptr inbounds %struct.ensoniq, %struct.ensoniq* %50, i32 0, i32 4
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @snd_rawmidi_receive(i32 %52, i8* %6, i32 1)
  br label %30

54:                                               ; preds = %44, %30
  %55 = load %struct.ensoniq*, %struct.ensoniq** %2, align 8
  %56 = getelementptr inbounds %struct.ensoniq, %struct.ensoniq* %55, i32 0, i32 2
  %57 = call i32 @spin_unlock(i32* %56)
  %58 = load %struct.ensoniq*, %struct.ensoniq** %2, align 8
  %59 = getelementptr inbounds %struct.ensoniq, %struct.ensoniq* %58, i32 0, i32 2
  %60 = call i32 @spin_lock(i32* %59)
  %61 = load %struct.ensoniq*, %struct.ensoniq** %2, align 8
  %62 = getelementptr inbounds %struct.ensoniq, %struct.ensoniq* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @ES_MODE_OUTPUT, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %54
  %68 = load i8, i8* @ES_TXRDY, align 1
  %69 = zext i8 %68 to i32
  br label %71

70:                                               ; preds = %54
  br label %71

71:                                               ; preds = %70, %67
  %72 = phi i32 [ %69, %67 ], [ 0, %70 ]
  %73 = trunc i32 %72 to i8
  store i8 %73, i8* %5, align 1
  br label %74

74:                                               ; preds = %125, %71
  %75 = load i8, i8* %5, align 1
  %76 = icmp ne i8 %75, 0
  br i1 %76, label %77, label %126

77:                                               ; preds = %74
  %78 = load %struct.ensoniq*, %struct.ensoniq** %2, align 8
  %79 = load i32, i32* @UART_STATUS, align 4
  %80 = call i32 @ES_REG(%struct.ensoniq* %78, i32 %79)
  %81 = call zeroext i8 @inb(i32 %80)
  store i8 %81, i8* %4, align 1
  %82 = load i8, i8* %4, align 1
  %83 = zext i8 %82 to i32
  %84 = load i8, i8* %5, align 1
  %85 = zext i8 %84 to i32
  %86 = and i32 %83, %85
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %77
  br label %126

89:                                               ; preds = %77
  %90 = load %struct.ensoniq*, %struct.ensoniq** %2, align 8
  %91 = getelementptr inbounds %struct.ensoniq, %struct.ensoniq* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @snd_rawmidi_transmit(i32 %92, i8* %6, i32 1)
  %94 = icmp ne i32 %93, 1
  br i1 %94, label %95, label %119

95:                                               ; preds = %89
  %96 = load i8, i8* @ES_TXINTENM, align 1
  %97 = zext i8 %96 to i32
  %98 = xor i32 %97, -1
  %99 = load %struct.ensoniq*, %struct.ensoniq** %2, align 8
  %100 = getelementptr inbounds %struct.ensoniq, %struct.ensoniq* %99, i32 0, i32 1
  %101 = load i8, i8* %100, align 4
  %102 = zext i8 %101 to i32
  %103 = and i32 %102, %98
  %104 = trunc i32 %103 to i8
  store i8 %104, i8* %100, align 4
  %105 = load %struct.ensoniq*, %struct.ensoniq** %2, align 8
  %106 = getelementptr inbounds %struct.ensoniq, %struct.ensoniq* %105, i32 0, i32 1
  %107 = load i8, i8* %106, align 4
  %108 = load %struct.ensoniq*, %struct.ensoniq** %2, align 8
  %109 = load i32, i32* @UART_CONTROL, align 4
  %110 = call i32 @ES_REG(%struct.ensoniq* %108, i32 %109)
  %111 = call i32 @outb(i8 zeroext %107, i32 %110)
  %112 = load i8, i8* @ES_TXRDY, align 1
  %113 = zext i8 %112 to i32
  %114 = xor i32 %113, -1
  %115 = load i8, i8* %5, align 1
  %116 = zext i8 %115 to i32
  %117 = and i32 %116, %114
  %118 = trunc i32 %117 to i8
  store i8 %118, i8* %5, align 1
  br label %125

119:                                              ; preds = %89
  %120 = load i8, i8* %6, align 1
  %121 = load %struct.ensoniq*, %struct.ensoniq** %2, align 8
  %122 = load i32, i32* @UART_DATA, align 4
  %123 = call i32 @ES_REG(%struct.ensoniq* %121, i32 %122)
  %124 = call i32 @outb(i8 zeroext %120, i32 %123)
  br label %125

125:                                              ; preds = %119, %95
  br label %74

126:                                              ; preds = %88, %74
  %127 = load %struct.ensoniq*, %struct.ensoniq** %2, align 8
  %128 = getelementptr inbounds %struct.ensoniq, %struct.ensoniq* %127, i32 0, i32 2
  %129 = call i32 @spin_unlock(i32* %128)
  br label %130

130:                                              ; preds = %126, %12
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local zeroext i8 @inb(i32) #1

declare dso_local i32 @ES_REG(%struct.ensoniq*, i32) #1

declare dso_local i32 @snd_rawmidi_receive(i32, i8*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @snd_rawmidi_transmit(i32, i8*, i32) #1

declare dso_local i32 @outb(i8 zeroext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
