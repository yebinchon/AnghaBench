; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nft_set_hash.c_nft_rhash_deactivate.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nft_set_hash.c_nft_rhash_deactivate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.nft_set = type { i32 }
%struct.nft_set_elem = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.nft_rhash = type { i32 }
%struct.nft_rhash_elem = type opaque
%struct.nft_rhash_cmp_arg = type { i32, %struct.nft_set*, i32 }

@nft_rhash_params = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.net*, %struct.nft_set*, %struct.nft_set_elem*)* @nft_rhash_deactivate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @nft_rhash_deactivate(%struct.net* %0, %struct.nft_set* %1, %struct.nft_set_elem* %2) #0 {
  %4 = alloca %struct.net*, align 8
  %5 = alloca %struct.nft_set*, align 8
  %6 = alloca %struct.nft_set_elem*, align 8
  %7 = alloca %struct.nft_rhash*, align 8
  %8 = alloca %struct.nft_rhash_elem*, align 8
  %9 = alloca %struct.nft_rhash_cmp_arg, align 8
  store %struct.net* %0, %struct.net** %4, align 8
  store %struct.nft_set* %1, %struct.nft_set** %5, align 8
  store %struct.nft_set_elem* %2, %struct.nft_set_elem** %6, align 8
  %10 = load %struct.nft_set*, %struct.nft_set** %5, align 8
  %11 = call %struct.nft_rhash* @nft_set_priv(%struct.nft_set* %10)
  store %struct.nft_rhash* %11, %struct.nft_rhash** %7, align 8
  %12 = getelementptr inbounds %struct.nft_rhash_cmp_arg, %struct.nft_rhash_cmp_arg* %9, i32 0, i32 0
  %13 = load %struct.nft_set_elem*, %struct.nft_set_elem** %6, align 8
  %14 = getelementptr inbounds %struct.nft_set_elem, %struct.nft_set_elem* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %12, align 8
  %18 = getelementptr inbounds %struct.nft_rhash_cmp_arg, %struct.nft_rhash_cmp_arg* %9, i32 0, i32 1
  %19 = load %struct.nft_set*, %struct.nft_set** %5, align 8
  store %struct.nft_set* %19, %struct.nft_set** %18, align 8
  %20 = getelementptr inbounds %struct.nft_rhash_cmp_arg, %struct.nft_rhash_cmp_arg* %9, i32 0, i32 2
  %21 = load %struct.net*, %struct.net** %4, align 8
  %22 = call i32 @nft_genmask_next(%struct.net* %21)
  store i32 %22, i32* %20, align 8
  %23 = call i32 (...) @rcu_read_lock()
  %24 = load %struct.nft_rhash*, %struct.nft_rhash** %7, align 8
  %25 = getelementptr inbounds %struct.nft_rhash, %struct.nft_rhash* %24, i32 0, i32 0
  %26 = load i32, i32* @nft_rhash_params, align 4
  %27 = call i8* @rhashtable_lookup(i32* %25, %struct.nft_rhash_cmp_arg* %9, i32 %26)
  %28 = bitcast i8* %27 to %struct.nft_rhash_elem*
  store %struct.nft_rhash_elem* %28, %struct.nft_rhash_elem** %8, align 8
  %29 = load %struct.nft_rhash_elem*, %struct.nft_rhash_elem** %8, align 8
  %30 = icmp ne %struct.nft_rhash_elem* %29, null
  br i1 %30, label %31, label %39

31:                                               ; preds = %3
  %32 = load %struct.net*, %struct.net** %4, align 8
  %33 = load %struct.nft_set*, %struct.nft_set** %5, align 8
  %34 = load %struct.nft_rhash_elem*, %struct.nft_rhash_elem** %8, align 8
  %35 = bitcast %struct.nft_rhash_elem* %34 to i8*
  %36 = call i32 @nft_rhash_flush(%struct.net* %32, %struct.nft_set* %33, i8* %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %31
  store %struct.nft_rhash_elem* null, %struct.nft_rhash_elem** %8, align 8
  br label %39

39:                                               ; preds = %38, %31, %3
  %40 = call i32 (...) @rcu_read_unlock()
  %41 = load %struct.nft_rhash_elem*, %struct.nft_rhash_elem** %8, align 8
  %42 = bitcast %struct.nft_rhash_elem* %41 to i8*
  ret i8* %42
}

declare dso_local %struct.nft_rhash* @nft_set_priv(%struct.nft_set*) #1

declare dso_local i32 @nft_genmask_next(%struct.net*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local i8* @rhashtable_lookup(i32*, %struct.nft_rhash_cmp_arg*, i32) #1

declare dso_local i32 @nft_rhash_flush(%struct.net*, %struct.nft_set*, i8*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
