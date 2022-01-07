; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_rc80211_minstrel_ht.c_minstrel_ht_probe_group.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_rc80211_minstrel_ht.c_minstrel_ht_probe_group.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.minstrel_ht_sta = type { i32 }
%struct.mcs_group = type { i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.minstrel_ht_sta*, %struct.mcs_group*, i32, %struct.mcs_group*)* @minstrel_ht_probe_group to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @minstrel_ht_probe_group(%struct.minstrel_ht_sta* %0, %struct.mcs_group* %1, i32 %2, %struct.mcs_group* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.minstrel_ht_sta*, align 8
  %7 = alloca %struct.mcs_group*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.mcs_group*, align 8
  store %struct.minstrel_ht_sta* %0, %struct.minstrel_ht_sta** %6, align 8
  store %struct.mcs_group* %1, %struct.mcs_group** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.mcs_group* %3, %struct.mcs_group** %9, align 8
  %10 = load %struct.mcs_group*, %struct.mcs_group** %9, align 8
  %11 = getelementptr inbounds %struct.mcs_group, %struct.mcs_group* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load %struct.mcs_group*, %struct.mcs_group** %7, align 8
  %14 = getelementptr inbounds %struct.mcs_group, %struct.mcs_group* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp slt i64 %12, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %50

18:                                               ; preds = %4
  %19 = load %struct.mcs_group*, %struct.mcs_group** %9, align 8
  %20 = getelementptr inbounds %struct.mcs_group, %struct.mcs_group* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.mcs_group*, %struct.mcs_group** %7, align 8
  %23 = getelementptr inbounds %struct.mcs_group, %struct.mcs_group* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = icmp eq i32 %21, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %18
  store i32 1, i32* %5, align 4
  br label %50

27:                                               ; preds = %18
  %28 = load i32, i32* %8, align 4
  %29 = icmp slt i32 %28, 4
  br i1 %29, label %30, label %40

30:                                               ; preds = %27
  %31 = load %struct.mcs_group*, %struct.mcs_group** %9, align 8
  %32 = getelementptr inbounds %struct.mcs_group, %struct.mcs_group* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.mcs_group*, %struct.mcs_group** %7, align 8
  %35 = getelementptr inbounds %struct.mcs_group, %struct.mcs_group* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = sub nsw i32 %36, 1
  %38 = icmp eq i32 %33, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %30
  store i32 1, i32* %5, align 4
  br label %50

40:                                               ; preds = %30, %27
  %41 = load %struct.mcs_group*, %struct.mcs_group** %9, align 8
  %42 = getelementptr inbounds %struct.mcs_group, %struct.mcs_group* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.mcs_group*, %struct.mcs_group** %7, align 8
  %45 = getelementptr inbounds %struct.mcs_group, %struct.mcs_group* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = add nsw i32 %46, 1
  %48 = icmp eq i32 %43, %47
  %49 = zext i1 %48 to i32
  store i32 %49, i32* %5, align 4
  br label %50

50:                                               ; preds = %40, %39, %26, %17
  %51 = load i32, i32* %5, align 4
  ret i32 %51
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
