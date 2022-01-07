; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nfnetlink_acct.c_nfnl_acct_fill_info.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nfnetlink_acct.c_nfnl_acct_fill_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.nf_acct = type { i64, i64, i32, i32, i32, i32 }
%struct.nlmsghdr = type { i32 }
%struct.nfgenmsg = type { i64, i32, i32 }

@NLM_F_MULTI = common dso_local global i32 0, align 4
@NFNL_SUBSYS_ACCT = common dso_local global i32 0, align 4
@AF_UNSPEC = common dso_local global i32 0, align 4
@NFNETLINK_V0 = common dso_local global i32 0, align 4
@NFACCT_NAME = common dso_local global i32 0, align 4
@NFNL_MSG_ACCT_GET_CTRZERO = common dso_local global i64 0, align 8
@NFACCT_F_QUOTA = common dso_local global i32 0, align 4
@NFACCT_OVERQUOTA_BIT = common dso_local global i32 0, align 4
@NFACCT_PKTS = common dso_local global i32 0, align 4
@NFACCT_PAD = common dso_local global i32 0, align 4
@NFACCT_BYTES = common dso_local global i32 0, align 4
@NFACCT_USE = common dso_local global i32 0, align 4
@NFACCT_FLAGS = common dso_local global i32 0, align 4
@NFACCT_QUOTA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, i64, i64, i64, i32, %struct.nf_acct*)* @nfnl_acct_fill_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfnl_acct_fill_info(%struct.sk_buff* %0, i64 %1, i64 %2, i64 %3, i32 %4, %struct.nf_acct* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.nf_acct*, align 8
  %14 = alloca %struct.nlmsghdr*, align 8
  %15 = alloca %struct.nfgenmsg*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca i32*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %8, align 8
  store i64 %1, i64* %9, align 8
  store i64 %2, i64* %10, align 8
  store i64 %3, i64* %11, align 8
  store i32 %4, i32* %12, align 4
  store %struct.nf_acct* %5, %struct.nf_acct** %13, align 8
  %21 = load i64, i64* %9, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %6
  %24 = load i32, i32* @NLM_F_MULTI, align 4
  br label %26

25:                                               ; preds = %6
  br label %26

26:                                               ; preds = %25, %23
  %27 = phi i32 [ %24, %23 ], [ 0, %25 ]
  store i32 %27, i32* %16, align 4
  %28 = load i32, i32* @NFNL_SUBSYS_ACCT, align 4
  %29 = load i32, i32* %12, align 4
  %30 = call i32 @nfnl_msg_type(i32 %28, i32 %29)
  store i32 %30, i32* %12, align 4
  %31 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %32 = load i64, i64* %9, align 8
  %33 = load i64, i64* %10, align 8
  %34 = load i32, i32* %12, align 4
  %35 = load i32, i32* %16, align 4
  %36 = call %struct.nlmsghdr* @nlmsg_put(%struct.sk_buff* %31, i64 %32, i64 %33, i32 %34, i32 16, i32 %35)
  store %struct.nlmsghdr* %36, %struct.nlmsghdr** %14, align 8
  %37 = load %struct.nlmsghdr*, %struct.nlmsghdr** %14, align 8
  %38 = icmp eq %struct.nlmsghdr* %37, null
  br i1 %38, label %39, label %40

39:                                               ; preds = %26
  br label %158

40:                                               ; preds = %26
  %41 = load %struct.nlmsghdr*, %struct.nlmsghdr** %14, align 8
  %42 = call %struct.nfgenmsg* @nlmsg_data(%struct.nlmsghdr* %41)
  store %struct.nfgenmsg* %42, %struct.nfgenmsg** %15, align 8
  %43 = load i32, i32* @AF_UNSPEC, align 4
  %44 = load %struct.nfgenmsg*, %struct.nfgenmsg** %15, align 8
  %45 = getelementptr inbounds %struct.nfgenmsg, %struct.nfgenmsg* %44, i32 0, i32 2
  store i32 %43, i32* %45, align 4
  %46 = load i32, i32* @NFNETLINK_V0, align 4
  %47 = load %struct.nfgenmsg*, %struct.nfgenmsg** %15, align 8
  %48 = getelementptr inbounds %struct.nfgenmsg, %struct.nfgenmsg* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 8
  %49 = load %struct.nfgenmsg*, %struct.nfgenmsg** %15, align 8
  %50 = getelementptr inbounds %struct.nfgenmsg, %struct.nfgenmsg* %49, i32 0, i32 0
  store i64 0, i64* %50, align 8
  %51 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %52 = load i32, i32* @NFACCT_NAME, align 4
  %53 = load %struct.nf_acct*, %struct.nf_acct** %13, align 8
  %54 = getelementptr inbounds %struct.nf_acct, %struct.nf_acct* %53, i32 0, i32 5
  %55 = load i32, i32* %54, align 4
  %56 = call i64 @nla_put_string(%struct.sk_buff* %51, i32 %52, i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %40
  br label %159

59:                                               ; preds = %40
  %60 = load %struct.nf_acct*, %struct.nf_acct** %13, align 8
  %61 = getelementptr inbounds %struct.nf_acct, %struct.nf_acct* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  store i64 %62, i64* %19, align 8
  %63 = load i64, i64* %11, align 8
  %64 = load i64, i64* @NFNL_MSG_ACCT_GET_CTRZERO, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %88

66:                                               ; preds = %59
  %67 = load %struct.nf_acct*, %struct.nf_acct** %13, align 8
  %68 = getelementptr inbounds %struct.nf_acct, %struct.nf_acct* %67, i32 0, i32 4
  %69 = call i32 @atomic64_xchg(i32* %68, i32 0)
  store i32 %69, i32* %17, align 4
  %70 = load %struct.nf_acct*, %struct.nf_acct** %13, align 8
  %71 = getelementptr inbounds %struct.nf_acct, %struct.nf_acct* %70, i32 0, i32 3
  %72 = call i32 @atomic64_xchg(i32* %71, i32 0)
  store i32 %72, i32* %18, align 4
  %73 = call i32 (...) @smp_mb__before_atomic()
  %74 = load %struct.nf_acct*, %struct.nf_acct** %13, align 8
  %75 = getelementptr inbounds %struct.nf_acct, %struct.nf_acct* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i32, i32* @NFACCT_F_QUOTA, align 4
  %78 = sext i32 %77 to i64
  %79 = and i64 %76, %78
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %87

81:                                               ; preds = %66
  %82 = load i32, i32* @NFACCT_OVERQUOTA_BIT, align 4
  %83 = load %struct.nf_acct*, %struct.nf_acct** %13, align 8
  %84 = getelementptr inbounds %struct.nf_acct, %struct.nf_acct* %83, i32 0, i32 0
  %85 = bitcast i64* %84 to i32*
  %86 = call i32 @clear_bit(i32 %82, i32* %85)
  br label %87

87:                                               ; preds = %81, %66
  br label %95

88:                                               ; preds = %59
  %89 = load %struct.nf_acct*, %struct.nf_acct** %13, align 8
  %90 = getelementptr inbounds %struct.nf_acct, %struct.nf_acct* %89, i32 0, i32 4
  %91 = call i32 @atomic64_read(i32* %90)
  store i32 %91, i32* %17, align 4
  %92 = load %struct.nf_acct*, %struct.nf_acct** %13, align 8
  %93 = getelementptr inbounds %struct.nf_acct, %struct.nf_acct* %92, i32 0, i32 3
  %94 = call i32 @atomic64_read(i32* %93)
  store i32 %94, i32* %18, align 4
  br label %95

95:                                               ; preds = %88, %87
  %96 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %97 = load i32, i32* @NFACCT_PKTS, align 4
  %98 = load i32, i32* %17, align 4
  %99 = call i32 @cpu_to_be64(i32 %98)
  %100 = load i32, i32* @NFACCT_PAD, align 4
  %101 = call i64 @nla_put_be64(%struct.sk_buff* %96, i32 %97, i32 %99, i32 %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %120, label %103

103:                                              ; preds = %95
  %104 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %105 = load i32, i32* @NFACCT_BYTES, align 4
  %106 = load i32, i32* %18, align 4
  %107 = call i32 @cpu_to_be64(i32 %106)
  %108 = load i32, i32* @NFACCT_PAD, align 4
  %109 = call i64 @nla_put_be64(%struct.sk_buff* %104, i32 %105, i32 %107, i32 %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %120, label %111

111:                                              ; preds = %103
  %112 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %113 = load i32, i32* @NFACCT_USE, align 4
  %114 = load %struct.nf_acct*, %struct.nf_acct** %13, align 8
  %115 = getelementptr inbounds %struct.nf_acct, %struct.nf_acct* %114, i32 0, i32 2
  %116 = call i64 @refcount_read(i32* %115)
  %117 = call i32 @htonl(i64 %116)
  %118 = call i64 @nla_put_be32(%struct.sk_buff* %112, i32 %113, i32 %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %121

120:                                              ; preds = %111, %103, %95
  br label %159

121:                                              ; preds = %111
  %122 = load %struct.nf_acct*, %struct.nf_acct** %13, align 8
  %123 = getelementptr inbounds %struct.nf_acct, %struct.nf_acct* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = load i32, i32* @NFACCT_F_QUOTA, align 4
  %126 = sext i32 %125 to i64
  %127 = and i64 %124, %126
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %151

129:                                              ; preds = %121
  %130 = load %struct.nf_acct*, %struct.nf_acct** %13, align 8
  %131 = getelementptr inbounds %struct.nf_acct, %struct.nf_acct* %130, i32 0, i32 1
  %132 = load i64, i64* %131, align 8
  %133 = inttoptr i64 %132 to i32*
  store i32* %133, i32** %20, align 8
  %134 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %135 = load i32, i32* @NFACCT_FLAGS, align 4
  %136 = load i64, i64* %19, align 8
  %137 = call i32 @htonl(i64 %136)
  %138 = call i64 @nla_put_be32(%struct.sk_buff* %134, i32 %135, i32 %137)
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %149, label %140

140:                                              ; preds = %129
  %141 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %142 = load i32, i32* @NFACCT_QUOTA, align 4
  %143 = load i32*, i32** %20, align 8
  %144 = load i32, i32* %143, align 4
  %145 = call i32 @cpu_to_be64(i32 %144)
  %146 = load i32, i32* @NFACCT_PAD, align 4
  %147 = call i64 @nla_put_be64(%struct.sk_buff* %141, i32 %142, i32 %145, i32 %146)
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %150

149:                                              ; preds = %140, %129
  br label %159

150:                                              ; preds = %140
  br label %151

151:                                              ; preds = %150, %121
  %152 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %153 = load %struct.nlmsghdr*, %struct.nlmsghdr** %14, align 8
  %154 = call i32 @nlmsg_end(%struct.sk_buff* %152, %struct.nlmsghdr* %153)
  %155 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %156 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  store i32 %157, i32* %7, align 4
  br label %163

158:                                              ; preds = %39
  br label %159

159:                                              ; preds = %158, %149, %120, %58
  %160 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %161 = load %struct.nlmsghdr*, %struct.nlmsghdr** %14, align 8
  %162 = call i32 @nlmsg_cancel(%struct.sk_buff* %160, %struct.nlmsghdr* %161)
  store i32 -1, i32* %7, align 4
  br label %163

163:                                              ; preds = %159, %151
  %164 = load i32, i32* %7, align 4
  ret i32 %164
}

declare dso_local i32 @nfnl_msg_type(i32, i32) #1

declare dso_local %struct.nlmsghdr* @nlmsg_put(%struct.sk_buff*, i64, i64, i32, i32, i32) #1

declare dso_local %struct.nfgenmsg* @nlmsg_data(%struct.nlmsghdr*) #1

declare dso_local i64 @nla_put_string(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @atomic64_xchg(i32*, i32) #1

declare dso_local i32 @smp_mb__before_atomic(...) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @atomic64_read(i32*) #1

declare dso_local i64 @nla_put_be64(%struct.sk_buff*, i32, i32, i32) #1

declare dso_local i32 @cpu_to_be64(i32) #1

declare dso_local i64 @nla_put_be32(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @htonl(i64) #1

declare dso_local i64 @refcount_read(i32*) #1

declare dso_local i32 @nlmsg_end(%struct.sk_buff*, %struct.nlmsghdr*) #1

declare dso_local i32 @nlmsg_cancel(%struct.sk_buff*, %struct.nlmsghdr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
