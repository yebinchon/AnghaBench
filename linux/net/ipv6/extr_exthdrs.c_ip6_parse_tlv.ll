; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_exthdrs.c_ip6_parse_tlv.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_exthdrs.c_ip6_parse_tlv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tlvtype_proc = type { i8, i32 (%struct.sk_buff*, i32)* }
%struct.sk_buff = type opaque
%struct.sk_buff.0 = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tlvtype_proc*, %struct.sk_buff.0*, i32)* @ip6_parse_tlv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ip6_parse_tlv(%struct.tlvtype_proc* %0, %struct.sk_buff.0* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.tlvtype_proc*, align 8
  %6 = alloca %struct.sk_buff.0*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.tlvtype_proc*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.tlvtype_proc* %0, %struct.tlvtype_proc** %5, align 8
  store %struct.sk_buff.0* %1, %struct.sk_buff.0** %6, align 8
  store i32 %2, i32* %7, align 4
  %17 = load %struct.sk_buff.0*, %struct.sk_buff.0** %6, align 8
  %18 = call i32* @skb_transport_header(%struct.sk_buff.0* %17)
  %19 = getelementptr inbounds i32, i32* %18, i64 1
  %20 = load i32, i32* %19, align 4
  %21 = add nsw i32 %20, 1
  %22 = shl i32 %21, 3
  store i32 %22, i32* %8, align 4
  %23 = load %struct.sk_buff.0*, %struct.sk_buff.0** %6, align 8
  %24 = call i8* @skb_network_header(%struct.sk_buff.0* %23)
  store i8* %24, i8** %9, align 8
  %25 = load %struct.sk_buff.0*, %struct.sk_buff.0** %6, align 8
  %26 = call i32 @skb_network_header_len(%struct.sk_buff.0* %25)
  store i32 %26, i32* %10, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %27 = load i32, i32* %7, align 4
  %28 = icmp slt i32 %27, 0
  %29 = zext i1 %28 to i32
  %30 = call i64 @unlikely(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %3
  store i32 1, i32* %12, align 4
  %33 = load i32, i32* %7, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %7, align 4
  br label %35

35:                                               ; preds = %32, %3
  %36 = load %struct.sk_buff.0*, %struct.sk_buff.0** %6, align 8
  %37 = call i64 @skb_transport_offset(%struct.sk_buff.0* %36)
  %38 = load i32, i32* %8, align 4
  %39 = sext i32 %38 to i64
  %40 = add nsw i64 %37, %39
  %41 = load %struct.sk_buff.0*, %struct.sk_buff.0** %6, align 8
  %42 = call i64 @skb_headlen(%struct.sk_buff.0* %41)
  %43 = icmp sgt i64 %40, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %35
  br label %176

45:                                               ; preds = %35
  %46 = load i32, i32* %10, align 4
  %47 = add nsw i32 %46, 2
  store i32 %47, i32* %10, align 4
  %48 = load i32, i32* %8, align 4
  %49 = sub nsw i32 %48, 2
  store i32 %49, i32* %8, align 4
  br label %50

50:                                               ; preds = %164, %45
  %51 = load i32, i32* %8, align 4
  %52 = icmp sgt i32 %51, 0
  br i1 %52, label %53, label %171

53:                                               ; preds = %50
  %54 = load i8*, i8** %9, align 8
  %55 = load i32, i32* %10, align 4
  %56 = add nsw i32 %55, 1
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i8, i8* %54, i64 %57
  %59 = load i8, i8* %58, align 1
  %60 = zext i8 %59 to i32
  %61 = add nsw i32 %60, 2
  store i32 %61, i32* %15, align 4
  %62 = load i8*, i8** %9, align 8
  %63 = load i32, i32* %10, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i8, i8* %62, i64 %64
  %66 = load i8, i8* %65, align 1
  %67 = zext i8 %66 to i32
  switch i32 %67, label %103 [
    i32 129, label %68
    i32 128, label %75
  ]

68:                                               ; preds = %53
  store i32 1, i32* %15, align 4
  %69 = load i32, i32* %14, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %14, align 4
  %71 = load i32, i32* %14, align 4
  %72 = icmp sgt i32 %71, 7
  br i1 %72, label %73, label %74

73:                                               ; preds = %68
  br label %176

74:                                               ; preds = %68
  br label %164

75:                                               ; preds = %53
  %76 = load i32, i32* %15, align 4
  %77 = load i32, i32* %14, align 4
  %78 = add nsw i32 %77, %76
  store i32 %78, i32* %14, align 4
  %79 = load i32, i32* %14, align 4
  %80 = icmp sgt i32 %79, 7
  br i1 %80, label %81, label %82

81:                                               ; preds = %75
  br label %176

82:                                               ; preds = %75
  store i32 2, i32* %16, align 4
  br label %83

83:                                               ; preds = %99, %82
  %84 = load i32, i32* %16, align 4
  %85 = load i32, i32* %15, align 4
  %86 = icmp slt i32 %84, %85
  br i1 %86, label %87, label %102

87:                                               ; preds = %83
  %88 = load i8*, i8** %9, align 8
  %89 = load i32, i32* %10, align 4
  %90 = load i32, i32* %16, align 4
  %91 = add nsw i32 %89, %90
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i8, i8* %88, i64 %92
  %94 = load i8, i8* %93, align 1
  %95 = zext i8 %94 to i32
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %87
  br label %176

98:                                               ; preds = %87
  br label %99

99:                                               ; preds = %98
  %100 = load i32, i32* %16, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %16, align 4
  br label %83

102:                                              ; preds = %83
  br label %164

103:                                              ; preds = %53
  %104 = load i32, i32* %15, align 4
  %105 = load i32, i32* %8, align 4
  %106 = icmp sgt i32 %104, %105
  br i1 %106, label %107, label %108

107:                                              ; preds = %103
  br label %176

108:                                              ; preds = %103
  %109 = load i32, i32* %13, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %13, align 4
  %111 = load i32, i32* %13, align 4
  %112 = load i32, i32* %7, align 4
  %113 = icmp sgt i32 %111, %112
  br i1 %113, label %114, label %115

114:                                              ; preds = %108
  br label %176

115:                                              ; preds = %108
  %116 = load %struct.tlvtype_proc*, %struct.tlvtype_proc** %5, align 8
  store %struct.tlvtype_proc* %116, %struct.tlvtype_proc** %11, align 8
  br label %117

117:                                              ; preds = %147, %115
  %118 = load %struct.tlvtype_proc*, %struct.tlvtype_proc** %11, align 8
  %119 = getelementptr inbounds %struct.tlvtype_proc, %struct.tlvtype_proc* %118, i32 0, i32 0
  %120 = load i8, i8* %119, align 8
  %121 = zext i8 %120 to i32
  %122 = icmp sge i32 %121, 0
  br i1 %122, label %123, label %150

123:                                              ; preds = %117
  %124 = load %struct.tlvtype_proc*, %struct.tlvtype_proc** %11, align 8
  %125 = getelementptr inbounds %struct.tlvtype_proc, %struct.tlvtype_proc* %124, i32 0, i32 0
  %126 = load i8, i8* %125, align 8
  %127 = zext i8 %126 to i32
  %128 = load i8*, i8** %9, align 8
  %129 = load i32, i32* %10, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i8, i8* %128, i64 %130
  %132 = load i8, i8* %131, align 1
  %133 = zext i8 %132 to i32
  %134 = icmp eq i32 %127, %133
  br i1 %134, label %135, label %146

135:                                              ; preds = %123
  %136 = load %struct.tlvtype_proc*, %struct.tlvtype_proc** %11, align 8
  %137 = getelementptr inbounds %struct.tlvtype_proc, %struct.tlvtype_proc* %136, i32 0, i32 1
  %138 = load i32 (%struct.sk_buff*, i32)*, i32 (%struct.sk_buff*, i32)** %137, align 8
  %139 = load %struct.sk_buff.0*, %struct.sk_buff.0** %6, align 8
  %140 = bitcast %struct.sk_buff.0* %139 to %struct.sk_buff*
  %141 = load i32, i32* %10, align 4
  %142 = call i32 %138(%struct.sk_buff* %140, i32 %141)
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %144, label %145

144:                                              ; preds = %135
  store i32 0, i32* %4, align 4
  br label %179

145:                                              ; preds = %135
  br label %150

146:                                              ; preds = %123
  br label %147

147:                                              ; preds = %146
  %148 = load %struct.tlvtype_proc*, %struct.tlvtype_proc** %11, align 8
  %149 = getelementptr inbounds %struct.tlvtype_proc, %struct.tlvtype_proc* %148, i32 1
  store %struct.tlvtype_proc* %149, %struct.tlvtype_proc** %11, align 8
  br label %117

150:                                              ; preds = %145, %117
  %151 = load %struct.tlvtype_proc*, %struct.tlvtype_proc** %11, align 8
  %152 = getelementptr inbounds %struct.tlvtype_proc, %struct.tlvtype_proc* %151, i32 0, i32 0
  %153 = load i8, i8* %152, align 8
  %154 = zext i8 %153 to i32
  %155 = icmp slt i32 %154, 0
  br i1 %155, label %156, label %163

156:                                              ; preds = %150
  %157 = load %struct.sk_buff.0*, %struct.sk_buff.0** %6, align 8
  %158 = load i32, i32* %10, align 4
  %159 = load i32, i32* %12, align 4
  %160 = call i32 @ip6_tlvopt_unknown(%struct.sk_buff.0* %157, i32 %158, i32 %159)
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %163, label %162

162:                                              ; preds = %156
  store i32 0, i32* %4, align 4
  br label %179

163:                                              ; preds = %156, %150
  store i32 0, i32* %14, align 4
  br label %164

164:                                              ; preds = %163, %102, %74
  %165 = load i32, i32* %15, align 4
  %166 = load i32, i32* %10, align 4
  %167 = add nsw i32 %166, %165
  store i32 %167, i32* %10, align 4
  %168 = load i32, i32* %15, align 4
  %169 = load i32, i32* %8, align 4
  %170 = sub nsw i32 %169, %168
  store i32 %170, i32* %8, align 4
  br label %50

171:                                              ; preds = %50
  %172 = load i32, i32* %8, align 4
  %173 = icmp eq i32 %172, 0
  br i1 %173, label %174, label %175

174:                                              ; preds = %171
  store i32 1, i32* %4, align 4
  br label %179

175:                                              ; preds = %171
  br label %176

176:                                              ; preds = %175, %114, %107, %97, %81, %73, %44
  %177 = load %struct.sk_buff.0*, %struct.sk_buff.0** %6, align 8
  %178 = call i32 @kfree_skb(%struct.sk_buff.0* %177)
  store i32 0, i32* %4, align 4
  br label %179

179:                                              ; preds = %176, %174, %162, %144
  %180 = load i32, i32* %4, align 4
  ret i32 %180
}

declare dso_local i32* @skb_transport_header(%struct.sk_buff.0*) #1

declare dso_local i8* @skb_network_header(%struct.sk_buff.0*) #1

declare dso_local i32 @skb_network_header_len(%struct.sk_buff.0*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @skb_transport_offset(%struct.sk_buff.0*) #1

declare dso_local i64 @skb_headlen(%struct.sk_buff.0*) #1

declare dso_local i32 @ip6_tlvopt_unknown(%struct.sk_buff.0*, i32, i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff.0*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
