; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_tables_api.c_nft_obj_commit_update.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_tables_api.c_nft_obj_commit_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nft_trans = type { i32 }
%struct.nft_object = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.nft_object*, %struct.nft_object*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nft_trans*)* @nft_obj_commit_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nft_obj_commit_update(%struct.nft_trans* %0) #0 {
  %2 = alloca %struct.nft_trans*, align 8
  %3 = alloca %struct.nft_object*, align 8
  %4 = alloca %struct.nft_object*, align 8
  store %struct.nft_trans* %0, %struct.nft_trans** %2, align 8
  %5 = load %struct.nft_trans*, %struct.nft_trans** %2, align 8
  %6 = call %struct.nft_object* @nft_trans_obj(%struct.nft_trans* %5)
  store %struct.nft_object* %6, %struct.nft_object** %4, align 8
  %7 = load %struct.nft_trans*, %struct.nft_trans** %2, align 8
  %8 = call %struct.nft_object* @nft_trans_obj_newobj(%struct.nft_trans* %7)
  store %struct.nft_object* %8, %struct.nft_object** %3, align 8
  %9 = load %struct.nft_object*, %struct.nft_object** %4, align 8
  %10 = getelementptr inbounds %struct.nft_object, %struct.nft_object* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32 (%struct.nft_object*, %struct.nft_object*)*, i32 (%struct.nft_object*, %struct.nft_object*)** %12, align 8
  %14 = icmp ne i32 (%struct.nft_object*, %struct.nft_object*)* %13, null
  br i1 %14, label %15, label %24

15:                                               ; preds = %1
  %16 = load %struct.nft_object*, %struct.nft_object** %4, align 8
  %17 = getelementptr inbounds %struct.nft_object, %struct.nft_object* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32 (%struct.nft_object*, %struct.nft_object*)*, i32 (%struct.nft_object*, %struct.nft_object*)** %19, align 8
  %21 = load %struct.nft_object*, %struct.nft_object** %4, align 8
  %22 = load %struct.nft_object*, %struct.nft_object** %3, align 8
  %23 = call i32 %20(%struct.nft_object* %21, %struct.nft_object* %22)
  br label %24

24:                                               ; preds = %15, %1
  %25 = load %struct.nft_object*, %struct.nft_object** %3, align 8
  %26 = call i32 @kfree(%struct.nft_object* %25)
  ret void
}

declare dso_local %struct.nft_object* @nft_trans_obj(%struct.nft_trans*) #1

declare dso_local %struct.nft_object* @nft_trans_obj_newobj(%struct.nft_trans*) #1

declare dso_local i32 @kfree(%struct.nft_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
