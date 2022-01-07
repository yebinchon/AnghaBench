; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_tables_api.c_nft_set_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_tables_api.c_nft_set_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nft_set = type { i64, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.nft_set*)* }
%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nft_set*)* @nft_set_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nft_set_destroy(%struct.nft_set* %0) #0 {
  %2 = alloca %struct.nft_set*, align 8
  store %struct.nft_set* %0, %struct.nft_set** %2, align 8
  %3 = load %struct.nft_set*, %struct.nft_set** %2, align 8
  %4 = getelementptr inbounds %struct.nft_set, %struct.nft_set* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = icmp sgt i64 %5, 0
  %7 = zext i1 %6 to i32
  %8 = call i64 @WARN_ON(i32 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  br label %32

11:                                               ; preds = %1
  %12 = load %struct.nft_set*, %struct.nft_set** %2, align 8
  %13 = getelementptr inbounds %struct.nft_set, %struct.nft_set* %12, i32 0, i32 2
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32 (%struct.nft_set*)*, i32 (%struct.nft_set*)** %15, align 8
  %17 = load %struct.nft_set*, %struct.nft_set** %2, align 8
  %18 = call i32 %16(%struct.nft_set* %17)
  %19 = load %struct.nft_set*, %struct.nft_set** %2, align 8
  %20 = getelementptr inbounds %struct.nft_set, %struct.nft_set* %19, i32 0, i32 2
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = call %struct.TYPE_3__* @to_set_type(%struct.TYPE_4__* %21)
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @module_put(i32 %24)
  %26 = load %struct.nft_set*, %struct.nft_set** %2, align 8
  %27 = getelementptr inbounds %struct.nft_set, %struct.nft_set* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @kfree(i32 %28)
  %30 = load %struct.nft_set*, %struct.nft_set** %2, align 8
  %31 = call i32 @kvfree(%struct.nft_set* %30)
  br label %32

32:                                               ; preds = %11, %10
  ret void
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @module_put(i32) #1

declare dso_local %struct.TYPE_3__* @to_set_type(%struct.TYPE_4__*) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @kvfree(%struct.nft_set*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
