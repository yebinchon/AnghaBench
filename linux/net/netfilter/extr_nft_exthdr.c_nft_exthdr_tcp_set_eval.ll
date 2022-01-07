; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nft_exthdr.c_nft_exthdr_tcp_set_eval.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nft_exthdr.c_nft_exthdr_tcp_set_eval.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nft_expr = type { i32 }
%struct.nft_regs = type { i8** }
%struct.nft_pktinfo = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.nft_exthdr = type { i64, i32, i32, i64 }
%struct.tcphdr = type { i32 }
%union.anon = type { i64 }

@MAX_TCP_OPTION_SPACE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nft_expr*, %struct.nft_regs*, %struct.nft_pktinfo*)* @nft_exthdr_tcp_set_eval to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nft_exthdr_tcp_set_eval(%struct.nft_expr* %0, %struct.nft_regs* %1, %struct.nft_pktinfo* %2) #0 {
  %4 = alloca %struct.nft_expr*, align 8
  %5 = alloca %struct.nft_regs*, align 8
  %6 = alloca %struct.nft_pktinfo*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.nft_exthdr*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.tcphdr*, align 8
  %15 = alloca i64*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca %union.anon, align 8
  %19 = alloca %union.anon, align 8
  store %struct.nft_expr* %0, %struct.nft_expr** %4, align 8
  store %struct.nft_regs* %1, %struct.nft_regs** %5, align 8
  store %struct.nft_pktinfo* %2, %struct.nft_pktinfo** %6, align 8
  %20 = load i32, i32* @MAX_TCP_OPTION_SPACE, align 4
  %21 = sext i32 %20 to i64
  %22 = add i64 4, %21
  %23 = call i8* @llvm.stacksave()
  store i8* %23, i8** %7, align 8
  %24 = alloca i64, i64 %22, align 16
  store i64 %22, i64* %8, align 8
  %25 = load %struct.nft_expr*, %struct.nft_expr** %4, align 8
  %26 = call %struct.nft_exthdr* @nft_expr_priv(%struct.nft_expr* %25)
  store %struct.nft_exthdr* %26, %struct.nft_exthdr** %9, align 8
  %27 = load %struct.nft_pktinfo*, %struct.nft_pktinfo** %6, align 8
  %28 = mul nuw i64 8, %22
  %29 = trunc i64 %28 to i32
  %30 = call %struct.tcphdr* @nft_tcp_header_pointer(%struct.nft_pktinfo* %27, i32 %29, i64* %24, i32* %12)
  store %struct.tcphdr* %30, %struct.tcphdr** %14, align 8
  %31 = load %struct.tcphdr*, %struct.tcphdr** %14, align 8
  %32 = icmp ne %struct.tcphdr* %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %3
  store i32 1, i32* %17, align 4
  br label %209

34:                                               ; preds = %3
  %35 = load %struct.tcphdr*, %struct.tcphdr** %14, align 8
  %36 = bitcast %struct.tcphdr* %35 to i64*
  store i64* %36, i64** %15, align 8
  store i32 4, i32* %10, align 4
  br label %37

37:                                               ; preds = %204, %34
  %38 = load i32, i32* %10, align 4
  %39 = load i32, i32* %12, align 4
  %40 = sub i32 %39, 1
  %41 = icmp ult i32 %38, %40
  br i1 %41, label %42, label %208

42:                                               ; preds = %37
  %43 = load i64*, i64** %15, align 8
  %44 = load i32, i32* %10, align 4
  %45 = call i32 @optlen(i64* %43, i32 %44)
  store i32 %45, i32* %11, align 4
  %46 = load %struct.nft_exthdr*, %struct.nft_exthdr** %9, align 8
  %47 = getelementptr inbounds %struct.nft_exthdr, %struct.nft_exthdr* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64*, i64** %15, align 8
  %50 = load i32, i32* %10, align 4
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds i64, i64* %49, i64 %51
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %48, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %42
  br label %204

56:                                               ; preds = %42
  %57 = load i32, i32* %10, align 4
  %58 = load i32, i32* %11, align 4
  %59 = add i32 %57, %58
  %60 = load i32, i32* %12, align 4
  %61 = icmp ugt i32 %59, %60
  br i1 %61, label %72, label %62

62:                                               ; preds = %56
  %63 = load %struct.nft_exthdr*, %struct.nft_exthdr** %9, align 8
  %64 = getelementptr inbounds %struct.nft_exthdr, %struct.nft_exthdr* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.nft_exthdr*, %struct.nft_exthdr** %9, align 8
  %67 = getelementptr inbounds %struct.nft_exthdr, %struct.nft_exthdr* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = add i32 %65, %68
  %70 = load i32, i32* %11, align 4
  %71 = icmp ugt i32 %69, %70
  br i1 %71, label %72, label %73

72:                                               ; preds = %62, %56
  store i32 1, i32* %17, align 4
  br label %209

73:                                               ; preds = %62
  %74 = load %struct.nft_pktinfo*, %struct.nft_pktinfo** %6, align 8
  %75 = getelementptr inbounds %struct.nft_pktinfo, %struct.nft_pktinfo* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.nft_pktinfo*, %struct.nft_pktinfo** %6, align 8
  %78 = getelementptr inbounds %struct.nft_pktinfo, %struct.nft_pktinfo* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i32, i32* %10, align 4
  %82 = zext i32 %81 to i64
  %83 = add nsw i64 %80, %82
  %84 = load %struct.nft_exthdr*, %struct.nft_exthdr** %9, align 8
  %85 = getelementptr inbounds %struct.nft_exthdr, %struct.nft_exthdr* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = zext i32 %86 to i64
  %88 = add nsw i64 %83, %87
  %89 = call i64 @skb_ensure_writable(i32 %76, i64 %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %73
  store i32 1, i32* %17, align 4
  br label %209

92:                                               ; preds = %73
  %93 = load %struct.nft_pktinfo*, %struct.nft_pktinfo** %6, align 8
  %94 = mul nuw i64 8, %22
  %95 = trunc i64 %94 to i32
  %96 = call %struct.tcphdr* @nft_tcp_header_pointer(%struct.nft_pktinfo* %93, i32 %95, i64* %24, i32* %12)
  store %struct.tcphdr* %96, %struct.tcphdr** %14, align 8
  %97 = load %struct.tcphdr*, %struct.tcphdr** %14, align 8
  %98 = icmp ne %struct.tcphdr* %97, null
  br i1 %98, label %100, label %99

99:                                               ; preds = %92
  store i32 1, i32* %17, align 4
  br label %209

100:                                              ; preds = %92
  %101 = load %struct.nft_regs*, %struct.nft_regs** %5, align 8
  %102 = getelementptr inbounds %struct.nft_regs, %struct.nft_regs* %101, i32 0, i32 0
  %103 = load i8**, i8*** %102, align 8
  %104 = load %struct.nft_exthdr*, %struct.nft_exthdr** %9, align 8
  %105 = getelementptr inbounds %struct.nft_exthdr, %struct.nft_exthdr* %104, i32 0, i32 3
  %106 = load i64, i64* %105, align 8
  %107 = getelementptr inbounds i8*, i8** %103, i64 %106
  %108 = load i8*, i8** %107, align 8
  store i8* %108, i8** %16, align 8
  %109 = load i32, i32* %10, align 4
  %110 = load %struct.nft_exthdr*, %struct.nft_exthdr** %9, align 8
  %111 = getelementptr inbounds %struct.nft_exthdr, %struct.nft_exthdr* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 4
  %113 = add i32 %109, %112
  store i32 %113, i32* %13, align 4
  %114 = load %struct.nft_exthdr*, %struct.nft_exthdr** %9, align 8
  %115 = getelementptr inbounds %struct.nft_exthdr, %struct.nft_exthdr* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 8
  switch i32 %116, label %201 [
    i32 2, label %117
    i32 4, label %166
  ]

117:                                              ; preds = %100
  %118 = load i64*, i64** %15, align 8
  %119 = load i32, i32* %13, align 4
  %120 = zext i32 %119 to i64
  %121 = getelementptr inbounds i64, i64* %118, i64 %120
  %122 = bitcast i64* %121 to i8**
  %123 = call i8* @get_unaligned(i8** %122)
  %124 = bitcast %union.anon* %18 to i8**
  store i8* %123, i8** %124, align 8
  %125 = load i8*, i8** %16, align 8
  %126 = bitcast %union.anon* %19 to i8**
  store i8* %125, i8** %126, align 8
  %127 = load %struct.nft_exthdr*, %struct.nft_exthdr** %9, align 8
  %128 = getelementptr inbounds %struct.nft_exthdr, %struct.nft_exthdr* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  switch i64 %129, label %140 [
    i64 128, label %130
  ]

130:                                              ; preds = %117
  %131 = bitcast %union.anon* %18 to i8**
  %132 = load i8*, i8** %131, align 8
  %133 = call i32 @ntohs(i8* %132)
  %134 = bitcast %union.anon* %19 to i8**
  %135 = load i8*, i8** %134, align 8
  %136 = call i32 @ntohs(i8* %135)
  %137 = icmp sle i32 %133, %136
  br i1 %137, label %138, label %139

138:                                              ; preds = %130
  store i32 1, i32* %17, align 4
  br label %209

139:                                              ; preds = %130
  br label %140

140:                                              ; preds = %117, %139
  %141 = bitcast %union.anon* %18 to i8**
  %142 = load i8*, i8** %141, align 8
  %143 = bitcast %union.anon* %19 to i8**
  %144 = load i8*, i8** %143, align 8
  %145 = icmp eq i8* %142, %144
  br i1 %145, label %146, label %147

146:                                              ; preds = %140
  store i32 1, i32* %17, align 4
  br label %209

147:                                              ; preds = %140
  %148 = bitcast %union.anon* %19 to i8**
  %149 = load i8*, i8** %148, align 8
  %150 = load i64*, i64** %15, align 8
  %151 = load i32, i32* %13, align 4
  %152 = zext i32 %151 to i64
  %153 = getelementptr inbounds i64, i64* %150, i64 %152
  %154 = bitcast i64* %153 to i8**
  %155 = call i32 @put_unaligned(i8* %149, i8** %154)
  %156 = load %struct.tcphdr*, %struct.tcphdr** %14, align 8
  %157 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %156, i32 0, i32 0
  %158 = load %struct.nft_pktinfo*, %struct.nft_pktinfo** %6, align 8
  %159 = getelementptr inbounds %struct.nft_pktinfo, %struct.nft_pktinfo* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = bitcast %union.anon* %18 to i8**
  %162 = load i8*, i8** %161, align 8
  %163 = bitcast %union.anon* %19 to i8**
  %164 = load i8*, i8** %163, align 8
  %165 = call i32 @inet_proto_csum_replace2(i32* %157, i32 %160, i8* %162, i8* %164, i32 0)
  br label %203

166:                                              ; preds = %100
  %167 = load i8*, i8** %16, align 8
  %168 = bitcast %union.anon* %19 to i8**
  store i8* %167, i8** %168, align 8
  %169 = load i64*, i64** %15, align 8
  %170 = load i32, i32* %13, align 4
  %171 = zext i32 %170 to i64
  %172 = getelementptr inbounds i64, i64* %169, i64 %171
  %173 = bitcast i64* %172 to i8**
  %174 = call i8* @get_unaligned(i8** %173)
  %175 = bitcast %union.anon* %18 to i8**
  store i8* %174, i8** %175, align 8
  %176 = bitcast %union.anon* %18 to i8**
  %177 = load i8*, i8** %176, align 8
  %178 = bitcast %union.anon* %19 to i8**
  %179 = load i8*, i8** %178, align 8
  %180 = icmp eq i8* %177, %179
  br i1 %180, label %181, label %182

181:                                              ; preds = %166
  store i32 1, i32* %17, align 4
  br label %209

182:                                              ; preds = %166
  %183 = bitcast %union.anon* %19 to i8**
  %184 = load i8*, i8** %183, align 8
  %185 = load i64*, i64** %15, align 8
  %186 = load i32, i32* %13, align 4
  %187 = zext i32 %186 to i64
  %188 = getelementptr inbounds i64, i64* %185, i64 %187
  %189 = bitcast i64* %188 to i8**
  %190 = call i32 @put_unaligned(i8* %184, i8** %189)
  %191 = load %struct.tcphdr*, %struct.tcphdr** %14, align 8
  %192 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %191, i32 0, i32 0
  %193 = load %struct.nft_pktinfo*, %struct.nft_pktinfo** %6, align 8
  %194 = getelementptr inbounds %struct.nft_pktinfo, %struct.nft_pktinfo* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 8
  %196 = bitcast %union.anon* %18 to i8**
  %197 = load i8*, i8** %196, align 8
  %198 = bitcast %union.anon* %19 to i8**
  %199 = load i8*, i8** %198, align 8
  %200 = call i32 @inet_proto_csum_replace4(i32* %192, i32 %195, i8* %197, i8* %199, i32 0)
  br label %203

201:                                              ; preds = %100
  %202 = call i32 @WARN_ON_ONCE(i32 1)
  br label %203

203:                                              ; preds = %201, %182, %147
  store i32 1, i32* %17, align 4
  br label %209

204:                                              ; preds = %55
  %205 = load i32, i32* %11, align 4
  %206 = load i32, i32* %10, align 4
  %207 = add i32 %206, %205
  store i32 %207, i32* %10, align 4
  br label %37

208:                                              ; preds = %37
  store i32 0, i32* %17, align 4
  br label %209

209:                                              ; preds = %208, %203, %181, %146, %138, %99, %91, %72, %33
  %210 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %210)
  %211 = load i32, i32* %17, align 4
  switch i32 %211, label %213 [
    i32 0, label %212
    i32 1, label %212
  ]

212:                                              ; preds = %209, %209
  ret void

213:                                              ; preds = %209
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.nft_exthdr* @nft_expr_priv(%struct.nft_expr*) #2

declare dso_local %struct.tcphdr* @nft_tcp_header_pointer(%struct.nft_pktinfo*, i32, i64*, i32*) #2

declare dso_local i32 @optlen(i64*, i32) #2

declare dso_local i64 @skb_ensure_writable(i32, i64) #2

declare dso_local i8* @get_unaligned(i8**) #2

declare dso_local i32 @ntohs(i8*) #2

declare dso_local i32 @put_unaligned(i8*, i8**) #2

declare dso_local i32 @inet_proto_csum_replace2(i32*, i32, i8*, i8*, i32) #2

declare dso_local i32 @inet_proto_csum_replace4(i32*, i32, i8*, i8*, i32) #2

declare dso_local i32 @WARN_ON_ONCE(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
