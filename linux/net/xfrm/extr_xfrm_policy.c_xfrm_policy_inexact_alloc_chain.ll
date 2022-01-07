; ModuleID = '/home/carl/AnghaBench/linux/net/xfrm/extr_xfrm_policy.c_xfrm_policy_inexact_alloc_chain.c'
source_filename = "/home/carl/AnghaBench/linux/net/xfrm/extr_xfrm_policy.c_xfrm_policy_inexact_alloc_chain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hlist_head = type { i32 }
%struct.xfrm_pol_inexact_bin = type { i32, i32, i32, %struct.hlist_head }
%struct.xfrm_policy = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }
%struct.xfrm_pol_inexact_node = type { %struct.hlist_head, i32 }
%struct.net = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.hlist_head* (%struct.xfrm_pol_inexact_bin*, %struct.xfrm_policy*, i32)* @xfrm_policy_inexact_alloc_chain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.hlist_head* @xfrm_policy_inexact_alloc_chain(%struct.xfrm_pol_inexact_bin* %0, %struct.xfrm_policy* %1, i32 %2) #0 {
  %4 = alloca %struct.hlist_head*, align 8
  %5 = alloca %struct.xfrm_pol_inexact_bin*, align 8
  %6 = alloca %struct.xfrm_policy*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.xfrm_pol_inexact_node*, align 8
  %9 = alloca %struct.net*, align 8
  store %struct.xfrm_pol_inexact_bin* %0, %struct.xfrm_pol_inexact_bin** %5, align 8
  store %struct.xfrm_policy* %1, %struct.xfrm_policy** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.xfrm_policy*, %struct.xfrm_policy** %6, align 8
  %11 = call %struct.net* @xp_net(%struct.xfrm_policy* %10)
  store %struct.net* %11, %struct.net** %9, align 8
  %12 = load %struct.net*, %struct.net** %9, align 8
  %13 = getelementptr inbounds %struct.net, %struct.net* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = call i32 @lockdep_assert_held(i32* %14)
  %16 = load %struct.xfrm_policy*, %struct.xfrm_policy** %6, align 8
  %17 = call i64 @xfrm_policy_inexact_insert_use_any_list(%struct.xfrm_policy* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %3
  %20 = load %struct.xfrm_pol_inexact_bin*, %struct.xfrm_pol_inexact_bin** %5, align 8
  %21 = getelementptr inbounds %struct.xfrm_pol_inexact_bin, %struct.xfrm_pol_inexact_bin* %20, i32 0, i32 3
  store %struct.hlist_head* %21, %struct.hlist_head** %4, align 8
  br label %132

22:                                               ; preds = %3
  %23 = load %struct.xfrm_policy*, %struct.xfrm_policy** %6, align 8
  %24 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 3
  %26 = load %struct.xfrm_policy*, %struct.xfrm_policy** %6, align 8
  %27 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.xfrm_policy*, %struct.xfrm_policy** %6, align 8
  %30 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = call i64 @xfrm_pol_inexact_addr_use_any_list(i32* %25, i32 %28, i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %63

35:                                               ; preds = %22
  %36 = load %struct.xfrm_pol_inexact_bin*, %struct.xfrm_pol_inexact_bin** %5, align 8
  %37 = getelementptr inbounds %struct.xfrm_pol_inexact_bin, %struct.xfrm_pol_inexact_bin* %36, i32 0, i32 0
  %38 = call i32 @write_seqcount_begin(i32* %37)
  %39 = load %struct.net*, %struct.net** %9, align 8
  %40 = load %struct.xfrm_pol_inexact_bin*, %struct.xfrm_pol_inexact_bin** %5, align 8
  %41 = getelementptr inbounds %struct.xfrm_pol_inexact_bin, %struct.xfrm_pol_inexact_bin* %40, i32 0, i32 2
  %42 = load %struct.xfrm_policy*, %struct.xfrm_policy** %6, align 8
  %43 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 1
  %45 = load %struct.xfrm_policy*, %struct.xfrm_policy** %6, align 8
  %46 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.xfrm_policy*, %struct.xfrm_policy** %6, align 8
  %49 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %7, align 4
  %53 = call %struct.xfrm_pol_inexact_node* @xfrm_policy_inexact_insert_node(%struct.net* %39, i32* %41, i32* %44, i32 %47, i32 %51, i32 %52)
  store %struct.xfrm_pol_inexact_node* %53, %struct.xfrm_pol_inexact_node** %8, align 8
  %54 = load %struct.xfrm_pol_inexact_bin*, %struct.xfrm_pol_inexact_bin** %5, align 8
  %55 = getelementptr inbounds %struct.xfrm_pol_inexact_bin, %struct.xfrm_pol_inexact_bin* %54, i32 0, i32 0
  %56 = call i32 @write_seqcount_end(i32* %55)
  %57 = load %struct.xfrm_pol_inexact_node*, %struct.xfrm_pol_inexact_node** %8, align 8
  %58 = icmp ne %struct.xfrm_pol_inexact_node* %57, null
  br i1 %58, label %60, label %59

59:                                               ; preds = %35
  store %struct.hlist_head* null, %struct.hlist_head** %4, align 8
  br label %132

60:                                               ; preds = %35
  %61 = load %struct.xfrm_pol_inexact_node*, %struct.xfrm_pol_inexact_node** %8, align 8
  %62 = getelementptr inbounds %struct.xfrm_pol_inexact_node, %struct.xfrm_pol_inexact_node* %61, i32 0, i32 0
  store %struct.hlist_head* %62, %struct.hlist_head** %4, align 8
  br label %132

63:                                               ; preds = %22
  %64 = load %struct.xfrm_pol_inexact_bin*, %struct.xfrm_pol_inexact_bin** %5, align 8
  %65 = getelementptr inbounds %struct.xfrm_pol_inexact_bin, %struct.xfrm_pol_inexact_bin* %64, i32 0, i32 0
  %66 = call i32 @write_seqcount_begin(i32* %65)
  %67 = load %struct.net*, %struct.net** %9, align 8
  %68 = load %struct.xfrm_pol_inexact_bin*, %struct.xfrm_pol_inexact_bin** %5, align 8
  %69 = getelementptr inbounds %struct.xfrm_pol_inexact_bin, %struct.xfrm_pol_inexact_bin* %68, i32 0, i32 1
  %70 = load %struct.xfrm_policy*, %struct.xfrm_policy** %6, align 8
  %71 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 3
  %73 = load %struct.xfrm_policy*, %struct.xfrm_policy** %6, align 8
  %74 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.xfrm_policy*, %struct.xfrm_policy** %6, align 8
  %77 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* %7, align 4
  %81 = call %struct.xfrm_pol_inexact_node* @xfrm_policy_inexact_insert_node(%struct.net* %67, i32* %69, i32* %72, i32 %75, i32 %79, i32 %80)
  store %struct.xfrm_pol_inexact_node* %81, %struct.xfrm_pol_inexact_node** %8, align 8
  %82 = load %struct.xfrm_pol_inexact_bin*, %struct.xfrm_pol_inexact_bin** %5, align 8
  %83 = getelementptr inbounds %struct.xfrm_pol_inexact_bin, %struct.xfrm_pol_inexact_bin* %82, i32 0, i32 0
  %84 = call i32 @write_seqcount_end(i32* %83)
  %85 = load %struct.xfrm_pol_inexact_node*, %struct.xfrm_pol_inexact_node** %8, align 8
  %86 = icmp ne %struct.xfrm_pol_inexact_node* %85, null
  br i1 %86, label %88, label %87

87:                                               ; preds = %63
  store %struct.hlist_head* null, %struct.hlist_head** %4, align 8
  br label %132

88:                                               ; preds = %63
  %89 = load %struct.xfrm_policy*, %struct.xfrm_policy** %6, align 8
  %90 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 1
  %92 = load %struct.xfrm_policy*, %struct.xfrm_policy** %6, align 8
  %93 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.xfrm_policy*, %struct.xfrm_policy** %6, align 8
  %96 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = call i64 @xfrm_pol_inexact_addr_use_any_list(i32* %91, i32 %94, i32 %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %104

101:                                              ; preds = %88
  %102 = load %struct.xfrm_pol_inexact_node*, %struct.xfrm_pol_inexact_node** %8, align 8
  %103 = getelementptr inbounds %struct.xfrm_pol_inexact_node, %struct.xfrm_pol_inexact_node* %102, i32 0, i32 0
  store %struct.hlist_head* %103, %struct.hlist_head** %4, align 8
  br label %132

104:                                              ; preds = %88
  %105 = load %struct.xfrm_pol_inexact_bin*, %struct.xfrm_pol_inexact_bin** %5, align 8
  %106 = getelementptr inbounds %struct.xfrm_pol_inexact_bin, %struct.xfrm_pol_inexact_bin* %105, i32 0, i32 0
  %107 = call i32 @write_seqcount_begin(i32* %106)
  %108 = load %struct.net*, %struct.net** %9, align 8
  %109 = load %struct.xfrm_pol_inexact_node*, %struct.xfrm_pol_inexact_node** %8, align 8
  %110 = getelementptr inbounds %struct.xfrm_pol_inexact_node, %struct.xfrm_pol_inexact_node* %109, i32 0, i32 1
  %111 = load %struct.xfrm_policy*, %struct.xfrm_policy** %6, align 8
  %112 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 1
  %114 = load %struct.xfrm_policy*, %struct.xfrm_policy** %6, align 8
  %115 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.xfrm_policy*, %struct.xfrm_policy** %6, align 8
  %118 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* %7, align 4
  %122 = call %struct.xfrm_pol_inexact_node* @xfrm_policy_inexact_insert_node(%struct.net* %108, i32* %110, i32* %113, i32 %116, i32 %120, i32 %121)
  store %struct.xfrm_pol_inexact_node* %122, %struct.xfrm_pol_inexact_node** %8, align 8
  %123 = load %struct.xfrm_pol_inexact_bin*, %struct.xfrm_pol_inexact_bin** %5, align 8
  %124 = getelementptr inbounds %struct.xfrm_pol_inexact_bin, %struct.xfrm_pol_inexact_bin* %123, i32 0, i32 0
  %125 = call i32 @write_seqcount_end(i32* %124)
  %126 = load %struct.xfrm_pol_inexact_node*, %struct.xfrm_pol_inexact_node** %8, align 8
  %127 = icmp ne %struct.xfrm_pol_inexact_node* %126, null
  br i1 %127, label %129, label %128

128:                                              ; preds = %104
  store %struct.hlist_head* null, %struct.hlist_head** %4, align 8
  br label %132

129:                                              ; preds = %104
  %130 = load %struct.xfrm_pol_inexact_node*, %struct.xfrm_pol_inexact_node** %8, align 8
  %131 = getelementptr inbounds %struct.xfrm_pol_inexact_node, %struct.xfrm_pol_inexact_node* %130, i32 0, i32 0
  store %struct.hlist_head* %131, %struct.hlist_head** %4, align 8
  br label %132

132:                                              ; preds = %129, %128, %101, %87, %60, %59, %19
  %133 = load %struct.hlist_head*, %struct.hlist_head** %4, align 8
  ret %struct.hlist_head* %133
}

declare dso_local %struct.net* @xp_net(%struct.xfrm_policy*) #1

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i64 @xfrm_policy_inexact_insert_use_any_list(%struct.xfrm_policy*) #1

declare dso_local i64 @xfrm_pol_inexact_addr_use_any_list(i32*, i32, i32) #1

declare dso_local i32 @write_seqcount_begin(i32*) #1

declare dso_local %struct.xfrm_pol_inexact_node* @xfrm_policy_inexact_insert_node(%struct.net*, i32*, i32*, i32, i32, i32) #1

declare dso_local i32 @write_seqcount_end(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
