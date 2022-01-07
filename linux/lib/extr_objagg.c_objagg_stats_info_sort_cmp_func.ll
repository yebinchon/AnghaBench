; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_objagg.c_objagg_stats_info_sort_cmp_func.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_objagg.c_objagg_stats_info_sort_cmp_func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.objagg_obj_stats_info = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @objagg_stats_info_sort_cmp_func to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @objagg_stats_info_sort_cmp_func(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.objagg_obj_stats_info*, align 8
  %7 = alloca %struct.objagg_obj_stats_info*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.objagg_obj_stats_info*
  store %struct.objagg_obj_stats_info* %9, %struct.objagg_obj_stats_info** %6, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.objagg_obj_stats_info*
  store %struct.objagg_obj_stats_info* %11, %struct.objagg_obj_stats_info** %7, align 8
  %12 = load %struct.objagg_obj_stats_info*, %struct.objagg_obj_stats_info** %6, align 8
  %13 = getelementptr inbounds %struct.objagg_obj_stats_info, %struct.objagg_obj_stats_info* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.objagg_obj_stats_info*, %struct.objagg_obj_stats_info** %7, align 8
  %16 = getelementptr inbounds %struct.objagg_obj_stats_info, %struct.objagg_obj_stats_info* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %14, %17
  br i1 %18, label %19, label %28

19:                                               ; preds = %2
  %20 = load %struct.objagg_obj_stats_info*, %struct.objagg_obj_stats_info** %7, align 8
  %21 = getelementptr inbounds %struct.objagg_obj_stats_info, %struct.objagg_obj_stats_info* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.objagg_obj_stats_info*, %struct.objagg_obj_stats_info** %6, align 8
  %24 = getelementptr inbounds %struct.objagg_obj_stats_info, %struct.objagg_obj_stats_info* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = sub nsw i64 %22, %25
  %27 = trunc i64 %26 to i32
  store i32 %27, i32* %3, align 4
  br label %59

28:                                               ; preds = %2
  %29 = load %struct.objagg_obj_stats_info*, %struct.objagg_obj_stats_info** %6, align 8
  %30 = getelementptr inbounds %struct.objagg_obj_stats_info, %struct.objagg_obj_stats_info* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.objagg_obj_stats_info*, %struct.objagg_obj_stats_info** %7, align 8
  %34 = getelementptr inbounds %struct.objagg_obj_stats_info, %struct.objagg_obj_stats_info* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %32, %36
  br i1 %37, label %38, label %49

38:                                               ; preds = %28
  %39 = load %struct.objagg_obj_stats_info*, %struct.objagg_obj_stats_info** %7, align 8
  %40 = getelementptr inbounds %struct.objagg_obj_stats_info, %struct.objagg_obj_stats_info* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.objagg_obj_stats_info*, %struct.objagg_obj_stats_info** %6, align 8
  %44 = getelementptr inbounds %struct.objagg_obj_stats_info, %struct.objagg_obj_stats_info* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = sub nsw i64 %42, %46
  %48 = trunc i64 %47 to i32
  store i32 %48, i32* %3, align 4
  br label %59

49:                                               ; preds = %28
  %50 = load %struct.objagg_obj_stats_info*, %struct.objagg_obj_stats_info** %7, align 8
  %51 = getelementptr inbounds %struct.objagg_obj_stats_info, %struct.objagg_obj_stats_info* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.objagg_obj_stats_info*, %struct.objagg_obj_stats_info** %6, align 8
  %55 = getelementptr inbounds %struct.objagg_obj_stats_info, %struct.objagg_obj_stats_info* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = sub nsw i32 %53, %57
  store i32 %58, i32* %3, align 4
  br label %59

59:                                               ; preds = %49, %38, %19
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
