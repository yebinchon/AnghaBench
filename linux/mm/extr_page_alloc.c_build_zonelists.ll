; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_page_alloc.c_build_zonelists.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_page_alloc.c_build_zonelists.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.zoneref* }
%struct.zoneref = type { i64, i32* }

@ZONELIST_FALLBACK = common dso_local global i64 0, align 8
@MAX_NUMNODES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*)* @build_zonelists to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @build_zonelists(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.zoneref*, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %2, align 8
  %7 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  store i32 %9, i32* %4, align 4
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 1
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %13 = load i64, i64* @ZONELIST_FALLBACK, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i64 %13
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load %struct.zoneref*, %struct.zoneref** %15, align 8
  store %struct.zoneref* %16, %struct.zoneref** %5, align 8
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %18 = load %struct.zoneref*, %struct.zoneref** %5, align 8
  %19 = call i32 @build_zonerefs_node(%struct.TYPE_7__* %17, %struct.zoneref* %18)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = load %struct.zoneref*, %struct.zoneref** %5, align 8
  %22 = sext i32 %20 to i64
  %23 = getelementptr inbounds %struct.zoneref, %struct.zoneref* %21, i64 %22
  store %struct.zoneref* %23, %struct.zoneref** %5, align 8
  %24 = load i32, i32* %4, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %3, align 4
  br label %26

26:                                               ; preds = %44, %1
  %27 = load i32, i32* %3, align 4
  %28 = load i32, i32* @MAX_NUMNODES, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %47

30:                                               ; preds = %26
  %31 = load i32, i32* %3, align 4
  %32 = call i32 @node_online(i32 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %30
  br label %44

35:                                               ; preds = %30
  %36 = load i32, i32* %3, align 4
  %37 = call %struct.TYPE_7__* @NODE_DATA(i32 %36)
  %38 = load %struct.zoneref*, %struct.zoneref** %5, align 8
  %39 = call i32 @build_zonerefs_node(%struct.TYPE_7__* %37, %struct.zoneref* %38)
  store i32 %39, i32* %6, align 4
  %40 = load i32, i32* %6, align 4
  %41 = load %struct.zoneref*, %struct.zoneref** %5, align 8
  %42 = sext i32 %40 to i64
  %43 = getelementptr inbounds %struct.zoneref, %struct.zoneref* %41, i64 %42
  store %struct.zoneref* %43, %struct.zoneref** %5, align 8
  br label %44

44:                                               ; preds = %35, %34
  %45 = load i32, i32* %3, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %3, align 4
  br label %26

47:                                               ; preds = %26
  store i32 0, i32* %3, align 4
  br label %48

48:                                               ; preds = %66, %47
  %49 = load i32, i32* %3, align 4
  %50 = load i32, i32* %4, align 4
  %51 = icmp slt i32 %49, %50
  br i1 %51, label %52, label %69

52:                                               ; preds = %48
  %53 = load i32, i32* %3, align 4
  %54 = call i32 @node_online(i32 %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %52
  br label %66

57:                                               ; preds = %52
  %58 = load i32, i32* %3, align 4
  %59 = call %struct.TYPE_7__* @NODE_DATA(i32 %58)
  %60 = load %struct.zoneref*, %struct.zoneref** %5, align 8
  %61 = call i32 @build_zonerefs_node(%struct.TYPE_7__* %59, %struct.zoneref* %60)
  store i32 %61, i32* %6, align 4
  %62 = load i32, i32* %6, align 4
  %63 = load %struct.zoneref*, %struct.zoneref** %5, align 8
  %64 = sext i32 %62 to i64
  %65 = getelementptr inbounds %struct.zoneref, %struct.zoneref* %63, i64 %64
  store %struct.zoneref* %65, %struct.zoneref** %5, align 8
  br label %66

66:                                               ; preds = %57, %56
  %67 = load i32, i32* %3, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %3, align 4
  br label %48

69:                                               ; preds = %48
  %70 = load %struct.zoneref*, %struct.zoneref** %5, align 8
  %71 = getelementptr inbounds %struct.zoneref, %struct.zoneref* %70, i32 0, i32 1
  store i32* null, i32** %71, align 8
  %72 = load %struct.zoneref*, %struct.zoneref** %5, align 8
  %73 = getelementptr inbounds %struct.zoneref, %struct.zoneref* %72, i32 0, i32 0
  store i64 0, i64* %73, align 8
  ret void
}

declare dso_local i32 @build_zonerefs_node(%struct.TYPE_7__*, %struct.zoneref*) #1

declare dso_local i32 @node_online(i32) #1

declare dso_local %struct.TYPE_7__* @NODE_DATA(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
