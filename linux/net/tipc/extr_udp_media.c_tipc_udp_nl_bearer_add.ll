; ModuleID = '/home/carl/AnghaBench/linux/net/tipc/extr_udp_media.c_tipc_udp_nl_bearer_add.c'
source_filename = "/home/carl/AnghaBench/linux/net/tipc/extr_udp_media.c_tipc_udp_nl_bearer_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tipc_bearer = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.nlattr = type { i32 }
%struct.udp_media_addr = type { i32 }

@TIPC_NLA_UDP_MAX = common dso_local global i32 0, align 4
@tipc_nl_udp_policy = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@TIPC_NLA_UDP_REMOTE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [50 x i8] c"Can't add remote ip to TIPC UDP multicast bearer\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tipc_udp_nl_bearer_add(%struct.tipc_bearer* %0, %struct.nlattr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tipc_bearer*, align 8
  %5 = alloca %struct.nlattr*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.udp_media_addr, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.udp_media_addr*, align 8
  %11 = alloca i32, align 4
  store %struct.tipc_bearer* %0, %struct.tipc_bearer** %4, align 8
  store %struct.nlattr* %1, %struct.nlattr** %5, align 8
  %12 = bitcast %struct.udp_media_addr* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %12, i8 0, i64 4, i1 false)
  %13 = load i32, i32* @TIPC_NLA_UDP_MAX, align 4
  %14 = add nsw i32 %13, 1
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %8, align 8
  %17 = alloca %struct.nlattr*, i64 %15, align 16
  store i64 %15, i64* %9, align 8
  %18 = load i32, i32* @TIPC_NLA_UDP_MAX, align 4
  %19 = load %struct.nlattr*, %struct.nlattr** %5, align 8
  %20 = load i32, i32* @tipc_nl_udp_policy, align 4
  %21 = call i64 @nla_parse_nested_deprecated(%struct.nlattr** %17, i32 %18, %struct.nlattr* %19, i32 %20, i32* null)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %2
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %63

26:                                               ; preds = %2
  %27 = load i64, i64* @TIPC_NLA_UDP_REMOTE, align 8
  %28 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %17, i64 %27
  %29 = load %struct.nlattr*, %struct.nlattr** %28, align 8
  %30 = icmp ne %struct.nlattr* %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %26
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %63

34:                                               ; preds = %26
  %35 = load i64, i64* @TIPC_NLA_UDP_REMOTE, align 8
  %36 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %17, i64 %35
  %37 = load %struct.nlattr*, %struct.nlattr** %36, align 8
  %38 = call i32 @tipc_parse_udp_addr(%struct.nlattr* %37, %struct.udp_media_addr* %7, i32* null)
  store i32 %38, i32* %6, align 4
  %39 = load i32, i32* %6, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %34
  %42 = load i32, i32* %6, align 4
  store i32 %42, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %63

43:                                               ; preds = %34
  %44 = load %struct.tipc_bearer*, %struct.tipc_bearer** %4, align 8
  %45 = getelementptr inbounds %struct.tipc_bearer, %struct.tipc_bearer* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = bitcast i32* %46 to %struct.udp_media_addr*
  store %struct.udp_media_addr* %47, %struct.udp_media_addr** %10, align 8
  %48 = load %struct.udp_media_addr*, %struct.udp_media_addr** %10, align 8
  %49 = call i64 @tipc_udp_is_mcast_addr(%struct.udp_media_addr* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %43
  %52 = call i32 @pr_err(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  %53 = load i32, i32* @EINVAL, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %63

55:                                               ; preds = %43
  %56 = load %struct.tipc_bearer*, %struct.tipc_bearer** %4, align 8
  %57 = call i64 @tipc_udp_is_known_peer(%struct.tipc_bearer* %56, %struct.udp_media_addr* %7)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %55
  store i32 0, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %63

60:                                               ; preds = %55
  %61 = load %struct.tipc_bearer*, %struct.tipc_bearer** %4, align 8
  %62 = call i32 @tipc_udp_rcast_add(%struct.tipc_bearer* %61, %struct.udp_media_addr* %7)
  store i32 %62, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %63

63:                                               ; preds = %60, %59, %51, %41, %31, %23
  %64 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %64)
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i64 @nla_parse_nested_deprecated(%struct.nlattr**, i32, %struct.nlattr*, i32, i32*) #3

declare dso_local i32 @tipc_parse_udp_addr(%struct.nlattr*, %struct.udp_media_addr*, i32*) #3

declare dso_local i64 @tipc_udp_is_mcast_addr(%struct.udp_media_addr*) #3

declare dso_local i32 @pr_err(i8*) #3

declare dso_local i64 @tipc_udp_is_known_peer(%struct.tipc_bearer*, %struct.udp_media_addr*) #3

declare dso_local i32 @tipc_udp_rcast_add(%struct.tipc_bearer*, %struct.udp_media_addr*) #3

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { nounwind }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
