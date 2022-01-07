; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_tables_api.c_nft_flowtable_type_get.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_tables_api.c_nft_flowtable_type_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nf_flowtable_type = type { i32 }
%struct.net = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.nf_flowtable_type* (%struct.net*, i32)* @nft_flowtable_type_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.nf_flowtable_type* @nft_flowtable_type_get(%struct.net* %0, i32 %1) #0 {
  %3 = alloca %struct.nf_flowtable_type*, align 8
  %4 = alloca %struct.net*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.nf_flowtable_type*, align 8
  store %struct.net* %0, %struct.net** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = call %struct.nf_flowtable_type* @__nft_flowtable_type_get(i32 %7)
  store %struct.nf_flowtable_type* %8, %struct.nf_flowtable_type** %6, align 8
  %9 = load %struct.nf_flowtable_type*, %struct.nf_flowtable_type** %6, align 8
  %10 = icmp ne %struct.nf_flowtable_type* %9, null
  br i1 %10, label %11, label %19

11:                                               ; preds = %2
  %12 = load %struct.nf_flowtable_type*, %struct.nf_flowtable_type** %6, align 8
  %13 = getelementptr inbounds %struct.nf_flowtable_type, %struct.nf_flowtable_type* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i64 @try_module_get(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %11
  %18 = load %struct.nf_flowtable_type*, %struct.nf_flowtable_type** %6, align 8
  store %struct.nf_flowtable_type* %18, %struct.nf_flowtable_type** %3, align 8
  br label %24

19:                                               ; preds = %11, %2
  %20 = call i32 (...) @lockdep_nfnl_nft_mutex_not_held()
  %21 = load i32, i32* @ENOENT, align 4
  %22 = sub nsw i32 0, %21
  %23 = call %struct.nf_flowtable_type* @ERR_PTR(i32 %22)
  store %struct.nf_flowtable_type* %23, %struct.nf_flowtable_type** %3, align 8
  br label %24

24:                                               ; preds = %19, %17
  %25 = load %struct.nf_flowtable_type*, %struct.nf_flowtable_type** %3, align 8
  ret %struct.nf_flowtable_type* %25
}

declare dso_local %struct.nf_flowtable_type* @__nft_flowtable_type_get(i32) #1

declare dso_local i64 @try_module_get(i32) #1

declare dso_local i32 @lockdep_nfnl_nft_mutex_not_held(...) #1

declare dso_local %struct.nf_flowtable_type* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
