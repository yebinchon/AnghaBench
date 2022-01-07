; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_tables_api.c_nf_tables_abort_release.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_tables_api.c_nf_tables_abort_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nft_trans = type { i32, i32 }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nft_trans*)* @nf_tables_abort_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nf_tables_abort_release(%struct.nft_trans* %0) #0 {
  %2 = alloca %struct.nft_trans*, align 8
  %3 = alloca %struct.TYPE_2__, align 4
  store %struct.nft_trans* %0, %struct.nft_trans** %2, align 8
  %4 = load %struct.nft_trans*, %struct.nft_trans** %2, align 8
  %5 = getelementptr inbounds %struct.nft_trans, %struct.nft_trans* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  switch i32 %6, label %44 [
    i32 128, label %7
    i32 134, label %11
    i32 131, label %15
    i32 130, label %21
    i32 129, label %25
    i32 132, label %34
    i32 133, label %40
  ]

7:                                                ; preds = %1
  %8 = load %struct.nft_trans*, %struct.nft_trans** %2, align 8
  %9 = getelementptr inbounds %struct.nft_trans, %struct.nft_trans* %8, i32 0, i32 1
  %10 = call i32 @nf_tables_table_destroy(i32* %9)
  br label %44

11:                                               ; preds = %1
  %12 = load %struct.nft_trans*, %struct.nft_trans** %2, align 8
  %13 = getelementptr inbounds %struct.nft_trans, %struct.nft_trans* %12, i32 0, i32 1
  %14 = call i32 @nf_tables_chain_destroy(i32* %13)
  br label %44

15:                                               ; preds = %1
  %16 = load %struct.nft_trans*, %struct.nft_trans** %2, align 8
  %17 = getelementptr inbounds %struct.nft_trans, %struct.nft_trans* %16, i32 0, i32 1
  %18 = load %struct.nft_trans*, %struct.nft_trans** %2, align 8
  %19 = call i32 @nft_trans_rule(%struct.nft_trans* %18)
  %20 = call i32 @nf_tables_rule_destroy(i32* %17, i32 %19)
  br label %44

21:                                               ; preds = %1
  %22 = load %struct.nft_trans*, %struct.nft_trans** %2, align 8
  %23 = call i32 @nft_trans_set(%struct.nft_trans* %22)
  %24 = call i32 @nft_set_destroy(i32 %23)
  br label %44

25:                                               ; preds = %1
  %26 = load %struct.nft_trans*, %struct.nft_trans** %2, align 8
  %27 = call i32 @nft_trans_elem_set(%struct.nft_trans* %26)
  %28 = load %struct.nft_trans*, %struct.nft_trans** %2, align 8
  %29 = call i32 @nft_trans_elem(%struct.nft_trans* %28)
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %3, i32 0, i32 0
  store i32 %29, i32* %30, align 4
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %3, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @nft_set_elem_destroy(i32 %27, i32 %32, i32 1)
  br label %44

34:                                               ; preds = %1
  %35 = load %struct.nft_trans*, %struct.nft_trans** %2, align 8
  %36 = getelementptr inbounds %struct.nft_trans, %struct.nft_trans* %35, i32 0, i32 1
  %37 = load %struct.nft_trans*, %struct.nft_trans** %2, align 8
  %38 = call i32 @nft_trans_obj(%struct.nft_trans* %37)
  %39 = call i32 @nft_obj_destroy(i32* %36, i32 %38)
  br label %44

40:                                               ; preds = %1
  %41 = load %struct.nft_trans*, %struct.nft_trans** %2, align 8
  %42 = call i32 @nft_trans_flowtable(%struct.nft_trans* %41)
  %43 = call i32 @nf_tables_flowtable_destroy(i32 %42)
  br label %44

44:                                               ; preds = %1, %40, %34, %25, %21, %15, %11, %7
  %45 = load %struct.nft_trans*, %struct.nft_trans** %2, align 8
  %46 = call i32 @kfree(%struct.nft_trans* %45)
  ret void
}

declare dso_local i32 @nf_tables_table_destroy(i32*) #1

declare dso_local i32 @nf_tables_chain_destroy(i32*) #1

declare dso_local i32 @nf_tables_rule_destroy(i32*, i32) #1

declare dso_local i32 @nft_trans_rule(%struct.nft_trans*) #1

declare dso_local i32 @nft_set_destroy(i32) #1

declare dso_local i32 @nft_trans_set(%struct.nft_trans*) #1

declare dso_local i32 @nft_set_elem_destroy(i32, i32, i32) #1

declare dso_local i32 @nft_trans_elem_set(%struct.nft_trans*) #1

declare dso_local i32 @nft_trans_elem(%struct.nft_trans*) #1

declare dso_local i32 @nft_obj_destroy(i32*, i32) #1

declare dso_local i32 @nft_trans_obj(%struct.nft_trans*) #1

declare dso_local i32 @nf_tables_flowtable_destroy(i32) #1

declare dso_local i32 @nft_trans_flowtable(%struct.nft_trans*) #1

declare dso_local i32 @kfree(%struct.nft_trans*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
