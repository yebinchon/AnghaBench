; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_cls_rsvp.h_rsvp_walk.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_cls_rsvp.h_rsvp_walk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcf_proto = type { i32 }
%struct.tcf_walker = type { i32, i64, i64, i64 (%struct.tcf_proto.0*, %struct.rsvp_filter*, %struct.tcf_walker*)* }
%struct.tcf_proto.0 = type opaque
%struct.rsvp_filter = type opaque
%struct.rsvp_head = type { i32* }
%struct.rsvp_session = type { i32*, i32 }
%struct.rsvp_filter.1 = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tcf_proto*, %struct.tcf_walker*, i32)* @rsvp_walk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rsvp_walk(%struct.tcf_proto* %0, %struct.tcf_walker* %1, i32 %2) #0 {
  %4 = alloca %struct.tcf_proto*, align 8
  %5 = alloca %struct.tcf_walker*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.rsvp_head*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.rsvp_session*, align 8
  %11 = alloca %struct.rsvp_filter.1*, align 8
  store %struct.tcf_proto* %0, %struct.tcf_proto** %4, align 8
  store %struct.tcf_walker* %1, %struct.tcf_walker** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load %struct.tcf_proto*, %struct.tcf_proto** %4, align 8
  %13 = getelementptr inbounds %struct.tcf_proto, %struct.tcf_proto* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i8* @rtnl_dereference(i32 %14)
  %16 = bitcast i8* %15 to %struct.rsvp_head*
  store %struct.rsvp_head* %16, %struct.rsvp_head** %7, align 8
  %17 = load %struct.tcf_walker*, %struct.tcf_walker** %5, align 8
  %18 = getelementptr inbounds %struct.tcf_walker, %struct.tcf_walker* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %3
  br label %109

22:                                               ; preds = %3
  store i32 0, i32* %8, align 4
  br label %23

23:                                               ; preds = %106, %22
  %24 = load i32, i32* %8, align 4
  %25 = icmp ult i32 %24, 256
  br i1 %25, label %26, label %109

26:                                               ; preds = %23
  %27 = load %struct.rsvp_head*, %struct.rsvp_head** %7, align 8
  %28 = getelementptr inbounds %struct.rsvp_head, %struct.rsvp_head* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = load i32, i32* %8, align 4
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = call i8* @rtnl_dereference(i32 %33)
  %35 = bitcast i8* %34 to %struct.rsvp_session*
  store %struct.rsvp_session* %35, %struct.rsvp_session** %10, align 8
  br label %36

36:                                               ; preds = %99, %26
  %37 = load %struct.rsvp_session*, %struct.rsvp_session** %10, align 8
  %38 = icmp ne %struct.rsvp_session* %37, null
  br i1 %38, label %39, label %105

39:                                               ; preds = %36
  store i32 0, i32* %9, align 4
  br label %40

40:                                               ; preds = %95, %39
  %41 = load i32, i32* %9, align 4
  %42 = icmp ule i32 %41, 16
  br i1 %42, label %43, label %98

43:                                               ; preds = %40
  %44 = load %struct.rsvp_session*, %struct.rsvp_session** %10, align 8
  %45 = getelementptr inbounds %struct.rsvp_session, %struct.rsvp_session* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = load i32, i32* %9, align 4
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = call i8* @rtnl_dereference(i32 %50)
  %52 = bitcast i8* %51 to %struct.rsvp_filter.1*
  store %struct.rsvp_filter.1* %52, %struct.rsvp_filter.1** %11, align 8
  br label %53

53:                                               ; preds = %88, %43
  %54 = load %struct.rsvp_filter.1*, %struct.rsvp_filter.1** %11, align 8
  %55 = icmp ne %struct.rsvp_filter.1* %54, null
  br i1 %55, label %56, label %94

56:                                               ; preds = %53
  %57 = load %struct.tcf_walker*, %struct.tcf_walker** %5, align 8
  %58 = getelementptr inbounds %struct.tcf_walker, %struct.tcf_walker* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.tcf_walker*, %struct.tcf_walker** %5, align 8
  %61 = getelementptr inbounds %struct.tcf_walker, %struct.tcf_walker* %60, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = icmp slt i64 %59, %62
  br i1 %63, label %64, label %69

64:                                               ; preds = %56
  %65 = load %struct.tcf_walker*, %struct.tcf_walker** %5, align 8
  %66 = getelementptr inbounds %struct.tcf_walker, %struct.tcf_walker* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = add nsw i64 %67, 1
  store i64 %68, i64* %66, align 8
  br label %88

69:                                               ; preds = %56
  %70 = load %struct.tcf_walker*, %struct.tcf_walker** %5, align 8
  %71 = getelementptr inbounds %struct.tcf_walker, %struct.tcf_walker* %70, i32 0, i32 3
  %72 = load i64 (%struct.tcf_proto.0*, %struct.rsvp_filter*, %struct.tcf_walker*)*, i64 (%struct.tcf_proto.0*, %struct.rsvp_filter*, %struct.tcf_walker*)** %71, align 8
  %73 = load %struct.tcf_proto*, %struct.tcf_proto** %4, align 8
  %74 = bitcast %struct.tcf_proto* %73 to %struct.tcf_proto.0*
  %75 = load %struct.rsvp_filter.1*, %struct.rsvp_filter.1** %11, align 8
  %76 = bitcast %struct.rsvp_filter.1* %75 to %struct.rsvp_filter*
  %77 = load %struct.tcf_walker*, %struct.tcf_walker** %5, align 8
  %78 = call i64 %72(%struct.tcf_proto.0* %74, %struct.rsvp_filter* %76, %struct.tcf_walker* %77)
  %79 = icmp slt i64 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %69
  %81 = load %struct.tcf_walker*, %struct.tcf_walker** %5, align 8
  %82 = getelementptr inbounds %struct.tcf_walker, %struct.tcf_walker* %81, i32 0, i32 0
  store i32 1, i32* %82, align 8
  br label %109

83:                                               ; preds = %69
  %84 = load %struct.tcf_walker*, %struct.tcf_walker** %5, align 8
  %85 = getelementptr inbounds %struct.tcf_walker, %struct.tcf_walker* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = add nsw i64 %86, 1
  store i64 %87, i64* %85, align 8
  br label %88

88:                                               ; preds = %83, %64
  %89 = load %struct.rsvp_filter.1*, %struct.rsvp_filter.1** %11, align 8
  %90 = getelementptr inbounds %struct.rsvp_filter.1, %struct.rsvp_filter.1* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = call i8* @rtnl_dereference(i32 %91)
  %93 = bitcast i8* %92 to %struct.rsvp_filter.1*
  store %struct.rsvp_filter.1* %93, %struct.rsvp_filter.1** %11, align 8
  br label %53

94:                                               ; preds = %53
  br label %95

95:                                               ; preds = %94
  %96 = load i32, i32* %9, align 4
  %97 = add i32 %96, 1
  store i32 %97, i32* %9, align 4
  br label %40

98:                                               ; preds = %40
  br label %99

99:                                               ; preds = %98
  %100 = load %struct.rsvp_session*, %struct.rsvp_session** %10, align 8
  %101 = getelementptr inbounds %struct.rsvp_session, %struct.rsvp_session* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 8
  %103 = call i8* @rtnl_dereference(i32 %102)
  %104 = bitcast i8* %103 to %struct.rsvp_session*
  store %struct.rsvp_session* %104, %struct.rsvp_session** %10, align 8
  br label %36

105:                                              ; preds = %36
  br label %106

106:                                              ; preds = %105
  %107 = load i32, i32* %8, align 4
  %108 = add i32 %107, 1
  store i32 %108, i32* %8, align 4
  br label %23

109:                                              ; preds = %21, %80, %23
  ret void
}

declare dso_local i8* @rtnl_dereference(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
