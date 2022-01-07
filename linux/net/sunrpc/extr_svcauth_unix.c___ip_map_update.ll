; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/extr_svcauth_unix.c___ip_map_update.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/extr_svcauth_unix.c___ip_map_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cache_detail = type { i32 }
%struct.ip_map = type { i32, i32, %struct.TYPE_3__, %struct.unix_domain* }
%struct.TYPE_3__ = type { i32, i64 }
%struct.unix_domain = type { i32 }
%struct.cache_head = type { i32 }

@CACHE_NEGATIVE = common dso_local global i32 0, align 4
@IP_HASHBITS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cache_detail*, %struct.ip_map*, %struct.unix_domain*, i32)* @__ip_map_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__ip_map_update(%struct.cache_detail* %0, %struct.ip_map* %1, %struct.unix_domain* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.cache_detail*, align 8
  %7 = alloca %struct.ip_map*, align 8
  %8 = alloca %struct.unix_domain*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.ip_map, align 8
  %11 = alloca %struct.cache_head*, align 8
  store %struct.cache_detail* %0, %struct.cache_detail** %6, align 8
  store %struct.ip_map* %1, %struct.ip_map** %7, align 8
  store %struct.unix_domain* %2, %struct.unix_domain** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load %struct.unix_domain*, %struct.unix_domain** %8, align 8
  %13 = getelementptr inbounds %struct.ip_map, %struct.ip_map* %10, i32 0, i32 3
  store %struct.unix_domain* %12, %struct.unix_domain** %13, align 8
  %14 = getelementptr inbounds %struct.ip_map, %struct.ip_map* %10, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 1
  store i64 0, i64* %15, align 8
  %16 = load %struct.unix_domain*, %struct.unix_domain** %8, align 8
  %17 = icmp ne %struct.unix_domain* %16, null
  br i1 %17, label %23, label %18

18:                                               ; preds = %4
  %19 = load i32, i32* @CACHE_NEGATIVE, align 4
  %20 = getelementptr inbounds %struct.ip_map, %struct.ip_map* %10, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 1
  %22 = call i32 @set_bit(i32 %19, i64* %21)
  br label %23

23:                                               ; preds = %18, %4
  %24 = load i32, i32* %9, align 4
  %25 = getelementptr inbounds %struct.ip_map, %struct.ip_map* %10, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 8
  %27 = load %struct.cache_detail*, %struct.cache_detail** %6, align 8
  %28 = getelementptr inbounds %struct.ip_map, %struct.ip_map* %10, i32 0, i32 2
  %29 = load %struct.ip_map*, %struct.ip_map** %7, align 8
  %30 = getelementptr inbounds %struct.ip_map, %struct.ip_map* %29, i32 0, i32 2
  %31 = load %struct.ip_map*, %struct.ip_map** %7, align 8
  %32 = getelementptr inbounds %struct.ip_map, %struct.ip_map* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @IP_HASHBITS, align 4
  %35 = call i32 @hash_str(i32 %33, i32 %34)
  %36 = load %struct.ip_map*, %struct.ip_map** %7, align 8
  %37 = getelementptr inbounds %struct.ip_map, %struct.ip_map* %36, i32 0, i32 0
  %38 = call i32 @hash_ip6(i32* %37)
  %39 = xor i32 %35, %38
  %40 = call %struct.cache_head* @sunrpc_cache_update(%struct.cache_detail* %27, %struct.TYPE_3__* %28, %struct.TYPE_3__* %30, i32 %39)
  store %struct.cache_head* %40, %struct.cache_head** %11, align 8
  %41 = load %struct.cache_head*, %struct.cache_head** %11, align 8
  %42 = icmp ne %struct.cache_head* %41, null
  br i1 %42, label %46, label %43

43:                                               ; preds = %23
  %44 = load i32, i32* @ENOMEM, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %5, align 4
  br label %50

46:                                               ; preds = %23
  %47 = load %struct.cache_head*, %struct.cache_head** %11, align 8
  %48 = load %struct.cache_detail*, %struct.cache_detail** %6, align 8
  %49 = call i32 @cache_put(%struct.cache_head* %47, %struct.cache_detail* %48)
  store i32 0, i32* %5, align 4
  br label %50

50:                                               ; preds = %46, %43
  %51 = load i32, i32* %5, align 4
  ret i32 %51
}

declare dso_local i32 @set_bit(i32, i64*) #1

declare dso_local %struct.cache_head* @sunrpc_cache_update(%struct.cache_detail*, %struct.TYPE_3__*, %struct.TYPE_3__*, i32) #1

declare dso_local i32 @hash_str(i32, i32) #1

declare dso_local i32 @hash_ip6(i32*) #1

declare dso_local i32 @cache_put(%struct.cache_head*, %struct.cache_detail*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
