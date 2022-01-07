; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_cls_tcindex.c_tcindex_walk.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_cls_tcindex.c_tcindex_walk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcf_proto = type { i32 }
%struct.tcf_walker = type { i64, i64, i64 (%struct.tcf_proto.0*, %struct.TYPE_5__*, %struct.tcf_walker*)*, i32 }
%struct.tcf_proto.0 = type opaque
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.tcindex_data = type { i32, i32*, %struct.TYPE_5__* }
%struct.tcindex_filter = type { %struct.TYPE_5__, i32 }

@.str = private unnamed_addr constant [36 x i8] c"tcindex_walk(tp %p,walker %p),p %p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tcf_proto*, %struct.tcf_walker*, i32)* @tcindex_walk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tcindex_walk(%struct.tcf_proto* %0, %struct.tcf_walker* %1, i32 %2) #0 {
  %4 = alloca %struct.tcf_proto*, align 8
  %5 = alloca %struct.tcf_walker*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.tcindex_data*, align 8
  %8 = alloca %struct.tcindex_filter*, align 8
  %9 = alloca %struct.tcindex_filter*, align 8
  %10 = alloca i32, align 4
  store %struct.tcf_proto* %0, %struct.tcf_proto** %4, align 8
  store %struct.tcf_walker* %1, %struct.tcf_walker** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.tcf_proto*, %struct.tcf_proto** %4, align 8
  %12 = getelementptr inbounds %struct.tcf_proto, %struct.tcf_proto* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i8* @rtnl_dereference(i32 %13)
  %15 = bitcast i8* %14 to %struct.tcindex_data*
  store %struct.tcindex_data* %15, %struct.tcindex_data** %7, align 8
  %16 = load %struct.tcf_proto*, %struct.tcf_proto** %4, align 8
  %17 = load %struct.tcf_walker*, %struct.tcf_walker** %5, align 8
  %18 = load %struct.tcindex_data*, %struct.tcindex_data** %7, align 8
  %19 = call i32 @pr_debug(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), %struct.tcf_proto* %16, %struct.tcf_walker* %17, %struct.tcindex_data* %18)
  %20 = load %struct.tcindex_data*, %struct.tcindex_data** %7, align 8
  %21 = getelementptr inbounds %struct.tcindex_data, %struct.tcindex_data* %20, i32 0, i32 2
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %21, align 8
  %23 = icmp ne %struct.TYPE_5__* %22, null
  br i1 %23, label %24, label %79

24:                                               ; preds = %3
  store i32 0, i32* %10, align 4
  br label %25

25:                                               ; preds = %75, %24
  %26 = load i32, i32* %10, align 4
  %27 = load %struct.tcindex_data*, %struct.tcindex_data** %7, align 8
  %28 = getelementptr inbounds %struct.tcindex_data, %struct.tcindex_data* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp slt i32 %26, %29
  br i1 %30, label %31, label %78

31:                                               ; preds = %25
  %32 = load %struct.tcindex_data*, %struct.tcindex_data** %7, align 8
  %33 = getelementptr inbounds %struct.tcindex_data, %struct.tcindex_data* %32, i32 0, i32 2
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %33, align 8
  %35 = load i32, i32* %10, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %31
  br label %75

43:                                               ; preds = %31
  %44 = load %struct.tcf_walker*, %struct.tcf_walker** %5, align 8
  %45 = getelementptr inbounds %struct.tcf_walker, %struct.tcf_walker* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.tcf_walker*, %struct.tcf_walker** %5, align 8
  %48 = getelementptr inbounds %struct.tcf_walker, %struct.tcf_walker* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = icmp sge i64 %46, %49
  br i1 %50, label %51, label %70

51:                                               ; preds = %43
  %52 = load %struct.tcf_walker*, %struct.tcf_walker** %5, align 8
  %53 = getelementptr inbounds %struct.tcf_walker, %struct.tcf_walker* %52, i32 0, i32 2
  %54 = load i64 (%struct.tcf_proto.0*, %struct.TYPE_5__*, %struct.tcf_walker*)*, i64 (%struct.tcf_proto.0*, %struct.TYPE_5__*, %struct.tcf_walker*)** %53, align 8
  %55 = load %struct.tcf_proto*, %struct.tcf_proto** %4, align 8
  %56 = bitcast %struct.tcf_proto* %55 to %struct.tcf_proto.0*
  %57 = load %struct.tcindex_data*, %struct.tcindex_data** %7, align 8
  %58 = getelementptr inbounds %struct.tcindex_data, %struct.tcindex_data* %57, i32 0, i32 2
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %58, align 8
  %60 = load i32, i32* %10, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i64 %61
  %63 = load %struct.tcf_walker*, %struct.tcf_walker** %5, align 8
  %64 = call i64 %54(%struct.tcf_proto.0* %56, %struct.TYPE_5__* %62, %struct.tcf_walker* %63)
  %65 = icmp slt i64 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %51
  %67 = load %struct.tcf_walker*, %struct.tcf_walker** %5, align 8
  %68 = getelementptr inbounds %struct.tcf_walker, %struct.tcf_walker* %67, i32 0, i32 3
  store i32 1, i32* %68, align 8
  br label %144

69:                                               ; preds = %51
  br label %70

70:                                               ; preds = %69, %43
  %71 = load %struct.tcf_walker*, %struct.tcf_walker** %5, align 8
  %72 = getelementptr inbounds %struct.tcf_walker, %struct.tcf_walker* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = add nsw i64 %73, 1
  store i64 %74, i64* %72, align 8
  br label %75

75:                                               ; preds = %70, %42
  %76 = load i32, i32* %10, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %10, align 4
  br label %25

78:                                               ; preds = %25
  br label %79

79:                                               ; preds = %78, %3
  %80 = load %struct.tcindex_data*, %struct.tcindex_data** %7, align 8
  %81 = getelementptr inbounds %struct.tcindex_data, %struct.tcindex_data* %80, i32 0, i32 1
  %82 = load i32*, i32** %81, align 8
  %83 = icmp ne i32* %82, null
  br i1 %83, label %85, label %84

84:                                               ; preds = %79
  br label %144

85:                                               ; preds = %79
  store i32 0, i32* %10, align 4
  br label %86

86:                                               ; preds = %141, %85
  %87 = load i32, i32* %10, align 4
  %88 = load %struct.tcindex_data*, %struct.tcindex_data** %7, align 8
  %89 = getelementptr inbounds %struct.tcindex_data, %struct.tcindex_data* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = icmp slt i32 %87, %90
  br i1 %91, label %92, label %144

92:                                               ; preds = %86
  %93 = load %struct.tcindex_data*, %struct.tcindex_data** %7, align 8
  %94 = getelementptr inbounds %struct.tcindex_data, %struct.tcindex_data* %93, i32 0, i32 1
  %95 = load i32*, i32** %94, align 8
  %96 = load i32, i32* %10, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %95, i64 %97
  %99 = load i32, i32* %98, align 4
  %100 = call i8* @rtnl_dereference(i32 %99)
  %101 = bitcast i8* %100 to %struct.tcindex_filter*
  store %struct.tcindex_filter* %101, %struct.tcindex_filter** %8, align 8
  br label %102

102:                                              ; preds = %138, %92
  %103 = load %struct.tcindex_filter*, %struct.tcindex_filter** %8, align 8
  %104 = icmp ne %struct.tcindex_filter* %103, null
  br i1 %104, label %105, label %140

105:                                              ; preds = %102
  %106 = load %struct.tcindex_filter*, %struct.tcindex_filter** %8, align 8
  %107 = getelementptr inbounds %struct.tcindex_filter, %struct.tcindex_filter* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = call i8* @rtnl_dereference(i32 %108)
  %110 = bitcast i8* %109 to %struct.tcindex_filter*
  store %struct.tcindex_filter* %110, %struct.tcindex_filter** %9, align 8
  %111 = load %struct.tcf_walker*, %struct.tcf_walker** %5, align 8
  %112 = getelementptr inbounds %struct.tcf_walker, %struct.tcf_walker* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = load %struct.tcf_walker*, %struct.tcf_walker** %5, align 8
  %115 = getelementptr inbounds %struct.tcf_walker, %struct.tcf_walker* %114, i32 0, i32 1
  %116 = load i64, i64* %115, align 8
  %117 = icmp sge i64 %113, %116
  br i1 %117, label %118, label %133

118:                                              ; preds = %105
  %119 = load %struct.tcf_walker*, %struct.tcf_walker** %5, align 8
  %120 = getelementptr inbounds %struct.tcf_walker, %struct.tcf_walker* %119, i32 0, i32 2
  %121 = load i64 (%struct.tcf_proto.0*, %struct.TYPE_5__*, %struct.tcf_walker*)*, i64 (%struct.tcf_proto.0*, %struct.TYPE_5__*, %struct.tcf_walker*)** %120, align 8
  %122 = load %struct.tcf_proto*, %struct.tcf_proto** %4, align 8
  %123 = bitcast %struct.tcf_proto* %122 to %struct.tcf_proto.0*
  %124 = load %struct.tcindex_filter*, %struct.tcindex_filter** %8, align 8
  %125 = getelementptr inbounds %struct.tcindex_filter, %struct.tcindex_filter* %124, i32 0, i32 0
  %126 = load %struct.tcf_walker*, %struct.tcf_walker** %5, align 8
  %127 = call i64 %121(%struct.tcf_proto.0* %123, %struct.TYPE_5__* %125, %struct.tcf_walker* %126)
  %128 = icmp slt i64 %127, 0
  br i1 %128, label %129, label %132

129:                                              ; preds = %118
  %130 = load %struct.tcf_walker*, %struct.tcf_walker** %5, align 8
  %131 = getelementptr inbounds %struct.tcf_walker, %struct.tcf_walker* %130, i32 0, i32 3
  store i32 1, i32* %131, align 8
  br label %144

132:                                              ; preds = %118
  br label %133

133:                                              ; preds = %132, %105
  %134 = load %struct.tcf_walker*, %struct.tcf_walker** %5, align 8
  %135 = getelementptr inbounds %struct.tcf_walker, %struct.tcf_walker* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = add nsw i64 %136, 1
  store i64 %137, i64* %135, align 8
  br label %138

138:                                              ; preds = %133
  %139 = load %struct.tcindex_filter*, %struct.tcindex_filter** %9, align 8
  store %struct.tcindex_filter* %139, %struct.tcindex_filter** %8, align 8
  br label %102

140:                                              ; preds = %102
  br label %141

141:                                              ; preds = %140
  %142 = load i32, i32* %10, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %10, align 4
  br label %86

144:                                              ; preds = %66, %84, %129, %86
  ret void
}

declare dso_local i8* @rtnl_dereference(i32) #1

declare dso_local i32 @pr_debug(i8*, %struct.tcf_proto*, %struct.tcf_walker*, %struct.tcindex_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
