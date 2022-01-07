; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_metrics.c___parse_nl_addr.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_metrics.c___parse_nl_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.genl_info = type { %struct.nlattr** }
%struct.nlattr = type { i32 }
%struct.inetpeer_addr = type { i32 }
%struct.in6_addr = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@EAFNOSUPPORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.genl_info*, %struct.inetpeer_addr*, i32*, i32, i32, i32)* @__parse_nl_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__parse_nl_addr(%struct.genl_info* %0, %struct.inetpeer_addr* %1, i32* %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.genl_info*, align 8
  %9 = alloca %struct.inetpeer_addr*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.nlattr*, align 8
  %15 = alloca %struct.in6_addr, align 4
  %16 = alloca %struct.in6_addr, align 4
  store %struct.genl_info* %0, %struct.genl_info** %8, align 8
  store %struct.inetpeer_addr* %1, %struct.inetpeer_addr** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %17 = load %struct.genl_info*, %struct.genl_info** %8, align 8
  %18 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %17, i32 0, i32 0
  %19 = load %struct.nlattr**, %struct.nlattr*** %18, align 8
  %20 = load i32, i32* %12, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %19, i64 %21
  %23 = load %struct.nlattr*, %struct.nlattr** %22, align 8
  store %struct.nlattr* %23, %struct.nlattr** %14, align 8
  %24 = load %struct.nlattr*, %struct.nlattr** %14, align 8
  %25 = icmp ne %struct.nlattr* %24, null
  br i1 %25, label %26, label %39

26:                                               ; preds = %6
  %27 = load %struct.inetpeer_addr*, %struct.inetpeer_addr** %9, align 8
  %28 = load %struct.nlattr*, %struct.nlattr** %14, align 8
  %29 = call i32 @nla_get_in_addr(%struct.nlattr* %28)
  %30 = call i32 @inetpeer_set_addr_v4(%struct.inetpeer_addr* %27, i32 %29)
  %31 = load i32*, i32** %10, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %33, label %38

33:                                               ; preds = %26
  %34 = load %struct.inetpeer_addr*, %struct.inetpeer_addr** %9, align 8
  %35 = call i32 @inetpeer_get_addr_v4(%struct.inetpeer_addr* %34)
  %36 = call i32 @ipv4_addr_hash(i32 %35)
  %37 = load i32*, i32** %10, align 8
  store i32 %36, i32* %37, align 4
  br label %38

38:                                               ; preds = %33, %26
  store i32 0, i32* %7, align 4
  br label %82

39:                                               ; preds = %6
  %40 = load %struct.genl_info*, %struct.genl_info** %8, align 8
  %41 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %40, i32 0, i32 0
  %42 = load %struct.nlattr**, %struct.nlattr*** %41, align 8
  %43 = load i32, i32* %13, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %42, i64 %44
  %46 = load %struct.nlattr*, %struct.nlattr** %45, align 8
  store %struct.nlattr* %46, %struct.nlattr** %14, align 8
  %47 = load %struct.nlattr*, %struct.nlattr** %14, align 8
  %48 = icmp ne %struct.nlattr* %47, null
  br i1 %48, label %49, label %73

49:                                               ; preds = %39
  %50 = load %struct.nlattr*, %struct.nlattr** %14, align 8
  %51 = call i32 @nla_len(%struct.nlattr* %50)
  %52 = sext i32 %51 to i64
  %53 = icmp ne i64 %52, 4
  br i1 %53, label %54, label %57

54:                                               ; preds = %49
  %55 = load i32, i32* @EINVAL, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %7, align 4
  br label %82

57:                                               ; preds = %49
  %58 = load %struct.nlattr*, %struct.nlattr** %14, align 8
  %59 = call i32 @nla_get_in6_addr(%struct.nlattr* %58)
  %60 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %16, i32 0, i32 0
  store i32 %59, i32* %60, align 4
  %61 = bitcast %struct.in6_addr* %15 to i8*
  %62 = bitcast %struct.in6_addr* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %61, i8* align 4 %62, i64 4, i1 false)
  %63 = load %struct.inetpeer_addr*, %struct.inetpeer_addr** %9, align 8
  %64 = call i32 @inetpeer_set_addr_v6(%struct.inetpeer_addr* %63, %struct.in6_addr* %15)
  %65 = load i32*, i32** %10, align 8
  %66 = icmp ne i32* %65, null
  br i1 %66, label %67, label %72

67:                                               ; preds = %57
  %68 = load %struct.inetpeer_addr*, %struct.inetpeer_addr** %9, align 8
  %69 = call i32 @inetpeer_get_addr_v6(%struct.inetpeer_addr* %68)
  %70 = call i32 @ipv6_addr_hash(i32 %69)
  %71 = load i32*, i32** %10, align 8
  store i32 %70, i32* %71, align 4
  br label %72

72:                                               ; preds = %67, %57
  store i32 0, i32* %7, align 4
  br label %82

73:                                               ; preds = %39
  %74 = load i32, i32* %11, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %73
  br label %80

77:                                               ; preds = %73
  %78 = load i32, i32* @EAFNOSUPPORT, align 4
  %79 = sub nsw i32 0, %78
  br label %80

80:                                               ; preds = %77, %76
  %81 = phi i32 [ 1, %76 ], [ %79, %77 ]
  store i32 %81, i32* %7, align 4
  br label %82

82:                                               ; preds = %80, %72, %54, %38
  %83 = load i32, i32* %7, align 4
  ret i32 %83
}

declare dso_local i32 @inetpeer_set_addr_v4(%struct.inetpeer_addr*, i32) #1

declare dso_local i32 @nla_get_in_addr(%struct.nlattr*) #1

declare dso_local i32 @ipv4_addr_hash(i32) #1

declare dso_local i32 @inetpeer_get_addr_v4(%struct.inetpeer_addr*) #1

declare dso_local i32 @nla_len(%struct.nlattr*) #1

declare dso_local i32 @nla_get_in6_addr(%struct.nlattr*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @inetpeer_set_addr_v6(%struct.inetpeer_addr*, %struct.in6_addr*) #1

declare dso_local i32 @ipv6_addr_hash(i32) #1

declare dso_local i32 @inetpeer_get_addr_v6(%struct.inetpeer_addr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
