; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_page_alloc.c_build_zonerefs_node.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_page_alloc.c_build_zonerefs_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { %struct.zone* }
%struct.zone = type { i32 }
%struct.zoneref = type { i32 }

@MAX_NR_ZONES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, %struct.zoneref*)* @build_zonerefs_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @build_zonerefs_node(%struct.TYPE_3__* %0, %struct.zoneref* %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca %struct.zoneref*, align 8
  %5 = alloca %struct.zone*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store %struct.zoneref* %1, %struct.zoneref** %4, align 8
  %8 = load i32, i32* @MAX_NR_ZONES, align 4
  store i32 %8, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %9

9:                                                ; preds = %32, %2
  %10 = load i32, i32* %6, align 4
  %11 = add i32 %10, -1
  store i32 %11, i32* %6, align 4
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load %struct.zone*, %struct.zone** %13, align 8
  %15 = load i32, i32* %6, align 4
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds %struct.zone, %struct.zone* %14, i64 %16
  store %struct.zone* %17, %struct.zone** %5, align 8
  %18 = load %struct.zone*, %struct.zone** %5, align 8
  %19 = call i64 @managed_zone(%struct.zone* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %31

21:                                               ; preds = %9
  %22 = load %struct.zone*, %struct.zone** %5, align 8
  %23 = load %struct.zoneref*, %struct.zoneref** %4, align 8
  %24 = load i32, i32* %7, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %7, align 4
  %26 = sext i32 %24 to i64
  %27 = getelementptr inbounds %struct.zoneref, %struct.zoneref* %23, i64 %26
  %28 = call i32 @zoneref_set_zone(%struct.zone* %22, %struct.zoneref* %27)
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @check_highest_zone(i32 %29)
  br label %31

31:                                               ; preds = %21, %9
  br label %32

32:                                               ; preds = %31
  %33 = load i32, i32* %6, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %9, label %35

35:                                               ; preds = %32
  %36 = load i32, i32* %7, align 4
  ret i32 %36
}

declare dso_local i64 @managed_zone(%struct.zone*) #1

declare dso_local i32 @zoneref_set_zone(%struct.zone*, %struct.zoneref*) #1

declare dso_local i32 @check_highest_zone(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
