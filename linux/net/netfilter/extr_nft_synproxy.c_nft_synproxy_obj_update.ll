; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nft_synproxy.c_nft_synproxy_obj_update.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nft_synproxy.c_nft_synproxy_obj_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nft_object = type { i32 }
%struct.nft_synproxy = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nft_object*, %struct.nft_object*)* @nft_synproxy_obj_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nft_synproxy_obj_update(%struct.nft_object* %0, %struct.nft_object* %1) #0 {
  %3 = alloca %struct.nft_object*, align 8
  %4 = alloca %struct.nft_object*, align 8
  %5 = alloca %struct.nft_synproxy*, align 8
  %6 = alloca %struct.nft_synproxy*, align 8
  store %struct.nft_object* %0, %struct.nft_object** %3, align 8
  store %struct.nft_object* %1, %struct.nft_object** %4, align 8
  %7 = load %struct.nft_object*, %struct.nft_object** %4, align 8
  %8 = call %struct.nft_synproxy* @nft_obj_data(%struct.nft_object* %7)
  store %struct.nft_synproxy* %8, %struct.nft_synproxy** %5, align 8
  %9 = load %struct.nft_object*, %struct.nft_object** %3, align 8
  %10 = call %struct.nft_synproxy* @nft_obj_data(%struct.nft_object* %9)
  store %struct.nft_synproxy* %10, %struct.nft_synproxy** %6, align 8
  %11 = load %struct.nft_synproxy*, %struct.nft_synproxy** %5, align 8
  %12 = getelementptr inbounds %struct.nft_synproxy, %struct.nft_synproxy* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.nft_synproxy*, %struct.nft_synproxy** %6, align 8
  %15 = getelementptr inbounds %struct.nft_synproxy, %struct.nft_synproxy* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 4
  ret void
}

declare dso_local %struct.nft_synproxy* @nft_obj_data(%struct.nft_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
