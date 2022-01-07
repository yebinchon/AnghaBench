; ModuleID = '/home/carl/AnghaBench/linux/net/netlabel/extr_netlabel_unlabeled.c_netlbl_unlabel_staticlist_gen.c'
source_filename = "/home/carl/AnghaBench/linux/net/netlabel/extr_netlabel_unlabeled.c_netlbl_unlabel_staticlist_gen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netlbl_unlhsh_iface = type { i64 }
%struct.netlbl_unlhsh_addr4 = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.netlbl_unlhsh_addr6 = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32 }
%struct.netlbl_unlhsh_walk_arg = type { i32, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.net_device = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.in_addr = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@netlbl_unlabel_gnl_family = common dso_local global i32 0, align 4
@NLM_F_MULTI = common dso_local global i32 0, align 4
@init_net = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@NLBL_UNLABEL_A_IFACE = common dso_local global i32 0, align 4
@NLBL_UNLABEL_A_IPV4ADDR = common dso_local global i32 0, align 4
@NLBL_UNLABEL_A_IPV4MASK = common dso_local global i32 0, align 4
@NLBL_UNLABEL_A_IPV6ADDR = common dso_local global i32 0, align 4
@NLBL_UNLABEL_A_IPV6MASK = common dso_local global i32 0, align 4
@NLBL_UNLABEL_A_SECCTX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.netlbl_unlhsh_iface*, %struct.netlbl_unlhsh_addr4*, %struct.netlbl_unlhsh_addr6*, i8*)* @netlbl_unlabel_staticlist_gen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @netlbl_unlabel_staticlist_gen(i32 %0, %struct.netlbl_unlhsh_iface* %1, %struct.netlbl_unlhsh_addr4* %2, %struct.netlbl_unlhsh_addr6* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.netlbl_unlhsh_iface*, align 8
  %9 = alloca %struct.netlbl_unlhsh_addr4*, align 8
  %10 = alloca %struct.netlbl_unlhsh_addr6*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.netlbl_unlhsh_walk_arg*, align 8
  %14 = alloca %struct.net_device*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_8__, align 4
  %20 = alloca %struct.in_addr, align 4
  store i32 %0, i32* %7, align 4
  store %struct.netlbl_unlhsh_iface* %1, %struct.netlbl_unlhsh_iface** %8, align 8
  store %struct.netlbl_unlhsh_addr4* %2, %struct.netlbl_unlhsh_addr4** %9, align 8
  store %struct.netlbl_unlhsh_addr6* %3, %struct.netlbl_unlhsh_addr6** %10, align 8
  store i8* %4, i8** %11, align 8
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %12, align 4
  %23 = load i8*, i8** %11, align 8
  %24 = bitcast i8* %23 to %struct.netlbl_unlhsh_walk_arg*
  store %struct.netlbl_unlhsh_walk_arg* %24, %struct.netlbl_unlhsh_walk_arg** %13, align 8
  %25 = load %struct.netlbl_unlhsh_walk_arg*, %struct.netlbl_unlhsh_walk_arg** %13, align 8
  %26 = getelementptr inbounds %struct.netlbl_unlhsh_walk_arg, %struct.netlbl_unlhsh_walk_arg* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.netlbl_unlhsh_walk_arg*, %struct.netlbl_unlhsh_walk_arg** %13, align 8
  %29 = getelementptr inbounds %struct.netlbl_unlhsh_walk_arg, %struct.netlbl_unlhsh_walk_arg* %28, i32 0, i32 2
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @NETLINK_CB(i32 %32)
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  store i32 %33, i32* %34, align 4
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.netlbl_unlhsh_walk_arg*, %struct.netlbl_unlhsh_walk_arg** %13, align 8
  %38 = getelementptr inbounds %struct.netlbl_unlhsh_walk_arg, %struct.netlbl_unlhsh_walk_arg* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @NLM_F_MULTI, align 4
  %41 = load i32, i32* %7, align 4
  %42 = call i8* @genlmsg_put(i32 %27, i32 %36, i32 %39, i32* @netlbl_unlabel_gnl_family, i32 %40, i32 %41)
  store i8* %42, i8** %15, align 8
  %43 = load i8*, i8** %15, align 8
  %44 = icmp eq i8* %43, null
  br i1 %44, label %45, label %46

45:                                               ; preds = %5
  br label %173

46:                                               ; preds = %5
  %47 = load %struct.netlbl_unlhsh_iface*, %struct.netlbl_unlhsh_iface** %8, align 8
  %48 = getelementptr inbounds %struct.netlbl_unlhsh_iface, %struct.netlbl_unlhsh_iface* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp sgt i64 %49, 0
  br i1 %50, label %51, label %76

51:                                               ; preds = %46
  %52 = load %struct.netlbl_unlhsh_iface*, %struct.netlbl_unlhsh_iface** %8, align 8
  %53 = getelementptr inbounds %struct.netlbl_unlhsh_iface, %struct.netlbl_unlhsh_iface* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = call %struct.net_device* @dev_get_by_index(i32* @init_net, i64 %54)
  store %struct.net_device* %55, %struct.net_device** %14, align 8
  %56 = load %struct.net_device*, %struct.net_device** %14, align 8
  %57 = icmp ne %struct.net_device* %56, null
  br i1 %57, label %61, label %58

58:                                               ; preds = %51
  %59 = load i32, i32* @ENODEV, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %12, align 4
  br label %173

61:                                               ; preds = %51
  %62 = load %struct.netlbl_unlhsh_walk_arg*, %struct.netlbl_unlhsh_walk_arg** %13, align 8
  %63 = getelementptr inbounds %struct.netlbl_unlhsh_walk_arg, %struct.netlbl_unlhsh_walk_arg* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @NLBL_UNLABEL_A_IFACE, align 4
  %66 = load %struct.net_device*, %struct.net_device** %14, align 8
  %67 = getelementptr inbounds %struct.net_device, %struct.net_device* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @nla_put_string(i32 %64, i32 %65, i32 %68)
  store i32 %69, i32* %12, align 4
  %70 = load %struct.net_device*, %struct.net_device** %14, align 8
  %71 = call i32 @dev_put(%struct.net_device* %70)
  %72 = load i32, i32* %12, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %61
  br label %173

75:                                               ; preds = %61
  br label %76

76:                                               ; preds = %75, %46
  %77 = load %struct.netlbl_unlhsh_addr4*, %struct.netlbl_unlhsh_addr4** %9, align 8
  %78 = icmp ne %struct.netlbl_unlhsh_addr4* %77, null
  br i1 %78, label %79, label %115

79:                                               ; preds = %76
  %80 = load %struct.netlbl_unlhsh_addr4*, %struct.netlbl_unlhsh_addr4** %9, align 8
  %81 = getelementptr inbounds %struct.netlbl_unlhsh_addr4, %struct.netlbl_unlhsh_addr4* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %20, i32 0, i32 0
  store i32 %83, i32* %84, align 4
  %85 = load %struct.netlbl_unlhsh_walk_arg*, %struct.netlbl_unlhsh_walk_arg** %13, align 8
  %86 = getelementptr inbounds %struct.netlbl_unlhsh_walk_arg, %struct.netlbl_unlhsh_walk_arg* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* @NLBL_UNLABEL_A_IPV4ADDR, align 4
  %89 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %20, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @nla_put_in_addr(i32 %87, i32 %88, i32 %90)
  store i32 %91, i32* %12, align 4
  %92 = load i32, i32* %12, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %79
  br label %173

95:                                               ; preds = %79
  %96 = load %struct.netlbl_unlhsh_addr4*, %struct.netlbl_unlhsh_addr4** %9, align 8
  %97 = getelementptr inbounds %struct.netlbl_unlhsh_addr4, %struct.netlbl_unlhsh_addr4* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %20, i32 0, i32 0
  store i32 %99, i32* %100, align 4
  %101 = load %struct.netlbl_unlhsh_walk_arg*, %struct.netlbl_unlhsh_walk_arg** %13, align 8
  %102 = getelementptr inbounds %struct.netlbl_unlhsh_walk_arg, %struct.netlbl_unlhsh_walk_arg* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = load i32, i32* @NLBL_UNLABEL_A_IPV4MASK, align 4
  %105 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %20, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @nla_put_in_addr(i32 %103, i32 %104, i32 %106)
  store i32 %107, i32* %12, align 4
  %108 = load i32, i32* %12, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %95
  br label %173

111:                                              ; preds = %95
  %112 = load %struct.netlbl_unlhsh_addr4*, %struct.netlbl_unlhsh_addr4** %9, align 8
  %113 = getelementptr inbounds %struct.netlbl_unlhsh_addr4, %struct.netlbl_unlhsh_addr4* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  store i32 %114, i32* %16, align 4
  br label %143

115:                                              ; preds = %76
  %116 = load %struct.netlbl_unlhsh_walk_arg*, %struct.netlbl_unlhsh_walk_arg** %13, align 8
  %117 = getelementptr inbounds %struct.netlbl_unlhsh_walk_arg, %struct.netlbl_unlhsh_walk_arg* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = load i32, i32* @NLBL_UNLABEL_A_IPV6ADDR, align 4
  %120 = load %struct.netlbl_unlhsh_addr6*, %struct.netlbl_unlhsh_addr6** %10, align 8
  %121 = getelementptr inbounds %struct.netlbl_unlhsh_addr6, %struct.netlbl_unlhsh_addr6* %120, i32 0, i32 1
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %121, i32 0, i32 1
  %123 = call i32 @nla_put_in6_addr(i32 %118, i32 %119, i32* %122)
  store i32 %123, i32* %12, align 4
  %124 = load i32, i32* %12, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %127

126:                                              ; preds = %115
  br label %173

127:                                              ; preds = %115
  %128 = load %struct.netlbl_unlhsh_walk_arg*, %struct.netlbl_unlhsh_walk_arg** %13, align 8
  %129 = getelementptr inbounds %struct.netlbl_unlhsh_walk_arg, %struct.netlbl_unlhsh_walk_arg* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = load i32, i32* @NLBL_UNLABEL_A_IPV6MASK, align 4
  %132 = load %struct.netlbl_unlhsh_addr6*, %struct.netlbl_unlhsh_addr6** %10, align 8
  %133 = getelementptr inbounds %struct.netlbl_unlhsh_addr6, %struct.netlbl_unlhsh_addr6* %132, i32 0, i32 1
  %134 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %133, i32 0, i32 0
  %135 = call i32 @nla_put_in6_addr(i32 %130, i32 %131, i32* %134)
  store i32 %135, i32* %12, align 4
  %136 = load i32, i32* %12, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %139

138:                                              ; preds = %127
  br label %173

139:                                              ; preds = %127
  %140 = load %struct.netlbl_unlhsh_addr6*, %struct.netlbl_unlhsh_addr6** %10, align 8
  %141 = getelementptr inbounds %struct.netlbl_unlhsh_addr6, %struct.netlbl_unlhsh_addr6* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  store i32 %142, i32* %16, align 4
  br label %143

143:                                              ; preds = %139, %111
  %144 = load i32, i32* %16, align 4
  %145 = call i32 @security_secid_to_secctx(i32 %144, i8** %17, i32* %18)
  store i32 %145, i32* %12, align 4
  %146 = load i32, i32* %12, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %149

148:                                              ; preds = %143
  br label %173

149:                                              ; preds = %143
  %150 = load %struct.netlbl_unlhsh_walk_arg*, %struct.netlbl_unlhsh_walk_arg** %13, align 8
  %151 = getelementptr inbounds %struct.netlbl_unlhsh_walk_arg, %struct.netlbl_unlhsh_walk_arg* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = load i32, i32* @NLBL_UNLABEL_A_SECCTX, align 4
  %154 = load i32, i32* %18, align 4
  %155 = load i8*, i8** %17, align 8
  %156 = call i32 @nla_put(i32 %152, i32 %153, i32 %154, i8* %155)
  store i32 %156, i32* %12, align 4
  %157 = load i8*, i8** %17, align 8
  %158 = load i32, i32* %18, align 4
  %159 = call i32 @security_release_secctx(i8* %157, i32 %158)
  %160 = load i32, i32* %12, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %163

162:                                              ; preds = %149
  br label %173

163:                                              ; preds = %149
  %164 = load %struct.netlbl_unlhsh_walk_arg*, %struct.netlbl_unlhsh_walk_arg** %13, align 8
  %165 = getelementptr inbounds %struct.netlbl_unlhsh_walk_arg, %struct.netlbl_unlhsh_walk_arg* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* %165, align 4
  %168 = load %struct.netlbl_unlhsh_walk_arg*, %struct.netlbl_unlhsh_walk_arg** %13, align 8
  %169 = getelementptr inbounds %struct.netlbl_unlhsh_walk_arg, %struct.netlbl_unlhsh_walk_arg* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 8
  %171 = load i8*, i8** %15, align 8
  %172 = call i32 @genlmsg_end(i32 %170, i8* %171)
  store i32 0, i32* %6, align 4
  br label %180

173:                                              ; preds = %162, %148, %138, %126, %110, %94, %74, %58, %45
  %174 = load %struct.netlbl_unlhsh_walk_arg*, %struct.netlbl_unlhsh_walk_arg** %13, align 8
  %175 = getelementptr inbounds %struct.netlbl_unlhsh_walk_arg, %struct.netlbl_unlhsh_walk_arg* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  %177 = load i8*, i8** %15, align 8
  %178 = call i32 @genlmsg_cancel(i32 %176, i8* %177)
  %179 = load i32, i32* %12, align 4
  store i32 %179, i32* %6, align 4
  br label %180

180:                                              ; preds = %173, %163
  %181 = load i32, i32* %6, align 4
  ret i32 %181
}

declare dso_local i8* @genlmsg_put(i32, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @NETLINK_CB(i32) #1

declare dso_local %struct.net_device* @dev_get_by_index(i32*, i64) #1

declare dso_local i32 @nla_put_string(i32, i32, i32) #1

declare dso_local i32 @dev_put(%struct.net_device*) #1

declare dso_local i32 @nla_put_in_addr(i32, i32, i32) #1

declare dso_local i32 @nla_put_in6_addr(i32, i32, i32*) #1

declare dso_local i32 @security_secid_to_secctx(i32, i8**, i32*) #1

declare dso_local i32 @nla_put(i32, i32, i32, i8*) #1

declare dso_local i32 @security_release_secctx(i8*, i32) #1

declare dso_local i32 @genlmsg_end(i32, i8*) #1

declare dso_local i32 @genlmsg_cancel(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
