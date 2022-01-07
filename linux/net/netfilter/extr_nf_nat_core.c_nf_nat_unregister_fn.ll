; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_nat_core.c_nf_nat_unregister_fn.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_nat_core.c_nf_nat_unregister_fn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.nf_hook_ops = type { i32, %struct.nf_nat_lookup_hook_priv* }
%struct.nf_nat_lookup_hook_priv = type { i32 }
%struct.nat_net = type { %struct.nf_nat_hooks_net* }
%struct.nf_nat_hooks_net = type { i64, %struct.nf_hook_ops* }

@nat_net_id = common dso_local global i32 0, align 4
@nf_nat_proto_mutex = common dso_local global i32 0, align 4
@rcu_head = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nf_nat_unregister_fn(%struct.net* %0, i64 %1, %struct.nf_hook_ops* %2, i32 %3) #0 {
  %5 = alloca %struct.net*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.nf_hook_ops*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.nat_net*, align 8
  %10 = alloca %struct.nf_nat_hooks_net*, align 8
  %11 = alloca %struct.nf_nat_lookup_hook_priv*, align 8
  %12 = alloca %struct.nf_hook_ops*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.net* %0, %struct.net** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.nf_hook_ops* %2, %struct.nf_hook_ops** %7, align 8
  store i32 %3, i32* %8, align 4
  %15 = load %struct.net*, %struct.net** %5, align 8
  %16 = load i32, i32* @nat_net_id, align 4
  %17 = call %struct.nat_net* @net_generic(%struct.net* %15, i32 %16)
  store %struct.nat_net* %17, %struct.nat_net** %9, align 8
  %18 = load %struct.nf_hook_ops*, %struct.nf_hook_ops** %7, align 8
  %19 = getelementptr inbounds %struct.nf_hook_ops, %struct.nf_hook_ops* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %13, align 4
  %21 = load i64, i64* %6, align 8
  %22 = load %struct.nat_net*, %struct.nat_net** %9, align 8
  %23 = getelementptr inbounds %struct.nat_net, %struct.nat_net* %22, i32 0, i32 0
  %24 = load %struct.nf_nat_hooks_net*, %struct.nf_nat_hooks_net** %23, align 8
  %25 = call i64 @ARRAY_SIZE(%struct.nf_nat_hooks_net* %24)
  %26 = icmp uge i64 %21, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %4
  br label %123

28:                                               ; preds = %4
  %29 = load %struct.nat_net*, %struct.nat_net** %9, align 8
  %30 = getelementptr inbounds %struct.nat_net, %struct.nat_net* %29, i32 0, i32 0
  %31 = load %struct.nf_nat_hooks_net*, %struct.nf_nat_hooks_net** %30, align 8
  %32 = load i64, i64* %6, align 8
  %33 = getelementptr inbounds %struct.nf_nat_hooks_net, %struct.nf_nat_hooks_net* %31, i64 %32
  store %struct.nf_nat_hooks_net* %33, %struct.nf_nat_hooks_net** %10, align 8
  %34 = call i32 @mutex_lock(i32* @nf_nat_proto_mutex)
  %35 = load %struct.nf_nat_hooks_net*, %struct.nf_nat_hooks_net** %10, align 8
  %36 = getelementptr inbounds %struct.nf_nat_hooks_net, %struct.nf_nat_hooks_net* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp eq i64 %37, 0
  %39 = zext i1 %38 to i32
  %40 = call i64 @WARN_ON(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %28
  br label %121

43:                                               ; preds = %28
  %44 = load %struct.nf_nat_hooks_net*, %struct.nf_nat_hooks_net** %10, align 8
  %45 = getelementptr inbounds %struct.nf_nat_hooks_net, %struct.nf_nat_hooks_net* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = add nsw i64 %46, -1
  store i64 %47, i64* %45, align 8
  %48 = load %struct.nf_nat_hooks_net*, %struct.nf_nat_hooks_net** %10, align 8
  %49 = getelementptr inbounds %struct.nf_nat_hooks_net, %struct.nf_nat_hooks_net* %48, i32 0, i32 1
  %50 = load %struct.nf_hook_ops*, %struct.nf_hook_ops** %49, align 8
  store %struct.nf_hook_ops* %50, %struct.nf_hook_ops** %12, align 8
  store i32 0, i32* %14, align 4
  br label %51

51:                                               ; preds = %67, %43
  %52 = load i32, i32* %14, align 4
  %53 = load i32, i32* %8, align 4
  %54 = icmp ult i32 %52, %53
  br i1 %54, label %55, label %70

55:                                               ; preds = %51
  %56 = load %struct.nf_hook_ops*, %struct.nf_hook_ops** %12, align 8
  %57 = load i32, i32* %14, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.nf_hook_ops, %struct.nf_hook_ops* %56, i64 %58
  %60 = getelementptr inbounds %struct.nf_hook_ops, %struct.nf_hook_ops* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* %13, align 4
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %64, label %66

64:                                               ; preds = %55
  %65 = load i32, i32* %14, align 4
  store i32 %65, i32* %13, align 4
  br label %70

66:                                               ; preds = %55
  br label %67

67:                                               ; preds = %66
  %68 = load i32, i32* %14, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %14, align 4
  br label %51

70:                                               ; preds = %64, %51
  %71 = load i32, i32* %14, align 4
  %72 = load i32, i32* %8, align 4
  %73 = icmp eq i32 %71, %72
  %74 = zext i1 %73 to i32
  %75 = call i64 @WARN_ON_ONCE(i32 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %70
  br label %121

78:                                               ; preds = %70
  %79 = load %struct.nf_hook_ops*, %struct.nf_hook_ops** %12, align 8
  %80 = load i32, i32* %13, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.nf_hook_ops, %struct.nf_hook_ops* %79, i64 %81
  %83 = getelementptr inbounds %struct.nf_hook_ops, %struct.nf_hook_ops* %82, i32 0, i32 1
  %84 = load %struct.nf_nat_lookup_hook_priv*, %struct.nf_nat_lookup_hook_priv** %83, align 8
  store %struct.nf_nat_lookup_hook_priv* %84, %struct.nf_nat_lookup_hook_priv** %11, align 8
  %85 = load %struct.nf_nat_lookup_hook_priv*, %struct.nf_nat_lookup_hook_priv** %11, align 8
  %86 = getelementptr inbounds %struct.nf_nat_lookup_hook_priv, %struct.nf_nat_lookup_hook_priv* %85, i32 0, i32 0
  %87 = load %struct.nf_hook_ops*, %struct.nf_hook_ops** %7, align 8
  %88 = call i32 @nf_hook_entries_delete_raw(i32* %86, %struct.nf_hook_ops* %87)
  %89 = load %struct.nf_nat_hooks_net*, %struct.nf_nat_hooks_net** %10, align 8
  %90 = getelementptr inbounds %struct.nf_nat_hooks_net, %struct.nf_nat_hooks_net* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = icmp eq i64 %91, 0
  br i1 %92, label %93, label %120

93:                                               ; preds = %78
  %94 = load %struct.net*, %struct.net** %5, align 8
  %95 = load %struct.nf_hook_ops*, %struct.nf_hook_ops** %12, align 8
  %96 = load i32, i32* %8, align 4
  %97 = call i32 @nf_unregister_net_hooks(%struct.net* %94, %struct.nf_hook_ops* %95, i32 %96)
  store i32 0, i32* %14, align 4
  br label %98

98:                                               ; preds = %112, %93
  %99 = load i32, i32* %14, align 4
  %100 = load i32, i32* %8, align 4
  %101 = icmp ult i32 %99, %100
  br i1 %101, label %102, label %115

102:                                              ; preds = %98
  %103 = load %struct.nf_hook_ops*, %struct.nf_hook_ops** %12, align 8
  %104 = load i32, i32* %14, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.nf_hook_ops, %struct.nf_hook_ops* %103, i64 %105
  %107 = getelementptr inbounds %struct.nf_hook_ops, %struct.nf_hook_ops* %106, i32 0, i32 1
  %108 = load %struct.nf_nat_lookup_hook_priv*, %struct.nf_nat_lookup_hook_priv** %107, align 8
  store %struct.nf_nat_lookup_hook_priv* %108, %struct.nf_nat_lookup_hook_priv** %11, align 8
  %109 = load %struct.nf_nat_lookup_hook_priv*, %struct.nf_nat_lookup_hook_priv** %11, align 8
  %110 = load i32, i32* @rcu_head, align 4
  %111 = call i32 @kfree_rcu(%struct.nf_nat_lookup_hook_priv* %109, i32 %110)
  br label %112

112:                                              ; preds = %102
  %113 = load i32, i32* %14, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %14, align 4
  br label %98

115:                                              ; preds = %98
  %116 = load %struct.nf_nat_hooks_net*, %struct.nf_nat_hooks_net** %10, align 8
  %117 = getelementptr inbounds %struct.nf_nat_hooks_net, %struct.nf_nat_hooks_net* %116, i32 0, i32 1
  store %struct.nf_hook_ops* null, %struct.nf_hook_ops** %117, align 8
  %118 = load %struct.nf_hook_ops*, %struct.nf_hook_ops** %12, align 8
  %119 = call i32 @kfree(%struct.nf_hook_ops* %118)
  br label %120

120:                                              ; preds = %115, %78
  br label %121

121:                                              ; preds = %120, %77, %42
  %122 = call i32 @mutex_unlock(i32* @nf_nat_proto_mutex)
  br label %123

123:                                              ; preds = %121, %27
  ret void
}

declare dso_local %struct.nat_net* @net_generic(%struct.net*, i32) #1

declare dso_local i64 @ARRAY_SIZE(%struct.nf_nat_hooks_net*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @nf_hook_entries_delete_raw(i32*, %struct.nf_hook_ops*) #1

declare dso_local i32 @nf_unregister_net_hooks(%struct.net*, %struct.nf_hook_ops*, i32) #1

declare dso_local i32 @kfree_rcu(%struct.nf_nat_lookup_hook_priv*, i32) #1

declare dso_local i32 @kfree(%struct.nf_hook_ops*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
