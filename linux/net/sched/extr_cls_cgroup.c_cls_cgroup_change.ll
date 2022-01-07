; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_cls_cgroup.c_cls_cgroup_change.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_cls_cgroup.c_cls_cgroup_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.sk_buff = type { i32 }
%struct.tcf_proto = type { i32 }
%struct.nlattr = type { i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.cls_cgroup_head = type { i64, i32, i32, i32, %struct.tcf_proto* }

@TCA_CGROUP_MAX = common dso_local global i32 0, align 4
@TCA_OPTIONS = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@TCA_CGROUP_ACT = common dso_local global i32 0, align 4
@TCA_CGROUP_POLICE = common dso_local global i32 0, align 4
@cgroup_policy = common dso_local global i32 0, align 4
@TCA_RATE = common dso_local global i64 0, align 8
@TCA_CGROUP_EMATCHES = common dso_local global i64 0, align 8
@cls_cgroup_destroy_work = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*, %struct.sk_buff*, %struct.tcf_proto*, i64, i64, %struct.nlattr**, i8**, i32, i32, %struct.netlink_ext_ack*)* @cls_cgroup_change to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cls_cgroup_change(%struct.net* %0, %struct.sk_buff* %1, %struct.tcf_proto* %2, i64 %3, i64 %4, %struct.nlattr** %5, i8** %6, i32 %7, i32 %8, %struct.netlink_ext_ack* %9) #0 {
  %11 = alloca i32, align 4
  %12 = alloca %struct.net*, align 8
  %13 = alloca %struct.sk_buff*, align 8
  %14 = alloca %struct.tcf_proto*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct.nlattr**, align 8
  %18 = alloca i8**, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.netlink_ext_ack*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i64, align 8
  %24 = alloca %struct.cls_cgroup_head*, align 8
  %25 = alloca %struct.cls_cgroup_head*, align 8
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  store %struct.net* %0, %struct.net** %12, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %13, align 8
  store %struct.tcf_proto* %2, %struct.tcf_proto** %14, align 8
  store i64 %3, i64* %15, align 8
  store i64 %4, i64* %16, align 8
  store %struct.nlattr** %5, %struct.nlattr*** %17, align 8
  store i8** %6, i8*** %18, align 8
  store i32 %7, i32* %19, align 4
  store i32 %8, i32* %20, align 4
  store %struct.netlink_ext_ack* %9, %struct.netlink_ext_ack** %21, align 8
  %28 = load i32, i32* @TCA_CGROUP_MAX, align 4
  %29 = add nsw i32 %28, 1
  %30 = zext i32 %29 to i64
  %31 = call i8* @llvm.stacksave()
  store i8* %31, i8** %22, align 8
  %32 = alloca %struct.nlattr*, i64 %30, align 16
  store i64 %30, i64* %23, align 8
  %33 = load %struct.tcf_proto*, %struct.tcf_proto** %14, align 8
  %34 = getelementptr inbounds %struct.tcf_proto, %struct.tcf_proto* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call %struct.cls_cgroup_head* @rtnl_dereference(i32 %35)
  store %struct.cls_cgroup_head* %36, %struct.cls_cgroup_head** %24, align 8
  %37 = load %struct.nlattr**, %struct.nlattr*** %17, align 8
  %38 = load i64, i64* @TCA_OPTIONS, align 8
  %39 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %37, i64 %38
  %40 = load %struct.nlattr*, %struct.nlattr** %39, align 8
  %41 = icmp ne %struct.nlattr* %40, null
  br i1 %41, label %45, label %42

42:                                               ; preds = %10
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %11, align 4
  store i32 1, i32* %27, align 4
  br label %151

45:                                               ; preds = %10
  %46 = load %struct.cls_cgroup_head*, %struct.cls_cgroup_head** %24, align 8
  %47 = icmp ne %struct.cls_cgroup_head* %46, null
  br i1 %47, label %54, label %48

48:                                               ; preds = %45
  %49 = load i64, i64* %16, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %54, label %51

51:                                               ; preds = %48
  %52 = load i32, i32* @EINVAL, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %11, align 4
  store i32 1, i32* %27, align 4
  br label %151

54:                                               ; preds = %48, %45
  %55 = load %struct.cls_cgroup_head*, %struct.cls_cgroup_head** %24, align 8
  %56 = icmp ne %struct.cls_cgroup_head* %55, null
  br i1 %56, label %57, label %66

57:                                               ; preds = %54
  %58 = load i64, i64* %16, align 8
  %59 = load %struct.cls_cgroup_head*, %struct.cls_cgroup_head** %24, align 8
  %60 = getelementptr inbounds %struct.cls_cgroup_head, %struct.cls_cgroup_head* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %58, %61
  br i1 %62, label %63, label %66

63:                                               ; preds = %57
  %64 = load i32, i32* @ENOENT, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %11, align 4
  store i32 1, i32* %27, align 4
  br label %151

66:                                               ; preds = %57, %54
  %67 = load i32, i32* @GFP_KERNEL, align 4
  %68 = call %struct.cls_cgroup_head* @kzalloc(i32 32, i32 %67)
  store %struct.cls_cgroup_head* %68, %struct.cls_cgroup_head** %25, align 8
  %69 = load %struct.cls_cgroup_head*, %struct.cls_cgroup_head** %25, align 8
  %70 = icmp ne %struct.cls_cgroup_head* %69, null
  br i1 %70, label %74, label %71

71:                                               ; preds = %66
  %72 = load i32, i32* @ENOBUFS, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %11, align 4
  store i32 1, i32* %27, align 4
  br label %151

74:                                               ; preds = %66
  %75 = load %struct.cls_cgroup_head*, %struct.cls_cgroup_head** %25, align 8
  %76 = getelementptr inbounds %struct.cls_cgroup_head, %struct.cls_cgroup_head* %75, i32 0, i32 1
  %77 = load %struct.net*, %struct.net** %12, align 8
  %78 = load i32, i32* @TCA_CGROUP_ACT, align 4
  %79 = load i32, i32* @TCA_CGROUP_POLICE, align 4
  %80 = call i32 @tcf_exts_init(i32* %76, %struct.net* %77, i32 %78, i32 %79)
  store i32 %80, i32* %26, align 4
  %81 = load i32, i32* %26, align 4
  %82 = icmp slt i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %74
  br label %144

84:                                               ; preds = %74
  %85 = load i64, i64* %16, align 8
  %86 = load %struct.cls_cgroup_head*, %struct.cls_cgroup_head** %25, align 8
  %87 = getelementptr inbounds %struct.cls_cgroup_head, %struct.cls_cgroup_head* %86, i32 0, i32 0
  store i64 %85, i64* %87, align 8
  %88 = load %struct.tcf_proto*, %struct.tcf_proto** %14, align 8
  %89 = load %struct.cls_cgroup_head*, %struct.cls_cgroup_head** %25, align 8
  %90 = getelementptr inbounds %struct.cls_cgroup_head, %struct.cls_cgroup_head* %89, i32 0, i32 4
  store %struct.tcf_proto* %88, %struct.tcf_proto** %90, align 8
  %91 = load i32, i32* @TCA_CGROUP_MAX, align 4
  %92 = load %struct.nlattr**, %struct.nlattr*** %17, align 8
  %93 = load i64, i64* @TCA_OPTIONS, align 8
  %94 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %92, i64 %93
  %95 = load %struct.nlattr*, %struct.nlattr** %94, align 8
  %96 = load i32, i32* @cgroup_policy, align 4
  %97 = call i32 @nla_parse_nested_deprecated(%struct.nlattr** %32, i32 %91, %struct.nlattr* %95, i32 %96, i32* null)
  store i32 %97, i32* %26, align 4
  %98 = load i32, i32* %26, align 4
  %99 = icmp slt i32 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %84
  br label %144

101:                                              ; preds = %84
  %102 = load %struct.net*, %struct.net** %12, align 8
  %103 = load %struct.tcf_proto*, %struct.tcf_proto** %14, align 8
  %104 = load %struct.nlattr**, %struct.nlattr*** %17, align 8
  %105 = load i64, i64* @TCA_RATE, align 8
  %106 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %104, i64 %105
  %107 = load %struct.nlattr*, %struct.nlattr** %106, align 8
  %108 = load %struct.cls_cgroup_head*, %struct.cls_cgroup_head** %25, align 8
  %109 = getelementptr inbounds %struct.cls_cgroup_head, %struct.cls_cgroup_head* %108, i32 0, i32 1
  %110 = load i32, i32* %19, align 4
  %111 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %21, align 8
  %112 = call i32 @tcf_exts_validate(%struct.net* %102, %struct.tcf_proto* %103, %struct.nlattr** %32, %struct.nlattr* %107, i32* %109, i32 %110, i32 1, %struct.netlink_ext_ack* %111)
  store i32 %112, i32* %26, align 4
  %113 = load i32, i32* %26, align 4
  %114 = icmp slt i32 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %101
  br label %144

116:                                              ; preds = %101
  %117 = load %struct.tcf_proto*, %struct.tcf_proto** %14, align 8
  %118 = load i64, i64* @TCA_CGROUP_EMATCHES, align 8
  %119 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %32, i64 %118
  %120 = load %struct.nlattr*, %struct.nlattr** %119, align 8
  %121 = load %struct.cls_cgroup_head*, %struct.cls_cgroup_head** %25, align 8
  %122 = getelementptr inbounds %struct.cls_cgroup_head, %struct.cls_cgroup_head* %121, i32 0, i32 3
  %123 = call i32 @tcf_em_tree_validate(%struct.tcf_proto* %117, %struct.nlattr* %120, i32* %122)
  store i32 %123, i32* %26, align 4
  %124 = load i32, i32* %26, align 4
  %125 = icmp slt i32 %124, 0
  br i1 %125, label %126, label %127

126:                                              ; preds = %116
  br label %144

127:                                              ; preds = %116
  %128 = load %struct.tcf_proto*, %struct.tcf_proto** %14, align 8
  %129 = getelementptr inbounds %struct.tcf_proto, %struct.tcf_proto* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.cls_cgroup_head*, %struct.cls_cgroup_head** %25, align 8
  %132 = call i32 @rcu_assign_pointer(i32 %130, %struct.cls_cgroup_head* %131)
  %133 = load %struct.cls_cgroup_head*, %struct.cls_cgroup_head** %24, align 8
  %134 = icmp ne %struct.cls_cgroup_head* %133, null
  br i1 %134, label %135, label %143

135:                                              ; preds = %127
  %136 = load %struct.cls_cgroup_head*, %struct.cls_cgroup_head** %24, align 8
  %137 = getelementptr inbounds %struct.cls_cgroup_head, %struct.cls_cgroup_head* %136, i32 0, i32 1
  %138 = call i32 @tcf_exts_get_net(i32* %137)
  %139 = load %struct.cls_cgroup_head*, %struct.cls_cgroup_head** %24, align 8
  %140 = getelementptr inbounds %struct.cls_cgroup_head, %struct.cls_cgroup_head* %139, i32 0, i32 2
  %141 = load i32, i32* @cls_cgroup_destroy_work, align 4
  %142 = call i32 @tcf_queue_work(i32* %140, i32 %141)
  br label %143

143:                                              ; preds = %135, %127
  store i32 0, i32* %11, align 4
  store i32 1, i32* %27, align 4
  br label %151

144:                                              ; preds = %126, %115, %100, %83
  %145 = load %struct.cls_cgroup_head*, %struct.cls_cgroup_head** %25, align 8
  %146 = getelementptr inbounds %struct.cls_cgroup_head, %struct.cls_cgroup_head* %145, i32 0, i32 1
  %147 = call i32 @tcf_exts_destroy(i32* %146)
  %148 = load %struct.cls_cgroup_head*, %struct.cls_cgroup_head** %25, align 8
  %149 = call i32 @kfree(%struct.cls_cgroup_head* %148)
  %150 = load i32, i32* %26, align 4
  store i32 %150, i32* %11, align 4
  store i32 1, i32* %27, align 4
  br label %151

151:                                              ; preds = %144, %143, %71, %63, %51, %42
  %152 = load i8*, i8** %22, align 8
  call void @llvm.stackrestore(i8* %152)
  %153 = load i32, i32* %11, align 4
  ret i32 %153
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.cls_cgroup_head* @rtnl_dereference(i32) #2

declare dso_local %struct.cls_cgroup_head* @kzalloc(i32, i32) #2

declare dso_local i32 @tcf_exts_init(i32*, %struct.net*, i32, i32) #2

declare dso_local i32 @nla_parse_nested_deprecated(%struct.nlattr**, i32, %struct.nlattr*, i32, i32*) #2

declare dso_local i32 @tcf_exts_validate(%struct.net*, %struct.tcf_proto*, %struct.nlattr**, %struct.nlattr*, i32*, i32, i32, %struct.netlink_ext_ack*) #2

declare dso_local i32 @tcf_em_tree_validate(%struct.tcf_proto*, %struct.nlattr*, i32*) #2

declare dso_local i32 @rcu_assign_pointer(i32, %struct.cls_cgroup_head*) #2

declare dso_local i32 @tcf_exts_get_net(i32*) #2

declare dso_local i32 @tcf_queue_work(i32*, i32) #2

declare dso_local i32 @tcf_exts_destroy(i32*) #2

declare dso_local i32 @kfree(%struct.cls_cgroup_head*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
