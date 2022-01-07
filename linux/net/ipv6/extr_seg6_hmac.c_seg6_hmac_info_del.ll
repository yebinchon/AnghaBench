; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_seg6_hmac.c_seg6_hmac_info_del.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_seg6_hmac.c_seg6_hmac_info_del.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.seg6_pernet_data = type { i32 }
%struct.seg6_hmac_info = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@rht_params = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @seg6_hmac_info_del(%struct.net* %0, i32 %1) #0 {
  %3 = alloca %struct.net*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.seg6_pernet_data*, align 8
  %6 = alloca %struct.seg6_hmac_info*, align 8
  %7 = alloca i32, align 4
  store %struct.net* %0, %struct.net** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.net*, %struct.net** %3, align 8
  %9 = call %struct.seg6_pernet_data* @seg6_pernet(%struct.net* %8)
  store %struct.seg6_pernet_data* %9, %struct.seg6_pernet_data** %5, align 8
  %10 = load i32, i32* @ENOENT, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %7, align 4
  %12 = load %struct.seg6_pernet_data*, %struct.seg6_pernet_data** %5, align 8
  %13 = getelementptr inbounds %struct.seg6_pernet_data, %struct.seg6_pernet_data* %12, i32 0, i32 0
  %14 = load i32, i32* @rht_params, align 4
  %15 = call %struct.seg6_hmac_info* @rhashtable_lookup_fast(i32* %13, i32* %4, i32 %14)
  store %struct.seg6_hmac_info* %15, %struct.seg6_hmac_info** %6, align 8
  %16 = load %struct.seg6_hmac_info*, %struct.seg6_hmac_info** %6, align 8
  %17 = icmp ne %struct.seg6_hmac_info* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %2
  br label %32

19:                                               ; preds = %2
  %20 = load %struct.seg6_pernet_data*, %struct.seg6_pernet_data** %5, align 8
  %21 = getelementptr inbounds %struct.seg6_pernet_data, %struct.seg6_pernet_data* %20, i32 0, i32 0
  %22 = load %struct.seg6_hmac_info*, %struct.seg6_hmac_info** %6, align 8
  %23 = getelementptr inbounds %struct.seg6_hmac_info, %struct.seg6_hmac_info* %22, i32 0, i32 0
  %24 = load i32, i32* @rht_params, align 4
  %25 = call i32 @rhashtable_remove_fast(i32* %21, i32* %23, i32 %24)
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %7, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %19
  br label %32

29:                                               ; preds = %19
  %30 = load %struct.seg6_hmac_info*, %struct.seg6_hmac_info** %6, align 8
  %31 = call i32 @seg6_hinfo_release(%struct.seg6_hmac_info* %30)
  br label %32

32:                                               ; preds = %29, %28, %18
  %33 = load i32, i32* %7, align 4
  ret i32 %33
}

declare dso_local %struct.seg6_pernet_data* @seg6_pernet(%struct.net*) #1

declare dso_local %struct.seg6_hmac_info* @rhashtable_lookup_fast(i32*, i32*, i32) #1

declare dso_local i32 @rhashtable_remove_fast(i32*, i32*, i32) #1

declare dso_local i32 @seg6_hinfo_release(%struct.seg6_hmac_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
