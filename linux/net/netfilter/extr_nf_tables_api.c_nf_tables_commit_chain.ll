; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_tables_api.c_nf_tables_commit_chain.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_tables_api.c_nf_tables_commit_chain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.nft_chain = type { %struct.nft_rule**, i32, i32 }
%struct.nft_rule = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net*, %struct.nft_chain*)* @nf_tables_commit_chain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nf_tables_commit_chain(%struct.net* %0, %struct.nft_chain* %1) #0 {
  %3 = alloca %struct.net*, align 8
  %4 = alloca %struct.nft_chain*, align 8
  %5 = alloca %struct.nft_rule**, align 8
  %6 = alloca %struct.nft_rule**, align 8
  %7 = alloca i32, align 4
  store %struct.net* %0, %struct.net** %3, align 8
  store %struct.nft_chain* %1, %struct.nft_chain** %4, align 8
  %8 = load %struct.net*, %struct.net** %3, align 8
  %9 = call i32 @nft_gencursor_next(%struct.net* %8)
  store i32 %9, i32* %7, align 4
  %10 = load %struct.nft_chain*, %struct.nft_chain** %4, align 8
  %11 = getelementptr inbounds %struct.nft_chain, %struct.nft_chain* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.net*, %struct.net** %3, align 8
  %14 = call i32 @lockdep_commit_lock_is_held(%struct.net* %13)
  %15 = call %struct.nft_rule** @rcu_dereference_protected(i32 %12, i32 %14)
  store %struct.nft_rule** %15, %struct.nft_rule*** %5, align 8
  %16 = load %struct.nft_chain*, %struct.nft_chain** %4, align 8
  %17 = getelementptr inbounds %struct.nft_chain, %struct.nft_chain* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.net*, %struct.net** %3, align 8
  %20 = call i32 @lockdep_commit_lock_is_held(%struct.net* %19)
  %21 = call %struct.nft_rule** @rcu_dereference_protected(i32 %18, i32 %20)
  store %struct.nft_rule** %21, %struct.nft_rule*** %6, align 8
  %22 = load %struct.nft_chain*, %struct.nft_chain** %4, align 8
  %23 = getelementptr inbounds %struct.nft_chain, %struct.nft_chain* %22, i32 0, i32 0
  %24 = load %struct.nft_rule**, %struct.nft_rule*** %23, align 8
  %25 = icmp eq %struct.nft_rule** %24, null
  br i1 %25, label %26, label %51

26:                                               ; preds = %2
  %27 = load %struct.nft_rule**, %struct.nft_rule*** %5, align 8
  %28 = load %struct.nft_rule**, %struct.nft_rule*** %6, align 8
  %29 = icmp eq %struct.nft_rule** %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %26
  br label %86

31:                                               ; preds = %26
  %32 = load i32, i32* %7, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %42

34:                                               ; preds = %31
  %35 = load %struct.nft_chain*, %struct.nft_chain** %4, align 8
  %36 = getelementptr inbounds %struct.nft_chain, %struct.nft_chain* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.nft_rule**, %struct.nft_rule*** %5, align 8
  %39 = call i32 @rcu_assign_pointer(i32 %37, %struct.nft_rule** %38)
  %40 = load %struct.nft_rule**, %struct.nft_rule*** %6, align 8
  %41 = call i32 @nf_tables_commit_chain_free_rules_old(%struct.nft_rule** %40)
  br label %50

42:                                               ; preds = %31
  %43 = load %struct.nft_chain*, %struct.nft_chain** %4, align 8
  %44 = getelementptr inbounds %struct.nft_chain, %struct.nft_chain* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.nft_rule**, %struct.nft_rule*** %6, align 8
  %47 = call i32 @rcu_assign_pointer(i32 %45, %struct.nft_rule** %46)
  %48 = load %struct.nft_rule**, %struct.nft_rule*** %5, align 8
  %49 = call i32 @nf_tables_commit_chain_free_rules_old(%struct.nft_rule** %48)
  br label %50

50:                                               ; preds = %42, %34
  br label %86

51:                                               ; preds = %2
  %52 = load i32, i32* %7, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %62

54:                                               ; preds = %51
  %55 = load %struct.nft_chain*, %struct.nft_chain** %4, align 8
  %56 = getelementptr inbounds %struct.nft_chain, %struct.nft_chain* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.nft_chain*, %struct.nft_chain** %4, align 8
  %59 = getelementptr inbounds %struct.nft_chain, %struct.nft_chain* %58, i32 0, i32 0
  %60 = load %struct.nft_rule**, %struct.nft_rule*** %59, align 8
  %61 = call i32 @rcu_assign_pointer(i32 %57, %struct.nft_rule** %60)
  br label %70

62:                                               ; preds = %51
  %63 = load %struct.nft_chain*, %struct.nft_chain** %4, align 8
  %64 = getelementptr inbounds %struct.nft_chain, %struct.nft_chain* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.nft_chain*, %struct.nft_chain** %4, align 8
  %67 = getelementptr inbounds %struct.nft_chain, %struct.nft_chain* %66, i32 0, i32 0
  %68 = load %struct.nft_rule**, %struct.nft_rule*** %67, align 8
  %69 = call i32 @rcu_assign_pointer(i32 %65, %struct.nft_rule** %68)
  br label %70

70:                                               ; preds = %62, %54
  %71 = load %struct.nft_chain*, %struct.nft_chain** %4, align 8
  %72 = getelementptr inbounds %struct.nft_chain, %struct.nft_chain* %71, i32 0, i32 0
  store %struct.nft_rule** null, %struct.nft_rule*** %72, align 8
  %73 = load %struct.nft_rule**, %struct.nft_rule*** %5, align 8
  %74 = load %struct.nft_rule**, %struct.nft_rule*** %6, align 8
  %75 = icmp eq %struct.nft_rule** %73, %74
  br i1 %75, label %76, label %77

76:                                               ; preds = %70
  br label %86

77:                                               ; preds = %70
  %78 = load i32, i32* %7, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %77
  %81 = load %struct.nft_rule**, %struct.nft_rule*** %6, align 8
  %82 = call i32 @nf_tables_commit_chain_free_rules_old(%struct.nft_rule** %81)
  br label %86

83:                                               ; preds = %77
  %84 = load %struct.nft_rule**, %struct.nft_rule*** %5, align 8
  %85 = call i32 @nf_tables_commit_chain_free_rules_old(%struct.nft_rule** %84)
  br label %86

86:                                               ; preds = %30, %50, %76, %83, %80
  ret void
}

declare dso_local i32 @nft_gencursor_next(%struct.net*) #1

declare dso_local %struct.nft_rule** @rcu_dereference_protected(i32, i32) #1

declare dso_local i32 @lockdep_commit_lock_is_held(%struct.net*) #1

declare dso_local i32 @rcu_assign_pointer(i32, %struct.nft_rule**) #1

declare dso_local i32 @nf_tables_commit_chain_free_rules_old(%struct.nft_rule**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
