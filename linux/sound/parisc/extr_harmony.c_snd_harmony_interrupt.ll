; ModuleID = '/home/carl/AnghaBench/linux/sound/parisc/extr_harmony.c_snd_harmony_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/sound/parisc/extr_harmony.c_snd_harmony_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_harmony = type { i32, %struct.TYPE_12__, %struct.TYPE_11__, i64, %struct.TYPE_10__, %struct.TYPE_9__, %struct.TYPE_8__, i64, %struct.TYPE_7__ }
%struct.TYPE_12__ = type { i32, i32, i32, i32 }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_10__ = type { i32, i64, i32, i64 }
%struct.TYPE_9__ = type { i64, i64 }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_7__ = type { i32, i64, i32, i64 }

@HARMONY_DSTATUS = common dso_local global i32 0, align 4
@HARMONY_DSTATUS_PN = common dso_local global i32 0, align 4
@HARMONY_PNXTADD = common dso_local global i32 0, align 4
@HARMONY_DSTATUS_RN = common dso_local global i32 0, align 4
@HARMONY_RNXTADD = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @snd_harmony_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_harmony_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_harmony*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.snd_harmony*
  store %struct.snd_harmony* %8, %struct.snd_harmony** %6, align 8
  %9 = load %struct.snd_harmony*, %struct.snd_harmony** %6, align 8
  %10 = getelementptr inbounds %struct.snd_harmony, %struct.snd_harmony* %9, i32 0, i32 0
  %11 = call i32 @spin_lock(i32* %10)
  %12 = load %struct.snd_harmony*, %struct.snd_harmony** %6, align 8
  %13 = call i32 @harmony_disable_interrupts(%struct.snd_harmony* %12)
  %14 = load %struct.snd_harmony*, %struct.snd_harmony** %6, align 8
  %15 = call i32 @harmony_wait_for_control(%struct.snd_harmony* %14)
  %16 = load %struct.snd_harmony*, %struct.snd_harmony** %6, align 8
  %17 = load i32, i32* @HARMONY_DSTATUS, align 4
  %18 = call i32 @harmony_read(%struct.snd_harmony* %16, i32 %17)
  store i32 %18, i32* %5, align 4
  %19 = load %struct.snd_harmony*, %struct.snd_harmony** %6, align 8
  %20 = getelementptr inbounds %struct.snd_harmony, %struct.snd_harmony* %19, i32 0, i32 0
  %21 = call i32 @spin_unlock(i32* %20)
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* @HARMONY_DSTATUS_PN, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %106

26:                                               ; preds = %2
  %27 = load %struct.snd_harmony*, %struct.snd_harmony** %6, align 8
  %28 = getelementptr inbounds %struct.snd_harmony, %struct.snd_harmony* %27, i32 0, i32 7
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %86

31:                                               ; preds = %26
  %32 = load %struct.snd_harmony*, %struct.snd_harmony** %6, align 8
  %33 = getelementptr inbounds %struct.snd_harmony, %struct.snd_harmony* %32, i32 0, i32 5
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %86

37:                                               ; preds = %31
  %38 = load %struct.snd_harmony*, %struct.snd_harmony** %6, align 8
  %39 = getelementptr inbounds %struct.snd_harmony, %struct.snd_harmony* %38, i32 0, i32 0
  %40 = call i32 @spin_lock(i32* %39)
  %41 = load %struct.snd_harmony*, %struct.snd_harmony** %6, align 8
  %42 = getelementptr inbounds %struct.snd_harmony, %struct.snd_harmony* %41, i32 0, i32 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 3
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.snd_harmony*, %struct.snd_harmony** %6, align 8
  %46 = getelementptr inbounds %struct.snd_harmony, %struct.snd_harmony* %45, i32 0, i32 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = sext i32 %48 to i64
  %50 = add nsw i64 %49, %44
  %51 = trunc i64 %50 to i32
  store i32 %51, i32* %47, align 8
  %52 = load %struct.snd_harmony*, %struct.snd_harmony** %6, align 8
  %53 = getelementptr inbounds %struct.snd_harmony, %struct.snd_harmony* %52, i32 0, i32 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.snd_harmony*, %struct.snd_harmony** %6, align 8
  %57 = getelementptr inbounds %struct.snd_harmony, %struct.snd_harmony* %56, i32 0, i32 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = srem i32 %59, %55
  store i32 %60, i32* %58, align 8
  %61 = load %struct.snd_harmony*, %struct.snd_harmony** %6, align 8
  %62 = load i32, i32* @HARMONY_PNXTADD, align 4
  %63 = load %struct.snd_harmony*, %struct.snd_harmony** %6, align 8
  %64 = getelementptr inbounds %struct.snd_harmony, %struct.snd_harmony* %63, i32 0, i32 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.snd_harmony*, %struct.snd_harmony** %6, align 8
  %68 = getelementptr inbounds %struct.snd_harmony, %struct.snd_harmony* %67, i32 0, i32 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = sext i32 %70 to i64
  %72 = add nsw i64 %66, %71
  %73 = call i32 @harmony_write(%struct.snd_harmony* %61, i32 %62, i64 %72)
  %74 = load %struct.snd_harmony*, %struct.snd_harmony** %6, align 8
  %75 = getelementptr inbounds %struct.snd_harmony, %struct.snd_harmony* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %76, align 4
  %79 = load %struct.snd_harmony*, %struct.snd_harmony** %6, align 8
  %80 = getelementptr inbounds %struct.snd_harmony, %struct.snd_harmony* %79, i32 0, i32 0
  %81 = call i32 @spin_unlock(i32* %80)
  %82 = load %struct.snd_harmony*, %struct.snd_harmony** %6, align 8
  %83 = getelementptr inbounds %struct.snd_harmony, %struct.snd_harmony* %82, i32 0, i32 7
  %84 = load i64, i64* %83, align 8
  %85 = call i32 @snd_pcm_period_elapsed(i64 %84)
  br label %105

86:                                               ; preds = %31, %26
  %87 = load %struct.snd_harmony*, %struct.snd_harmony** %6, align 8
  %88 = getelementptr inbounds %struct.snd_harmony, %struct.snd_harmony* %87, i32 0, i32 0
  %89 = call i32 @spin_lock(i32* %88)
  %90 = load %struct.snd_harmony*, %struct.snd_harmony** %6, align 8
  %91 = load i32, i32* @HARMONY_PNXTADD, align 4
  %92 = load %struct.snd_harmony*, %struct.snd_harmony** %6, align 8
  %93 = getelementptr inbounds %struct.snd_harmony, %struct.snd_harmony* %92, i32 0, i32 6
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = call i32 @harmony_write(%struct.snd_harmony* %90, i32 %91, i64 %95)
  %97 = load %struct.snd_harmony*, %struct.snd_harmony** %6, align 8
  %98 = getelementptr inbounds %struct.snd_harmony, %struct.snd_harmony* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %99, align 4
  %102 = load %struct.snd_harmony*, %struct.snd_harmony** %6, align 8
  %103 = getelementptr inbounds %struct.snd_harmony, %struct.snd_harmony* %102, i32 0, i32 0
  %104 = call i32 @spin_unlock(i32* %103)
  br label %105

105:                                              ; preds = %86, %37
  br label %106

106:                                              ; preds = %105, %2
  %107 = load i32, i32* %5, align 4
  %108 = load i32, i32* @HARMONY_DSTATUS_RN, align 4
  %109 = and i32 %107, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %191

111:                                              ; preds = %106
  %112 = load %struct.snd_harmony*, %struct.snd_harmony** %6, align 8
  %113 = getelementptr inbounds %struct.snd_harmony, %struct.snd_harmony* %112, i32 0, i32 3
  %114 = load i64, i64* %113, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %171

116:                                              ; preds = %111
  %117 = load %struct.snd_harmony*, %struct.snd_harmony** %6, align 8
  %118 = getelementptr inbounds %struct.snd_harmony, %struct.snd_harmony* %117, i32 0, i32 5
  %119 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %171

122:                                              ; preds = %116
  %123 = load %struct.snd_harmony*, %struct.snd_harmony** %6, align 8
  %124 = getelementptr inbounds %struct.snd_harmony, %struct.snd_harmony* %123, i32 0, i32 0
  %125 = call i32 @spin_lock(i32* %124)
  %126 = load %struct.snd_harmony*, %struct.snd_harmony** %6, align 8
  %127 = getelementptr inbounds %struct.snd_harmony, %struct.snd_harmony* %126, i32 0, i32 4
  %128 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %127, i32 0, i32 3
  %129 = load i64, i64* %128, align 8
  %130 = load %struct.snd_harmony*, %struct.snd_harmony** %6, align 8
  %131 = getelementptr inbounds %struct.snd_harmony, %struct.snd_harmony* %130, i32 0, i32 4
  %132 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = sext i32 %133 to i64
  %135 = add nsw i64 %134, %129
  %136 = trunc i64 %135 to i32
  store i32 %136, i32* %132, align 8
  %137 = load %struct.snd_harmony*, %struct.snd_harmony** %6, align 8
  %138 = getelementptr inbounds %struct.snd_harmony, %struct.snd_harmony* %137, i32 0, i32 4
  %139 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %138, i32 0, i32 2
  %140 = load i32, i32* %139, align 8
  %141 = load %struct.snd_harmony*, %struct.snd_harmony** %6, align 8
  %142 = getelementptr inbounds %struct.snd_harmony, %struct.snd_harmony* %141, i32 0, i32 4
  %143 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = srem i32 %144, %140
  store i32 %145, i32* %143, align 8
  %146 = load %struct.snd_harmony*, %struct.snd_harmony** %6, align 8
  %147 = load i32, i32* @HARMONY_RNXTADD, align 4
  %148 = load %struct.snd_harmony*, %struct.snd_harmony** %6, align 8
  %149 = getelementptr inbounds %struct.snd_harmony, %struct.snd_harmony* %148, i32 0, i32 4
  %150 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %149, i32 0, i32 1
  %151 = load i64, i64* %150, align 8
  %152 = load %struct.snd_harmony*, %struct.snd_harmony** %6, align 8
  %153 = getelementptr inbounds %struct.snd_harmony, %struct.snd_harmony* %152, i32 0, i32 4
  %154 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = sext i32 %155 to i64
  %157 = add nsw i64 %151, %156
  %158 = call i32 @harmony_write(%struct.snd_harmony* %146, i32 %147, i64 %157)
  %159 = load %struct.snd_harmony*, %struct.snd_harmony** %6, align 8
  %160 = getelementptr inbounds %struct.snd_harmony, %struct.snd_harmony* %159, i32 0, i32 1
  %161 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 4
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* %161, align 4
  %164 = load %struct.snd_harmony*, %struct.snd_harmony** %6, align 8
  %165 = getelementptr inbounds %struct.snd_harmony, %struct.snd_harmony* %164, i32 0, i32 0
  %166 = call i32 @spin_unlock(i32* %165)
  %167 = load %struct.snd_harmony*, %struct.snd_harmony** %6, align 8
  %168 = getelementptr inbounds %struct.snd_harmony, %struct.snd_harmony* %167, i32 0, i32 3
  %169 = load i64, i64* %168, align 8
  %170 = call i32 @snd_pcm_period_elapsed(i64 %169)
  br label %190

171:                                              ; preds = %116, %111
  %172 = load %struct.snd_harmony*, %struct.snd_harmony** %6, align 8
  %173 = getelementptr inbounds %struct.snd_harmony, %struct.snd_harmony* %172, i32 0, i32 0
  %174 = call i32 @spin_lock(i32* %173)
  %175 = load %struct.snd_harmony*, %struct.snd_harmony** %6, align 8
  %176 = load i32, i32* @HARMONY_RNXTADD, align 4
  %177 = load %struct.snd_harmony*, %struct.snd_harmony** %6, align 8
  %178 = getelementptr inbounds %struct.snd_harmony, %struct.snd_harmony* %177, i32 0, i32 2
  %179 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %178, i32 0, i32 0
  %180 = load i64, i64* %179, align 8
  %181 = call i32 @harmony_write(%struct.snd_harmony* %175, i32 %176, i64 %180)
  %182 = load %struct.snd_harmony*, %struct.snd_harmony** %6, align 8
  %183 = getelementptr inbounds %struct.snd_harmony, %struct.snd_harmony* %182, i32 0, i32 1
  %184 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 4
  %186 = add nsw i32 %185, 1
  store i32 %186, i32* %184, align 4
  %187 = load %struct.snd_harmony*, %struct.snd_harmony** %6, align 8
  %188 = getelementptr inbounds %struct.snd_harmony, %struct.snd_harmony* %187, i32 0, i32 0
  %189 = call i32 @spin_unlock(i32* %188)
  br label %190

190:                                              ; preds = %171, %122
  br label %191

191:                                              ; preds = %190, %106
  %192 = load %struct.snd_harmony*, %struct.snd_harmony** %6, align 8
  %193 = getelementptr inbounds %struct.snd_harmony, %struct.snd_harmony* %192, i32 0, i32 0
  %194 = call i32 @spin_lock(i32* %193)
  %195 = load %struct.snd_harmony*, %struct.snd_harmony** %6, align 8
  %196 = call i32 @harmony_enable_interrupts(%struct.snd_harmony* %195)
  %197 = load %struct.snd_harmony*, %struct.snd_harmony** %6, align 8
  %198 = getelementptr inbounds %struct.snd_harmony, %struct.snd_harmony* %197, i32 0, i32 0
  %199 = call i32 @spin_unlock(i32* %198)
  %200 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %200
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @harmony_disable_interrupts(%struct.snd_harmony*) #1

declare dso_local i32 @harmony_wait_for_control(%struct.snd_harmony*) #1

declare dso_local i32 @harmony_read(%struct.snd_harmony*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @harmony_write(%struct.snd_harmony*, i32, i64) #1

declare dso_local i32 @snd_pcm_period_elapsed(i64) #1

declare dso_local i32 @harmony_enable_interrupts(%struct.snd_harmony*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
