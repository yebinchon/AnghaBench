; ModuleID = '/home/carl/AnghaBench/linux/net/unix/extr_diag.c_sk_diag_fill.c'
source_filename = "/home/carl/AnghaBench/linux/net/unix/extr_diag.c_sk_diag_fill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32, i32, i32 }
%struct.sk_buff = type { i32 }
%struct.unix_diag_req = type { i32 }
%struct.nlmsghdr = type { i32 }
%struct.unix_diag_msg = type { i32, i32, i64, i32, i32, i32 }

@SOCK_DIAG_BY_FAMILY = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@AF_UNIX = common dso_local global i32 0, align 4
@UDIAG_SHOW_NAME = common dso_local global i32 0, align 4
@UDIAG_SHOW_VFS = common dso_local global i32 0, align 4
@UDIAG_SHOW_PEER = common dso_local global i32 0, align 4
@UDIAG_SHOW_ICONS = common dso_local global i32 0, align 4
@UDIAG_SHOW_RQLEN = common dso_local global i32 0, align 4
@UDIAG_SHOW_MEMINFO = common dso_local global i32 0, align 4
@UNIX_DIAG_MEMINFO = common dso_local global i32 0, align 4
@UNIX_DIAG_SHUTDOWN = common dso_local global i32 0, align 4
@UDIAG_SHOW_UID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, %struct.sk_buff*, %struct.unix_diag_req*, i32, i32, i32, i32)* @sk_diag_fill to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sk_diag_fill(%struct.sock* %0, %struct.sk_buff* %1, %struct.unix_diag_req* %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.sock*, align 8
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca %struct.unix_diag_req*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.nlmsghdr*, align 8
  %17 = alloca %struct.unix_diag_msg*, align 8
  store %struct.sock* %0, %struct.sock** %9, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %10, align 8
  store %struct.unix_diag_req* %2, %struct.unix_diag_req** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %18 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %19 = load i32, i32* %12, align 4
  %20 = load i32, i32* %13, align 4
  %21 = load i32, i32* @SOCK_DIAG_BY_FAMILY, align 4
  %22 = load i32, i32* %14, align 4
  %23 = call %struct.nlmsghdr* @nlmsg_put(%struct.sk_buff* %18, i32 %19, i32 %20, i32 %21, i32 32, i32 %22)
  store %struct.nlmsghdr* %23, %struct.nlmsghdr** %16, align 8
  %24 = load %struct.nlmsghdr*, %struct.nlmsghdr** %16, align 8
  %25 = icmp ne %struct.nlmsghdr* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %7
  %27 = load i32, i32* @EMSGSIZE, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %8, align 4
  br label %165

29:                                               ; preds = %7
  %30 = load %struct.nlmsghdr*, %struct.nlmsghdr** %16, align 8
  %31 = call %struct.unix_diag_msg* @nlmsg_data(%struct.nlmsghdr* %30)
  store %struct.unix_diag_msg* %31, %struct.unix_diag_msg** %17, align 8
  %32 = load i32, i32* @AF_UNIX, align 4
  %33 = load %struct.unix_diag_msg*, %struct.unix_diag_msg** %17, align 8
  %34 = getelementptr inbounds %struct.unix_diag_msg, %struct.unix_diag_msg* %33, i32 0, i32 5
  store i32 %32, i32* %34, align 8
  %35 = load %struct.sock*, %struct.sock** %9, align 8
  %36 = getelementptr inbounds %struct.sock, %struct.sock* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.unix_diag_msg*, %struct.unix_diag_msg** %17, align 8
  %39 = getelementptr inbounds %struct.unix_diag_msg, %struct.unix_diag_msg* %38, i32 0, i32 4
  store i32 %37, i32* %39, align 4
  %40 = load %struct.sock*, %struct.sock** %9, align 8
  %41 = getelementptr inbounds %struct.sock, %struct.sock* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.unix_diag_msg*, %struct.unix_diag_msg** %17, align 8
  %44 = getelementptr inbounds %struct.unix_diag_msg, %struct.unix_diag_msg* %43, i32 0, i32 3
  store i32 %42, i32* %44, align 8
  %45 = load %struct.unix_diag_msg*, %struct.unix_diag_msg** %17, align 8
  %46 = getelementptr inbounds %struct.unix_diag_msg, %struct.unix_diag_msg* %45, i32 0, i32 2
  store i64 0, i64* %46, align 8
  %47 = load i32, i32* %15, align 4
  %48 = load %struct.unix_diag_msg*, %struct.unix_diag_msg** %17, align 8
  %49 = getelementptr inbounds %struct.unix_diag_msg, %struct.unix_diag_msg* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 8
  %50 = load %struct.sock*, %struct.sock** %9, align 8
  %51 = load %struct.unix_diag_msg*, %struct.unix_diag_msg** %17, align 8
  %52 = getelementptr inbounds %struct.unix_diag_msg, %struct.unix_diag_msg* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @sock_diag_save_cookie(%struct.sock* %50, i32 %53)
  %55 = load %struct.unix_diag_req*, %struct.unix_diag_req** %11, align 8
  %56 = getelementptr inbounds %struct.unix_diag_req, %struct.unix_diag_req* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @UDIAG_SHOW_NAME, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %29
  %62 = load %struct.sock*, %struct.sock** %9, align 8
  %63 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %64 = call i64 @sk_diag_dump_name(%struct.sock* %62, %struct.sk_buff* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %61
  br label %159

67:                                               ; preds = %61, %29
  %68 = load %struct.unix_diag_req*, %struct.unix_diag_req** %11, align 8
  %69 = getelementptr inbounds %struct.unix_diag_req, %struct.unix_diag_req* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @UDIAG_SHOW_VFS, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %80

74:                                               ; preds = %67
  %75 = load %struct.sock*, %struct.sock** %9, align 8
  %76 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %77 = call i64 @sk_diag_dump_vfs(%struct.sock* %75, %struct.sk_buff* %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %74
  br label %159

80:                                               ; preds = %74, %67
  %81 = load %struct.unix_diag_req*, %struct.unix_diag_req** %11, align 8
  %82 = getelementptr inbounds %struct.unix_diag_req, %struct.unix_diag_req* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @UDIAG_SHOW_PEER, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %93

87:                                               ; preds = %80
  %88 = load %struct.sock*, %struct.sock** %9, align 8
  %89 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %90 = call i64 @sk_diag_dump_peer(%struct.sock* %88, %struct.sk_buff* %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %87
  br label %159

93:                                               ; preds = %87, %80
  %94 = load %struct.unix_diag_req*, %struct.unix_diag_req** %11, align 8
  %95 = getelementptr inbounds %struct.unix_diag_req, %struct.unix_diag_req* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* @UDIAG_SHOW_ICONS, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %106

100:                                              ; preds = %93
  %101 = load %struct.sock*, %struct.sock** %9, align 8
  %102 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %103 = call i64 @sk_diag_dump_icons(%struct.sock* %101, %struct.sk_buff* %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %100
  br label %159

106:                                              ; preds = %100, %93
  %107 = load %struct.unix_diag_req*, %struct.unix_diag_req** %11, align 8
  %108 = getelementptr inbounds %struct.unix_diag_req, %struct.unix_diag_req* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* @UDIAG_SHOW_RQLEN, align 4
  %111 = and i32 %109, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %119

113:                                              ; preds = %106
  %114 = load %struct.sock*, %struct.sock** %9, align 8
  %115 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %116 = call i64 @sk_diag_show_rqlen(%struct.sock* %114, %struct.sk_buff* %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %113
  br label %159

119:                                              ; preds = %113, %106
  %120 = load %struct.unix_diag_req*, %struct.unix_diag_req** %11, align 8
  %121 = getelementptr inbounds %struct.unix_diag_req, %struct.unix_diag_req* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* @UDIAG_SHOW_MEMINFO, align 4
  %124 = and i32 %122, %123
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %133

126:                                              ; preds = %119
  %127 = load %struct.sock*, %struct.sock** %9, align 8
  %128 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %129 = load i32, i32* @UNIX_DIAG_MEMINFO, align 4
  %130 = call i64 @sock_diag_put_meminfo(%struct.sock* %127, %struct.sk_buff* %128, i32 %129)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %133

132:                                              ; preds = %126
  br label %159

133:                                              ; preds = %126, %119
  %134 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %135 = load i32, i32* @UNIX_DIAG_SHUTDOWN, align 4
  %136 = load %struct.sock*, %struct.sock** %9, align 8
  %137 = getelementptr inbounds %struct.sock, %struct.sock* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = call i64 @nla_put_u8(%struct.sk_buff* %134, i32 %135, i32 %138)
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %142

141:                                              ; preds = %133
  br label %159

142:                                              ; preds = %133
  %143 = load %struct.unix_diag_req*, %struct.unix_diag_req** %11, align 8
  %144 = getelementptr inbounds %struct.unix_diag_req, %struct.unix_diag_req* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = load i32, i32* @UDIAG_SHOW_UID, align 4
  %147 = and i32 %145, %146
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %155

149:                                              ; preds = %142
  %150 = load %struct.sock*, %struct.sock** %9, align 8
  %151 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %152 = call i64 @sk_diag_dump_uid(%struct.sock* %150, %struct.sk_buff* %151)
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %155

154:                                              ; preds = %149
  br label %159

155:                                              ; preds = %149, %142
  %156 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %157 = load %struct.nlmsghdr*, %struct.nlmsghdr** %16, align 8
  %158 = call i32 @nlmsg_end(%struct.sk_buff* %156, %struct.nlmsghdr* %157)
  store i32 0, i32* %8, align 4
  br label %165

159:                                              ; preds = %154, %141, %132, %118, %105, %92, %79, %66
  %160 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %161 = load %struct.nlmsghdr*, %struct.nlmsghdr** %16, align 8
  %162 = call i32 @nlmsg_cancel(%struct.sk_buff* %160, %struct.nlmsghdr* %161)
  %163 = load i32, i32* @EMSGSIZE, align 4
  %164 = sub nsw i32 0, %163
  store i32 %164, i32* %8, align 4
  br label %165

165:                                              ; preds = %159, %155, %26
  %166 = load i32, i32* %8, align 4
  ret i32 %166
}

declare dso_local %struct.nlmsghdr* @nlmsg_put(%struct.sk_buff*, i32, i32, i32, i32, i32) #1

declare dso_local %struct.unix_diag_msg* @nlmsg_data(%struct.nlmsghdr*) #1

declare dso_local i32 @sock_diag_save_cookie(%struct.sock*, i32) #1

declare dso_local i64 @sk_diag_dump_name(%struct.sock*, %struct.sk_buff*) #1

declare dso_local i64 @sk_diag_dump_vfs(%struct.sock*, %struct.sk_buff*) #1

declare dso_local i64 @sk_diag_dump_peer(%struct.sock*, %struct.sk_buff*) #1

declare dso_local i64 @sk_diag_dump_icons(%struct.sock*, %struct.sk_buff*) #1

declare dso_local i64 @sk_diag_show_rqlen(%struct.sock*, %struct.sk_buff*) #1

declare dso_local i64 @sock_diag_put_meminfo(%struct.sock*, %struct.sk_buff*, i32) #1

declare dso_local i64 @nla_put_u8(%struct.sk_buff*, i32, i32) #1

declare dso_local i64 @sk_diag_dump_uid(%struct.sock*, %struct.sk_buff*) #1

declare dso_local i32 @nlmsg_end(%struct.sk_buff*, %struct.nlmsghdr*) #1

declare dso_local i32 @nlmsg_cancel(%struct.sk_buff*, %struct.nlmsghdr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
