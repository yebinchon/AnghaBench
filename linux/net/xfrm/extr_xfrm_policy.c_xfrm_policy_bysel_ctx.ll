; ModuleID = '/home/carl/AnghaBench/linux/net/xfrm/extr_xfrm_policy.c_xfrm_policy_bysel_ctx.c'
source_filename = "/home/carl/AnghaBench/linux/net/xfrm/extr_xfrm_policy.c_xfrm_policy_bysel_ctx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfrm_policy = type { i64, i32 }
%struct.net = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.xfrm_selector = type { i32, i32, i32 }
%struct.xfrm_sec_ctx = type { i32 }
%struct.xfrm_pol_inexact_bin = type { i32 }
%struct.hlist_head = type { i32 }
%struct.xfrm_pol_inexact_candidates = type { %struct.hlist_head** }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.xfrm_policy* @xfrm_policy_bysel_ctx(%struct.net* %0, i32 %1, i32 %2, i32 %3, i32 %4, %struct.xfrm_selector* %5, %struct.xfrm_sec_ctx* %6, i32 %7, i32* %8) #0 {
  %10 = alloca %struct.xfrm_policy*, align 8
  %11 = alloca %struct.net*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.xfrm_selector*, align 8
  %17 = alloca %struct.xfrm_sec_ctx*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  %20 = alloca %struct.xfrm_pol_inexact_bin*, align 8
  %21 = alloca %struct.xfrm_policy*, align 8
  %22 = alloca %struct.xfrm_policy*, align 8
  %23 = alloca %struct.hlist_head*, align 8
  %24 = alloca %struct.xfrm_pol_inexact_candidates, align 8
  %25 = alloca i32, align 4
  %26 = alloca %struct.xfrm_policy*, align 8
  store %struct.net* %0, %struct.net** %11, align 8
  store i32 %1, i32* %12, align 4
  store i32 %2, i32* %13, align 4
  store i32 %3, i32* %14, align 4
  store i32 %4, i32* %15, align 4
  store %struct.xfrm_selector* %5, %struct.xfrm_selector** %16, align 8
  store %struct.xfrm_sec_ctx* %6, %struct.xfrm_sec_ctx** %17, align 8
  store i32 %7, i32* %18, align 4
  store i32* %8, i32** %19, align 8
  store %struct.xfrm_pol_inexact_bin* null, %struct.xfrm_pol_inexact_bin** %20, align 8
  store %struct.xfrm_policy* null, %struct.xfrm_policy** %22, align 8
  %27 = load i32*, i32** %19, align 8
  store i32 0, i32* %27, align 4
  %28 = load %struct.net*, %struct.net** %11, align 8
  %29 = getelementptr inbounds %struct.net, %struct.net* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = call i32 @spin_lock_bh(i32* %30)
  %32 = load %struct.net*, %struct.net** %11, align 8
  %33 = load %struct.xfrm_selector*, %struct.xfrm_selector** %16, align 8
  %34 = load %struct.xfrm_selector*, %struct.xfrm_selector** %16, align 8
  %35 = getelementptr inbounds %struct.xfrm_selector, %struct.xfrm_selector* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %15, align 4
  %38 = call %struct.hlist_head* @policy_hash_bysel(%struct.net* %32, %struct.xfrm_selector* %33, i32 %36, i32 %37)
  store %struct.hlist_head* %38, %struct.hlist_head** %23, align 8
  %39 = load %struct.hlist_head*, %struct.hlist_head** %23, align 8
  %40 = icmp ne %struct.hlist_head* %39, null
  br i1 %40, label %112, label %41

41:                                               ; preds = %9
  %42 = load %struct.net*, %struct.net** %11, align 8
  %43 = load i32, i32* %14, align 4
  %44 = load %struct.xfrm_selector*, %struct.xfrm_selector** %16, align 8
  %45 = getelementptr inbounds %struct.xfrm_selector, %struct.xfrm_selector* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %15, align 4
  %48 = load i32, i32* %13, align 4
  %49 = call %struct.xfrm_pol_inexact_bin* @xfrm_policy_inexact_lookup(%struct.net* %42, i32 %43, i32 %46, i32 %47, i32 %48)
  store %struct.xfrm_pol_inexact_bin* %49, %struct.xfrm_pol_inexact_bin** %20, align 8
  %50 = load %struct.xfrm_pol_inexact_bin*, %struct.xfrm_pol_inexact_bin** %20, align 8
  %51 = icmp ne %struct.xfrm_pol_inexact_bin* %50, null
  br i1 %51, label %57, label %52

52:                                               ; preds = %41
  %53 = load %struct.net*, %struct.net** %11, align 8
  %54 = getelementptr inbounds %struct.net, %struct.net* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = call i32 @spin_unlock_bh(i32* %55)
  store %struct.xfrm_policy* null, %struct.xfrm_policy** %10, align 8
  br label %174

57:                                               ; preds = %41
  %58 = load %struct.xfrm_pol_inexact_bin*, %struct.xfrm_pol_inexact_bin** %20, align 8
  %59 = load %struct.xfrm_selector*, %struct.xfrm_selector** %16, align 8
  %60 = getelementptr inbounds %struct.xfrm_selector, %struct.xfrm_selector* %59, i32 0, i32 1
  %61 = load %struct.xfrm_selector*, %struct.xfrm_selector** %16, align 8
  %62 = getelementptr inbounds %struct.xfrm_selector, %struct.xfrm_selector* %61, i32 0, i32 0
  %63 = call i32 @xfrm_policy_find_inexact_candidates(%struct.xfrm_pol_inexact_candidates* %24, %struct.xfrm_pol_inexact_bin* %58, i32* %60, i32* %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %70, label %65

65:                                               ; preds = %57
  %66 = load %struct.net*, %struct.net** %11, align 8
  %67 = getelementptr inbounds %struct.net, %struct.net* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = call i32 @spin_unlock_bh(i32* %68)
  store %struct.xfrm_policy* null, %struct.xfrm_policy** %10, align 8
  br label %174

70:                                               ; preds = %57
  store %struct.xfrm_policy* null, %struct.xfrm_policy** %21, align 8
  store i32 0, i32* %25, align 4
  br label %71

71:                                               ; preds = %108, %70
  %72 = load i32, i32* %25, align 4
  %73 = getelementptr inbounds %struct.xfrm_pol_inexact_candidates, %struct.xfrm_pol_inexact_candidates* %24, i32 0, i32 0
  %74 = load %struct.hlist_head**, %struct.hlist_head*** %73, align 8
  %75 = call i32 @ARRAY_SIZE(%struct.hlist_head** %74)
  %76 = icmp slt i32 %72, %75
  br i1 %76, label %77, label %111

77:                                               ; preds = %71
  %78 = getelementptr inbounds %struct.xfrm_pol_inexact_candidates, %struct.xfrm_pol_inexact_candidates* %24, i32 0, i32 0
  %79 = load %struct.hlist_head**, %struct.hlist_head*** %78, align 8
  %80 = load i32, i32* %25, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.hlist_head*, %struct.hlist_head** %79, i64 %81
  %83 = load %struct.hlist_head*, %struct.hlist_head** %82, align 8
  %84 = load i32, i32* %12, align 4
  %85 = load i32, i32* %13, align 4
  %86 = load i32, i32* %14, align 4
  %87 = load i32, i32* %15, align 4
  %88 = load %struct.xfrm_selector*, %struct.xfrm_selector** %16, align 8
  %89 = load %struct.xfrm_sec_ctx*, %struct.xfrm_sec_ctx** %17, align 8
  %90 = call %struct.xfrm_policy* @__xfrm_policy_bysel_ctx(%struct.hlist_head* %83, i32 %84, i32 %85, i32 %86, i32 %87, %struct.xfrm_selector* %88, %struct.xfrm_sec_ctx* %89)
  store %struct.xfrm_policy* %90, %struct.xfrm_policy** %26, align 8
  %91 = load %struct.xfrm_policy*, %struct.xfrm_policy** %26, align 8
  %92 = icmp ne %struct.xfrm_policy* %91, null
  br i1 %92, label %94, label %93

93:                                               ; preds = %77
  br label %108

94:                                               ; preds = %77
  %95 = load %struct.xfrm_policy*, %struct.xfrm_policy** %21, align 8
  %96 = icmp ne %struct.xfrm_policy* %95, null
  br i1 %96, label %97, label %105

97:                                               ; preds = %94
  %98 = load %struct.xfrm_policy*, %struct.xfrm_policy** %26, align 8
  %99 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = load %struct.xfrm_policy*, %struct.xfrm_policy** %21, align 8
  %102 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = icmp slt i64 %100, %103
  br i1 %104, label %105, label %107

105:                                              ; preds = %97, %94
  %106 = load %struct.xfrm_policy*, %struct.xfrm_policy** %26, align 8
  store %struct.xfrm_policy* %106, %struct.xfrm_policy** %21, align 8
  br label %107

107:                                              ; preds = %105, %97
  br label %108

108:                                              ; preds = %107, %93
  %109 = load i32, i32* %25, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %25, align 4
  br label %71

111:                                              ; preds = %71
  br label %121

112:                                              ; preds = %9
  %113 = load %struct.hlist_head*, %struct.hlist_head** %23, align 8
  %114 = load i32, i32* %12, align 4
  %115 = load i32, i32* %13, align 4
  %116 = load i32, i32* %14, align 4
  %117 = load i32, i32* %15, align 4
  %118 = load %struct.xfrm_selector*, %struct.xfrm_selector** %16, align 8
  %119 = load %struct.xfrm_sec_ctx*, %struct.xfrm_sec_ctx** %17, align 8
  %120 = call %struct.xfrm_policy* @__xfrm_policy_bysel_ctx(%struct.hlist_head* %113, i32 %114, i32 %115, i32 %116, i32 %117, %struct.xfrm_selector* %118, %struct.xfrm_sec_ctx* %119)
  store %struct.xfrm_policy* %120, %struct.xfrm_policy** %21, align 8
  br label %121

121:                                              ; preds = %112, %111
  %122 = load %struct.xfrm_policy*, %struct.xfrm_policy** %21, align 8
  %123 = icmp ne %struct.xfrm_policy* %122, null
  br i1 %123, label %124, label %150

124:                                              ; preds = %121
  %125 = load %struct.xfrm_policy*, %struct.xfrm_policy** %21, align 8
  %126 = call i32 @xfrm_pol_hold(%struct.xfrm_policy* %125)
  %127 = load i32, i32* %18, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %148

129:                                              ; preds = %124
  %130 = load %struct.xfrm_policy*, %struct.xfrm_policy** %21, align 8
  %131 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 8
  %133 = call i32 @security_xfrm_policy_delete(i32 %132)
  %134 = load i32*, i32** %19, align 8
  store i32 %133, i32* %134, align 4
  %135 = load i32*, i32** %19, align 8
  %136 = load i32, i32* %135, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %144

138:                                              ; preds = %129
  %139 = load %struct.net*, %struct.net** %11, align 8
  %140 = getelementptr inbounds %struct.net, %struct.net* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %140, i32 0, i32 0
  %142 = call i32 @spin_unlock_bh(i32* %141)
  %143 = load %struct.xfrm_policy*, %struct.xfrm_policy** %21, align 8
  store %struct.xfrm_policy* %143, %struct.xfrm_policy** %10, align 8
  br label %174

144:                                              ; preds = %129
  %145 = load %struct.xfrm_policy*, %struct.xfrm_policy** %21, align 8
  %146 = load i32, i32* %15, align 4
  %147 = call i32 @__xfrm_policy_unlink(%struct.xfrm_policy* %145, i32 %146)
  br label %148

148:                                              ; preds = %144, %124
  %149 = load %struct.xfrm_policy*, %struct.xfrm_policy** %21, align 8
  store %struct.xfrm_policy* %149, %struct.xfrm_policy** %22, align 8
  br label %150

150:                                              ; preds = %148, %121
  %151 = load %struct.net*, %struct.net** %11, align 8
  %152 = getelementptr inbounds %struct.net, %struct.net* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %152, i32 0, i32 0
  %154 = call i32 @spin_unlock_bh(i32* %153)
  %155 = load %struct.xfrm_policy*, %struct.xfrm_policy** %22, align 8
  %156 = icmp ne %struct.xfrm_policy* %155, null
  br i1 %156, label %157, label %163

157:                                              ; preds = %150
  %158 = load i32, i32* %18, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %163

160:                                              ; preds = %157
  %161 = load %struct.xfrm_policy*, %struct.xfrm_policy** %22, align 8
  %162 = call i32 @xfrm_policy_kill(%struct.xfrm_policy* %161)
  br label %163

163:                                              ; preds = %160, %157, %150
  %164 = load %struct.xfrm_pol_inexact_bin*, %struct.xfrm_pol_inexact_bin** %20, align 8
  %165 = icmp ne %struct.xfrm_pol_inexact_bin* %164, null
  br i1 %165, label %166, label %172

166:                                              ; preds = %163
  %167 = load i32, i32* %18, align 4
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %172

169:                                              ; preds = %166
  %170 = load %struct.xfrm_pol_inexact_bin*, %struct.xfrm_pol_inexact_bin** %20, align 8
  %171 = call i32 @xfrm_policy_inexact_prune_bin(%struct.xfrm_pol_inexact_bin* %170)
  br label %172

172:                                              ; preds = %169, %166, %163
  %173 = load %struct.xfrm_policy*, %struct.xfrm_policy** %22, align 8
  store %struct.xfrm_policy* %173, %struct.xfrm_policy** %10, align 8
  br label %174

174:                                              ; preds = %172, %138, %65, %52
  %175 = load %struct.xfrm_policy*, %struct.xfrm_policy** %10, align 8
  ret %struct.xfrm_policy* %175
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local %struct.hlist_head* @policy_hash_bysel(%struct.net*, %struct.xfrm_selector*, i32, i32) #1

declare dso_local %struct.xfrm_pol_inexact_bin* @xfrm_policy_inexact_lookup(%struct.net*, i32, i32, i32, i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @xfrm_policy_find_inexact_candidates(%struct.xfrm_pol_inexact_candidates*, %struct.xfrm_pol_inexact_bin*, i32*, i32*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.hlist_head**) #1

declare dso_local %struct.xfrm_policy* @__xfrm_policy_bysel_ctx(%struct.hlist_head*, i32, i32, i32, i32, %struct.xfrm_selector*, %struct.xfrm_sec_ctx*) #1

declare dso_local i32 @xfrm_pol_hold(%struct.xfrm_policy*) #1

declare dso_local i32 @security_xfrm_policy_delete(i32) #1

declare dso_local i32 @__xfrm_policy_unlink(%struct.xfrm_policy*, i32) #1

declare dso_local i32 @xfrm_policy_kill(%struct.xfrm_policy*) #1

declare dso_local i32 @xfrm_policy_inexact_prune_bin(%struct.xfrm_pol_inexact_bin*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
