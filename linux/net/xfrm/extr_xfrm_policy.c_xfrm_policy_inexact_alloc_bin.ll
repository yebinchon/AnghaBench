; ModuleID = '/home/carl/AnghaBench/linux/net/xfrm/extr_xfrm_policy.c_xfrm_policy_inexact_alloc_bin.c'
source_filename = "/home/carl/AnghaBench/linux/net/xfrm/extr_xfrm_policy.c_xfrm_policy_inexact_alloc_bin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfrm_pol_inexact_bin = type { i32, i32, %struct.xfrm_pol_inexact_key, i32, i8*, i8*, i32 }
%struct.xfrm_pol_inexact_key = type { i32, i32, i32, i32, i32 }
%struct.xfrm_policy = type { i32, i32, i32 }
%struct.net = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@xfrm_policy_inexact_table = common dso_local global i32 0, align 4
@xfrm_pol_inexact_params = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@RB_ROOT = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.xfrm_pol_inexact_bin* (%struct.xfrm_policy*, i32)* @xfrm_policy_inexact_alloc_bin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.xfrm_pol_inexact_bin* @xfrm_policy_inexact_alloc_bin(%struct.xfrm_policy* %0, i32 %1) #0 {
  %3 = alloca %struct.xfrm_pol_inexact_bin*, align 8
  %4 = alloca %struct.xfrm_policy*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.xfrm_pol_inexact_bin*, align 8
  %7 = alloca %struct.xfrm_pol_inexact_bin*, align 8
  %8 = alloca %struct.xfrm_pol_inexact_key, align 4
  %9 = alloca %struct.net*, align 8
  store %struct.xfrm_policy* %0, %struct.xfrm_policy** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = getelementptr inbounds %struct.xfrm_pol_inexact_key, %struct.xfrm_pol_inexact_key* %8, i32 0, i32 0
  store i32 0, i32* %10, align 4
  %11 = getelementptr inbounds %struct.xfrm_pol_inexact_key, %struct.xfrm_pol_inexact_key* %8, i32 0, i32 1
  %12 = load %struct.xfrm_policy*, %struct.xfrm_policy** %4, align 8
  %13 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %11, align 4
  %15 = getelementptr inbounds %struct.xfrm_pol_inexact_key, %struct.xfrm_pol_inexact_key* %8, i32 0, i32 2
  %16 = load i32, i32* %5, align 4
  store i32 %16, i32* %15, align 4
  %17 = getelementptr inbounds %struct.xfrm_pol_inexact_key, %struct.xfrm_pol_inexact_key* %8, i32 0, i32 3
  %18 = load %struct.xfrm_policy*, %struct.xfrm_policy** %4, align 8
  %19 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %17, align 4
  %21 = getelementptr inbounds %struct.xfrm_pol_inexact_key, %struct.xfrm_pol_inexact_key* %8, i32 0, i32 4
  %22 = load %struct.xfrm_policy*, %struct.xfrm_policy** %4, align 8
  %23 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %21, align 4
  %25 = load %struct.xfrm_policy*, %struct.xfrm_policy** %4, align 8
  %26 = call %struct.net* @xp_net(%struct.xfrm_policy* %25)
  store %struct.net* %26, %struct.net** %9, align 8
  %27 = load %struct.net*, %struct.net** %9, align 8
  %28 = getelementptr inbounds %struct.net, %struct.net* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  %30 = call i32 @lockdep_assert_held(i32* %29)
  %31 = getelementptr inbounds %struct.xfrm_pol_inexact_key, %struct.xfrm_pol_inexact_key* %8, i32 0, i32 0
  %32 = load %struct.net*, %struct.net** %9, align 8
  %33 = call i32 @write_pnet(i32* %31, %struct.net* %32)
  %34 = load i32, i32* @xfrm_pol_inexact_params, align 4
  %35 = call %struct.xfrm_pol_inexact_bin* @rhashtable_lookup_fast(i32* @xfrm_policy_inexact_table, %struct.xfrm_pol_inexact_key* %8, i32 %34)
  store %struct.xfrm_pol_inexact_bin* %35, %struct.xfrm_pol_inexact_bin** %6, align 8
  %36 = load %struct.xfrm_pol_inexact_bin*, %struct.xfrm_pol_inexact_bin** %6, align 8
  %37 = icmp ne %struct.xfrm_pol_inexact_bin* %36, null
  br i1 %37, label %38, label %40

38:                                               ; preds = %2
  %39 = load %struct.xfrm_pol_inexact_bin*, %struct.xfrm_pol_inexact_bin** %6, align 8
  store %struct.xfrm_pol_inexact_bin* %39, %struct.xfrm_pol_inexact_bin** %3, align 8
  br label %90

40:                                               ; preds = %2
  %41 = load i32, i32* @GFP_ATOMIC, align 4
  %42 = call %struct.xfrm_pol_inexact_bin* @kzalloc(i32 56, i32 %41)
  store %struct.xfrm_pol_inexact_bin* %42, %struct.xfrm_pol_inexact_bin** %6, align 8
  %43 = load %struct.xfrm_pol_inexact_bin*, %struct.xfrm_pol_inexact_bin** %6, align 8
  %44 = icmp ne %struct.xfrm_pol_inexact_bin* %43, null
  br i1 %44, label %46, label %45

45:                                               ; preds = %40
  store %struct.xfrm_pol_inexact_bin* null, %struct.xfrm_pol_inexact_bin** %3, align 8
  br label %90

46:                                               ; preds = %40
  %47 = load %struct.xfrm_pol_inexact_bin*, %struct.xfrm_pol_inexact_bin** %6, align 8
  %48 = getelementptr inbounds %struct.xfrm_pol_inexact_bin, %struct.xfrm_pol_inexact_bin* %47, i32 0, i32 2
  %49 = bitcast %struct.xfrm_pol_inexact_key* %48 to i8*
  %50 = bitcast %struct.xfrm_pol_inexact_key* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %49, i8* align 4 %50, i64 20, i1 false)
  %51 = load %struct.xfrm_pol_inexact_bin*, %struct.xfrm_pol_inexact_bin** %6, align 8
  %52 = getelementptr inbounds %struct.xfrm_pol_inexact_bin, %struct.xfrm_pol_inexact_bin* %51, i32 0, i32 6
  %53 = call i32 @INIT_HLIST_HEAD(i32* %52)
  %54 = load i8*, i8** @RB_ROOT, align 8
  %55 = load %struct.xfrm_pol_inexact_bin*, %struct.xfrm_pol_inexact_bin** %6, align 8
  %56 = getelementptr inbounds %struct.xfrm_pol_inexact_bin, %struct.xfrm_pol_inexact_bin* %55, i32 0, i32 5
  store i8* %54, i8** %56, align 8
  %57 = load i8*, i8** @RB_ROOT, align 8
  %58 = load %struct.xfrm_pol_inexact_bin*, %struct.xfrm_pol_inexact_bin** %6, align 8
  %59 = getelementptr inbounds %struct.xfrm_pol_inexact_bin, %struct.xfrm_pol_inexact_bin* %58, i32 0, i32 4
  store i8* %57, i8** %59, align 8
  %60 = load %struct.xfrm_pol_inexact_bin*, %struct.xfrm_pol_inexact_bin** %6, align 8
  %61 = getelementptr inbounds %struct.xfrm_pol_inexact_bin, %struct.xfrm_pol_inexact_bin* %60, i32 0, i32 3
  %62 = call i32 @seqcount_init(i32* %61)
  %63 = load %struct.xfrm_pol_inexact_bin*, %struct.xfrm_pol_inexact_bin** %6, align 8
  %64 = getelementptr inbounds %struct.xfrm_pol_inexact_bin, %struct.xfrm_pol_inexact_bin* %63, i32 0, i32 2
  %65 = load %struct.xfrm_pol_inexact_bin*, %struct.xfrm_pol_inexact_bin** %6, align 8
  %66 = getelementptr inbounds %struct.xfrm_pol_inexact_bin, %struct.xfrm_pol_inexact_bin* %65, i32 0, i32 1
  %67 = load i32, i32* @xfrm_pol_inexact_params, align 4
  %68 = call %struct.xfrm_pol_inexact_bin* @rhashtable_lookup_get_insert_key(i32* @xfrm_policy_inexact_table, %struct.xfrm_pol_inexact_key* %64, i32* %66, i32 %67)
  store %struct.xfrm_pol_inexact_bin* %68, %struct.xfrm_pol_inexact_bin** %7, align 8
  %69 = load %struct.xfrm_pol_inexact_bin*, %struct.xfrm_pol_inexact_bin** %7, align 8
  %70 = icmp ne %struct.xfrm_pol_inexact_bin* %69, null
  br i1 %70, label %79, label %71

71:                                               ; preds = %46
  %72 = load %struct.xfrm_pol_inexact_bin*, %struct.xfrm_pol_inexact_bin** %6, align 8
  %73 = getelementptr inbounds %struct.xfrm_pol_inexact_bin, %struct.xfrm_pol_inexact_bin* %72, i32 0, i32 0
  %74 = load %struct.net*, %struct.net** %9, align 8
  %75 = getelementptr inbounds %struct.net, %struct.net* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  %77 = call i32 @list_add(i32* %73, i32* %76)
  %78 = load %struct.xfrm_pol_inexact_bin*, %struct.xfrm_pol_inexact_bin** %6, align 8
  store %struct.xfrm_pol_inexact_bin* %78, %struct.xfrm_pol_inexact_bin** %3, align 8
  br label %90

79:                                               ; preds = %46
  %80 = load %struct.xfrm_pol_inexact_bin*, %struct.xfrm_pol_inexact_bin** %6, align 8
  %81 = call i32 @kfree(%struct.xfrm_pol_inexact_bin* %80)
  %82 = load %struct.xfrm_pol_inexact_bin*, %struct.xfrm_pol_inexact_bin** %7, align 8
  %83 = call i64 @IS_ERR(%struct.xfrm_pol_inexact_bin* %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %79
  br label %88

86:                                               ; preds = %79
  %87 = load %struct.xfrm_pol_inexact_bin*, %struct.xfrm_pol_inexact_bin** %7, align 8
  br label %88

88:                                               ; preds = %86, %85
  %89 = phi %struct.xfrm_pol_inexact_bin* [ null, %85 ], [ %87, %86 ]
  store %struct.xfrm_pol_inexact_bin* %89, %struct.xfrm_pol_inexact_bin** %3, align 8
  br label %90

90:                                               ; preds = %88, %71, %45, %38
  %91 = load %struct.xfrm_pol_inexact_bin*, %struct.xfrm_pol_inexact_bin** %3, align 8
  ret %struct.xfrm_pol_inexact_bin* %91
}

declare dso_local %struct.net* @xp_net(%struct.xfrm_policy*) #1

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @write_pnet(i32*, %struct.net*) #1

declare dso_local %struct.xfrm_pol_inexact_bin* @rhashtable_lookup_fast(i32*, %struct.xfrm_pol_inexact_key*, i32) #1

declare dso_local %struct.xfrm_pol_inexact_bin* @kzalloc(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @INIT_HLIST_HEAD(i32*) #1

declare dso_local i32 @seqcount_init(i32*) #1

declare dso_local %struct.xfrm_pol_inexact_bin* @rhashtable_lookup_get_insert_key(i32*, %struct.xfrm_pol_inexact_key*, i32*, i32) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @kfree(%struct.xfrm_pol_inexact_bin*) #1

declare dso_local i64 @IS_ERR(%struct.xfrm_pol_inexact_bin*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
