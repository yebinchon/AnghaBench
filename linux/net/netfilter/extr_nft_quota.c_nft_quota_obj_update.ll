; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nft_quota.c_nft_quota_obj_update.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nft_quota.c_nft_quota_obj_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nft_object = type { i32 }
%struct.nft_quota = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nft_object*, %struct.nft_object*)* @nft_quota_obj_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nft_quota_obj_update(%struct.nft_object* %0, %struct.nft_object* %1) #0 {
  %3 = alloca %struct.nft_object*, align 8
  %4 = alloca %struct.nft_object*, align 8
  %5 = alloca %struct.nft_quota*, align 8
  %6 = alloca %struct.nft_quota*, align 8
  %7 = alloca i32, align 4
  store %struct.nft_object* %0, %struct.nft_object** %3, align 8
  store %struct.nft_object* %1, %struct.nft_object** %4, align 8
  %8 = load %struct.nft_object*, %struct.nft_object** %4, align 8
  %9 = call %struct.nft_quota* @nft_obj_data(%struct.nft_object* %8)
  store %struct.nft_quota* %9, %struct.nft_quota** %5, align 8
  %10 = load %struct.nft_object*, %struct.nft_object** %3, align 8
  %11 = call %struct.nft_quota* @nft_obj_data(%struct.nft_object* %10)
  store %struct.nft_quota* %11, %struct.nft_quota** %6, align 8
  %12 = load %struct.nft_quota*, %struct.nft_quota** %5, align 8
  %13 = getelementptr inbounds %struct.nft_quota, %struct.nft_quota* %12, i32 0, i32 1
  %14 = call i32 @atomic64_read(i32* %13)
  store i32 %14, i32* %7, align 4
  %15 = load %struct.nft_quota*, %struct.nft_quota** %6, align 8
  %16 = getelementptr inbounds %struct.nft_quota, %struct.nft_quota* %15, i32 0, i32 1
  %17 = load i32, i32* %7, align 4
  %18 = call i32 @atomic64_set(i32* %16, i32 %17)
  %19 = load %struct.nft_quota*, %struct.nft_quota** %5, align 8
  %20 = getelementptr inbounds %struct.nft_quota, %struct.nft_quota* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.nft_quota*, %struct.nft_quota** %6, align 8
  %23 = getelementptr inbounds %struct.nft_quota, %struct.nft_quota* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 4
  ret void
}

declare dso_local %struct.nft_quota* @nft_obj_data(%struct.nft_object*) #1

declare dso_local i32 @atomic64_read(i32*) #1

declare dso_local i32 @atomic64_set(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
