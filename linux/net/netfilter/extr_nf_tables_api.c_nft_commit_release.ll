; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_tables_api.c_nft_commit_release.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_tables_api.c_nft_commit_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nft_trans = type { i32, %struct.TYPE_8__, i64 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nft_trans*)* @nft_commit_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nft_commit_release(%struct.nft_trans* %0) #0 {
  %2 = alloca %struct.nft_trans*, align 8
  %3 = alloca %struct.TYPE_7__, align 4
  store %struct.nft_trans* %0, %struct.nft_trans** %2, align 8
  %4 = load %struct.nft_trans*, %struct.nft_trans** %2, align 8
  %5 = getelementptr inbounds %struct.nft_trans, %struct.nft_trans* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  switch i32 %6, label %53 [
    i32 129, label %7
    i32 128, label %11
    i32 135, label %18
    i32 132, label %22
    i32 131, label %28
    i32 130, label %32
    i32 133, label %43
    i32 134, label %49
  ]

7:                                                ; preds = %1
  %8 = load %struct.nft_trans*, %struct.nft_trans** %2, align 8
  %9 = getelementptr inbounds %struct.nft_trans, %struct.nft_trans* %8, i32 0, i32 1
  %10 = call i32 @nf_tables_table_destroy(%struct.TYPE_8__* %9)
  br label %53

11:                                               ; preds = %1
  %12 = load %struct.nft_trans*, %struct.nft_trans** %2, align 8
  %13 = call i32 @nft_trans_chain_stats(%struct.nft_trans* %12)
  %14 = call i32 @free_percpu(i32 %13)
  %15 = load %struct.nft_trans*, %struct.nft_trans** %2, align 8
  %16 = call %struct.nft_trans* @nft_trans_chain_name(%struct.nft_trans* %15)
  %17 = call i32 @kfree(%struct.nft_trans* %16)
  br label %53

18:                                               ; preds = %1
  %19 = load %struct.nft_trans*, %struct.nft_trans** %2, align 8
  %20 = getelementptr inbounds %struct.nft_trans, %struct.nft_trans* %19, i32 0, i32 1
  %21 = call i32 @nf_tables_chain_destroy(%struct.TYPE_8__* %20)
  br label %53

22:                                               ; preds = %1
  %23 = load %struct.nft_trans*, %struct.nft_trans** %2, align 8
  %24 = getelementptr inbounds %struct.nft_trans, %struct.nft_trans* %23, i32 0, i32 1
  %25 = load %struct.nft_trans*, %struct.nft_trans** %2, align 8
  %26 = call i32 @nft_trans_rule(%struct.nft_trans* %25)
  %27 = call i32 @nf_tables_rule_destroy(%struct.TYPE_8__* %24, i32 %26)
  br label %53

28:                                               ; preds = %1
  %29 = load %struct.nft_trans*, %struct.nft_trans** %2, align 8
  %30 = call i32 @nft_trans_set(%struct.nft_trans* %29)
  %31 = call i32 @nft_set_destroy(i32 %30)
  br label %53

32:                                               ; preds = %1
  %33 = load %struct.nft_trans*, %struct.nft_trans** %2, align 8
  %34 = getelementptr inbounds %struct.nft_trans, %struct.nft_trans* %33, i32 0, i32 1
  %35 = load %struct.nft_trans*, %struct.nft_trans** %2, align 8
  %36 = call i32 @nft_trans_elem_set(%struct.nft_trans* %35)
  %37 = load %struct.nft_trans*, %struct.nft_trans** %2, align 8
  %38 = call i32 @nft_trans_elem(%struct.nft_trans* %37)
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %3, i32 0, i32 0
  store i32 %38, i32* %39, align 4
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %3, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @nf_tables_set_elem_destroy(%struct.TYPE_8__* %34, i32 %36, i32 %41)
  br label %53

43:                                               ; preds = %1
  %44 = load %struct.nft_trans*, %struct.nft_trans** %2, align 8
  %45 = getelementptr inbounds %struct.nft_trans, %struct.nft_trans* %44, i32 0, i32 1
  %46 = load %struct.nft_trans*, %struct.nft_trans** %2, align 8
  %47 = call i32 @nft_trans_obj(%struct.nft_trans* %46)
  %48 = call i32 @nft_obj_destroy(%struct.TYPE_8__* %45, i32 %47)
  br label %53

49:                                               ; preds = %1
  %50 = load %struct.nft_trans*, %struct.nft_trans** %2, align 8
  %51 = call i32 @nft_trans_flowtable(%struct.nft_trans* %50)
  %52 = call i32 @nf_tables_flowtable_destroy(i32 %51)
  br label %53

53:                                               ; preds = %1, %49, %43, %32, %28, %22, %18, %11, %7
  %54 = load %struct.nft_trans*, %struct.nft_trans** %2, align 8
  %55 = getelementptr inbounds %struct.nft_trans, %struct.nft_trans* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %64

58:                                               ; preds = %53
  %59 = load %struct.nft_trans*, %struct.nft_trans** %2, align 8
  %60 = getelementptr inbounds %struct.nft_trans, %struct.nft_trans* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @put_net(i32 %62)
  br label %64

64:                                               ; preds = %58, %53
  %65 = load %struct.nft_trans*, %struct.nft_trans** %2, align 8
  %66 = call i32 @kfree(%struct.nft_trans* %65)
  ret void
}

declare dso_local i32 @nf_tables_table_destroy(%struct.TYPE_8__*) #1

declare dso_local i32 @free_percpu(i32) #1

declare dso_local i32 @nft_trans_chain_stats(%struct.nft_trans*) #1

declare dso_local i32 @kfree(%struct.nft_trans*) #1

declare dso_local %struct.nft_trans* @nft_trans_chain_name(%struct.nft_trans*) #1

declare dso_local i32 @nf_tables_chain_destroy(%struct.TYPE_8__*) #1

declare dso_local i32 @nf_tables_rule_destroy(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @nft_trans_rule(%struct.nft_trans*) #1

declare dso_local i32 @nft_set_destroy(i32) #1

declare dso_local i32 @nft_trans_set(%struct.nft_trans*) #1

declare dso_local i32 @nf_tables_set_elem_destroy(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @nft_trans_elem_set(%struct.nft_trans*) #1

declare dso_local i32 @nft_trans_elem(%struct.nft_trans*) #1

declare dso_local i32 @nft_obj_destroy(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @nft_trans_obj(%struct.nft_trans*) #1

declare dso_local i32 @nf_tables_flowtable_destroy(i32) #1

declare dso_local i32 @nft_trans_flowtable(%struct.nft_trans*) #1

declare dso_local i32 @put_net(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
