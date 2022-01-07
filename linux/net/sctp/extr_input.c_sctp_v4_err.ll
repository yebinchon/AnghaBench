; ModuleID = '/home/carl/AnghaBench/linux/net/sctp/extr_input.c_sctp_v4_err.c'
source_filename = "/home/carl/AnghaBench/linux/net/sctp/extr_input.c_sctp_v4_err.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.sk_buff = type { i8*, i8*, i32, i64 }
%struct.iphdr = type { i32 }
%struct.sock = type { i32, i32, i32 (%struct.sock*)* }
%struct.sctp_association = type { i32 }
%struct.sctp_transport = type { i32 }
%struct.inet_sock = type { i64 }
%struct.net = type { i32 }
%struct.TYPE_3__ = type { i32, i32 }

@AF_INET = common dso_local global i32 0, align 4
@ICMP_MIB_INERRORS = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@EPROTO = common dso_local global i32 0, align 4
@NR_ICMP_UNREACH = common dso_local global i32 0, align 4
@ICMP_FRAG_NEEDED = common dso_local global i32 0, align 4
@ICMP_PROT_UNREACH = common dso_local global i32 0, align 4
@icmp_err_convert = common dso_local global %struct.TYPE_4__* null, align 8
@ICMP_EXC_FRAGTIME = common dso_local global i32 0, align 4
@EHOSTUNREACH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sctp_v4_err(%struct.sk_buff* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.iphdr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.sock*, align 8
  %11 = alloca %struct.sctp_association*, align 8
  %12 = alloca %struct.sctp_transport*, align 8
  %13 = alloca %struct.inet_sock*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.net*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store i32 %1, i32* %5, align 4
  %18 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %19 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %18, i32 0, i32 3
  %20 = load i64, i64* %19, align 8
  %21 = inttoptr i64 %20 to %struct.iphdr*
  store %struct.iphdr* %21, %struct.iphdr** %6, align 8
  %22 = load %struct.iphdr*, %struct.iphdr** %6, align 8
  %23 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = mul nsw i32 %24, 4
  store i32 %25, i32* %7, align 4
  %26 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %27 = call %struct.TYPE_3__* @icmp_hdr(%struct.sk_buff* %26)
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %8, align 4
  %30 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %31 = call %struct.TYPE_3__* @icmp_hdr(%struct.sk_buff* %30)
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %9, align 4
  store %struct.sctp_association* null, %struct.sctp_association** %11, align 8
  %34 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %35 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = call %struct.net* @dev_net(i32 %36)
  store %struct.net* %37, %struct.net** %17, align 8
  %38 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %39 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %38, i32 0, i32 1
  %40 = load i8*, i8** %39, align 8
  store i8* %40, i8** %14, align 8
  %41 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %42 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %41, i32 0, i32 0
  %43 = load i8*, i8** %42, align 8
  store i8* %43, i8** %15, align 8
  %44 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %45 = call i32 @skb_reset_network_header(%struct.sk_buff* %44)
  %46 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %47 = load i32, i32* %7, align 4
  %48 = call i32 @skb_set_transport_header(%struct.sk_buff* %46, i32 %47)
  %49 = load %struct.net*, %struct.net** %17, align 8
  %50 = load i32, i32* @AF_INET, align 4
  %51 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %52 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %53 = call i32 @sctp_hdr(%struct.sk_buff* %52)
  %54 = call %struct.sock* @sctp_err_lookup(%struct.net* %49, i32 %50, %struct.sk_buff* %51, i32 %53, %struct.sctp_association** %11, %struct.sctp_transport** %12)
  store %struct.sock* %54, %struct.sock** %10, align 8
  %55 = load i8*, i8** %14, align 8
  %56 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %57 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %56, i32 0, i32 1
  store i8* %55, i8** %57, align 8
  %58 = load i8*, i8** %15, align 8
  %59 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %60 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %59, i32 0, i32 0
  store i8* %58, i8** %60, align 8
  %61 = load %struct.sock*, %struct.sock** %10, align 8
  %62 = icmp ne %struct.sock* %61, null
  br i1 %62, label %69, label %63

63:                                               ; preds = %2
  %64 = load %struct.net*, %struct.net** %17, align 8
  %65 = load i32, i32* @ICMP_MIB_INERRORS, align 4
  %66 = call i32 @__ICMP_INC_STATS(%struct.net* %64, i32 %65)
  %67 = load i32, i32* @ENOENT, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %3, align 4
  br label %148

69:                                               ; preds = %2
  %70 = load i32, i32* %8, align 4
  switch i32 %70, label %118 [
    i32 130, label %71
    i32 131, label %73
    i32 128, label %106
    i32 129, label %113
  ]

71:                                               ; preds = %69
  %72 = load i32, i32* @EPROTO, align 4
  store i32 %72, i32* %16, align 4
  br label %119

73:                                               ; preds = %69
  %74 = load i32, i32* %9, align 4
  %75 = load i32, i32* @NR_ICMP_UNREACH, align 4
  %76 = icmp sgt i32 %74, %75
  br i1 %76, label %77, label %78

77:                                               ; preds = %73
  br label %144

78:                                               ; preds = %73
  %79 = load i32, i32* @ICMP_FRAG_NEEDED, align 4
  %80 = load i32, i32* %9, align 4
  %81 = icmp eq i32 %79, %80
  br i1 %81, label %82, label %89

82:                                               ; preds = %78
  %83 = load %struct.sock*, %struct.sock** %10, align 8
  %84 = load %struct.sctp_association*, %struct.sctp_association** %11, align 8
  %85 = load %struct.sctp_transport*, %struct.sctp_transport** %12, align 8
  %86 = load i32, i32* %5, align 4
  %87 = call i32 @SCTP_TRUNC4(i32 %86)
  %88 = call i32 @sctp_icmp_frag_needed(%struct.sock* %83, %struct.sctp_association* %84, %struct.sctp_transport* %85, i32 %87)
  br label %144

89:                                               ; preds = %78
  %90 = load i32, i32* @ICMP_PROT_UNREACH, align 4
  %91 = load i32, i32* %9, align 4
  %92 = icmp eq i32 %90, %91
  br i1 %92, label %93, label %98

93:                                               ; preds = %89
  %94 = load %struct.sock*, %struct.sock** %10, align 8
  %95 = load %struct.sctp_association*, %struct.sctp_association** %11, align 8
  %96 = load %struct.sctp_transport*, %struct.sctp_transport** %12, align 8
  %97 = call i32 @sctp_icmp_proto_unreachable(%struct.sock* %94, %struct.sctp_association* %95, %struct.sctp_transport* %96)
  br label %144

98:                                               ; preds = %89
  br label %99

99:                                               ; preds = %98
  %100 = load %struct.TYPE_4__*, %struct.TYPE_4__** @icmp_err_convert, align 8
  %101 = load i32, i32* %9, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  store i32 %105, i32* %16, align 4
  br label %119

106:                                              ; preds = %69
  %107 = load i32, i32* @ICMP_EXC_FRAGTIME, align 4
  %108 = load i32, i32* %9, align 4
  %109 = icmp eq i32 %107, %108
  br i1 %109, label %110, label %111

110:                                              ; preds = %106
  br label %144

111:                                              ; preds = %106
  %112 = load i32, i32* @EHOSTUNREACH, align 4
  store i32 %112, i32* %16, align 4
  br label %119

113:                                              ; preds = %69
  %114 = load %struct.sock*, %struct.sock** %10, align 8
  %115 = load %struct.sctp_transport*, %struct.sctp_transport** %12, align 8
  %116 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %117 = call i32 @sctp_icmp_redirect(%struct.sock* %114, %struct.sctp_transport* %115, %struct.sk_buff* %116)
  br label %118

118:                                              ; preds = %69, %113
  br label %144

119:                                              ; preds = %111, %99, %71
  %120 = load %struct.sock*, %struct.sock** %10, align 8
  %121 = call %struct.inet_sock* @inet_sk(%struct.sock* %120)
  store %struct.inet_sock* %121, %struct.inet_sock** %13, align 8
  %122 = load %struct.sock*, %struct.sock** %10, align 8
  %123 = call i32 @sock_owned_by_user(%struct.sock* %122)
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %139, label %125

125:                                              ; preds = %119
  %126 = load %struct.inet_sock*, %struct.inet_sock** %13, align 8
  %127 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %139

130:                                              ; preds = %125
  %131 = load i32, i32* %16, align 4
  %132 = load %struct.sock*, %struct.sock** %10, align 8
  %133 = getelementptr inbounds %struct.sock, %struct.sock* %132, i32 0, i32 0
  store i32 %131, i32* %133, align 8
  %134 = load %struct.sock*, %struct.sock** %10, align 8
  %135 = getelementptr inbounds %struct.sock, %struct.sock* %134, i32 0, i32 2
  %136 = load i32 (%struct.sock*)*, i32 (%struct.sock*)** %135, align 8
  %137 = load %struct.sock*, %struct.sock** %10, align 8
  %138 = call i32 %136(%struct.sock* %137)
  br label %143

139:                                              ; preds = %125, %119
  %140 = load i32, i32* %16, align 4
  %141 = load %struct.sock*, %struct.sock** %10, align 8
  %142 = getelementptr inbounds %struct.sock, %struct.sock* %141, i32 0, i32 1
  store i32 %140, i32* %142, align 4
  br label %143

143:                                              ; preds = %139, %130
  br label %144

144:                                              ; preds = %143, %118, %110, %93, %82, %77
  %145 = load %struct.sock*, %struct.sock** %10, align 8
  %146 = load %struct.sctp_transport*, %struct.sctp_transport** %12, align 8
  %147 = call i32 @sctp_err_finish(%struct.sock* %145, %struct.sctp_transport* %146)
  store i32 0, i32* %3, align 4
  br label %148

148:                                              ; preds = %144, %63
  %149 = load i32, i32* %3, align 4
  ret i32 %149
}

declare dso_local %struct.TYPE_3__* @icmp_hdr(%struct.sk_buff*) #1

declare dso_local %struct.net* @dev_net(i32) #1

declare dso_local i32 @skb_reset_network_header(%struct.sk_buff*) #1

declare dso_local i32 @skb_set_transport_header(%struct.sk_buff*, i32) #1

declare dso_local %struct.sock* @sctp_err_lookup(%struct.net*, i32, %struct.sk_buff*, i32, %struct.sctp_association**, %struct.sctp_transport**) #1

declare dso_local i32 @sctp_hdr(%struct.sk_buff*) #1

declare dso_local i32 @__ICMP_INC_STATS(%struct.net*, i32) #1

declare dso_local i32 @sctp_icmp_frag_needed(%struct.sock*, %struct.sctp_association*, %struct.sctp_transport*, i32) #1

declare dso_local i32 @SCTP_TRUNC4(i32) #1

declare dso_local i32 @sctp_icmp_proto_unreachable(%struct.sock*, %struct.sctp_association*, %struct.sctp_transport*) #1

declare dso_local i32 @sctp_icmp_redirect(%struct.sock*, %struct.sctp_transport*, %struct.sk_buff*) #1

declare dso_local %struct.inet_sock* @inet_sk(%struct.sock*) #1

declare dso_local i32 @sock_owned_by_user(%struct.sock*) #1

declare dso_local i32 @sctp_err_finish(%struct.sock*, %struct.sctp_transport*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
