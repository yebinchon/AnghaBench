; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_tables_api.c_nf_tables_delset.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_tables_api.c_nf_tables_delset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.sock = type { i32 }
%struct.sk_buff = type { i32 }
%struct.nlmsghdr = type { i32 }
%struct.nlattr = type { i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.nfgenmsg = type { i64 }
%struct.nft_set = type { i32, i64 }
%struct.nft_ctx = type { i32 }

@NFPROTO_UNSPEC = common dso_local global i64 0, align 8
@EAFNOSUPPORT = common dso_local global i32 0, align 4
@NFTA_SET_TABLE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@NFTA_SET_HANDLE = common dso_local global i64 0, align 8
@NFTA_SET_NAME = common dso_local global i64 0, align 8
@NLM_F_NONREC = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*, %struct.sock*, %struct.sk_buff*, %struct.nlmsghdr*, %struct.nlattr**, %struct.netlink_ext_ack*)* @nf_tables_delset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nf_tables_delset(%struct.net* %0, %struct.sock* %1, %struct.sk_buff* %2, %struct.nlmsghdr* %3, %struct.nlattr** %4, %struct.netlink_ext_ack* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.net*, align 8
  %9 = alloca %struct.sock*, align 8
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca %struct.nlmsghdr*, align 8
  %12 = alloca %struct.nlattr**, align 8
  %13 = alloca %struct.netlink_ext_ack*, align 8
  %14 = alloca %struct.nfgenmsg*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.nlattr*, align 8
  %17 = alloca %struct.nft_set*, align 8
  %18 = alloca %struct.nft_ctx, align 4
  %19 = alloca i32, align 4
  store %struct.net* %0, %struct.net** %8, align 8
  store %struct.sock* %1, %struct.sock** %9, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %10, align 8
  store %struct.nlmsghdr* %3, %struct.nlmsghdr** %11, align 8
  store %struct.nlattr** %4, %struct.nlattr*** %12, align 8
  store %struct.netlink_ext_ack* %5, %struct.netlink_ext_ack** %13, align 8
  %20 = load %struct.nlmsghdr*, %struct.nlmsghdr** %11, align 8
  %21 = call %struct.nfgenmsg* @nlmsg_data(%struct.nlmsghdr* %20)
  store %struct.nfgenmsg* %21, %struct.nfgenmsg** %14, align 8
  %22 = load %struct.net*, %struct.net** %8, align 8
  %23 = call i32 @nft_genmask_next(%struct.net* %22)
  store i32 %23, i32* %15, align 4
  %24 = load %struct.nfgenmsg*, %struct.nfgenmsg** %14, align 8
  %25 = getelementptr inbounds %struct.nfgenmsg, %struct.nfgenmsg* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @NFPROTO_UNSPEC, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %6
  %30 = load i32, i32* @EAFNOSUPPORT, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %7, align 4
  br label %115

32:                                               ; preds = %6
  %33 = load %struct.nlattr**, %struct.nlattr*** %12, align 8
  %34 = load i64, i64* @NFTA_SET_TABLE, align 8
  %35 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %33, i64 %34
  %36 = load %struct.nlattr*, %struct.nlattr** %35, align 8
  %37 = icmp eq %struct.nlattr* %36, null
  br i1 %37, label %38, label %41

38:                                               ; preds = %32
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %7, align 4
  br label %115

41:                                               ; preds = %32
  %42 = load %struct.net*, %struct.net** %8, align 8
  %43 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %44 = load %struct.nlmsghdr*, %struct.nlmsghdr** %11, align 8
  %45 = load %struct.nlattr**, %struct.nlattr*** %12, align 8
  %46 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %13, align 8
  %47 = load i32, i32* %15, align 4
  %48 = call i32 @nft_ctx_init_from_setattr(%struct.nft_ctx* %18, %struct.net* %42, %struct.sk_buff* %43, %struct.nlmsghdr* %44, %struct.nlattr** %45, %struct.netlink_ext_ack* %46, i32 %47)
  store i32 %48, i32* %19, align 4
  %49 = load i32, i32* %19, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %41
  %52 = load i32, i32* %19, align 4
  store i32 %52, i32* %7, align 4
  br label %115

53:                                               ; preds = %41
  %54 = load %struct.nlattr**, %struct.nlattr*** %12, align 8
  %55 = load i64, i64* @NFTA_SET_HANDLE, align 8
  %56 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %54, i64 %55
  %57 = load %struct.nlattr*, %struct.nlattr** %56, align 8
  %58 = icmp ne %struct.nlattr* %57, null
  br i1 %58, label %59, label %69

59:                                               ; preds = %53
  %60 = load %struct.nlattr**, %struct.nlattr*** %12, align 8
  %61 = load i64, i64* @NFTA_SET_HANDLE, align 8
  %62 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %60, i64 %61
  %63 = load %struct.nlattr*, %struct.nlattr** %62, align 8
  store %struct.nlattr* %63, %struct.nlattr** %16, align 8
  %64 = getelementptr inbounds %struct.nft_ctx, %struct.nft_ctx* %18, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.nlattr*, %struct.nlattr** %16, align 8
  %67 = load i32, i32* %15, align 4
  %68 = call %struct.nft_set* @nft_set_lookup_byhandle(i32 %65, %struct.nlattr* %66, i32 %67)
  store %struct.nft_set* %68, %struct.nft_set** %17, align 8
  br label %79

69:                                               ; preds = %53
  %70 = load %struct.nlattr**, %struct.nlattr*** %12, align 8
  %71 = load i64, i64* @NFTA_SET_NAME, align 8
  %72 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %70, i64 %71
  %73 = load %struct.nlattr*, %struct.nlattr** %72, align 8
  store %struct.nlattr* %73, %struct.nlattr** %16, align 8
  %74 = getelementptr inbounds %struct.nft_ctx, %struct.nft_ctx* %18, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.nlattr*, %struct.nlattr** %16, align 8
  %77 = load i32, i32* %15, align 4
  %78 = call %struct.nft_set* @nft_set_lookup(i32 %75, %struct.nlattr* %76, i32 %77)
  store %struct.nft_set* %78, %struct.nft_set** %17, align 8
  br label %79

79:                                               ; preds = %69, %59
  %80 = load %struct.nft_set*, %struct.nft_set** %17, align 8
  %81 = call i64 @IS_ERR(%struct.nft_set* %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %89

83:                                               ; preds = %79
  %84 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %13, align 8
  %85 = load %struct.nlattr*, %struct.nlattr** %16, align 8
  %86 = call i32 @NL_SET_BAD_ATTR(%struct.netlink_ext_ack* %84, %struct.nlattr* %85)
  %87 = load %struct.nft_set*, %struct.nft_set** %17, align 8
  %88 = call i32 @PTR_ERR(%struct.nft_set* %87)
  store i32 %88, i32* %7, align 4
  br label %115

89:                                               ; preds = %79
  %90 = load %struct.nft_set*, %struct.nft_set** %17, align 8
  %91 = getelementptr inbounds %struct.nft_set, %struct.nft_set* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %106, label %94

94:                                               ; preds = %89
  %95 = load %struct.nlmsghdr*, %struct.nlmsghdr** %11, align 8
  %96 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* @NLM_F_NONREC, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %112

101:                                              ; preds = %94
  %102 = load %struct.nft_set*, %struct.nft_set** %17, align 8
  %103 = getelementptr inbounds %struct.nft_set, %struct.nft_set* %102, i32 0, i32 0
  %104 = call i64 @atomic_read(i32* %103)
  %105 = icmp sgt i64 %104, 0
  br i1 %105, label %106, label %112

106:                                              ; preds = %101, %89
  %107 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %13, align 8
  %108 = load %struct.nlattr*, %struct.nlattr** %16, align 8
  %109 = call i32 @NL_SET_BAD_ATTR(%struct.netlink_ext_ack* %107, %struct.nlattr* %108)
  %110 = load i32, i32* @EBUSY, align 4
  %111 = sub nsw i32 0, %110
  store i32 %111, i32* %7, align 4
  br label %115

112:                                              ; preds = %101, %94
  %113 = load %struct.nft_set*, %struct.nft_set** %17, align 8
  %114 = call i32 @nft_delset(%struct.nft_ctx* %18, %struct.nft_set* %113)
  store i32 %114, i32* %7, align 4
  br label %115

115:                                              ; preds = %112, %106, %83, %51, %38, %29
  %116 = load i32, i32* %7, align 4
  ret i32 %116
}

declare dso_local %struct.nfgenmsg* @nlmsg_data(%struct.nlmsghdr*) #1

declare dso_local i32 @nft_genmask_next(%struct.net*) #1

declare dso_local i32 @nft_ctx_init_from_setattr(%struct.nft_ctx*, %struct.net*, %struct.sk_buff*, %struct.nlmsghdr*, %struct.nlattr**, %struct.netlink_ext_ack*, i32) #1

declare dso_local %struct.nft_set* @nft_set_lookup_byhandle(i32, %struct.nlattr*, i32) #1

declare dso_local %struct.nft_set* @nft_set_lookup(i32, %struct.nlattr*, i32) #1

declare dso_local i64 @IS_ERR(%struct.nft_set*) #1

declare dso_local i32 @NL_SET_BAD_ATTR(%struct.netlink_ext_ack*, %struct.nlattr*) #1

declare dso_local i32 @PTR_ERR(%struct.nft_set*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @nft_delset(%struct.nft_ctx*, %struct.nft_set*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
