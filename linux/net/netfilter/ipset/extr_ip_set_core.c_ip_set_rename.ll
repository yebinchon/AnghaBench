; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/ipset/extr_ip_set_core.c_ip_set_rename.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/ipset/extr_ip_set_core.c_ip_set_rename.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.sock = type { i32 }
%struct.sk_buff = type { i32 }
%struct.nlmsghdr = type { i32 }
%struct.nlattr = type { i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.ip_set_net = type { i64 }
%struct.ip_set = type { i64, i64, i32 }

@IPSET_ATTR_SETNAME = common dso_local global i64 0, align 8
@IPSET_ATTR_SETNAME2 = common dso_local global i64 0, align 8
@IPSET_ERR_PROTOCOL = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@ip_set_ref_lock = common dso_local global i32 0, align 4
@IPSET_ERR_REFERENCED = common dso_local global i32 0, align 4
@IPSET_ERR_EXIST_SETNAME2 = common dso_local global i32 0, align 4
@IPSET_MAXNAMELEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*, %struct.sock*, %struct.sk_buff*, %struct.nlmsghdr*, %struct.nlattr**, %struct.netlink_ext_ack*)* @ip_set_rename to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ip_set_rename(%struct.net* %0, %struct.sock* %1, %struct.sk_buff* %2, %struct.nlmsghdr* %3, %struct.nlattr** %4, %struct.netlink_ext_ack* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.net*, align 8
  %9 = alloca %struct.sock*, align 8
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca %struct.nlmsghdr*, align 8
  %12 = alloca %struct.nlattr**, align 8
  %13 = alloca %struct.netlink_ext_ack*, align 8
  %14 = alloca %struct.ip_set_net*, align 8
  %15 = alloca %struct.ip_set*, align 8
  %16 = alloca %struct.ip_set*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  store %struct.net* %0, %struct.net** %8, align 8
  store %struct.sock* %1, %struct.sock** %9, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %10, align 8
  store %struct.nlmsghdr* %3, %struct.nlmsghdr** %11, align 8
  store %struct.nlattr** %4, %struct.nlattr*** %12, align 8
  store %struct.netlink_ext_ack* %5, %struct.netlink_ext_ack** %13, align 8
  %20 = load %struct.net*, %struct.net** %8, align 8
  %21 = call %struct.ip_set_net* @ip_set_pernet(%struct.net* %20)
  store %struct.ip_set_net* %21, %struct.ip_set_net** %14, align 8
  store i32 0, i32* %19, align 4
  %22 = load %struct.nlattr**, %struct.nlattr*** %12, align 8
  %23 = call i64 @protocol_min_failed(%struct.nlattr** %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %38, label %25

25:                                               ; preds = %6
  %26 = load %struct.nlattr**, %struct.nlattr*** %12, align 8
  %27 = load i64, i64* @IPSET_ATTR_SETNAME, align 8
  %28 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %26, i64 %27
  %29 = load %struct.nlattr*, %struct.nlattr** %28, align 8
  %30 = icmp ne %struct.nlattr* %29, null
  br i1 %30, label %31, label %38

31:                                               ; preds = %25
  %32 = load %struct.nlattr**, %struct.nlattr*** %12, align 8
  %33 = load i64, i64* @IPSET_ATTR_SETNAME2, align 8
  %34 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %32, i64 %33
  %35 = load %struct.nlattr*, %struct.nlattr** %34, align 8
  %36 = icmp ne %struct.nlattr* %35, null
  %37 = xor i1 %36, true
  br label %38

38:                                               ; preds = %31, %25, %6
  %39 = phi i1 [ true, %25 ], [ true, %6 ], [ %37, %31 ]
  %40 = zext i1 %39 to i32
  %41 = call i64 @unlikely(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %38
  %44 = load i32, i32* @IPSET_ERR_PROTOCOL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %7, align 4
  br label %115

46:                                               ; preds = %38
  %47 = load %struct.ip_set_net*, %struct.ip_set_net** %14, align 8
  %48 = load %struct.nlattr**, %struct.nlattr*** %12, align 8
  %49 = load i64, i64* @IPSET_ATTR_SETNAME, align 8
  %50 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %48, i64 %49
  %51 = load %struct.nlattr*, %struct.nlattr** %50, align 8
  %52 = call i8* @nla_data(%struct.nlattr* %51)
  %53 = call %struct.ip_set* @find_set(%struct.ip_set_net* %47, i8* %52)
  store %struct.ip_set* %53, %struct.ip_set** %15, align 8
  %54 = load %struct.ip_set*, %struct.ip_set** %15, align 8
  %55 = icmp ne %struct.ip_set* %54, null
  br i1 %55, label %59, label %56

56:                                               ; preds = %46
  %57 = load i32, i32* @ENOENT, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %7, align 4
  br label %115

59:                                               ; preds = %46
  %60 = call i32 @write_lock_bh(i32* @ip_set_ref_lock)
  %61 = load %struct.ip_set*, %struct.ip_set** %15, align 8
  %62 = getelementptr inbounds %struct.ip_set, %struct.ip_set* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %70, label %65

65:                                               ; preds = %59
  %66 = load %struct.ip_set*, %struct.ip_set** %15, align 8
  %67 = getelementptr inbounds %struct.ip_set, %struct.ip_set* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %65, %59
  %71 = load i32, i32* @IPSET_ERR_REFERENCED, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %19, align 4
  br label %112

73:                                               ; preds = %65
  %74 = load %struct.nlattr**, %struct.nlattr*** %12, align 8
  %75 = load i64, i64* @IPSET_ATTR_SETNAME2, align 8
  %76 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %74, i64 %75
  %77 = load %struct.nlattr*, %struct.nlattr** %76, align 8
  %78 = call i8* @nla_data(%struct.nlattr* %77)
  store i8* %78, i8** %17, align 8
  store i64 0, i64* %18, align 8
  br label %79

79:                                               ; preds = %102, %73
  %80 = load i64, i64* %18, align 8
  %81 = load %struct.ip_set_net*, %struct.ip_set_net** %14, align 8
  %82 = getelementptr inbounds %struct.ip_set_net, %struct.ip_set_net* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = icmp slt i64 %80, %83
  br i1 %84, label %85, label %105

85:                                               ; preds = %79
  %86 = load %struct.ip_set_net*, %struct.ip_set_net** %14, align 8
  %87 = load i64, i64* %18, align 8
  %88 = call %struct.ip_set* @ip_set(%struct.ip_set_net* %86, i64 %87)
  store %struct.ip_set* %88, %struct.ip_set** %16, align 8
  %89 = load %struct.ip_set*, %struct.ip_set** %16, align 8
  %90 = icmp ne %struct.ip_set* %89, null
  br i1 %90, label %91, label %101

91:                                               ; preds = %85
  %92 = load %struct.ip_set*, %struct.ip_set** %16, align 8
  %93 = getelementptr inbounds %struct.ip_set, %struct.ip_set* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 8
  %95 = load i8*, i8** %17, align 8
  %96 = call i64 @STRNCMP(i32 %94, i8* %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %91
  %99 = load i32, i32* @IPSET_ERR_EXIST_SETNAME2, align 4
  %100 = sub nsw i32 0, %99
  store i32 %100, i32* %19, align 4
  br label %112

101:                                              ; preds = %91, %85
  br label %102

102:                                              ; preds = %101
  %103 = load i64, i64* %18, align 8
  %104 = add nsw i64 %103, 1
  store i64 %104, i64* %18, align 8
  br label %79

105:                                              ; preds = %79
  %106 = load %struct.ip_set*, %struct.ip_set** %15, align 8
  %107 = getelementptr inbounds %struct.ip_set, %struct.ip_set* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 8
  %109 = load i8*, i8** %17, align 8
  %110 = load i32, i32* @IPSET_MAXNAMELEN, align 4
  %111 = call i32 @strncpy(i32 %108, i8* %109, i32 %110)
  br label %112

112:                                              ; preds = %105, %98, %70
  %113 = call i32 @write_unlock_bh(i32* @ip_set_ref_lock)
  %114 = load i32, i32* %19, align 4
  store i32 %114, i32* %7, align 4
  br label %115

115:                                              ; preds = %112, %56, %43
  %116 = load i32, i32* %7, align 4
  ret i32 %116
}

declare dso_local %struct.ip_set_net* @ip_set_pernet(%struct.net*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @protocol_min_failed(%struct.nlattr**) #1

declare dso_local %struct.ip_set* @find_set(%struct.ip_set_net*, i8*) #1

declare dso_local i8* @nla_data(%struct.nlattr*) #1

declare dso_local i32 @write_lock_bh(i32*) #1

declare dso_local %struct.ip_set* @ip_set(%struct.ip_set_net*, i64) #1

declare dso_local i64 @STRNCMP(i32, i8*) #1

declare dso_local i32 @strncpy(i32, i8*, i32) #1

declare dso_local i32 @write_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
