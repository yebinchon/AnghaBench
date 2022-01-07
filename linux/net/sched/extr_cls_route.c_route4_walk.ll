; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_cls_route.c_route4_walk.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_cls_route.c_route4_walk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcf_proto = type { i32 }
%struct.tcf_walker = type { i32, i64, i64, i64 (%struct.tcf_proto.0*, %struct.route4_filter*, %struct.tcf_walker*)* }
%struct.tcf_proto.0 = type opaque
%struct.route4_filter = type opaque
%struct.route4_head = type { i32* }
%struct.route4_bucket = type { i32* }
%struct.route4_filter.1 = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tcf_proto*, %struct.tcf_walker*, i32)* @route4_walk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @route4_walk(%struct.tcf_proto* %0, %struct.tcf_walker* %1, i32 %2) #0 {
  %4 = alloca %struct.tcf_proto*, align 8
  %5 = alloca %struct.tcf_walker*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.route4_head*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.route4_bucket*, align 8
  %11 = alloca %struct.route4_filter.1*, align 8
  store %struct.tcf_proto* %0, %struct.tcf_proto** %4, align 8
  store %struct.tcf_walker* %1, %struct.tcf_walker** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load %struct.tcf_proto*, %struct.tcf_proto** %4, align 8
  %13 = getelementptr inbounds %struct.tcf_proto, %struct.tcf_proto* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i8* @rtnl_dereference(i32 %14)
  %16 = bitcast i8* %15 to %struct.route4_head*
  store %struct.route4_head* %16, %struct.route4_head** %7, align 8
  %17 = load %struct.route4_head*, %struct.route4_head** %7, align 8
  %18 = icmp eq %struct.route4_head* %17, null
  br i1 %18, label %24, label %19

19:                                               ; preds = %3
  %20 = load %struct.tcf_walker*, %struct.tcf_walker** %5, align 8
  %21 = getelementptr inbounds %struct.tcf_walker, %struct.tcf_walker* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %19, %3
  br label %105

25:                                               ; preds = %19
  store i32 0, i32* %8, align 4
  br label %26

26:                                               ; preds = %102, %25
  %27 = load i32, i32* %8, align 4
  %28 = icmp ule i32 %27, 256
  br i1 %28, label %29, label %105

29:                                               ; preds = %26
  %30 = load %struct.route4_head*, %struct.route4_head** %7, align 8
  %31 = getelementptr inbounds %struct.route4_head, %struct.route4_head* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = load i32, i32* %8, align 4
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = call i8* @rtnl_dereference(i32 %36)
  %38 = bitcast i8* %37 to %struct.route4_bucket*
  store %struct.route4_bucket* %38, %struct.route4_bucket** %10, align 8
  %39 = load %struct.route4_bucket*, %struct.route4_bucket** %10, align 8
  %40 = icmp ne %struct.route4_bucket* %39, null
  br i1 %40, label %41, label %101

41:                                               ; preds = %29
  store i32 0, i32* %9, align 4
  br label %42

42:                                               ; preds = %97, %41
  %43 = load i32, i32* %9, align 4
  %44 = icmp ule i32 %43, 32
  br i1 %44, label %45, label %100

45:                                               ; preds = %42
  %46 = load %struct.route4_bucket*, %struct.route4_bucket** %10, align 8
  %47 = getelementptr inbounds %struct.route4_bucket, %struct.route4_bucket* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = load i32, i32* %9, align 4
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = call i8* @rtnl_dereference(i32 %52)
  %54 = bitcast i8* %53 to %struct.route4_filter.1*
  store %struct.route4_filter.1* %54, %struct.route4_filter.1** %11, align 8
  br label %55

55:                                               ; preds = %90, %45
  %56 = load %struct.route4_filter.1*, %struct.route4_filter.1** %11, align 8
  %57 = icmp ne %struct.route4_filter.1* %56, null
  br i1 %57, label %58, label %96

58:                                               ; preds = %55
  %59 = load %struct.tcf_walker*, %struct.tcf_walker** %5, align 8
  %60 = getelementptr inbounds %struct.tcf_walker, %struct.tcf_walker* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.tcf_walker*, %struct.tcf_walker** %5, align 8
  %63 = getelementptr inbounds %struct.tcf_walker, %struct.tcf_walker* %62, i32 0, i32 2
  %64 = load i64, i64* %63, align 8
  %65 = icmp slt i64 %61, %64
  br i1 %65, label %66, label %71

66:                                               ; preds = %58
  %67 = load %struct.tcf_walker*, %struct.tcf_walker** %5, align 8
  %68 = getelementptr inbounds %struct.tcf_walker, %struct.tcf_walker* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = add nsw i64 %69, 1
  store i64 %70, i64* %68, align 8
  br label %90

71:                                               ; preds = %58
  %72 = load %struct.tcf_walker*, %struct.tcf_walker** %5, align 8
  %73 = getelementptr inbounds %struct.tcf_walker, %struct.tcf_walker* %72, i32 0, i32 3
  %74 = load i64 (%struct.tcf_proto.0*, %struct.route4_filter*, %struct.tcf_walker*)*, i64 (%struct.tcf_proto.0*, %struct.route4_filter*, %struct.tcf_walker*)** %73, align 8
  %75 = load %struct.tcf_proto*, %struct.tcf_proto** %4, align 8
  %76 = bitcast %struct.tcf_proto* %75 to %struct.tcf_proto.0*
  %77 = load %struct.route4_filter.1*, %struct.route4_filter.1** %11, align 8
  %78 = bitcast %struct.route4_filter.1* %77 to %struct.route4_filter*
  %79 = load %struct.tcf_walker*, %struct.tcf_walker** %5, align 8
  %80 = call i64 %74(%struct.tcf_proto.0* %76, %struct.route4_filter* %78, %struct.tcf_walker* %79)
  %81 = icmp slt i64 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %71
  %83 = load %struct.tcf_walker*, %struct.tcf_walker** %5, align 8
  %84 = getelementptr inbounds %struct.tcf_walker, %struct.tcf_walker* %83, i32 0, i32 0
  store i32 1, i32* %84, align 8
  br label %105

85:                                               ; preds = %71
  %86 = load %struct.tcf_walker*, %struct.tcf_walker** %5, align 8
  %87 = getelementptr inbounds %struct.tcf_walker, %struct.tcf_walker* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = add nsw i64 %88, 1
  store i64 %89, i64* %87, align 8
  br label %90

90:                                               ; preds = %85, %66
  %91 = load %struct.route4_filter.1*, %struct.route4_filter.1** %11, align 8
  %92 = getelementptr inbounds %struct.route4_filter.1, %struct.route4_filter.1* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = call i8* @rtnl_dereference(i32 %93)
  %95 = bitcast i8* %94 to %struct.route4_filter.1*
  store %struct.route4_filter.1* %95, %struct.route4_filter.1** %11, align 8
  br label %55

96:                                               ; preds = %55
  br label %97

97:                                               ; preds = %96
  %98 = load i32, i32* %9, align 4
  %99 = add i32 %98, 1
  store i32 %99, i32* %9, align 4
  br label %42

100:                                              ; preds = %42
  br label %101

101:                                              ; preds = %100, %29
  br label %102

102:                                              ; preds = %101
  %103 = load i32, i32* %8, align 4
  %104 = add i32 %103, 1
  store i32 %104, i32* %8, align 4
  br label %26

105:                                              ; preds = %24, %82, %26
  ret void
}

declare dso_local i8* @rtnl_dereference(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
