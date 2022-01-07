; ModuleID = '/home/carl/AnghaBench/linux/sound/drivers/extr_aloop.c_loopback_rate_shift_put.c'
source_filename = "/home/carl/AnghaBench/linux/sound/drivers/extr_aloop.c_loopback_rate_shift_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64, i64 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32* }
%struct.loopback = type { i32, %struct.TYPE_7__** }
%struct.TYPE_7__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @loopback_rate_shift_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @loopback_rate_shift_put(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca %struct.snd_kcontrol*, align 8
  %4 = alloca %struct.snd_ctl_elem_value*, align 8
  %5 = alloca %struct.loopback*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %3, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %4, align 8
  %8 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %9 = call %struct.loopback* @snd_kcontrol_chip(%struct.snd_kcontrol* %8)
  store %struct.loopback* %9, %struct.loopback** %5, align 8
  store i32 0, i32* %7, align 4
  %10 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %11 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp ult i32 %17, 80000
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  store i32 80000, i32* %6, align 4
  br label %20

20:                                               ; preds = %19, %2
  %21 = load i32, i32* %6, align 4
  %22 = icmp ugt i32 %21, 120000
  br i1 %22, label %23, label %24

23:                                               ; preds = %20
  store i32 120000, i32* %6, align 4
  br label %24

24:                                               ; preds = %23, %20
  %25 = load %struct.loopback*, %struct.loopback** %5, align 8
  %26 = getelementptr inbounds %struct.loopback, %struct.loopback* %25, i32 0, i32 0
  %27 = call i32 @mutex_lock(i32* %26)
  %28 = load i32, i32* %6, align 4
  %29 = load %struct.loopback*, %struct.loopback** %5, align 8
  %30 = getelementptr inbounds %struct.loopback, %struct.loopback* %29, i32 0, i32 1
  %31 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %30, align 8
  %32 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %33 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %31, i64 %35
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %36, align 8
  %38 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %39 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = icmp ne i32 %28, %44
  br i1 %45, label %46, label %63

46:                                               ; preds = %24
  %47 = load i32, i32* %6, align 4
  %48 = load %struct.loopback*, %struct.loopback** %5, align 8
  %49 = getelementptr inbounds %struct.loopback, %struct.loopback* %48, i32 0, i32 1
  %50 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %49, align 8
  %51 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %52 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %50, i64 %54
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %55, align 8
  %57 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %58 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 0
  store i32 %47, i32* %62, align 4
  store i32 1, i32* %7, align 4
  br label %63

63:                                               ; preds = %46, %24
  %64 = load %struct.loopback*, %struct.loopback** %5, align 8
  %65 = getelementptr inbounds %struct.loopback, %struct.loopback* %64, i32 0, i32 0
  %66 = call i32 @mutex_unlock(i32* %65)
  %67 = load i32, i32* %7, align 4
  ret i32 %67
}

declare dso_local %struct.loopback* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
