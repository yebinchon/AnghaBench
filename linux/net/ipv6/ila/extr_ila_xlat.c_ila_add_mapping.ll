; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/ila/extr_ila_xlat.c_ila_add_mapping.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/ila/extr_ila_xlat.c_ila_add_mapping.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.ila_xlat_params = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.ila_net = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.ila_map = type { i32, i32, %struct.ila_xlat_params }

@ila_net_id = common dso_local global i32 0, align 4
@ila_nf_hook_ops = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@rht_params = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*, %struct.ila_xlat_params*)* @ila_add_mapping to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ila_add_mapping(%struct.net* %0, %struct.ila_xlat_params* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net*, align 8
  %5 = alloca %struct.ila_xlat_params*, align 8
  %6 = alloca %struct.ila_net*, align 8
  %7 = alloca %struct.ila_map*, align 8
  %8 = alloca %struct.ila_map*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.ila_map*, align 8
  %13 = alloca %struct.ila_map*, align 8
  store %struct.net* %0, %struct.net** %4, align 8
  store %struct.ila_xlat_params* %1, %struct.ila_xlat_params** %5, align 8
  %14 = load %struct.net*, %struct.net** %4, align 8
  %15 = load i32, i32* @ila_net_id, align 4
  %16 = call %struct.ila_net* @net_generic(%struct.net* %14, i32 %15)
  store %struct.ila_net* %16, %struct.ila_net** %6, align 8
  %17 = load %struct.ila_net*, %struct.ila_net** %6, align 8
  %18 = load %struct.ila_xlat_params*, %struct.ila_xlat_params** %5, align 8
  %19 = getelementptr inbounds %struct.ila_xlat_params, %struct.ila_xlat_params* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32* @ila_get_lock(%struct.ila_net* %17, i32 %21)
  store i32* %22, i32** %9, align 8
  store i32 0, i32* %10, align 4
  %23 = load %struct.ila_net*, %struct.ila_net** %6, align 8
  %24 = getelementptr inbounds %struct.ila_net, %struct.ila_net* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %42, label %28

28:                                               ; preds = %2
  %29 = load %struct.net*, %struct.net** %4, align 8
  %30 = load i32, i32* @ila_nf_hook_ops, align 4
  %31 = load i32, i32* @ila_nf_hook_ops, align 4
  %32 = call i32 @ARRAY_SIZE(i32 %31)
  %33 = call i32 @nf_register_net_hooks(%struct.net* %29, i32 %30, i32 %32)
  store i32 %33, i32* %10, align 4
  %34 = load i32, i32* %10, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %28
  %37 = load i32, i32* %10, align 4
  store i32 %37, i32* %3, align 4
  br label %153

38:                                               ; preds = %28
  %39 = load %struct.ila_net*, %struct.ila_net** %6, align 8
  %40 = getelementptr inbounds %struct.ila_net, %struct.ila_net* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  store i32 1, i32* %41, align 4
  br label %42

42:                                               ; preds = %38, %2
  %43 = load i32, i32* @GFP_KERNEL, align 4
  %44 = call %struct.ila_map* @kzalloc(i32 12, i32 %43)
  store %struct.ila_map* %44, %struct.ila_map** %7, align 8
  %45 = load %struct.ila_map*, %struct.ila_map** %7, align 8
  %46 = icmp ne %struct.ila_map* %45, null
  br i1 %46, label %50, label %47

47:                                               ; preds = %42
  %48 = load i32, i32* @ENOMEM, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %3, align 4
  br label %153

50:                                               ; preds = %42
  %51 = load %struct.ila_xlat_params*, %struct.ila_xlat_params** %5, align 8
  %52 = getelementptr inbounds %struct.ila_xlat_params, %struct.ila_xlat_params* %51, i32 0, i32 0
  %53 = call i32 @ila_init_saved_csum(%struct.TYPE_4__* %52)
  %54 = load %struct.ila_map*, %struct.ila_map** %7, align 8
  %55 = getelementptr inbounds %struct.ila_map, %struct.ila_map* %54, i32 0, i32 2
  %56 = load %struct.ila_xlat_params*, %struct.ila_xlat_params** %5, align 8
  %57 = bitcast %struct.ila_xlat_params* %55 to i8*
  %58 = bitcast %struct.ila_xlat_params* %56 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %57, i8* align 4 %58, i64 4, i1 false)
  %59 = load %struct.ila_map*, %struct.ila_map** %7, align 8
  %60 = call i32 @ila_order(%struct.ila_map* %59)
  store i32 %60, i32* %11, align 4
  %61 = load i32*, i32** %9, align 8
  %62 = call i32 @spin_lock(i32* %61)
  %63 = load %struct.ila_net*, %struct.ila_net** %6, align 8
  %64 = getelementptr inbounds %struct.ila_net, %struct.ila_net* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 1
  %66 = load %struct.ila_xlat_params*, %struct.ila_xlat_params** %5, align 8
  %67 = getelementptr inbounds %struct.ila_xlat_params, %struct.ila_xlat_params* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = load i32, i32* @rht_params, align 4
  %70 = call %struct.ila_map* @rhashtable_lookup_fast(i32* %65, i32* %68, i32 %69)
  store %struct.ila_map* %70, %struct.ila_map** %8, align 8
  %71 = load %struct.ila_map*, %struct.ila_map** %8, align 8
  %72 = icmp ne %struct.ila_map* %71, null
  br i1 %72, label %81, label %73

73:                                               ; preds = %50
  %74 = load %struct.ila_net*, %struct.ila_net** %6, align 8
  %75 = getelementptr inbounds %struct.ila_net, %struct.ila_net* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 1
  %77 = load %struct.ila_map*, %struct.ila_map** %7, align 8
  %78 = getelementptr inbounds %struct.ila_map, %struct.ila_map* %77, i32 0, i32 0
  %79 = load i32, i32* @rht_params, align 4
  %80 = call i32 @rhashtable_lookup_insert_fast(i32* %76, i32* %78, i32 %79)
  store i32 %80, i32* %10, align 4
  br label %142

81:                                               ; preds = %50
  %82 = load %struct.ila_map*, %struct.ila_map** %8, align 8
  store %struct.ila_map* %82, %struct.ila_map** %12, align 8
  store %struct.ila_map* null, %struct.ila_map** %13, align 8
  br label %83

83:                                               ; preds = %105, %81
  %84 = load %struct.ila_map*, %struct.ila_map** %12, align 8
  %85 = load %struct.ila_xlat_params*, %struct.ila_xlat_params** %5, align 8
  %86 = call i32 @ila_cmp_params(%struct.ila_map* %84, %struct.ila_xlat_params* %85)
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %91, label %88

88:                                               ; preds = %83
  %89 = load i32, i32* @EEXIST, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %10, align 4
  br label %143

91:                                               ; preds = %83
  %92 = load i32, i32* %11, align 4
  %93 = load %struct.ila_map*, %struct.ila_map** %12, align 8
  %94 = call i32 @ila_order(%struct.ila_map* %93)
  %95 = icmp sgt i32 %92, %94
  br i1 %95, label %96, label %97

96:                                               ; preds = %91
  br label %108

97:                                               ; preds = %91
  %98 = load %struct.ila_map*, %struct.ila_map** %12, align 8
  store %struct.ila_map* %98, %struct.ila_map** %13, align 8
  %99 = load %struct.ila_map*, %struct.ila_map** %12, align 8
  %100 = getelementptr inbounds %struct.ila_map, %struct.ila_map* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = load i32*, i32** %9, align 8
  %103 = call i32 @lockdep_is_held(i32* %102)
  %104 = call %struct.ila_map* @rcu_dereference_protected(i32 %101, i32 %103)
  store %struct.ila_map* %104, %struct.ila_map** %12, align 8
  br label %105

105:                                              ; preds = %97
  %106 = load %struct.ila_map*, %struct.ila_map** %12, align 8
  %107 = icmp ne %struct.ila_map* %106, null
  br i1 %107, label %83, label %108

108:                                              ; preds = %105, %96
  %109 = load %struct.ila_map*, %struct.ila_map** %13, align 8
  %110 = icmp ne %struct.ila_map* %109, null
  br i1 %110, label %111, label %122

111:                                              ; preds = %108
  %112 = load %struct.ila_map*, %struct.ila_map** %7, align 8
  %113 = getelementptr inbounds %struct.ila_map, %struct.ila_map* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.ila_map*, %struct.ila_map** %12, align 8
  %116 = call i32 @RCU_INIT_POINTER(i32 %114, %struct.ila_map* %115)
  %117 = load %struct.ila_map*, %struct.ila_map** %13, align 8
  %118 = getelementptr inbounds %struct.ila_map, %struct.ila_map* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.ila_map*, %struct.ila_map** %7, align 8
  %121 = call i32 @rcu_assign_pointer(i32 %119, %struct.ila_map* %120)
  br label %141

122:                                              ; preds = %108
  %123 = load %struct.ila_map*, %struct.ila_map** %7, align 8
  %124 = getelementptr inbounds %struct.ila_map, %struct.ila_map* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.ila_map*, %struct.ila_map** %8, align 8
  %127 = call i32 @RCU_INIT_POINTER(i32 %125, %struct.ila_map* %126)
  %128 = load %struct.ila_net*, %struct.ila_net** %6, align 8
  %129 = getelementptr inbounds %struct.ila_net, %struct.ila_net* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %129, i32 0, i32 1
  %131 = load %struct.ila_map*, %struct.ila_map** %8, align 8
  %132 = getelementptr inbounds %struct.ila_map, %struct.ila_map* %131, i32 0, i32 0
  %133 = load %struct.ila_map*, %struct.ila_map** %7, align 8
  %134 = getelementptr inbounds %struct.ila_map, %struct.ila_map* %133, i32 0, i32 0
  %135 = load i32, i32* @rht_params, align 4
  %136 = call i32 @rhashtable_replace_fast(i32* %130, i32* %132, i32* %134, i32 %135)
  store i32 %136, i32* %10, align 4
  %137 = load i32, i32* %10, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %140

139:                                              ; preds = %122
  br label %143

140:                                              ; preds = %122
  br label %141

141:                                              ; preds = %140, %111
  br label %142

142:                                              ; preds = %141, %73
  br label %143

143:                                              ; preds = %142, %139, %88
  %144 = load i32*, i32** %9, align 8
  %145 = call i32 @spin_unlock(i32* %144)
  %146 = load i32, i32* %10, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %151

148:                                              ; preds = %143
  %149 = load %struct.ila_map*, %struct.ila_map** %7, align 8
  %150 = call i32 @kfree(%struct.ila_map* %149)
  br label %151

151:                                              ; preds = %148, %143
  %152 = load i32, i32* %10, align 4
  store i32 %152, i32* %3, align 4
  br label %153

153:                                              ; preds = %151, %47, %36
  %154 = load i32, i32* %3, align 4
  ret i32 %154
}

declare dso_local %struct.ila_net* @net_generic(%struct.net*, i32) #1

declare dso_local i32* @ila_get_lock(%struct.ila_net*, i32) #1

declare dso_local i32 @nf_register_net_hooks(%struct.net*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local %struct.ila_map* @kzalloc(i32, i32) #1

declare dso_local i32 @ila_init_saved_csum(%struct.TYPE_4__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @ila_order(%struct.ila_map*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.ila_map* @rhashtable_lookup_fast(i32*, i32*, i32) #1

declare dso_local i32 @rhashtable_lookup_insert_fast(i32*, i32*, i32) #1

declare dso_local i32 @ila_cmp_params(%struct.ila_map*, %struct.ila_xlat_params*) #1

declare dso_local %struct.ila_map* @rcu_dereference_protected(i32, i32) #1

declare dso_local i32 @lockdep_is_held(i32*) #1

declare dso_local i32 @RCU_INIT_POINTER(i32, %struct.ila_map*) #1

declare dso_local i32 @rcu_assign_pointer(i32, %struct.ila_map*) #1

declare dso_local i32 @rhashtable_replace_fast(i32*, i32*, i32*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @kfree(%struct.ila_map*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
