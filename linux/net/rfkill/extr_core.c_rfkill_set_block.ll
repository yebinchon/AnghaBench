; ModuleID = '/home/carl/AnghaBench/linux/net/rfkill/extr_core.c_rfkill_set_block.c'
source_filename = "/home/carl/AnghaBench/linux/net/rfkill/extr_core.c_rfkill_set_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rfkill = type { i32, i32, i32, %struct.TYPE_8__*, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i32 (i32, i32)*, i32 (%struct.rfkill*, i32)* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@PM_EVENT_SLEEP = common dso_local global i32 0, align 4
@RFKILL_BLOCK_SW = common dso_local global i32 0, align 4
@RFKILL_BLOCK_SW_PREV = common dso_local global i32 0, align 4
@RFKILL_BLOCK_SW_SETCALL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rfkill*, i32)* @rfkill_set_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rfkill_set_block(%struct.rfkill* %0, i32 %1) #0 {
  %3 = alloca %struct.rfkill*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.rfkill* %0, %struct.rfkill** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.rfkill*, %struct.rfkill** %3, align 8
  %10 = getelementptr inbounds %struct.rfkill, %struct.rfkill* %9, i32 0, i32 4
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @PM_EVENT_SLEEP, align 4
  %16 = and i32 %14, %15
  %17 = call i64 @unlikely(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  br label %157

20:                                               ; preds = %2
  %21 = load %struct.rfkill*, %struct.rfkill** %3, align 8
  %22 = getelementptr inbounds %struct.rfkill, %struct.rfkill* %21, i32 0, i32 3
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 1
  %25 = load i32 (%struct.rfkill*, i32)*, i32 (%struct.rfkill*, i32)** %24, align 8
  %26 = icmp ne i32 (%struct.rfkill*, i32)* %25, null
  br i1 %26, label %27, label %38

27:                                               ; preds = %20
  %28 = load %struct.rfkill*, %struct.rfkill** %3, align 8
  %29 = getelementptr inbounds %struct.rfkill, %struct.rfkill* %28, i32 0, i32 3
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 1
  %32 = load i32 (%struct.rfkill*, i32)*, i32 (%struct.rfkill*, i32)** %31, align 8
  %33 = load %struct.rfkill*, %struct.rfkill** %3, align 8
  %34 = load %struct.rfkill*, %struct.rfkill** %3, align 8
  %35 = getelementptr inbounds %struct.rfkill, %struct.rfkill* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = call i32 %32(%struct.rfkill* %33, i32 %36)
  br label %38

38:                                               ; preds = %27, %20
  %39 = load %struct.rfkill*, %struct.rfkill** %3, align 8
  %40 = getelementptr inbounds %struct.rfkill, %struct.rfkill* %39, i32 0, i32 1
  %41 = load i64, i64* %5, align 8
  %42 = call i32 @spin_lock_irqsave(i32* %40, i64 %41)
  %43 = load %struct.rfkill*, %struct.rfkill** %3, align 8
  %44 = getelementptr inbounds %struct.rfkill, %struct.rfkill* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @RFKILL_BLOCK_SW, align 4
  %47 = and i32 %45, %46
  store i32 %47, i32* %6, align 4
  %48 = load i32, i32* %6, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %38
  %51 = load i32, i32* @RFKILL_BLOCK_SW_PREV, align 4
  %52 = load %struct.rfkill*, %struct.rfkill** %3, align 8
  %53 = getelementptr inbounds %struct.rfkill, %struct.rfkill* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = or i32 %54, %51
  store i32 %55, i32* %53, align 8
  br label %63

56:                                               ; preds = %38
  %57 = load i32, i32* @RFKILL_BLOCK_SW_PREV, align 4
  %58 = xor i32 %57, -1
  %59 = load %struct.rfkill*, %struct.rfkill** %3, align 8
  %60 = getelementptr inbounds %struct.rfkill, %struct.rfkill* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = and i32 %61, %58
  store i32 %62, i32* %60, align 8
  br label %63

63:                                               ; preds = %56, %50
  %64 = load i32, i32* %4, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %63
  %67 = load i32, i32* @RFKILL_BLOCK_SW, align 4
  %68 = load %struct.rfkill*, %struct.rfkill** %3, align 8
  %69 = getelementptr inbounds %struct.rfkill, %struct.rfkill* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = or i32 %70, %67
  store i32 %71, i32* %69, align 8
  br label %79

72:                                               ; preds = %63
  %73 = load i32, i32* @RFKILL_BLOCK_SW, align 4
  %74 = xor i32 %73, -1
  %75 = load %struct.rfkill*, %struct.rfkill** %3, align 8
  %76 = getelementptr inbounds %struct.rfkill, %struct.rfkill* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = and i32 %77, %74
  store i32 %78, i32* %76, align 8
  br label %79

79:                                               ; preds = %72, %66
  %80 = load i32, i32* @RFKILL_BLOCK_SW_SETCALL, align 4
  %81 = load %struct.rfkill*, %struct.rfkill** %3, align 8
  %82 = getelementptr inbounds %struct.rfkill, %struct.rfkill* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = or i32 %83, %80
  store i32 %84, i32* %82, align 8
  %85 = load %struct.rfkill*, %struct.rfkill** %3, align 8
  %86 = getelementptr inbounds %struct.rfkill, %struct.rfkill* %85, i32 0, i32 1
  %87 = load i64, i64* %5, align 8
  %88 = call i32 @spin_unlock_irqrestore(i32* %86, i64 %87)
  %89 = load %struct.rfkill*, %struct.rfkill** %3, align 8
  %90 = getelementptr inbounds %struct.rfkill, %struct.rfkill* %89, i32 0, i32 3
  %91 = load %struct.TYPE_8__*, %struct.TYPE_8__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 0
  %93 = load i32 (i32, i32)*, i32 (i32, i32)** %92, align 8
  %94 = load %struct.rfkill*, %struct.rfkill** %3, align 8
  %95 = getelementptr inbounds %struct.rfkill, %struct.rfkill* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 8
  %97 = load i32, i32* %4, align 4
  %98 = call i32 %93(i32 %96, i32 %97)
  store i32 %98, i32* %8, align 4
  %99 = load %struct.rfkill*, %struct.rfkill** %3, align 8
  %100 = getelementptr inbounds %struct.rfkill, %struct.rfkill* %99, i32 0, i32 1
  %101 = load i64, i64* %5, align 8
  %102 = call i32 @spin_lock_irqsave(i32* %100, i64 %101)
  %103 = load i32, i32* %8, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %126

105:                                              ; preds = %79
  %106 = load %struct.rfkill*, %struct.rfkill** %3, align 8
  %107 = getelementptr inbounds %struct.rfkill, %struct.rfkill* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = load i32, i32* @RFKILL_BLOCK_SW_PREV, align 4
  %110 = and i32 %108, %109
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %118

112:                                              ; preds = %105
  %113 = load i32, i32* @RFKILL_BLOCK_SW, align 4
  %114 = load %struct.rfkill*, %struct.rfkill** %3, align 8
  %115 = getelementptr inbounds %struct.rfkill, %struct.rfkill* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = or i32 %116, %113
  store i32 %117, i32* %115, align 8
  br label %125

118:                                              ; preds = %105
  %119 = load i32, i32* @RFKILL_BLOCK_SW, align 4
  %120 = xor i32 %119, -1
  %121 = load %struct.rfkill*, %struct.rfkill** %3, align 8
  %122 = getelementptr inbounds %struct.rfkill, %struct.rfkill* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = and i32 %123, %120
  store i32 %124, i32* %122, align 8
  br label %125

125:                                              ; preds = %118, %112
  br label %126

126:                                              ; preds = %125, %79
  %127 = load i32, i32* @RFKILL_BLOCK_SW_SETCALL, align 4
  %128 = xor i32 %127, -1
  %129 = load %struct.rfkill*, %struct.rfkill** %3, align 8
  %130 = getelementptr inbounds %struct.rfkill, %struct.rfkill* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = and i32 %131, %128
  store i32 %132, i32* %130, align 8
  %133 = load i32, i32* @RFKILL_BLOCK_SW_PREV, align 4
  %134 = xor i32 %133, -1
  %135 = load %struct.rfkill*, %struct.rfkill** %3, align 8
  %136 = getelementptr inbounds %struct.rfkill, %struct.rfkill* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = and i32 %137, %134
  store i32 %138, i32* %136, align 8
  %139 = load %struct.rfkill*, %struct.rfkill** %3, align 8
  %140 = getelementptr inbounds %struct.rfkill, %struct.rfkill* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = load i32, i32* @RFKILL_BLOCK_SW, align 4
  %143 = and i32 %141, %142
  store i32 %143, i32* %7, align 4
  %144 = load %struct.rfkill*, %struct.rfkill** %3, align 8
  %145 = getelementptr inbounds %struct.rfkill, %struct.rfkill* %144, i32 0, i32 1
  %146 = load i64, i64* %5, align 8
  %147 = call i32 @spin_unlock_irqrestore(i32* %145, i64 %146)
  %148 = load %struct.rfkill*, %struct.rfkill** %3, align 8
  %149 = call i32 @rfkill_led_trigger_event(%struct.rfkill* %148)
  %150 = call i32 (...) @rfkill_global_led_trigger_event()
  %151 = load i32, i32* %6, align 4
  %152 = load i32, i32* %7, align 4
  %153 = icmp ne i32 %151, %152
  br i1 %153, label %154, label %157

154:                                              ; preds = %126
  %155 = load %struct.rfkill*, %struct.rfkill** %3, align 8
  %156 = call i32 @rfkill_event(%struct.rfkill* %155)
  br label %157

157:                                              ; preds = %19, %154, %126
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @rfkill_led_trigger_event(%struct.rfkill*) #1

declare dso_local i32 @rfkill_global_led_trigger_event(...) #1

declare dso_local i32 @rfkill_event(%struct.rfkill*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
