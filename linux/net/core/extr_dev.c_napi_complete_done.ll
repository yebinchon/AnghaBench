; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_dev.c_napi_complete_done.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_dev.c_napi_complete_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.napi_struct = type { i64, i32, i32, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i64 }

@NAPIF_STATE_NPSVC = common dso_local global i64 0, align 8
@NAPIF_STATE_IN_BUSY_POLL = common dso_local global i64 0, align 8
@HRTIMER_MODE_REL_PINNED = common dso_local global i32 0, align 4
@NAPIF_STATE_SCHED = common dso_local global i64 0, align 8
@NAPIF_STATE_MISSED = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @napi_complete_done(%struct.napi_struct* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.napi_struct*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.napi_struct* %0, %struct.napi_struct** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.napi_struct*, %struct.napi_struct** %4, align 8
  %11 = getelementptr inbounds %struct.napi_struct, %struct.napi_struct* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @NAPIF_STATE_NPSVC, align 8
  %14 = load i64, i64* @NAPIF_STATE_IN_BUSY_POLL, align 8
  %15 = or i64 %13, %14
  %16 = and i64 %12, %15
  %17 = call i64 @unlikely(i64 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %118

20:                                               ; preds = %2
  %21 = load %struct.napi_struct*, %struct.napi_struct** %4, align 8
  %22 = call i32 @gro_normal_list(%struct.napi_struct* %21)
  %23 = load %struct.napi_struct*, %struct.napi_struct** %4, align 8
  %24 = getelementptr inbounds %struct.napi_struct, %struct.napi_struct* %23, i32 0, i32 4
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %54

27:                                               ; preds = %20
  store i64 0, i64* %9, align 8
  %28 = load i32, i32* %5, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %27
  %31 = load %struct.napi_struct*, %struct.napi_struct** %4, align 8
  %32 = getelementptr inbounds %struct.napi_struct, %struct.napi_struct* %31, i32 0, i32 3
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  store i64 %35, i64* %9, align 8
  br label %36

36:                                               ; preds = %30, %27
  %37 = load %struct.napi_struct*, %struct.napi_struct** %4, align 8
  %38 = load i64, i64* %9, align 8
  %39 = icmp ne i64 %38, 0
  %40 = xor i1 %39, true
  %41 = xor i1 %40, true
  %42 = zext i1 %41 to i32
  %43 = call i32 @napi_gro_flush(%struct.napi_struct* %37, i32 %42)
  %44 = load i64, i64* %9, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %53

46:                                               ; preds = %36
  %47 = load %struct.napi_struct*, %struct.napi_struct** %4, align 8
  %48 = getelementptr inbounds %struct.napi_struct, %struct.napi_struct* %47, i32 0, i32 2
  %49 = load i64, i64* %9, align 8
  %50 = call i32 @ns_to_ktime(i64 %49)
  %51 = load i32, i32* @HRTIMER_MODE_REL_PINNED, align 4
  %52 = call i32 @hrtimer_start(i32* %48, i32 %50, i32 %51)
  br label %53

53:                                               ; preds = %46, %36
  br label %54

54:                                               ; preds = %53, %20
  %55 = load %struct.napi_struct*, %struct.napi_struct** %4, align 8
  %56 = getelementptr inbounds %struct.napi_struct, %struct.napi_struct* %55, i32 0, i32 1
  %57 = call i32 @list_empty(i32* %56)
  %58 = icmp ne i32 %57, 0
  %59 = xor i1 %58, true
  %60 = zext i1 %59 to i32
  %61 = sext i32 %60 to i64
  %62 = call i64 @unlikely(i64 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %72

64:                                               ; preds = %54
  %65 = load i64, i64* %6, align 8
  %66 = call i32 @local_irq_save(i64 %65)
  %67 = load %struct.napi_struct*, %struct.napi_struct** %4, align 8
  %68 = getelementptr inbounds %struct.napi_struct, %struct.napi_struct* %67, i32 0, i32 1
  %69 = call i32 @list_del_init(i32* %68)
  %70 = load i64, i64* %6, align 8
  %71 = call i32 @local_irq_restore(i64 %70)
  br label %72

72:                                               ; preds = %64, %54
  br label %73

73:                                               ; preds = %100, %72
  %74 = load %struct.napi_struct*, %struct.napi_struct** %4, align 8
  %75 = getelementptr inbounds %struct.napi_struct, %struct.napi_struct* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = call i64 @READ_ONCE(i64 %76)
  store i64 %77, i64* %7, align 8
  %78 = load i64, i64* %7, align 8
  %79 = load i64, i64* @NAPIF_STATE_SCHED, align 8
  %80 = and i64 %78, %79
  %81 = icmp ne i64 %80, 0
  %82 = xor i1 %81, true
  %83 = zext i1 %82 to i32
  %84 = call i32 @WARN_ON_ONCE(i32 %83)
  %85 = load i64, i64* %7, align 8
  %86 = load i64, i64* @NAPIF_STATE_MISSED, align 8
  %87 = load i64, i64* @NAPIF_STATE_SCHED, align 8
  %88 = or i64 %86, %87
  %89 = xor i64 %88, -1
  %90 = and i64 %85, %89
  store i64 %90, i64* %8, align 8
  %91 = load i64, i64* %7, align 8
  %92 = load i64, i64* @NAPIF_STATE_MISSED, align 8
  %93 = and i64 %91, %92
  %94 = load i64, i64* @NAPIF_STATE_MISSED, align 8
  %95 = udiv i64 %93, %94
  %96 = load i64, i64* @NAPIF_STATE_SCHED, align 8
  %97 = mul i64 %95, %96
  %98 = load i64, i64* %8, align 8
  %99 = or i64 %98, %97
  store i64 %99, i64* %8, align 8
  br label %100

100:                                              ; preds = %73
  %101 = load %struct.napi_struct*, %struct.napi_struct** %4, align 8
  %102 = getelementptr inbounds %struct.napi_struct, %struct.napi_struct* %101, i32 0, i32 0
  %103 = load i64, i64* %7, align 8
  %104 = load i64, i64* %8, align 8
  %105 = call i64 @cmpxchg(i64* %102, i64 %103, i64 %104)
  %106 = load i64, i64* %7, align 8
  %107 = icmp ne i64 %105, %106
  br i1 %107, label %73, label %108

108:                                              ; preds = %100
  %109 = load i64, i64* %7, align 8
  %110 = load i64, i64* @NAPIF_STATE_MISSED, align 8
  %111 = and i64 %109, %110
  %112 = call i64 @unlikely(i64 %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %117

114:                                              ; preds = %108
  %115 = load %struct.napi_struct*, %struct.napi_struct** %4, align 8
  %116 = call i32 @__napi_schedule(%struct.napi_struct* %115)
  store i32 0, i32* %3, align 4
  br label %118

117:                                              ; preds = %108
  store i32 1, i32* %3, align 4
  br label %118

118:                                              ; preds = %117, %114, %19
  %119 = load i32, i32* %3, align 4
  ret i32 %119
}

declare dso_local i64 @unlikely(i64) #1

declare dso_local i32 @gro_normal_list(%struct.napi_struct*) #1

declare dso_local i32 @napi_gro_flush(%struct.napi_struct*, i32) #1

declare dso_local i32 @hrtimer_start(i32*, i32, i32) #1

declare dso_local i32 @ns_to_ktime(i64) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @local_irq_restore(i64) #1

declare dso_local i64 @READ_ONCE(i64) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i64 @cmpxchg(i64*, i64, i64) #1

declare dso_local i32 @__napi_schedule(%struct.napi_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
