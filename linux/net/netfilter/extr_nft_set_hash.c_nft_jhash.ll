; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nft_set_hash.c_nft_jhash.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nft_set_hash.c_nft_jhash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nft_set = type { i32 }
%struct.nft_hash = type { i32, i32 }
%struct.nft_set_ext = type { i32 }
%struct.nft_data = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nft_set*, %struct.nft_hash*, %struct.nft_set_ext*)* @nft_jhash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nft_jhash(%struct.nft_set* %0, %struct.nft_hash* %1, %struct.nft_set_ext* %2) #0 {
  %4 = alloca %struct.nft_set*, align 8
  %5 = alloca %struct.nft_hash*, align 8
  %6 = alloca %struct.nft_set_ext*, align 8
  %7 = alloca %struct.nft_data*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.nft_set* %0, %struct.nft_set** %4, align 8
  store %struct.nft_hash* %1, %struct.nft_hash** %5, align 8
  store %struct.nft_set_ext* %2, %struct.nft_set_ext** %6, align 8
  %10 = load %struct.nft_set_ext*, %struct.nft_set_ext** %6, align 8
  %11 = call %struct.nft_data* @nft_set_ext_key(%struct.nft_set_ext* %10)
  store %struct.nft_data* %11, %struct.nft_data** %7, align 8
  %12 = load %struct.nft_set*, %struct.nft_set** %4, align 8
  %13 = getelementptr inbounds %struct.nft_set, %struct.nft_set* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp eq i32 %14, 4
  br i1 %15, label %16, label %25

16:                                               ; preds = %3
  %17 = load %struct.nft_data*, %struct.nft_data** %7, align 8
  %18 = bitcast %struct.nft_data* %17 to i32*
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %9, align 4
  %21 = load %struct.nft_hash*, %struct.nft_hash** %5, align 8
  %22 = getelementptr inbounds %struct.nft_hash, %struct.nft_hash* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @jhash_1word(i32 %20, i32 %23)
  store i32 %24, i32* %8, align 4
  br label %34

25:                                               ; preds = %3
  %26 = load %struct.nft_data*, %struct.nft_data** %7, align 8
  %27 = load %struct.nft_set*, %struct.nft_set** %4, align 8
  %28 = getelementptr inbounds %struct.nft_set, %struct.nft_set* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.nft_hash*, %struct.nft_hash** %5, align 8
  %31 = getelementptr inbounds %struct.nft_hash, %struct.nft_hash* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @jhash(%struct.nft_data* %26, i32 %29, i32 %32)
  store i32 %33, i32* %8, align 4
  br label %34

34:                                               ; preds = %25, %16
  %35 = load i32, i32* %8, align 4
  %36 = load %struct.nft_hash*, %struct.nft_hash** %5, align 8
  %37 = getelementptr inbounds %struct.nft_hash, %struct.nft_hash* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @reciprocal_scale(i32 %35, i32 %38)
  store i32 %39, i32* %8, align 4
  %40 = load i32, i32* %8, align 4
  ret i32 %40
}

declare dso_local %struct.nft_data* @nft_set_ext_key(%struct.nft_set_ext*) #1

declare dso_local i32 @jhash_1word(i32, i32) #1

declare dso_local i32 @jhash(%struct.nft_data*, i32, i32) #1

declare dso_local i32 @reciprocal_scale(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
