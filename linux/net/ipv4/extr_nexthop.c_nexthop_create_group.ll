; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_nexthop.c_nexthop_create_group.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_nexthop.c_nexthop_create_group.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nexthop = type { i32, i32, i32, i32, %struct.TYPE_2__*, i32, i32, i32 }
%struct.TYPE_2__ = type { %struct.nh_group*, %struct.nh_group*, i32, i64 }
%struct.nh_group = type { i32, i32, i32, i32, %struct.TYPE_2__*, i32, i32, i32 }
%struct.net = type { i32 }
%struct.nh_config = type { i64, %struct.nlattr* }
%struct.nlattr = type { i32 }
%struct.nexthop_grp = type { i64, i32 }
%struct.nh_info = type { i64 }

@ENOMEM = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i64 0, align 8
@NEXTHOP_GRP_TYPE_MPATH = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.nexthop* (%struct.net*, %struct.nh_config*)* @nexthop_create_group to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.nexthop* @nexthop_create_group(%struct.net* %0, %struct.nh_config* %1) #0 {
  %3 = alloca %struct.nexthop*, align 8
  %4 = alloca %struct.net*, align 8
  %5 = alloca %struct.nh_config*, align 8
  %6 = alloca %struct.nlattr*, align 8
  %7 = alloca %struct.nexthop_grp*, align 8
  %8 = alloca %struct.nh_group*, align 8
  %9 = alloca %struct.nexthop*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.nexthop*, align 8
  %12 = alloca %struct.nh_info*, align 8
  store %struct.net* %0, %struct.net** %4, align 8
  store %struct.nh_config* %1, %struct.nh_config** %5, align 8
  %13 = load %struct.nh_config*, %struct.nh_config** %5, align 8
  %14 = getelementptr inbounds %struct.nh_config, %struct.nh_config* %13, i32 0, i32 1
  %15 = load %struct.nlattr*, %struct.nlattr** %14, align 8
  store %struct.nlattr* %15, %struct.nlattr** %6, align 8
  %16 = load %struct.nlattr*, %struct.nlattr** %6, align 8
  %17 = call %struct.nexthop_grp* @nla_data(%struct.nlattr* %16)
  store %struct.nexthop_grp* %17, %struct.nexthop_grp** %7, align 8
  %18 = call %struct.nh_group* (...) @nexthop_alloc()
  %19 = bitcast %struct.nh_group* %18 to %struct.nexthop*
  store %struct.nexthop* %19, %struct.nexthop** %9, align 8
  %20 = load %struct.nexthop*, %struct.nexthop** %9, align 8
  %21 = icmp ne %struct.nexthop* %20, null
  br i1 %21, label %27, label %22

22:                                               ; preds = %2
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  %25 = call %struct.nh_group* @ERR_PTR(i32 %24)
  %26 = bitcast %struct.nh_group* %25 to %struct.nexthop*
  store %struct.nexthop* %26, %struct.nexthop** %3, align 8
  br label %172

27:                                               ; preds = %2
  %28 = load %struct.nexthop*, %struct.nexthop** %9, align 8
  %29 = getelementptr inbounds %struct.nexthop, %struct.nexthop* %28, i32 0, i32 0
  store i32 1, i32* %29, align 8
  %30 = load %struct.nlattr*, %struct.nlattr** %6, align 8
  %31 = call i32 @nla_len(%struct.nlattr* %30)
  %32 = sext i32 %31 to i64
  %33 = udiv i64 %32, 16
  %34 = trunc i64 %33 to i32
  %35 = call %struct.nh_group* @nexthop_grp_alloc(i32 %34)
  store %struct.nh_group* %35, %struct.nh_group** %8, align 8
  %36 = load %struct.nh_group*, %struct.nh_group** %8, align 8
  %37 = icmp ne %struct.nh_group* %36, null
  br i1 %37, label %46, label %38

38:                                               ; preds = %27
  %39 = load %struct.nexthop*, %struct.nexthop** %9, align 8
  %40 = bitcast %struct.nexthop* %39 to %struct.nh_group*
  %41 = call i32 @kfree(%struct.nh_group* %40)
  %42 = load i32, i32* @ENOMEM, align 4
  %43 = sub nsw i32 0, %42
  %44 = call %struct.nh_group* @ERR_PTR(i32 %43)
  %45 = bitcast %struct.nh_group* %44 to %struct.nexthop*
  store %struct.nexthop* %45, %struct.nexthop** %3, align 8
  br label %172

46:                                               ; preds = %27
  store i32 0, i32* %10, align 4
  br label %47

47:                                               ; preds = %124, %46
  %48 = load i32, i32* %10, align 4
  %49 = load %struct.nh_group*, %struct.nh_group** %8, align 8
  %50 = getelementptr inbounds %struct.nh_group, %struct.nh_group* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = icmp slt i32 %48, %51
  br i1 %52, label %53, label %127

53:                                               ; preds = %47
  %54 = load %struct.net*, %struct.net** %4, align 8
  %55 = load %struct.nexthop_grp*, %struct.nexthop_grp** %7, align 8
  %56 = load i32, i32* %10, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.nexthop_grp, %struct.nexthop_grp* %55, i64 %57
  %59 = getelementptr inbounds %struct.nexthop_grp, %struct.nexthop_grp* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = call %struct.nh_group* @nexthop_find_by_id(%struct.net* %54, i32 %60)
  %62 = bitcast %struct.nh_group* %61 to %struct.nexthop*
  store %struct.nexthop* %62, %struct.nexthop** %11, align 8
  %63 = load %struct.nexthop*, %struct.nexthop** %11, align 8
  %64 = bitcast %struct.nexthop* %63 to %struct.nh_group*
  %65 = call i32 @nexthop_get(%struct.nh_group* %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %68, label %67

67:                                               ; preds = %53
  br label %145

68:                                               ; preds = %53
  %69 = load %struct.nexthop*, %struct.nexthop** %11, align 8
  %70 = getelementptr inbounds %struct.nexthop, %struct.nexthop* %69, i32 0, i32 7
  %71 = load i32, i32* %70, align 8
  %72 = call %struct.nh_info* @rtnl_dereference(i32 %71)
  store %struct.nh_info* %72, %struct.nh_info** %12, align 8
  %73 = load %struct.nh_info*, %struct.nh_info** %12, align 8
  %74 = getelementptr inbounds %struct.nh_info, %struct.nh_info* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @AF_INET, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %81

78:                                               ; preds = %68
  %79 = load %struct.nh_group*, %struct.nh_group** %8, align 8
  %80 = getelementptr inbounds %struct.nh_group, %struct.nh_group* %79, i32 0, i32 2
  store i32 1, i32* %80, align 8
  br label %81

81:                                               ; preds = %78, %68
  %82 = load %struct.nexthop*, %struct.nexthop** %11, align 8
  %83 = bitcast %struct.nexthop* %82 to %struct.nh_group*
  %84 = load %struct.nh_group*, %struct.nh_group** %8, align 8
  %85 = getelementptr inbounds %struct.nh_group, %struct.nh_group* %84, i32 0, i32 4
  %86 = load %struct.TYPE_2__*, %struct.TYPE_2__** %85, align 8
  %87 = load i32, i32* %10, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 0
  store %struct.nh_group* %83, %struct.nh_group** %90, align 8
  %91 = load %struct.nexthop_grp*, %struct.nexthop_grp** %7, align 8
  %92 = load i32, i32* %10, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.nexthop_grp, %struct.nexthop_grp* %91, i64 %93
  %95 = getelementptr inbounds %struct.nexthop_grp, %struct.nexthop_grp* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = add nsw i64 %96, 1
  %98 = load %struct.nh_group*, %struct.nh_group** %8, align 8
  %99 = getelementptr inbounds %struct.nh_group, %struct.nh_group* %98, i32 0, i32 4
  %100 = load %struct.TYPE_2__*, %struct.TYPE_2__** %99, align 8
  %101 = load i32, i32* %10, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 3
  store i64 %97, i64* %104, align 8
  %105 = load %struct.nh_group*, %struct.nh_group** %8, align 8
  %106 = getelementptr inbounds %struct.nh_group, %struct.nh_group* %105, i32 0, i32 4
  %107 = load %struct.TYPE_2__*, %struct.TYPE_2__** %106, align 8
  %108 = load i32, i32* %10, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i64 %109
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i32 0, i32 2
  %112 = load %struct.nexthop*, %struct.nexthop** %11, align 8
  %113 = getelementptr inbounds %struct.nexthop, %struct.nexthop* %112, i32 0, i32 6
  %114 = call i32 @list_add(i32* %111, i32* %113)
  %115 = load %struct.nexthop*, %struct.nexthop** %9, align 8
  %116 = bitcast %struct.nexthop* %115 to %struct.nh_group*
  %117 = load %struct.nh_group*, %struct.nh_group** %8, align 8
  %118 = getelementptr inbounds %struct.nh_group, %struct.nh_group* %117, i32 0, i32 4
  %119 = load %struct.TYPE_2__*, %struct.TYPE_2__** %118, align 8
  %120 = load i32, i32* %10, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %119, i64 %121
  %123 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %122, i32 0, i32 1
  store %struct.nh_group* %116, %struct.nh_group** %123, align 8
  br label %124

124:                                              ; preds = %81
  %125 = load i32, i32* %10, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %10, align 4
  br label %47

127:                                              ; preds = %47
  %128 = load %struct.nh_config*, %struct.nh_config** %5, align 8
  %129 = getelementptr inbounds %struct.nh_config, %struct.nh_config* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = load i64, i64* @NEXTHOP_GRP_TYPE_MPATH, align 8
  %132 = icmp eq i64 %130, %131
  br i1 %132, label %133, label %138

133:                                              ; preds = %127
  %134 = load %struct.nh_group*, %struct.nh_group** %8, align 8
  %135 = getelementptr inbounds %struct.nh_group, %struct.nh_group* %134, i32 0, i32 3
  store i32 1, i32* %135, align 4
  %136 = load %struct.nh_group*, %struct.nh_group** %8, align 8
  %137 = call i32 @nh_group_rebalance(%struct.nh_group* %136)
  br label %138

138:                                              ; preds = %133, %127
  %139 = load %struct.nexthop*, %struct.nexthop** %9, align 8
  %140 = getelementptr inbounds %struct.nexthop, %struct.nexthop* %139, i32 0, i32 5
  %141 = load i32, i32* %140, align 8
  %142 = load %struct.nh_group*, %struct.nh_group** %8, align 8
  %143 = call i32 @rcu_assign_pointer(i32 %141, %struct.nh_group* %142)
  %144 = load %struct.nexthop*, %struct.nexthop** %9, align 8
  store %struct.nexthop* %144, %struct.nexthop** %3, align 8
  br label %172

145:                                              ; preds = %67
  br label %146

146:                                              ; preds = %159, %145
  %147 = load i32, i32* %10, align 4
  %148 = icmp sge i32 %147, 0
  br i1 %148, label %149, label %162

149:                                              ; preds = %146
  %150 = load %struct.nh_group*, %struct.nh_group** %8, align 8
  %151 = getelementptr inbounds %struct.nh_group, %struct.nh_group* %150, i32 0, i32 4
  %152 = load %struct.TYPE_2__*, %struct.TYPE_2__** %151, align 8
  %153 = load i32, i32* %10, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %152, i64 %154
  %156 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %155, i32 0, i32 0
  %157 = load %struct.nh_group*, %struct.nh_group** %156, align 8
  %158 = call i32 @nexthop_put(%struct.nh_group* %157)
  br label %159

159:                                              ; preds = %149
  %160 = load i32, i32* %10, align 4
  %161 = add nsw i32 %160, -1
  store i32 %161, i32* %10, align 4
  br label %146

162:                                              ; preds = %146
  %163 = load %struct.nh_group*, %struct.nh_group** %8, align 8
  %164 = call i32 @kfree(%struct.nh_group* %163)
  %165 = load %struct.nexthop*, %struct.nexthop** %9, align 8
  %166 = bitcast %struct.nexthop* %165 to %struct.nh_group*
  %167 = call i32 @kfree(%struct.nh_group* %166)
  %168 = load i32, i32* @ENOENT, align 4
  %169 = sub nsw i32 0, %168
  %170 = call %struct.nh_group* @ERR_PTR(i32 %169)
  %171 = bitcast %struct.nh_group* %170 to %struct.nexthop*
  store %struct.nexthop* %171, %struct.nexthop** %3, align 8
  br label %172

172:                                              ; preds = %162, %138, %38, %22
  %173 = load %struct.nexthop*, %struct.nexthop** %3, align 8
  ret %struct.nexthop* %173
}

declare dso_local %struct.nexthop_grp* @nla_data(%struct.nlattr*) #1

declare dso_local %struct.nh_group* @nexthop_alloc(...) #1

declare dso_local %struct.nh_group* @ERR_PTR(i32) #1

declare dso_local %struct.nh_group* @nexthop_grp_alloc(i32) #1

declare dso_local i32 @nla_len(%struct.nlattr*) #1

declare dso_local i32 @kfree(%struct.nh_group*) #1

declare dso_local %struct.nh_group* @nexthop_find_by_id(%struct.net*, i32) #1

declare dso_local i32 @nexthop_get(%struct.nh_group*) #1

declare dso_local %struct.nh_info* @rtnl_dereference(i32) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @nh_group_rebalance(%struct.nh_group*) #1

declare dso_local i32 @rcu_assign_pointer(i32, %struct.nh_group*) #1

declare dso_local i32 @nexthop_put(%struct.nh_group*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
