; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_xarray.c_xas_init_marks.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_xarray.c_xas_init_marks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xa_state = type { i32 }

@XA_FREE_MARK = common dso_local global i64 0, align 8
@XA_MARK_MAX = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xas_init_marks(%struct.xa_state* %0) #0 {
  %2 = alloca %struct.xa_state*, align 8
  %3 = alloca i64, align 8
  store %struct.xa_state* %0, %struct.xa_state** %2, align 8
  store i64 0, i64* %3, align 8
  br label %4

4:                                                ; preds = %27, %1
  %5 = load %struct.xa_state*, %struct.xa_state** %2, align 8
  %6 = getelementptr inbounds %struct.xa_state, %struct.xa_state* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call i64 @xa_track_free(i32 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %18

10:                                               ; preds = %4
  %11 = load i64, i64* %3, align 8
  %12 = load i64, i64* @XA_FREE_MARK, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %18

14:                                               ; preds = %10
  %15 = load %struct.xa_state*, %struct.xa_state** %2, align 8
  %16 = load i64, i64* %3, align 8
  %17 = call i32 @xas_set_mark(%struct.xa_state* %15, i64 %16)
  br label %22

18:                                               ; preds = %10, %4
  %19 = load %struct.xa_state*, %struct.xa_state** %2, align 8
  %20 = load i64, i64* %3, align 8
  %21 = call i32 @xas_clear_mark(%struct.xa_state* %19, i64 %20)
  br label %22

22:                                               ; preds = %18, %14
  %23 = load i64, i64* %3, align 8
  %24 = load i64, i64* @XA_MARK_MAX, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %22
  br label %30

27:                                               ; preds = %22
  %28 = load i64, i64* %3, align 8
  %29 = call i32 @mark_inc(i64 %28)
  br label %4

30:                                               ; preds = %26
  ret void
}

declare dso_local i64 @xa_track_free(i32) #1

declare dso_local i32 @xas_set_mark(%struct.xa_state*, i64) #1

declare dso_local i32 @xas_clear_mark(%struct.xa_state*, i64) #1

declare dso_local i32 @mark_inc(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
