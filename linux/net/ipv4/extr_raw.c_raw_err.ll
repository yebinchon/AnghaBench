; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_raw.c_raw_err.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_raw.c_raw_err.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }
%struct.sock = type { i64, i32, i32 (%struct.sock*)* }
%struct.sk_buff = type { i32* }
%struct.inet_sock = type { i64, i64, i32 }
%struct.iphdr = type { i32 }
%struct.TYPE_3__ = type { i32, i32 }

@ICMP_FRAG_NEEDED = common dso_local global i32 0, align 4
@ICMP_REDIRECT = common dso_local global i32 0, align 4
@TCP_ESTABLISHED = common dso_local global i64 0, align 8
@EHOSTUNREACH = common dso_local global i32 0, align 4
@EPROTO = common dso_local global i32 0, align 4
@NR_ICMP_UNREACH = common dso_local global i32 0, align 4
@icmp_err_convert = common dso_local global %struct.TYPE_4__* null, align 8
@IP_PMTUDISC_DONT = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*, %struct.sk_buff*, i32)* @raw_err to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @raw_err(%struct.sock* %0, %struct.sk_buff* %1, i32 %2) #0 {
  %4 = alloca %struct.sock*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.inet_sock*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.iphdr*, align 8
  %13 = alloca i32*, align 8
  store %struct.sock* %0, %struct.sock** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  store i32 %2, i32* %6, align 4
  %14 = load %struct.sock*, %struct.sock** %4, align 8
  %15 = call %struct.inet_sock* @inet_sk(%struct.sock* %14)
  store %struct.inet_sock* %15, %struct.inet_sock** %7, align 8
  %16 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %17 = call %struct.TYPE_3__* @icmp_hdr(%struct.sk_buff* %16)
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %8, align 4
  %20 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %21 = call %struct.TYPE_3__* @icmp_hdr(%struct.sk_buff* %20)
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %24 = load i32, i32* %8, align 4
  %25 = icmp eq i32 %24, 131
  br i1 %25, label %26, label %35

26:                                               ; preds = %3
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* @ICMP_FRAG_NEEDED, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %35

30:                                               ; preds = %26
  %31 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %32 = load %struct.sock*, %struct.sock** %4, align 8
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @ipv4_sk_update_pmtu(%struct.sk_buff* %31, %struct.sock* %32, i32 %33)
  br label %44

35:                                               ; preds = %26, %3
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* @ICMP_REDIRECT, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %43

39:                                               ; preds = %35
  %40 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %41 = load %struct.sock*, %struct.sock** %4, align 8
  %42 = call i32 @ipv4_sk_redirect(%struct.sk_buff* %40, %struct.sock* %41)
  br label %146

43:                                               ; preds = %35
  br label %44

44:                                               ; preds = %43, %30
  %45 = load %struct.inet_sock*, %struct.inet_sock** %7, align 8
  %46 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %56, label %49

49:                                               ; preds = %44
  %50 = load %struct.sock*, %struct.sock** %4, align 8
  %51 = getelementptr inbounds %struct.sock, %struct.sock* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @TCP_ESTABLISHED, align 8
  %54 = icmp ne i64 %52, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %49
  br label %146

56:                                               ; preds = %49, %44
  %57 = load i32, i32* %8, align 4
  switch i32 %57, label %58 [
    i32 128, label %59
    i32 129, label %61
    i32 130, label %62
    i32 131, label %64
  ]

58:                                               ; preds = %56
  br label %59

59:                                               ; preds = %56, %58
  %60 = load i32, i32* @EHOSTUNREACH, align 4
  store i32 %60, i32* %10, align 4
  br label %95

61:                                               ; preds = %56
  br label %146

62:                                               ; preds = %56
  %63 = load i32, i32* @EPROTO, align 4
  store i32 %63, i32* %10, align 4
  store i32 1, i32* %11, align 4
  br label %95

64:                                               ; preds = %56
  %65 = load i32, i32* @EHOSTUNREACH, align 4
  store i32 %65, i32* %10, align 4
  %66 = load i32, i32* %9, align 4
  %67 = load i32, i32* @NR_ICMP_UNREACH, align 4
  %68 = icmp sgt i32 %66, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %64
  br label %95

70:                                               ; preds = %64
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** @icmp_err_convert, align 8
  %72 = load i32, i32* %9, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  store i32 %76, i32* %10, align 4
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** @icmp_err_convert, align 8
  %78 = load i32, i32* %9, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  store i32 %82, i32* %11, align 4
  %83 = load i32, i32* %9, align 4
  %84 = load i32, i32* @ICMP_FRAG_NEEDED, align 4
  %85 = icmp eq i32 %83, %84
  br i1 %85, label %86, label %94

86:                                               ; preds = %70
  %87 = load %struct.inet_sock*, %struct.inet_sock** %7, align 8
  %88 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* @IP_PMTUDISC_DONT, align 4
  %91 = icmp ne i32 %89, %90
  %92 = zext i1 %91 to i32
  store i32 %92, i32* %11, align 4
  %93 = load i32, i32* @EMSGSIZE, align 4
  store i32 %93, i32* %10, align 4
  br label %94

94:                                               ; preds = %86, %70
  br label %95

95:                                               ; preds = %94, %69, %62, %59
  %96 = load %struct.inet_sock*, %struct.inet_sock** %7, align 8
  %97 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %129

100:                                              ; preds = %95
  %101 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %102 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %101, i32 0, i32 0
  %103 = load i32*, i32** %102, align 8
  %104 = bitcast i32* %103 to %struct.iphdr*
  store %struct.iphdr* %104, %struct.iphdr** %12, align 8
  %105 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %106 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %105, i32 0, i32 0
  %107 = load i32*, i32** %106, align 8
  %108 = load %struct.iphdr*, %struct.iphdr** %12, align 8
  %109 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = shl i32 %110, 2
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i32, i32* %107, i64 %112
  store i32* %113, i32** %13, align 8
  %114 = load %struct.inet_sock*, %struct.inet_sock** %7, align 8
  %115 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %114, i32 0, i32 1
  %116 = load i64, i64* %115, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %122

118:                                              ; preds = %100
  %119 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %120 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %119, i32 0, i32 0
  %121 = load i32*, i32** %120, align 8
  store i32* %121, i32** %13, align 8
  br label %122

122:                                              ; preds = %118, %100
  %123 = load %struct.sock*, %struct.sock** %4, align 8
  %124 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %125 = load i32, i32* %10, align 4
  %126 = load i32, i32* %6, align 4
  %127 = load i32*, i32** %13, align 8
  %128 = call i32 @ip_icmp_error(%struct.sock* %123, %struct.sk_buff* %124, i32 %125, i32 0, i32 %126, i32* %127)
  br label %129

129:                                              ; preds = %122, %95
  %130 = load %struct.inet_sock*, %struct.inet_sock** %7, align 8
  %131 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %137, label %134

134:                                              ; preds = %129
  %135 = load i32, i32* %11, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %146

137:                                              ; preds = %134, %129
  %138 = load i32, i32* %10, align 4
  %139 = load %struct.sock*, %struct.sock** %4, align 8
  %140 = getelementptr inbounds %struct.sock, %struct.sock* %139, i32 0, i32 1
  store i32 %138, i32* %140, align 8
  %141 = load %struct.sock*, %struct.sock** %4, align 8
  %142 = getelementptr inbounds %struct.sock, %struct.sock* %141, i32 0, i32 2
  %143 = load i32 (%struct.sock*)*, i32 (%struct.sock*)** %142, align 8
  %144 = load %struct.sock*, %struct.sock** %4, align 8
  %145 = call i32 %143(%struct.sock* %144)
  br label %146

146:                                              ; preds = %39, %55, %61, %137, %134
  ret void
}

declare dso_local %struct.inet_sock* @inet_sk(%struct.sock*) #1

declare dso_local %struct.TYPE_3__* @icmp_hdr(%struct.sk_buff*) #1

declare dso_local i32 @ipv4_sk_update_pmtu(%struct.sk_buff*, %struct.sock*, i32) #1

declare dso_local i32 @ipv4_sk_redirect(%struct.sk_buff*, %struct.sock*) #1

declare dso_local i32 @ip_icmp_error(%struct.sock*, %struct.sk_buff*, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
