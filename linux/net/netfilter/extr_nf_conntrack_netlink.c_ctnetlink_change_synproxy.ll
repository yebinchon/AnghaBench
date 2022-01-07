; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_conntrack_netlink.c_ctnetlink_change_synproxy.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_conntrack_netlink.c_ctnetlink_change_synproxy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nf_conn = type { i32 }
%struct.nlattr = type { i32 }
%struct.nf_conn_synproxy = type { i8*, i8*, i8* }

@CTA_SYNPROXY_MAX = common dso_local global i32 0, align 4
@CTA_SYNPROXY = common dso_local global i64 0, align 8
@synproxy_policy = common dso_local global i32 0, align 4
@CTA_SYNPROXY_ISN = common dso_local global i64 0, align 8
@CTA_SYNPROXY_ITS = common dso_local global i64 0, align 8
@CTA_SYNPROXY_TSOFF = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nf_conn*, %struct.nlattr**)* @ctnetlink_change_synproxy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ctnetlink_change_synproxy(%struct.nf_conn* %0, %struct.nlattr** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nf_conn*, align 8
  %5 = alloca %struct.nlattr**, align 8
  %6 = alloca %struct.nf_conn_synproxy*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.nf_conn* %0, %struct.nf_conn** %4, align 8
  store %struct.nlattr** %1, %struct.nlattr*** %5, align 8
  %11 = load %struct.nf_conn*, %struct.nf_conn** %4, align 8
  %12 = call %struct.nf_conn_synproxy* @nfct_synproxy(%struct.nf_conn* %11)
  store %struct.nf_conn_synproxy* %12, %struct.nf_conn_synproxy** %6, align 8
  %13 = load i32, i32* @CTA_SYNPROXY_MAX, align 4
  %14 = add nsw i32 %13, 1
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %7, align 8
  %17 = alloca %struct.nlattr*, i64 %15, align 16
  store i64 %15, i64* %8, align 8
  %18 = load %struct.nf_conn_synproxy*, %struct.nf_conn_synproxy** %6, align 8
  %19 = icmp ne %struct.nf_conn_synproxy* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %73

21:                                               ; preds = %2
  %22 = load i32, i32* @CTA_SYNPROXY_MAX, align 4
  %23 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %24 = load i64, i64* @CTA_SYNPROXY, align 8
  %25 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %23, i64 %24
  %26 = load %struct.nlattr*, %struct.nlattr** %25, align 8
  %27 = load i32, i32* @synproxy_policy, align 4
  %28 = call i32 @nla_parse_nested_deprecated(%struct.nlattr** %17, i32 %22, %struct.nlattr* %26, i32 %27, i32* null)
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* %9, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %21
  %32 = load i32, i32* %9, align 4
  store i32 %32, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %73

33:                                               ; preds = %21
  %34 = load i64, i64* @CTA_SYNPROXY_ISN, align 8
  %35 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %17, i64 %34
  %36 = load %struct.nlattr*, %struct.nlattr** %35, align 8
  %37 = icmp ne %struct.nlattr* %36, null
  br i1 %37, label %38, label %48

38:                                               ; preds = %33
  %39 = load i64, i64* @CTA_SYNPROXY_ITS, align 8
  %40 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %17, i64 %39
  %41 = load %struct.nlattr*, %struct.nlattr** %40, align 8
  %42 = icmp ne %struct.nlattr* %41, null
  br i1 %42, label %43, label %48

43:                                               ; preds = %38
  %44 = load i64, i64* @CTA_SYNPROXY_TSOFF, align 8
  %45 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %17, i64 %44
  %46 = load %struct.nlattr*, %struct.nlattr** %45, align 8
  %47 = icmp ne %struct.nlattr* %46, null
  br i1 %47, label %51, label %48

48:                                               ; preds = %43, %38, %33
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %73

51:                                               ; preds = %43
  %52 = load i64, i64* @CTA_SYNPROXY_ISN, align 8
  %53 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %17, i64 %52
  %54 = load %struct.nlattr*, %struct.nlattr** %53, align 8
  %55 = call i32 @nla_get_be32(%struct.nlattr* %54)
  %56 = call i8* @ntohl(i32 %55)
  %57 = load %struct.nf_conn_synproxy*, %struct.nf_conn_synproxy** %6, align 8
  %58 = getelementptr inbounds %struct.nf_conn_synproxy, %struct.nf_conn_synproxy* %57, i32 0, i32 2
  store i8* %56, i8** %58, align 8
  %59 = load i64, i64* @CTA_SYNPROXY_ITS, align 8
  %60 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %17, i64 %59
  %61 = load %struct.nlattr*, %struct.nlattr** %60, align 8
  %62 = call i32 @nla_get_be32(%struct.nlattr* %61)
  %63 = call i8* @ntohl(i32 %62)
  %64 = load %struct.nf_conn_synproxy*, %struct.nf_conn_synproxy** %6, align 8
  %65 = getelementptr inbounds %struct.nf_conn_synproxy, %struct.nf_conn_synproxy* %64, i32 0, i32 1
  store i8* %63, i8** %65, align 8
  %66 = load i64, i64* @CTA_SYNPROXY_TSOFF, align 8
  %67 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %17, i64 %66
  %68 = load %struct.nlattr*, %struct.nlattr** %67, align 8
  %69 = call i32 @nla_get_be32(%struct.nlattr* %68)
  %70 = call i8* @ntohl(i32 %69)
  %71 = load %struct.nf_conn_synproxy*, %struct.nf_conn_synproxy** %6, align 8
  %72 = getelementptr inbounds %struct.nf_conn_synproxy, %struct.nf_conn_synproxy* %71, i32 0, i32 0
  store i8* %70, i8** %72, align 8
  store i32 0, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %73

73:                                               ; preds = %51, %48, %31, %20
  %74 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %74)
  %75 = load i32, i32* %3, align 4
  ret i32 %75
}

declare dso_local %struct.nf_conn_synproxy* @nfct_synproxy(%struct.nf_conn*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @nla_parse_nested_deprecated(%struct.nlattr**, i32, %struct.nlattr*, i32, i32*) #1

declare dso_local i8* @ntohl(i32) #1

declare dso_local i32 @nla_get_be32(%struct.nlattr*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
