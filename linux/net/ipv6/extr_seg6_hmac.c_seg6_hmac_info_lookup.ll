; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_seg6_hmac.c_seg6_hmac_info_lookup.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_seg6_hmac.c_seg6_hmac_info_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seg6_hmac_info = type { i32 }
%struct.net = type { i32 }
%struct.seg6_pernet_data = type { i32 }

@rht_params = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.seg6_hmac_info* @seg6_hmac_info_lookup(%struct.net* %0, i32 %1) #0 {
  %3 = alloca %struct.net*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.seg6_pernet_data*, align 8
  %6 = alloca %struct.seg6_hmac_info*, align 8
  store %struct.net* %0, %struct.net** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.net*, %struct.net** %3, align 8
  %8 = call %struct.seg6_pernet_data* @seg6_pernet(%struct.net* %7)
  store %struct.seg6_pernet_data* %8, %struct.seg6_pernet_data** %5, align 8
  %9 = load %struct.seg6_pernet_data*, %struct.seg6_pernet_data** %5, align 8
  %10 = getelementptr inbounds %struct.seg6_pernet_data, %struct.seg6_pernet_data* %9, i32 0, i32 0
  %11 = load i32, i32* @rht_params, align 4
  %12 = call %struct.seg6_hmac_info* @rhashtable_lookup_fast(i32* %10, i32* %4, i32 %11)
  store %struct.seg6_hmac_info* %12, %struct.seg6_hmac_info** %6, align 8
  %13 = load %struct.seg6_hmac_info*, %struct.seg6_hmac_info** %6, align 8
  ret %struct.seg6_hmac_info* %13
}

declare dso_local %struct.seg6_pernet_data* @seg6_pernet(%struct.net*) #1

declare dso_local %struct.seg6_hmac_info* @rhashtable_lookup_fast(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
