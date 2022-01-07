; ModuleID = '/home/carl/AnghaBench/linux/sound/core/seq/extr_seq_timer.c_snd_seq_timer_get_cur_time.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/seq/extr_seq_timer.c_snd_seq_timer_get_cur_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_seq_timer = type { i32, i32, i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.timespec64 = type { i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @snd_seq_timer_get_cur_time(%struct.snd_seq_timer* %0) #0 {
  %2 = alloca %struct.TYPE_4__, align 4
  %3 = alloca %struct.snd_seq_timer*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.timespec64, align 8
  %6 = alloca %struct.timespec64, align 8
  store %struct.snd_seq_timer* %0, %struct.snd_seq_timer** %3, align 8
  %7 = load %struct.snd_seq_timer*, %struct.snd_seq_timer** %3, align 8
  %8 = getelementptr inbounds %struct.snd_seq_timer, %struct.snd_seq_timer* %7, i32 0, i32 0
  %9 = load i64, i64* %4, align 8
  %10 = call i32 @spin_lock_irqsave(i32* %8, i64 %9)
  %11 = load %struct.snd_seq_timer*, %struct.snd_seq_timer** %3, align 8
  %12 = getelementptr inbounds %struct.snd_seq_timer, %struct.snd_seq_timer* %11, i32 0, i32 3
  %13 = bitcast %struct.TYPE_4__* %2 to i8*
  %14 = bitcast %struct.TYPE_4__* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %13, i8* align 8 %14, i64 8, i1 false)
  %15 = load %struct.snd_seq_timer*, %struct.snd_seq_timer** %3, align 8
  %16 = getelementptr inbounds %struct.snd_seq_timer, %struct.snd_seq_timer* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %52

19:                                               ; preds = %1
  %20 = call i32 @ktime_get_ts64(%struct.timespec64* %5)
  %21 = load %struct.snd_seq_timer*, %struct.snd_seq_timer** %3, align 8
  %22 = getelementptr inbounds %struct.snd_seq_timer, %struct.snd_seq_timer* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = bitcast %struct.timespec64* %5 to { i64, i64 }*
  %25 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %24, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = call { i64, i64 } @timespec64_sub(i64 %26, i64 %28, i32 %23)
  %30 = bitcast %struct.timespec64* %6 to { i64, i64 }*
  %31 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %30, i32 0, i32 0
  %32 = extractvalue { i64, i64 } %29, 0
  store i64 %32, i64* %31, align 8
  %33 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %30, i32 0, i32 1
  %34 = extractvalue { i64, i64 } %29, 1
  store i64 %34, i64* %33, align 8
  %35 = bitcast %struct.timespec64* %5 to i8*
  %36 = bitcast %struct.timespec64* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %35, i8* align 8 %36, i64 16, i1 false)
  %37 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %5, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = sext i32 %40 to i64
  %42 = add nsw i64 %41, %38
  %43 = trunc i64 %42 to i32
  store i32 %43, i32* %39, align 4
  %44 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %5, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = sext i32 %47 to i64
  %49 = add nsw i64 %48, %45
  %50 = trunc i64 %49 to i32
  store i32 %50, i32* %46, align 4
  %51 = call i32 @snd_seq_sanity_real_time(%struct.TYPE_4__* %2)
  br label %52

52:                                               ; preds = %19, %1
  %53 = load %struct.snd_seq_timer*, %struct.snd_seq_timer** %3, align 8
  %54 = getelementptr inbounds %struct.snd_seq_timer, %struct.snd_seq_timer* %53, i32 0, i32 0
  %55 = load i64, i64* %4, align 8
  %56 = call i32 @spin_unlock_irqrestore(i32* %54, i64 %55)
  %57 = bitcast %struct.TYPE_4__* %2 to i64*
  %58 = load i64, i64* %57, align 4
  ret i64 %58
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @ktime_get_ts64(%struct.timespec64*) #1

declare dso_local { i64, i64 } @timespec64_sub(i64, i64, i32) #1

declare dso_local i32 @snd_seq_sanity_real_time(%struct.TYPE_4__*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
