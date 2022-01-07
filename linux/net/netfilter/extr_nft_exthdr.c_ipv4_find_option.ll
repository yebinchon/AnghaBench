; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nft_exthdr.c_ipv4_find_option.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nft_exthdr.c_ipv4_find_option.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.sk_buff = type { i32 }
%struct.ip_options = type { i32, i32, i32, i32, i32, i32 }
%struct.iphdr = type { i32 }

@EBADMSG = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*, %struct.sk_buff*, i32*, i32)* @ipv4_find_option to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipv4_find_option(%struct.net* %0, %struct.sk_buff* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca [64 x i8], align 16
  %11 = alloca %struct.ip_options*, align 8
  %12 = alloca %struct.iphdr*, align 8
  %13 = alloca %struct.iphdr, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.net* %0, %struct.net** %6, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %18 = getelementptr inbounds [64 x i8], [64 x i8]* %10, i64 0, i64 0
  %19 = bitcast i8* %18 to %struct.ip_options*
  store %struct.ip_options* %19, %struct.ip_options** %11, align 8
  store i32 0, i32* %15, align 4
  %20 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %21 = call %struct.iphdr* @skb_header_pointer(%struct.sk_buff* %20, i32 0, i32 4, %struct.iphdr* %13)
  store %struct.iphdr* %21, %struct.iphdr** %12, align 8
  %22 = load %struct.iphdr*, %struct.iphdr** %12, align 8
  %23 = icmp ne %struct.iphdr* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %4
  %25 = load i32, i32* @EBADMSG, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %5, align 4
  br label %136

27:                                               ; preds = %4
  store i32 4, i32* %14, align 4
  %28 = load %struct.iphdr*, %struct.iphdr** %12, align 8
  %29 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = mul nsw i32 %30, 4
  %32 = sub nsw i32 %31, 4
  store i32 %32, i32* %17, align 4
  %33 = load i32, i32* %17, align 4
  %34 = icmp sle i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %27
  %36 = load i32, i32* @ENOENT, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %5, align 4
  br label %136

38:                                               ; preds = %27
  %39 = load %struct.ip_options*, %struct.ip_options** %11, align 8
  %40 = call i32 @memset(%struct.ip_options* %39, i32 0, i32 24)
  %41 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %42 = load i32, i32* %14, align 4
  %43 = load %struct.ip_options*, %struct.ip_options** %11, align 8
  %44 = getelementptr inbounds %struct.ip_options, %struct.ip_options* %43, i32 0, i32 5
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %17, align 4
  %47 = call i64 @skb_copy_bits(%struct.sk_buff* %41, i32 %42, i32 %45, i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %38
  %50 = load i32, i32* @EBADMSG, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %5, align 4
  br label %136

52:                                               ; preds = %38
  %53 = load i32, i32* %17, align 4
  %54 = load %struct.ip_options*, %struct.ip_options** %11, align 8
  %55 = getelementptr inbounds %struct.ip_options, %struct.ip_options* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 4
  %56 = load %struct.net*, %struct.net** %6, align 8
  %57 = load %struct.ip_options*, %struct.ip_options** %11, align 8
  %58 = call i64 @__ip_options_compile(%struct.net* %56, %struct.ip_options* %57, i32* null, i32* %16)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %52
  %61 = load i32, i32* @EBADMSG, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %5, align 4
  br label %136

63:                                               ; preds = %52
  %64 = load i32, i32* %9, align 4
  switch i32 %64, label %123 [
    i32 128, label %65
    i32 131, label %65
    i32 129, label %97
    i32 130, label %110
  ]

65:                                               ; preds = %63, %63
  %66 = load %struct.ip_options*, %struct.ip_options** %11, align 8
  %67 = getelementptr inbounds %struct.ip_options, %struct.ip_options* %66, i32 0, i32 4
  %68 = load i32, i32* %67, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %71, label %70

70:                                               ; preds = %65
  br label %126

71:                                               ; preds = %65
  %72 = load i32, i32* %9, align 4
  %73 = icmp eq i32 %72, 128
  br i1 %73, label %74, label %78

74:                                               ; preds = %71
  %75 = load %struct.ip_options*, %struct.ip_options** %11, align 8
  %76 = getelementptr inbounds %struct.ip_options, %struct.ip_options* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  br label %85

78:                                               ; preds = %71
  %79 = load %struct.ip_options*, %struct.ip_options** %11, align 8
  %80 = getelementptr inbounds %struct.ip_options, %struct.ip_options* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = icmp ne i32 %81, 0
  %83 = xor i1 %82, true
  %84 = zext i1 %83 to i32
  br label %85

85:                                               ; preds = %78, %74
  %86 = phi i32 [ %77, %74 ], [ %84, %78 ]
  store i32 %86, i32* %15, align 4
  %87 = load i32, i32* %15, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %96

89:                                               ; preds = %85
  %90 = load %struct.ip_options*, %struct.ip_options** %11, align 8
  %91 = getelementptr inbounds %struct.ip_options, %struct.ip_options* %90, i32 0, i32 4
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* %14, align 4
  %94 = add i32 %92, %93
  %95 = load i32*, i32** %8, align 8
  store i32 %94, i32* %95, align 4
  br label %96

96:                                               ; preds = %89, %85
  br label %126

97:                                               ; preds = %63
  %98 = load %struct.ip_options*, %struct.ip_options** %11, align 8
  %99 = getelementptr inbounds %struct.ip_options, %struct.ip_options* %98, i32 0, i32 3
  %100 = load i32, i32* %99, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %103, label %102

102:                                              ; preds = %97
  br label %126

103:                                              ; preds = %97
  %104 = load %struct.ip_options*, %struct.ip_options** %11, align 8
  %105 = getelementptr inbounds %struct.ip_options, %struct.ip_options* %104, i32 0, i32 3
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* %14, align 4
  %108 = add i32 %106, %107
  %109 = load i32*, i32** %8, align 8
  store i32 %108, i32* %109, align 4
  store i32 1, i32* %15, align 4
  br label %126

110:                                              ; preds = %63
  %111 = load %struct.ip_options*, %struct.ip_options** %11, align 8
  %112 = getelementptr inbounds %struct.ip_options, %struct.ip_options* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %116, label %115

115:                                              ; preds = %110
  br label %126

116:                                              ; preds = %110
  %117 = load %struct.ip_options*, %struct.ip_options** %11, align 8
  %118 = getelementptr inbounds %struct.ip_options, %struct.ip_options* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* %14, align 4
  %121 = add i32 %119, %120
  %122 = load i32*, i32** %8, align 8
  store i32 %121, i32* %122, align 4
  store i32 1, i32* %15, align 4
  br label %126

123:                                              ; preds = %63
  %124 = load i32, i32* @EOPNOTSUPP, align 4
  %125 = sub nsw i32 0, %124
  store i32 %125, i32* %5, align 4
  br label %136

126:                                              ; preds = %116, %115, %103, %102, %96, %70
  %127 = load i32, i32* %15, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %131

129:                                              ; preds = %126
  %130 = load i32, i32* %9, align 4
  br label %134

131:                                              ; preds = %126
  %132 = load i32, i32* @ENOENT, align 4
  %133 = sub nsw i32 0, %132
  br label %134

134:                                              ; preds = %131, %129
  %135 = phi i32 [ %130, %129 ], [ %133, %131 ]
  store i32 %135, i32* %5, align 4
  br label %136

136:                                              ; preds = %134, %123, %60, %49, %35, %24
  %137 = load i32, i32* %5, align 4
  ret i32 %137
}

declare dso_local %struct.iphdr* @skb_header_pointer(%struct.sk_buff*, i32, i32, %struct.iphdr*) #1

declare dso_local i32 @memset(%struct.ip_options*, i32, i32) #1

declare dso_local i64 @skb_copy_bits(%struct.sk_buff*, i32, i32, i32) #1

declare dso_local i64 @__ip_options_compile(%struct.net*, %struct.ip_options*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
