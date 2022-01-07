; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_hfsc.c_init_ed.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_hfsc.c_init_ed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfsc_class = type { i64, %struct.TYPE_4__, i8*, %struct.TYPE_4__, i8*, %struct.TYPE_5__ }
%struct.TYPE_4__ = type { i64, i64 }
%struct.TYPE_5__ = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hfsc_class*, i32)* @init_ed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_ed(%struct.hfsc_class* %0, i32 %1) #0 {
  %3 = alloca %struct.hfsc_class*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.hfsc_class* %0, %struct.hfsc_class** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = call i32 (...) @psched_get_time()
  store i32 %6, i32* %5, align 4
  %7 = load %struct.hfsc_class*, %struct.hfsc_class** %3, align 8
  %8 = getelementptr inbounds %struct.hfsc_class, %struct.hfsc_class* %7, i32 0, i32 1
  %9 = load %struct.hfsc_class*, %struct.hfsc_class** %3, align 8
  %10 = getelementptr inbounds %struct.hfsc_class, %struct.hfsc_class* %9, i32 0, i32 5
  %11 = load i32, i32* %5, align 4
  %12 = load %struct.hfsc_class*, %struct.hfsc_class** %3, align 8
  %13 = getelementptr inbounds %struct.hfsc_class, %struct.hfsc_class* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = call i32 @rtsc_min(%struct.TYPE_4__* %8, %struct.TYPE_5__* %10, i32 %11, i64 %14)
  %16 = load %struct.hfsc_class*, %struct.hfsc_class** %3, align 8
  %17 = getelementptr inbounds %struct.hfsc_class, %struct.hfsc_class* %16, i32 0, i32 3
  %18 = load %struct.hfsc_class*, %struct.hfsc_class** %3, align 8
  %19 = getelementptr inbounds %struct.hfsc_class, %struct.hfsc_class* %18, i32 0, i32 1
  %20 = bitcast %struct.TYPE_4__* %17 to i8*
  %21 = bitcast %struct.TYPE_4__* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %20, i8* align 8 %21, i64 16, i1 false)
  %22 = load %struct.hfsc_class*, %struct.hfsc_class** %3, align 8
  %23 = getelementptr inbounds %struct.hfsc_class, %struct.hfsc_class* %22, i32 0, i32 5
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.hfsc_class*, %struct.hfsc_class** %3, align 8
  %27 = getelementptr inbounds %struct.hfsc_class, %struct.hfsc_class* %26, i32 0, i32 5
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = icmp sle i64 %25, %29
  br i1 %30, label %31, label %38

31:                                               ; preds = %2
  %32 = load %struct.hfsc_class*, %struct.hfsc_class** %3, align 8
  %33 = getelementptr inbounds %struct.hfsc_class, %struct.hfsc_class* %32, i32 0, i32 3
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 1
  store i64 0, i64* %34, align 8
  %35 = load %struct.hfsc_class*, %struct.hfsc_class** %3, align 8
  %36 = getelementptr inbounds %struct.hfsc_class, %struct.hfsc_class* %35, i32 0, i32 3
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  store i64 0, i64* %37, align 8
  br label %38

38:                                               ; preds = %31, %2
  %39 = load %struct.hfsc_class*, %struct.hfsc_class** %3, align 8
  %40 = getelementptr inbounds %struct.hfsc_class, %struct.hfsc_class* %39, i32 0, i32 3
  %41 = load %struct.hfsc_class*, %struct.hfsc_class** %3, align 8
  %42 = getelementptr inbounds %struct.hfsc_class, %struct.hfsc_class* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = call i8* @rtsc_y2x(%struct.TYPE_4__* %40, i64 %43)
  %45 = load %struct.hfsc_class*, %struct.hfsc_class** %3, align 8
  %46 = getelementptr inbounds %struct.hfsc_class, %struct.hfsc_class* %45, i32 0, i32 4
  store i8* %44, i8** %46, align 8
  %47 = load %struct.hfsc_class*, %struct.hfsc_class** %3, align 8
  %48 = getelementptr inbounds %struct.hfsc_class, %struct.hfsc_class* %47, i32 0, i32 1
  %49 = load %struct.hfsc_class*, %struct.hfsc_class** %3, align 8
  %50 = getelementptr inbounds %struct.hfsc_class, %struct.hfsc_class* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i32, i32* %4, align 4
  %53 = zext i32 %52 to i64
  %54 = add nsw i64 %51, %53
  %55 = call i8* @rtsc_y2x(%struct.TYPE_4__* %48, i64 %54)
  %56 = load %struct.hfsc_class*, %struct.hfsc_class** %3, align 8
  %57 = getelementptr inbounds %struct.hfsc_class, %struct.hfsc_class* %56, i32 0, i32 2
  store i8* %55, i8** %57, align 8
  %58 = load %struct.hfsc_class*, %struct.hfsc_class** %3, align 8
  %59 = call i32 @eltree_insert(%struct.hfsc_class* %58)
  ret void
}

declare dso_local i32 @psched_get_time(...) #1

declare dso_local i32 @rtsc_min(%struct.TYPE_4__*, %struct.TYPE_5__*, i32, i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i8* @rtsc_y2x(%struct.TYPE_4__*, i64) #1

declare dso_local i32 @eltree_insert(%struct.hfsc_class*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
