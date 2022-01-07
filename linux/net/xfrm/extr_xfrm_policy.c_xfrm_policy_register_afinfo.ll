; ModuleID = '/home/carl/AnghaBench/linux/net/xfrm/extr_xfrm_policy.c_xfrm_policy_register_afinfo.c'
source_filename = "/home/carl/AnghaBench/linux/net/xfrm/extr_xfrm_policy.c_xfrm_policy_register_afinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfrm_policy_afinfo = type { %struct.dst_ops* }
%struct.dst_ops = type { i64, i32*, i32*, i32*, i32*, i32*, i32*, i32* }

@xfrm_policy_afinfo = common dso_local global i32** null, align 8
@EAFNOSUPPORT = common dso_local global i32 0, align 4
@xfrm_policy_afinfo_lock = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@xfrm_dst_cache = common dso_local global i32* null, align 8
@xfrm_dst_check = common dso_local global i32* null, align 8
@xfrm_default_advmss = common dso_local global i32* null, align 8
@xfrm_mtu = common dso_local global i32* null, align 8
@xfrm_negative_advice = common dso_local global i32* null, align 8
@xfrm_link_failure = common dso_local global i32* null, align 8
@xfrm_neigh_lookup = common dso_local global i32* null, align 8
@xfrm_confirm_neigh = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfrm_policy_register_afinfo(%struct.xfrm_policy_afinfo* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.xfrm_policy_afinfo*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.dst_ops*, align 8
  store %struct.xfrm_policy_afinfo* %0, %struct.xfrm_policy_afinfo** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %8 = load i32, i32* %5, align 4
  %9 = load i32**, i32*** @xfrm_policy_afinfo, align 8
  %10 = call i32 @ARRAY_SIZE(i32** %9)
  %11 = icmp sge i32 %8, %10
  %12 = zext i1 %11 to i32
  %13 = call i64 @WARN_ON(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load i32, i32* @EAFNOSUPPORT, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %143

18:                                               ; preds = %2
  %19 = call i32 @spin_lock(i32* @xfrm_policy_afinfo_lock)
  %20 = load i32**, i32*** @xfrm_policy_afinfo, align 8
  %21 = load i32, i32* %5, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32*, i32** %20, i64 %22
  %24 = load i32*, i32** %23, align 8
  %25 = icmp ne i32* %24, null
  %26 = zext i1 %25 to i32
  %27 = call i64 @unlikely(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %18
  %30 = load i32, i32* @EEXIST, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %6, align 4
  br label %140

32:                                               ; preds = %18
  %33 = load %struct.xfrm_policy_afinfo*, %struct.xfrm_policy_afinfo** %4, align 8
  %34 = getelementptr inbounds %struct.xfrm_policy_afinfo, %struct.xfrm_policy_afinfo* %33, i32 0, i32 0
  %35 = load %struct.dst_ops*, %struct.dst_ops** %34, align 8
  store %struct.dst_ops* %35, %struct.dst_ops** %7, align 8
  %36 = load %struct.dst_ops*, %struct.dst_ops** %7, align 8
  %37 = getelementptr inbounds %struct.dst_ops, %struct.dst_ops* %36, i32 0, i32 7
  %38 = load i32*, i32** %37, align 8
  %39 = icmp eq i32* %38, null
  %40 = zext i1 %39 to i32
  %41 = call i64 @likely(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %32
  %44 = load i32*, i32** @xfrm_dst_cache, align 8
  %45 = load %struct.dst_ops*, %struct.dst_ops** %7, align 8
  %46 = getelementptr inbounds %struct.dst_ops, %struct.dst_ops* %45, i32 0, i32 7
  store i32* %44, i32** %46, align 8
  br label %47

47:                                               ; preds = %43, %32
  %48 = load %struct.dst_ops*, %struct.dst_ops** %7, align 8
  %49 = getelementptr inbounds %struct.dst_ops, %struct.dst_ops* %48, i32 0, i32 6
  %50 = load i32*, i32** %49, align 8
  %51 = icmp eq i32* %50, null
  %52 = zext i1 %51 to i32
  %53 = call i64 @likely(i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %47
  %56 = load i32*, i32** @xfrm_dst_check, align 8
  %57 = load %struct.dst_ops*, %struct.dst_ops** %7, align 8
  %58 = getelementptr inbounds %struct.dst_ops, %struct.dst_ops* %57, i32 0, i32 6
  store i32* %56, i32** %58, align 8
  br label %59

59:                                               ; preds = %55, %47
  %60 = load %struct.dst_ops*, %struct.dst_ops** %7, align 8
  %61 = getelementptr inbounds %struct.dst_ops, %struct.dst_ops* %60, i32 0, i32 5
  %62 = load i32*, i32** %61, align 8
  %63 = icmp eq i32* %62, null
  %64 = zext i1 %63 to i32
  %65 = call i64 @likely(i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %59
  %68 = load i32*, i32** @xfrm_default_advmss, align 8
  %69 = load %struct.dst_ops*, %struct.dst_ops** %7, align 8
  %70 = getelementptr inbounds %struct.dst_ops, %struct.dst_ops* %69, i32 0, i32 5
  store i32* %68, i32** %70, align 8
  br label %71

71:                                               ; preds = %67, %59
  %72 = load %struct.dst_ops*, %struct.dst_ops** %7, align 8
  %73 = getelementptr inbounds %struct.dst_ops, %struct.dst_ops* %72, i32 0, i32 4
  %74 = load i32*, i32** %73, align 8
  %75 = icmp eq i32* %74, null
  %76 = zext i1 %75 to i32
  %77 = call i64 @likely(i32 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %71
  %80 = load i32*, i32** @xfrm_mtu, align 8
  %81 = load %struct.dst_ops*, %struct.dst_ops** %7, align 8
  %82 = getelementptr inbounds %struct.dst_ops, %struct.dst_ops* %81, i32 0, i32 4
  store i32* %80, i32** %82, align 8
  br label %83

83:                                               ; preds = %79, %71
  %84 = load %struct.dst_ops*, %struct.dst_ops** %7, align 8
  %85 = getelementptr inbounds %struct.dst_ops, %struct.dst_ops* %84, i32 0, i32 3
  %86 = load i32*, i32** %85, align 8
  %87 = icmp eq i32* %86, null
  %88 = zext i1 %87 to i32
  %89 = call i64 @likely(i32 %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %95

91:                                               ; preds = %83
  %92 = load i32*, i32** @xfrm_negative_advice, align 8
  %93 = load %struct.dst_ops*, %struct.dst_ops** %7, align 8
  %94 = getelementptr inbounds %struct.dst_ops, %struct.dst_ops* %93, i32 0, i32 3
  store i32* %92, i32** %94, align 8
  br label %95

95:                                               ; preds = %91, %83
  %96 = load %struct.dst_ops*, %struct.dst_ops** %7, align 8
  %97 = getelementptr inbounds %struct.dst_ops, %struct.dst_ops* %96, i32 0, i32 2
  %98 = load i32*, i32** %97, align 8
  %99 = icmp eq i32* %98, null
  %100 = zext i1 %99 to i32
  %101 = call i64 @likely(i32 %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %107

103:                                              ; preds = %95
  %104 = load i32*, i32** @xfrm_link_failure, align 8
  %105 = load %struct.dst_ops*, %struct.dst_ops** %7, align 8
  %106 = getelementptr inbounds %struct.dst_ops, %struct.dst_ops* %105, i32 0, i32 2
  store i32* %104, i32** %106, align 8
  br label %107

107:                                              ; preds = %103, %95
  %108 = load %struct.dst_ops*, %struct.dst_ops** %7, align 8
  %109 = getelementptr inbounds %struct.dst_ops, %struct.dst_ops* %108, i32 0, i32 1
  %110 = load i32*, i32** %109, align 8
  %111 = icmp eq i32* %110, null
  %112 = zext i1 %111 to i32
  %113 = call i64 @likely(i32 %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %119

115:                                              ; preds = %107
  %116 = load i32*, i32** @xfrm_neigh_lookup, align 8
  %117 = load %struct.dst_ops*, %struct.dst_ops** %7, align 8
  %118 = getelementptr inbounds %struct.dst_ops, %struct.dst_ops* %117, i32 0, i32 1
  store i32* %116, i32** %118, align 8
  br label %119

119:                                              ; preds = %115, %107
  %120 = load %struct.dst_ops*, %struct.dst_ops** %7, align 8
  %121 = getelementptr inbounds %struct.dst_ops, %struct.dst_ops* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = icmp ne i64 %122, 0
  %124 = xor i1 %123, true
  %125 = zext i1 %124 to i32
  %126 = call i64 @likely(i32 %125)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %132

128:                                              ; preds = %119
  %129 = load i64, i64* @xfrm_confirm_neigh, align 8
  %130 = load %struct.dst_ops*, %struct.dst_ops** %7, align 8
  %131 = getelementptr inbounds %struct.dst_ops, %struct.dst_ops* %130, i32 0, i32 0
  store i64 %129, i64* %131, align 8
  br label %132

132:                                              ; preds = %128, %119
  %133 = load i32**, i32*** @xfrm_policy_afinfo, align 8
  %134 = load i32, i32* %5, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i32*, i32** %133, i64 %135
  %137 = load i32*, i32** %136, align 8
  %138 = load %struct.xfrm_policy_afinfo*, %struct.xfrm_policy_afinfo** %4, align 8
  %139 = call i32 @rcu_assign_pointer(i32* %137, %struct.xfrm_policy_afinfo* %138)
  br label %140

140:                                              ; preds = %132, %29
  %141 = call i32 @spin_unlock(i32* @xfrm_policy_afinfo_lock)
  %142 = load i32, i32* %6, align 4
  store i32 %142, i32* %3, align 4
  br label %143

143:                                              ; preds = %140, %15
  %144 = load i32, i32* %3, align 4
  ret i32 %144
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @ARRAY_SIZE(i32**) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @rcu_assign_pointer(i32*, %struct.xfrm_policy_afinfo*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
