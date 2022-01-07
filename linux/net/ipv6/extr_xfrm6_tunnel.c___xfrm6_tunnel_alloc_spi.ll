; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_xfrm6_tunnel.c___xfrm6_tunnel_alloc_spi.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_xfrm6_tunnel.c___xfrm6_tunnel_alloc_spi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.xfrm6_tunnel_net = type { i64, i32*, i32* }
%struct.xfrm6_tunnel_spi = type { i32, i32, i32, i64, i32 }

@XFRM6_TUNNEL_SPI_MIN = common dso_local global i64 0, align 8
@XFRM6_TUNNEL_SPI_MAX = common dso_local global i64 0, align 8
@xfrm6_tunnel_spi_kmem = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.net*, i32*)* @__xfrm6_tunnel_alloc_spi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @__xfrm6_tunnel_alloc_spi(%struct.net* %0, i32* %1) #0 {
  %3 = alloca %struct.net*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.xfrm6_tunnel_net*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.xfrm6_tunnel_spi*, align 8
  %8 = alloca i32, align 4
  store %struct.net* %0, %struct.net** %3, align 8
  store i32* %1, i32** %4, align 8
  %9 = load %struct.net*, %struct.net** %3, align 8
  %10 = call %struct.xfrm6_tunnel_net* @xfrm6_tunnel_pernet(%struct.net* %9)
  store %struct.xfrm6_tunnel_net* %10, %struct.xfrm6_tunnel_net** %5, align 8
  %11 = load %struct.xfrm6_tunnel_net*, %struct.xfrm6_tunnel_net** %5, align 8
  %12 = getelementptr inbounds %struct.xfrm6_tunnel_net, %struct.xfrm6_tunnel_net* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @XFRM6_TUNNEL_SPI_MIN, align 8
  %15 = icmp slt i64 %13, %14
  br i1 %15, label %22, label %16

16:                                               ; preds = %2
  %17 = load %struct.xfrm6_tunnel_net*, %struct.xfrm6_tunnel_net** %5, align 8
  %18 = getelementptr inbounds %struct.xfrm6_tunnel_net, %struct.xfrm6_tunnel_net* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @XFRM6_TUNNEL_SPI_MAX, align 8
  %21 = icmp sge i64 %19, %20
  br i1 %21, label %22, label %26

22:                                               ; preds = %16, %2
  %23 = load i64, i64* @XFRM6_TUNNEL_SPI_MIN, align 8
  %24 = load %struct.xfrm6_tunnel_net*, %struct.xfrm6_tunnel_net** %5, align 8
  %25 = getelementptr inbounds %struct.xfrm6_tunnel_net, %struct.xfrm6_tunnel_net* %24, i32 0, i32 0
  store i64 %23, i64* %25, align 8
  br label %31

26:                                               ; preds = %16
  %27 = load %struct.xfrm6_tunnel_net*, %struct.xfrm6_tunnel_net** %5, align 8
  %28 = getelementptr inbounds %struct.xfrm6_tunnel_net, %struct.xfrm6_tunnel_net* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = add nsw i64 %29, 1
  store i64 %30, i64* %28, align 8
  br label %31

31:                                               ; preds = %26, %22
  %32 = load %struct.xfrm6_tunnel_net*, %struct.xfrm6_tunnel_net** %5, align 8
  %33 = getelementptr inbounds %struct.xfrm6_tunnel_net, %struct.xfrm6_tunnel_net* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  store i64 %34, i64* %6, align 8
  br label %35

35:                                               ; preds = %52, %31
  %36 = load i64, i64* %6, align 8
  %37 = load i64, i64* @XFRM6_TUNNEL_SPI_MAX, align 8
  %38 = icmp sle i64 %36, %37
  br i1 %38, label %39, label %55

39:                                               ; preds = %35
  %40 = load %struct.net*, %struct.net** %3, align 8
  %41 = load i64, i64* %6, align 8
  %42 = call i32 @__xfrm6_tunnel_spi_check(%struct.net* %40, i64 %41)
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* %8, align 4
  %44 = icmp sge i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %39
  br label %75

46:                                               ; preds = %39
  %47 = load i64, i64* %6, align 8
  %48 = load i64, i64* @XFRM6_TUNNEL_SPI_MAX, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %46
  br label %55

51:                                               ; preds = %46
  br label %52

52:                                               ; preds = %51
  %53 = load i64, i64* %6, align 8
  %54 = add nsw i64 %53, 1
  store i64 %54, i64* %6, align 8
  br label %35

55:                                               ; preds = %50, %35
  %56 = load i64, i64* @XFRM6_TUNNEL_SPI_MIN, align 8
  store i64 %56, i64* %6, align 8
  br label %57

57:                                               ; preds = %71, %55
  %58 = load i64, i64* %6, align 8
  %59 = load %struct.xfrm6_tunnel_net*, %struct.xfrm6_tunnel_net** %5, align 8
  %60 = getelementptr inbounds %struct.xfrm6_tunnel_net, %struct.xfrm6_tunnel_net* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = icmp slt i64 %58, %61
  br i1 %62, label %63, label %74

63:                                               ; preds = %57
  %64 = load %struct.net*, %struct.net** %3, align 8
  %65 = load i64, i64* %6, align 8
  %66 = call i32 @__xfrm6_tunnel_spi_check(%struct.net* %64, i64 %65)
  store i32 %66, i32* %8, align 4
  %67 = load i32, i32* %8, align 4
  %68 = icmp sge i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %63
  br label %75

70:                                               ; preds = %63
  br label %71

71:                                               ; preds = %70
  %72 = load i64, i64* %6, align 8
  %73 = add nsw i64 %72, 1
  store i64 %73, i64* %6, align 8
  br label %57

74:                                               ; preds = %57
  store i64 0, i64* %6, align 8
  br label %116

75:                                               ; preds = %69, %45
  %76 = load i64, i64* %6, align 8
  %77 = load %struct.xfrm6_tunnel_net*, %struct.xfrm6_tunnel_net** %5, align 8
  %78 = getelementptr inbounds %struct.xfrm6_tunnel_net, %struct.xfrm6_tunnel_net* %77, i32 0, i32 0
  store i64 %76, i64* %78, align 8
  %79 = load i32, i32* @xfrm6_tunnel_spi_kmem, align 4
  %80 = load i32, i32* @GFP_ATOMIC, align 4
  %81 = call %struct.xfrm6_tunnel_spi* @kmem_cache_alloc(i32 %79, i32 %80)
  store %struct.xfrm6_tunnel_spi* %81, %struct.xfrm6_tunnel_spi** %7, align 8
  %82 = load %struct.xfrm6_tunnel_spi*, %struct.xfrm6_tunnel_spi** %7, align 8
  %83 = icmp ne %struct.xfrm6_tunnel_spi* %82, null
  br i1 %83, label %85, label %84

84:                                               ; preds = %75
  br label %116

85:                                               ; preds = %75
  %86 = load %struct.xfrm6_tunnel_spi*, %struct.xfrm6_tunnel_spi** %7, align 8
  %87 = getelementptr inbounds %struct.xfrm6_tunnel_spi, %struct.xfrm6_tunnel_spi* %86, i32 0, i32 4
  %88 = load i32*, i32** %4, align 8
  %89 = call i32 @memcpy(i32* %87, i32* %88, i32 4)
  %90 = load i64, i64* %6, align 8
  %91 = load %struct.xfrm6_tunnel_spi*, %struct.xfrm6_tunnel_spi** %7, align 8
  %92 = getelementptr inbounds %struct.xfrm6_tunnel_spi, %struct.xfrm6_tunnel_spi* %91, i32 0, i32 3
  store i64 %90, i64* %92, align 8
  %93 = load %struct.xfrm6_tunnel_spi*, %struct.xfrm6_tunnel_spi** %7, align 8
  %94 = getelementptr inbounds %struct.xfrm6_tunnel_spi, %struct.xfrm6_tunnel_spi* %93, i32 0, i32 2
  %95 = call i32 @refcount_set(i32* %94, i32 1)
  %96 = load %struct.xfrm6_tunnel_spi*, %struct.xfrm6_tunnel_spi** %7, align 8
  %97 = getelementptr inbounds %struct.xfrm6_tunnel_spi, %struct.xfrm6_tunnel_spi* %96, i32 0, i32 1
  %98 = load %struct.xfrm6_tunnel_net*, %struct.xfrm6_tunnel_net** %5, align 8
  %99 = getelementptr inbounds %struct.xfrm6_tunnel_net, %struct.xfrm6_tunnel_net* %98, i32 0, i32 2
  %100 = load i32*, i32** %99, align 8
  %101 = load i32, i32* %8, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32, i32* %100, i64 %102
  %104 = call i32 @hlist_add_head_rcu(i32* %97, i32* %103)
  %105 = load i32*, i32** %4, align 8
  %106 = call i32 @xfrm6_tunnel_spi_hash_byaddr(i32* %105)
  store i32 %106, i32* %8, align 4
  %107 = load %struct.xfrm6_tunnel_spi*, %struct.xfrm6_tunnel_spi** %7, align 8
  %108 = getelementptr inbounds %struct.xfrm6_tunnel_spi, %struct.xfrm6_tunnel_spi* %107, i32 0, i32 0
  %109 = load %struct.xfrm6_tunnel_net*, %struct.xfrm6_tunnel_net** %5, align 8
  %110 = getelementptr inbounds %struct.xfrm6_tunnel_net, %struct.xfrm6_tunnel_net* %109, i32 0, i32 1
  %111 = load i32*, i32** %110, align 8
  %112 = load i32, i32* %8, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i32, i32* %111, i64 %113
  %115 = call i32 @hlist_add_head_rcu(i32* %108, i32* %114)
  br label %116

116:                                              ; preds = %85, %84, %74
  %117 = load i64, i64* %6, align 8
  ret i64 %117
}

declare dso_local %struct.xfrm6_tunnel_net* @xfrm6_tunnel_pernet(%struct.net*) #1

declare dso_local i32 @__xfrm6_tunnel_spi_check(%struct.net*, i64) #1

declare dso_local %struct.xfrm6_tunnel_spi* @kmem_cache_alloc(i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @refcount_set(i32*, i32) #1

declare dso_local i32 @hlist_add_head_rcu(i32*, i32*) #1

declare dso_local i32 @xfrm6_tunnel_spi_hash_byaddr(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
