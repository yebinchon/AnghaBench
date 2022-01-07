; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_tables_api.c_nft_set_elem_deactivate.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_tables_api.c_nft_set_elem_deactivate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.nft_set = type { i32 }
%struct.nft_set_elem = type { i32 }
%struct.nft_set_ext = type { i32 }
%struct.TYPE_2__ = type { i32 }

@NFT_SET_EXT_DATA = common dso_local global i32 0, align 4
@NFT_SET_EXT_OBJREF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net*, %struct.nft_set*, %struct.nft_set_elem*)* @nft_set_elem_deactivate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nft_set_elem_deactivate(%struct.net* %0, %struct.nft_set* %1, %struct.nft_set_elem* %2) #0 {
  %4 = alloca %struct.net*, align 8
  %5 = alloca %struct.nft_set*, align 8
  %6 = alloca %struct.nft_set_elem*, align 8
  %7 = alloca %struct.nft_set_ext*, align 8
  store %struct.net* %0, %struct.net** %4, align 8
  store %struct.nft_set* %1, %struct.nft_set** %5, align 8
  store %struct.nft_set_elem* %2, %struct.nft_set_elem** %6, align 8
  %8 = load %struct.nft_set*, %struct.nft_set** %5, align 8
  %9 = load %struct.nft_set_elem*, %struct.nft_set_elem** %6, align 8
  %10 = getelementptr inbounds %struct.nft_set_elem, %struct.nft_set_elem* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.nft_set_ext* @nft_set_elem_ext(%struct.nft_set* %8, i32 %11)
  store %struct.nft_set_ext* %12, %struct.nft_set_ext** %7, align 8
  %13 = load %struct.nft_set_ext*, %struct.nft_set_ext** %7, align 8
  %14 = load i32, i32* @NFT_SET_EXT_DATA, align 4
  %15 = call i64 @nft_set_ext_exists(%struct.nft_set_ext* %13, i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %24

17:                                               ; preds = %3
  %18 = load %struct.nft_set_ext*, %struct.nft_set_ext** %7, align 8
  %19 = call i32 @nft_set_ext_data(%struct.nft_set_ext* %18)
  %20 = load %struct.nft_set*, %struct.nft_set** %5, align 8
  %21 = getelementptr inbounds %struct.nft_set, %struct.nft_set* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @nft_data_release(i32 %19, i32 %22)
  br label %24

24:                                               ; preds = %17, %3
  %25 = load %struct.nft_set_ext*, %struct.nft_set_ext** %7, align 8
  %26 = load i32, i32* @NFT_SET_EXT_OBJREF, align 4
  %27 = call i64 @nft_set_ext_exists(%struct.nft_set_ext* %25, i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %36

29:                                               ; preds = %24
  %30 = load %struct.nft_set_ext*, %struct.nft_set_ext** %7, align 8
  %31 = call %struct.TYPE_2__** @nft_set_ext_obj(%struct.nft_set_ext* %30)
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = add nsw i32 %34, -1
  store i32 %35, i32* %33, align 4
  br label %36

36:                                               ; preds = %29, %24
  ret void
}

declare dso_local %struct.nft_set_ext* @nft_set_elem_ext(%struct.nft_set*, i32) #1

declare dso_local i64 @nft_set_ext_exists(%struct.nft_set_ext*, i32) #1

declare dso_local i32 @nft_data_release(i32, i32) #1

declare dso_local i32 @nft_set_ext_data(%struct.nft_set_ext*) #1

declare dso_local %struct.TYPE_2__** @nft_set_ext_obj(%struct.nft_set_ext*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
