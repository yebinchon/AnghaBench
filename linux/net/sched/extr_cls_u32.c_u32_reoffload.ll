; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_cls_u32.c_u32_reoffload.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_cls_u32.c_u32_reoffload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcf_proto = type { i64, %struct.tc_u_common* }
%struct.tc_u_common = type { i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.tc_u_hnode = type { i64, i32, i32, i32*, i32 }
%struct.tc_u_knode = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tcf_proto*, i32, i32*, i8*, %struct.netlink_ext_ack*)* @u32_reoffload to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @u32_reoffload(%struct.tcf_proto* %0, i32 %1, i32* %2, i8* %3, %struct.netlink_ext_ack* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.tcf_proto*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.netlink_ext_ack*, align 8
  %12 = alloca %struct.tc_u_common*, align 8
  %13 = alloca %struct.tc_u_hnode*, align 8
  %14 = alloca %struct.tc_u_knode*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.tcf_proto* %0, %struct.tcf_proto** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i8* %3, i8** %10, align 8
  store %struct.netlink_ext_ack* %4, %struct.netlink_ext_ack** %11, align 8
  %17 = load %struct.tcf_proto*, %struct.tcf_proto** %7, align 8
  %18 = getelementptr inbounds %struct.tcf_proto, %struct.tcf_proto* %17, i32 0, i32 1
  %19 = load %struct.tc_u_common*, %struct.tc_u_common** %18, align 8
  store %struct.tc_u_common* %19, %struct.tc_u_common** %12, align 8
  %20 = load %struct.tc_u_common*, %struct.tc_u_common** %12, align 8
  %21 = getelementptr inbounds %struct.tc_u_common, %struct.tc_u_common* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i8* @rtnl_dereference(i32 %22)
  %24 = bitcast i8* %23 to %struct.tc_u_hnode*
  store %struct.tc_u_hnode* %24, %struct.tc_u_hnode** %13, align 8
  br label %25

25:                                               ; preds = %127, %5
  %26 = load %struct.tc_u_hnode*, %struct.tc_u_hnode** %13, align 8
  %27 = icmp ne %struct.tc_u_hnode* %26, null
  br i1 %27, label %28, label %133

28:                                               ; preds = %25
  %29 = load %struct.tc_u_hnode*, %struct.tc_u_hnode** %13, align 8
  %30 = getelementptr inbounds %struct.tc_u_hnode, %struct.tc_u_hnode* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.tcf_proto*, %struct.tcf_proto** %7, align 8
  %33 = getelementptr inbounds %struct.tcf_proto, %struct.tcf_proto* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %31, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %28
  br label %127

37:                                               ; preds = %28
  %38 = load i32, i32* %8, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %59

40:                                               ; preds = %37
  %41 = load %struct.tc_u_hnode*, %struct.tc_u_hnode** %13, align 8
  %42 = getelementptr inbounds %struct.tc_u_hnode, %struct.tc_u_hnode* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = call i64 @tc_skip_hw(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %59, label %46

46:                                               ; preds = %40
  %47 = load %struct.tcf_proto*, %struct.tcf_proto** %7, align 8
  %48 = load %struct.tc_u_hnode*, %struct.tc_u_hnode** %13, align 8
  %49 = load i32, i32* %8, align 4
  %50 = load i32*, i32** %9, align 8
  %51 = load i8*, i8** %10, align 8
  %52 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %11, align 8
  %53 = call i32 @u32_reoffload_hnode(%struct.tcf_proto* %47, %struct.tc_u_hnode* %48, i32 %49, i32* %50, i8* %51, %struct.netlink_ext_ack* %52)
  store i32 %53, i32* %16, align 4
  %54 = load i32, i32* %16, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %46
  %57 = load i32, i32* %16, align 4
  store i32 %57, i32* %6, align 4
  br label %134

58:                                               ; preds = %46
  br label %59

59:                                               ; preds = %58, %40, %37
  store i32 0, i32* %15, align 4
  br label %60

60:                                               ; preds = %106, %59
  %61 = load i32, i32* %15, align 4
  %62 = load %struct.tc_u_hnode*, %struct.tc_u_hnode** %13, align 8
  %63 = getelementptr inbounds %struct.tc_u_hnode, %struct.tc_u_hnode* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = icmp ule i32 %61, %64
  br i1 %65, label %66, label %109

66:                                               ; preds = %60
  %67 = load %struct.tc_u_hnode*, %struct.tc_u_hnode** %13, align 8
  %68 = getelementptr inbounds %struct.tc_u_hnode, %struct.tc_u_hnode* %67, i32 0, i32 3
  %69 = load i32*, i32** %68, align 8
  %70 = load i32, i32* %15, align 4
  %71 = zext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %69, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = call i8* @rtnl_dereference(i32 %73)
  %75 = bitcast i8* %74 to %struct.tc_u_knode*
  store %struct.tc_u_knode* %75, %struct.tc_u_knode** %14, align 8
  br label %76

76:                                               ; preds = %99, %66
  %77 = load %struct.tc_u_knode*, %struct.tc_u_knode** %14, align 8
  %78 = icmp ne %struct.tc_u_knode* %77, null
  br i1 %78, label %79, label %105

79:                                               ; preds = %76
  %80 = load %struct.tc_u_knode*, %struct.tc_u_knode** %14, align 8
  %81 = getelementptr inbounds %struct.tc_u_knode, %struct.tc_u_knode* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i64 @tc_skip_hw(i32 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %79
  br label %99

86:                                               ; preds = %79
  %87 = load %struct.tcf_proto*, %struct.tcf_proto** %7, align 8
  %88 = load %struct.tc_u_knode*, %struct.tc_u_knode** %14, align 8
  %89 = load i32, i32* %8, align 4
  %90 = load i32*, i32** %9, align 8
  %91 = load i8*, i8** %10, align 8
  %92 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %11, align 8
  %93 = call i32 @u32_reoffload_knode(%struct.tcf_proto* %87, %struct.tc_u_knode* %88, i32 %89, i32* %90, i8* %91, %struct.netlink_ext_ack* %92)
  store i32 %93, i32* %16, align 4
  %94 = load i32, i32* %16, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %86
  %97 = load i32, i32* %16, align 4
  store i32 %97, i32* %6, align 4
  br label %134

98:                                               ; preds = %86
  br label %99

99:                                               ; preds = %98, %85
  %100 = load %struct.tc_u_knode*, %struct.tc_u_knode** %14, align 8
  %101 = getelementptr inbounds %struct.tc_u_knode, %struct.tc_u_knode* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = call i8* @rtnl_dereference(i32 %102)
  %104 = bitcast i8* %103 to %struct.tc_u_knode*
  store %struct.tc_u_knode* %104, %struct.tc_u_knode** %14, align 8
  br label %76

105:                                              ; preds = %76
  br label %106

106:                                              ; preds = %105
  %107 = load i32, i32* %15, align 4
  %108 = add i32 %107, 1
  store i32 %108, i32* %15, align 4
  br label %60

109:                                              ; preds = %60
  %110 = load i32, i32* %8, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %126, label %112

112:                                              ; preds = %109
  %113 = load %struct.tc_u_hnode*, %struct.tc_u_hnode** %13, align 8
  %114 = getelementptr inbounds %struct.tc_u_hnode, %struct.tc_u_hnode* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 4
  %116 = call i64 @tc_skip_hw(i32 %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %126, label %118

118:                                              ; preds = %112
  %119 = load %struct.tcf_proto*, %struct.tcf_proto** %7, align 8
  %120 = load %struct.tc_u_hnode*, %struct.tc_u_hnode** %13, align 8
  %121 = load i32, i32* %8, align 4
  %122 = load i32*, i32** %9, align 8
  %123 = load i8*, i8** %10, align 8
  %124 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %11, align 8
  %125 = call i32 @u32_reoffload_hnode(%struct.tcf_proto* %119, %struct.tc_u_hnode* %120, i32 %121, i32* %122, i8* %123, %struct.netlink_ext_ack* %124)
  br label %126

126:                                              ; preds = %118, %112, %109
  br label %127

127:                                              ; preds = %126, %36
  %128 = load %struct.tc_u_hnode*, %struct.tc_u_hnode** %13, align 8
  %129 = getelementptr inbounds %struct.tc_u_hnode, %struct.tc_u_hnode* %128, i32 0, i32 4
  %130 = load i32, i32* %129, align 8
  %131 = call i8* @rtnl_dereference(i32 %130)
  %132 = bitcast i8* %131 to %struct.tc_u_hnode*
  store %struct.tc_u_hnode* %132, %struct.tc_u_hnode** %13, align 8
  br label %25

133:                                              ; preds = %25
  store i32 0, i32* %6, align 4
  br label %134

134:                                              ; preds = %133, %96, %56
  %135 = load i32, i32* %6, align 4
  ret i32 %135
}

declare dso_local i8* @rtnl_dereference(i32) #1

declare dso_local i64 @tc_skip_hw(i32) #1

declare dso_local i32 @u32_reoffload_hnode(%struct.tcf_proto*, %struct.tc_u_hnode*, i32, i32*, i8*, %struct.netlink_ext_ack*) #1

declare dso_local i32 @u32_reoffload_knode(%struct.tcf_proto*, %struct.tc_u_knode*, i32, i32*, i8*, %struct.netlink_ext_ack*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
