; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nft_log.c_nft_log_dump.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nft_log.c_nft_log_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.nft_expr = type { i32 }
%struct.nft_log = type { i64, %struct.nf_loginfo }
%struct.nf_loginfo = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }

@nft_log_null_prefix = common dso_local global i64 0, align 8
@NFTA_LOG_PREFIX = common dso_local global i32 0, align 4
@NFTA_LOG_LEVEL = common dso_local global i32 0, align 4
@NFTA_LOG_FLAGS = common dso_local global i32 0, align 4
@NFTA_LOG_GROUP = common dso_local global i32 0, align 4
@NF_LOG_F_COPY_LEN = common dso_local global i32 0, align 4
@NFTA_LOG_SNAPLEN = common dso_local global i32 0, align 4
@NFTA_LOG_QTHRESHOLD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.nft_expr*)* @nft_log_dump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nft_log_dump(%struct.sk_buff* %0, %struct.nft_expr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.nft_expr*, align 8
  %6 = alloca %struct.nft_log*, align 8
  %7 = alloca %struct.nf_loginfo*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.nft_expr* %1, %struct.nft_expr** %5, align 8
  %8 = load %struct.nft_expr*, %struct.nft_expr** %5, align 8
  %9 = call %struct.nft_log* @nft_expr_priv(%struct.nft_expr* %8)
  store %struct.nft_log* %9, %struct.nft_log** %6, align 8
  %10 = load %struct.nft_log*, %struct.nft_log** %6, align 8
  %11 = getelementptr inbounds %struct.nft_log, %struct.nft_log* %10, i32 0, i32 1
  store %struct.nf_loginfo* %11, %struct.nf_loginfo** %7, align 8
  %12 = load %struct.nft_log*, %struct.nft_log** %6, align 8
  %13 = getelementptr inbounds %struct.nft_log, %struct.nft_log* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @nft_log_null_prefix, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %27

17:                                               ; preds = %2
  %18 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %19 = load i32, i32* @NFTA_LOG_PREFIX, align 4
  %20 = load %struct.nft_log*, %struct.nft_log** %6, align 8
  %21 = getelementptr inbounds %struct.nft_log, %struct.nft_log* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = call i64 @nla_put_string(%struct.sk_buff* %18, i32 %19, i64 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %17
  br label %120

26:                                               ; preds = %17
  br label %27

27:                                               ; preds = %26, %2
  %28 = load %struct.nf_loginfo*, %struct.nf_loginfo** %7, align 8
  %29 = getelementptr inbounds %struct.nf_loginfo, %struct.nf_loginfo* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  switch i32 %30, label %119 [
    i32 129, label %31
    i32 128, label %64
  ]

31:                                               ; preds = %27
  %32 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %33 = load i32, i32* @NFTA_LOG_LEVEL, align 4
  %34 = load %struct.nf_loginfo*, %struct.nf_loginfo** %7, align 8
  %35 = getelementptr inbounds %struct.nf_loginfo, %struct.nf_loginfo* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @htonl(i32 %38)
  %40 = call i32 @nla_put_be32(%struct.sk_buff* %32, i32 %33, i32 %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %31
  br label %120

43:                                               ; preds = %31
  %44 = load %struct.nf_loginfo*, %struct.nf_loginfo** %7, align 8
  %45 = getelementptr inbounds %struct.nf_loginfo, %struct.nf_loginfo* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %63

50:                                               ; preds = %43
  %51 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %52 = load i32, i32* @NFTA_LOG_FLAGS, align 4
  %53 = load %struct.nf_loginfo*, %struct.nf_loginfo** %7, align 8
  %54 = getelementptr inbounds %struct.nf_loginfo, %struct.nf_loginfo* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @htonl(i32 %57)
  %59 = call i32 @nla_put_be32(%struct.sk_buff* %51, i32 %52, i32 %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %50
  br label %120

62:                                               ; preds = %50
  br label %63

63:                                               ; preds = %62, %43
  br label %119

64:                                               ; preds = %27
  %65 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %66 = load i32, i32* @NFTA_LOG_GROUP, align 4
  %67 = load %struct.nf_loginfo*, %struct.nf_loginfo** %7, align 8
  %68 = getelementptr inbounds %struct.nf_loginfo, %struct.nf_loginfo* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @htons(i32 %71)
  %73 = call i32 @nla_put_be16(%struct.sk_buff* %65, i32 %66, i32 %72)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %64
  br label %120

76:                                               ; preds = %64
  %77 = load %struct.nf_loginfo*, %struct.nf_loginfo** %7, align 8
  %78 = getelementptr inbounds %struct.nf_loginfo, %struct.nf_loginfo* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @NF_LOG_F_COPY_LEN, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %98

85:                                               ; preds = %76
  %86 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %87 = load i32, i32* @NFTA_LOG_SNAPLEN, align 4
  %88 = load %struct.nf_loginfo*, %struct.nf_loginfo** %7, align 8
  %89 = getelementptr inbounds %struct.nf_loginfo, %struct.nf_loginfo* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @htonl(i32 %92)
  %94 = call i32 @nla_put_be32(%struct.sk_buff* %86, i32 %87, i32 %93)
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %85
  br label %120

97:                                               ; preds = %85
  br label %98

98:                                               ; preds = %97, %76
  %99 = load %struct.nf_loginfo*, %struct.nf_loginfo** %7, align 8
  %100 = getelementptr inbounds %struct.nf_loginfo, %struct.nf_loginfo* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %118

105:                                              ; preds = %98
  %106 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %107 = load i32, i32* @NFTA_LOG_QTHRESHOLD, align 4
  %108 = load %struct.nf_loginfo*, %struct.nf_loginfo** %7, align 8
  %109 = getelementptr inbounds %struct.nf_loginfo, %struct.nf_loginfo* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @htons(i32 %112)
  %114 = call i32 @nla_put_be16(%struct.sk_buff* %106, i32 %107, i32 %113)
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %117

116:                                              ; preds = %105
  br label %120

117:                                              ; preds = %105
  br label %118

118:                                              ; preds = %117, %98
  br label %119

119:                                              ; preds = %27, %118, %63
  store i32 0, i32* %3, align 4
  br label %121

120:                                              ; preds = %116, %96, %75, %61, %42, %25
  store i32 -1, i32* %3, align 4
  br label %121

121:                                              ; preds = %120, %119
  %122 = load i32, i32* %3, align 4
  ret i32 %122
}

declare dso_local %struct.nft_log* @nft_expr_priv(%struct.nft_expr*) #1

declare dso_local i64 @nla_put_string(%struct.sk_buff*, i32, i64) #1

declare dso_local i32 @nla_put_be32(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local i32 @nla_put_be16(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @htons(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
