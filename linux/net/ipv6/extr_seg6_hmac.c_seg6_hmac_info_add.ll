; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_seg6_hmac.c_seg6_hmac_info_add.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_seg6_hmac.c_seg6_hmac_info_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.seg6_hmac_info = type { i32 }
%struct.seg6_pernet_data = type { i32 }

@rht_params = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @seg6_hmac_info_add(%struct.net* %0, i32 %1, %struct.seg6_hmac_info* %2) #0 {
  %4 = alloca %struct.net*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.seg6_hmac_info*, align 8
  %7 = alloca %struct.seg6_pernet_data*, align 8
  %8 = alloca i32, align 4
  store %struct.net* %0, %struct.net** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.seg6_hmac_info* %2, %struct.seg6_hmac_info** %6, align 8
  %9 = load %struct.net*, %struct.net** %4, align 8
  %10 = call %struct.seg6_pernet_data* @seg6_pernet(%struct.net* %9)
  store %struct.seg6_pernet_data* %10, %struct.seg6_pernet_data** %7, align 8
  %11 = load %struct.seg6_pernet_data*, %struct.seg6_pernet_data** %7, align 8
  %12 = getelementptr inbounds %struct.seg6_pernet_data, %struct.seg6_pernet_data* %11, i32 0, i32 0
  %13 = load %struct.seg6_hmac_info*, %struct.seg6_hmac_info** %6, align 8
  %14 = getelementptr inbounds %struct.seg6_hmac_info, %struct.seg6_hmac_info* %13, i32 0, i32 0
  %15 = load i32, i32* @rht_params, align 4
  %16 = call i32 @rhashtable_lookup_insert_fast(i32* %12, i32* %14, i32 %15)
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %8, align 4
  ret i32 %17
}

declare dso_local %struct.seg6_pernet_data* @seg6_pernet(%struct.net*) #1

declare dso_local i32 @rhashtable_lookup_insert_fast(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
