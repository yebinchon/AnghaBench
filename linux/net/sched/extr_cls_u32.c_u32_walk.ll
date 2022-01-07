; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_cls_u32.c_u32_walk.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_cls_u32.c_u32_walk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcf_proto = type { i64, %struct.tc_u_common* }
%struct.tc_u_common = type { i32 }
%struct.tcf_walker = type { i32, i64, i64, i64 (%struct.tcf_proto.0*, %struct.tc_u_knode*, %struct.tcf_walker*)* }
%struct.tcf_proto.0 = type opaque
%struct.tc_u_knode = type opaque
%struct.tc_u_hnode = type { i64, i32, i32, i32* }
%struct.tc_u_knode.1 = type { i64, i32, i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tcf_proto*, %struct.tcf_walker*, i32)* @u32_walk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @u32_walk(%struct.tcf_proto* %0, %struct.tcf_walker* %1, i32 %2) #0 {
  %4 = alloca %struct.tcf_proto*, align 8
  %5 = alloca %struct.tcf_walker*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.tc_u_common*, align 8
  %8 = alloca %struct.tc_u_hnode*, align 8
  %9 = alloca %struct.tc_u_knode.1*, align 8
  %10 = alloca i32, align 4
  store %struct.tcf_proto* %0, %struct.tcf_proto** %4, align 8
  store %struct.tcf_walker* %1, %struct.tcf_walker** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.tcf_proto*, %struct.tcf_proto** %4, align 8
  %12 = getelementptr inbounds %struct.tcf_proto, %struct.tcf_proto* %11, i32 0, i32 1
  %13 = load %struct.tc_u_common*, %struct.tc_u_common** %12, align 8
  store %struct.tc_u_common* %13, %struct.tc_u_common** %7, align 8
  %14 = load %struct.tcf_walker*, %struct.tcf_walker** %5, align 8
  %15 = getelementptr inbounds %struct.tcf_walker, %struct.tcf_walker* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  br label %133

19:                                               ; preds = %3
  %20 = load %struct.tc_u_common*, %struct.tc_u_common** %7, align 8
  %21 = getelementptr inbounds %struct.tc_u_common, %struct.tc_u_common* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i8* @rtnl_dereference(i32 %22)
  %24 = bitcast i8* %23 to %struct.tc_u_hnode*
  store %struct.tc_u_hnode* %24, %struct.tc_u_hnode** %8, align 8
  br label %25

25:                                               ; preds = %127, %19
  %26 = load %struct.tc_u_hnode*, %struct.tc_u_hnode** %8, align 8
  %27 = icmp ne %struct.tc_u_hnode* %26, null
  br i1 %27, label %28, label %133

28:                                               ; preds = %25
  %29 = load %struct.tc_u_hnode*, %struct.tc_u_hnode** %8, align 8
  %30 = getelementptr inbounds %struct.tc_u_hnode, %struct.tc_u_hnode* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.tcf_proto*, %struct.tcf_proto** %4, align 8
  %33 = getelementptr inbounds %struct.tcf_proto, %struct.tcf_proto* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %31, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %28
  br label %127

37:                                               ; preds = %28
  %38 = load %struct.tcf_walker*, %struct.tcf_walker** %5, align 8
  %39 = getelementptr inbounds %struct.tcf_walker, %struct.tcf_walker* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.tcf_walker*, %struct.tcf_walker** %5, align 8
  %42 = getelementptr inbounds %struct.tcf_walker, %struct.tcf_walker* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = icmp sge i64 %40, %43
  br i1 %44, label %45, label %60

45:                                               ; preds = %37
  %46 = load %struct.tcf_walker*, %struct.tcf_walker** %5, align 8
  %47 = getelementptr inbounds %struct.tcf_walker, %struct.tcf_walker* %46, i32 0, i32 3
  %48 = load i64 (%struct.tcf_proto.0*, %struct.tc_u_knode*, %struct.tcf_walker*)*, i64 (%struct.tcf_proto.0*, %struct.tc_u_knode*, %struct.tcf_walker*)** %47, align 8
  %49 = load %struct.tcf_proto*, %struct.tcf_proto** %4, align 8
  %50 = bitcast %struct.tcf_proto* %49 to %struct.tcf_proto.0*
  %51 = load %struct.tc_u_hnode*, %struct.tc_u_hnode** %8, align 8
  %52 = bitcast %struct.tc_u_hnode* %51 to %struct.tc_u_knode*
  %53 = load %struct.tcf_walker*, %struct.tcf_walker** %5, align 8
  %54 = call i64 %48(%struct.tcf_proto.0* %50, %struct.tc_u_knode* %52, %struct.tcf_walker* %53)
  %55 = icmp slt i64 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %45
  %57 = load %struct.tcf_walker*, %struct.tcf_walker** %5, align 8
  %58 = getelementptr inbounds %struct.tcf_walker, %struct.tcf_walker* %57, i32 0, i32 0
  store i32 1, i32* %58, align 8
  br label %133

59:                                               ; preds = %45
  br label %60

60:                                               ; preds = %59, %37
  %61 = load %struct.tcf_walker*, %struct.tcf_walker** %5, align 8
  %62 = getelementptr inbounds %struct.tcf_walker, %struct.tcf_walker* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = add nsw i64 %63, 1
  store i64 %64, i64* %62, align 8
  store i32 0, i32* %10, align 4
  br label %65

65:                                               ; preds = %123, %60
  %66 = load i32, i32* %10, align 4
  %67 = load %struct.tc_u_hnode*, %struct.tc_u_hnode** %8, align 8
  %68 = getelementptr inbounds %struct.tc_u_hnode, %struct.tc_u_hnode* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = icmp ule i32 %66, %69
  br i1 %70, label %71, label %126

71:                                               ; preds = %65
  %72 = load %struct.tc_u_hnode*, %struct.tc_u_hnode** %8, align 8
  %73 = getelementptr inbounds %struct.tc_u_hnode, %struct.tc_u_hnode* %72, i32 0, i32 3
  %74 = load i32*, i32** %73, align 8
  %75 = load i32, i32* %10, align 4
  %76 = zext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = call i8* @rtnl_dereference(i32 %78)
  %80 = bitcast i8* %79 to %struct.tc_u_knode.1*
  store %struct.tc_u_knode.1* %80, %struct.tc_u_knode.1** %9, align 8
  br label %81

81:                                               ; preds = %116, %71
  %82 = load %struct.tc_u_knode.1*, %struct.tc_u_knode.1** %9, align 8
  %83 = icmp ne %struct.tc_u_knode.1* %82, null
  br i1 %83, label %84, label %122

84:                                               ; preds = %81
  %85 = load %struct.tcf_walker*, %struct.tcf_walker** %5, align 8
  %86 = getelementptr inbounds %struct.tcf_walker, %struct.tcf_walker* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = load %struct.tcf_walker*, %struct.tcf_walker** %5, align 8
  %89 = getelementptr inbounds %struct.tcf_walker, %struct.tcf_walker* %88, i32 0, i32 2
  %90 = load i64, i64* %89, align 8
  %91 = icmp slt i64 %87, %90
  br i1 %91, label %92, label %97

92:                                               ; preds = %84
  %93 = load %struct.tcf_walker*, %struct.tcf_walker** %5, align 8
  %94 = getelementptr inbounds %struct.tcf_walker, %struct.tcf_walker* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = add nsw i64 %95, 1
  store i64 %96, i64* %94, align 8
  br label %116

97:                                               ; preds = %84
  %98 = load %struct.tcf_walker*, %struct.tcf_walker** %5, align 8
  %99 = getelementptr inbounds %struct.tcf_walker, %struct.tcf_walker* %98, i32 0, i32 3
  %100 = load i64 (%struct.tcf_proto.0*, %struct.tc_u_knode*, %struct.tcf_walker*)*, i64 (%struct.tcf_proto.0*, %struct.tc_u_knode*, %struct.tcf_walker*)** %99, align 8
  %101 = load %struct.tcf_proto*, %struct.tcf_proto** %4, align 8
  %102 = bitcast %struct.tcf_proto* %101 to %struct.tcf_proto.0*
  %103 = load %struct.tc_u_knode.1*, %struct.tc_u_knode.1** %9, align 8
  %104 = bitcast %struct.tc_u_knode.1* %103 to %struct.tc_u_knode*
  %105 = load %struct.tcf_walker*, %struct.tcf_walker** %5, align 8
  %106 = call i64 %100(%struct.tcf_proto.0* %102, %struct.tc_u_knode* %104, %struct.tcf_walker* %105)
  %107 = icmp slt i64 %106, 0
  br i1 %107, label %108, label %111

108:                                              ; preds = %97
  %109 = load %struct.tcf_walker*, %struct.tcf_walker** %5, align 8
  %110 = getelementptr inbounds %struct.tcf_walker, %struct.tcf_walker* %109, i32 0, i32 0
  store i32 1, i32* %110, align 8
  br label %133

111:                                              ; preds = %97
  %112 = load %struct.tcf_walker*, %struct.tcf_walker** %5, align 8
  %113 = getelementptr inbounds %struct.tcf_walker, %struct.tcf_walker* %112, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  %115 = add nsw i64 %114, 1
  store i64 %115, i64* %113, align 8
  br label %116

116:                                              ; preds = %111, %92
  %117 = load %struct.tc_u_knode.1*, %struct.tc_u_knode.1** %9, align 8
  %118 = getelementptr inbounds %struct.tc_u_knode.1, %struct.tc_u_knode.1* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 4
  %120 = call i8* @rtnl_dereference(i32 %119)
  %121 = bitcast i8* %120 to %struct.tc_u_knode.1*
  store %struct.tc_u_knode.1* %121, %struct.tc_u_knode.1** %9, align 8
  br label %81

122:                                              ; preds = %81
  br label %123

123:                                              ; preds = %122
  %124 = load i32, i32* %10, align 4
  %125 = add i32 %124, 1
  store i32 %125, i32* %10, align 4
  br label %65

126:                                              ; preds = %65
  br label %127

127:                                              ; preds = %126, %36
  %128 = load %struct.tc_u_hnode*, %struct.tc_u_hnode** %8, align 8
  %129 = getelementptr inbounds %struct.tc_u_hnode, %struct.tc_u_hnode* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 4
  %131 = call i8* @rtnl_dereference(i32 %130)
  %132 = bitcast i8* %131 to %struct.tc_u_hnode*
  store %struct.tc_u_hnode* %132, %struct.tc_u_hnode** %8, align 8
  br label %25

133:                                              ; preds = %18, %56, %108, %25
  ret void
}

declare dso_local i8* @rtnl_dereference(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
