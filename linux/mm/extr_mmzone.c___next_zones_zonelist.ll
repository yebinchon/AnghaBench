; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_mmzone.c___next_zones_zonelist.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_mmzone.c___next_zones_zonelist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zoneref = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.zoneref* @__next_zones_zonelist(%struct.zoneref* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.zoneref*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  store %struct.zoneref* %0, %struct.zoneref** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %7 = load i32*, i32** %6, align 8
  %8 = icmp eq i32* %7, null
  %9 = zext i1 %8 to i32
  %10 = call i64 @unlikely(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %22

12:                                               ; preds = %3
  br label %13

13:                                               ; preds = %18, %12
  %14 = load %struct.zoneref*, %struct.zoneref** %4, align 8
  %15 = call i32 @zonelist_zone_idx(%struct.zoneref* %14)
  %16 = load i32, i32* %5, align 4
  %17 = icmp ugt i32 %15, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %13
  %19 = load %struct.zoneref*, %struct.zoneref** %4, align 8
  %20 = getelementptr inbounds %struct.zoneref, %struct.zoneref* %19, i32 1
  store %struct.zoneref* %20, %struct.zoneref** %4, align 8
  br label %13

21:                                               ; preds = %13
  br label %47

22:                                               ; preds = %3
  br label %23

23:                                               ; preds = %43, %22
  %24 = load %struct.zoneref*, %struct.zoneref** %4, align 8
  %25 = call i32 @zonelist_zone_idx(%struct.zoneref* %24)
  %26 = load i32, i32* %5, align 4
  %27 = icmp ugt i32 %25, %26
  br i1 %27, label %41, label %28

28:                                               ; preds = %23
  %29 = load %struct.zoneref*, %struct.zoneref** %4, align 8
  %30 = getelementptr inbounds %struct.zoneref, %struct.zoneref* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %28
  %34 = load %struct.zoneref*, %struct.zoneref** %4, align 8
  %35 = load i32*, i32** %6, align 8
  %36 = call i32 @zref_in_nodemask(%struct.zoneref* %34, i32* %35)
  %37 = icmp ne i32 %36, 0
  %38 = xor i1 %37, true
  br label %39

39:                                               ; preds = %33, %28
  %40 = phi i1 [ false, %28 ], [ %38, %33 ]
  br label %41

41:                                               ; preds = %39, %23
  %42 = phi i1 [ true, %23 ], [ %40, %39 ]
  br i1 %42, label %43, label %46

43:                                               ; preds = %41
  %44 = load %struct.zoneref*, %struct.zoneref** %4, align 8
  %45 = getelementptr inbounds %struct.zoneref, %struct.zoneref* %44, i32 1
  store %struct.zoneref* %45, %struct.zoneref** %4, align 8
  br label %23

46:                                               ; preds = %41
  br label %47

47:                                               ; preds = %46, %21
  %48 = load %struct.zoneref*, %struct.zoneref** %4, align 8
  ret %struct.zoneref* %48
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @zonelist_zone_idx(%struct.zoneref*) #1

declare dso_local i32 @zref_in_nodemask(%struct.zoneref*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
