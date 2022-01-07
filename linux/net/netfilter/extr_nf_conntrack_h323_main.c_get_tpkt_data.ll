; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_conntrack_h323_main.c_get_tpkt_data.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_conntrack_h323_main.c_get_tpkt_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcphdr = type { i32 }
%struct.sk_buff = type { i32 }
%struct.nf_conn = type { i32 }
%struct.nf_ct_h323_master = type { i32* }

@h323_buffer = common dso_local global %struct.tcphdr* null, align 8
@.str = private unnamed_addr constant [71 x i8] c"nf_ct_h323: previous packet indicated separate TPKT data of %hu bytes\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"nf_ct_h323: fragmented TPKT\0A\00", align 1
@.str.2 = private unnamed_addr constant [81 x i8] c"nf_ct_h323: separate TPKT header indicates there will be TPKT data of %hu bytes\0A\00", align 1
@.str.3 = private unnamed_addr constant [43 x i8] c"nf_ct_h323: incomplete TPKT (fragmented?)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, i32, %struct.nf_conn*, i32, i8**, i32*, i32*)* @get_tpkt_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_tpkt_data(%struct.sk_buff* %0, i32 %1, %struct.nf_conn* %2, i32 %3, i8** %4, i32* %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.nf_conn*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8**, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.nf_ct_h323_master*, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.tcphdr*, align 8
  %19 = alloca %struct.tcphdr, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i8*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %9, align 8
  store i32 %1, i32* %10, align 4
  store %struct.nf_conn* %2, %struct.nf_conn** %11, align 8
  store i32 %3, i32* %12, align 4
  store i8** %4, i8*** %13, align 8
  store i32* %5, i32** %14, align 8
  store i32* %6, i32** %15, align 8
  %25 = load %struct.nf_conn*, %struct.nf_conn** %11, align 8
  %26 = call %struct.nf_ct_h323_master* @nfct_help_data(%struct.nf_conn* %25)
  store %struct.nf_ct_h323_master* %26, %struct.nf_ct_h323_master** %16, align 8
  %27 = load i32, i32* %12, align 4
  %28 = call i32 @CTINFO2DIR(i32 %27)
  store i32 %28, i32* %17, align 4
  %29 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %30 = load i32, i32* %10, align 4
  %31 = call i8* @skb_header_pointer(%struct.sk_buff* %29, i32 %30, i32 4, %struct.tcphdr* %19)
  %32 = bitcast i8* %31 to %struct.tcphdr*
  store %struct.tcphdr* %32, %struct.tcphdr** %18, align 8
  %33 = load %struct.tcphdr*, %struct.tcphdr** %18, align 8
  %34 = icmp eq %struct.tcphdr* %33, null
  br i1 %34, label %35, label %36

35:                                               ; preds = %7
  store i32 0, i32* %8, align 4
  br label %213

36:                                               ; preds = %7
  %37 = load i32, i32* %10, align 4
  %38 = load %struct.tcphdr*, %struct.tcphdr** %18, align 8
  %39 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = mul nsw i32 %40, 4
  %42 = add i32 %37, %41
  store i32 %42, i32* %21, align 4
  %43 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %44 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %21, align 4
  %47 = sub nsw i32 %45, %46
  store i32 %47, i32* %20, align 4
  %48 = load i32, i32* %20, align 4
  %49 = icmp sle i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %36
  br label %206

51:                                               ; preds = %36
  %52 = load i8**, i8*** %13, align 8
  %53 = load i8*, i8** %52, align 8
  %54 = icmp eq i8* %53, null
  br i1 %54, label %55, label %122

55:                                               ; preds = %51
  %56 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %57 = load i32, i32* %21, align 4
  %58 = load i32, i32* %20, align 4
  %59 = load %struct.tcphdr*, %struct.tcphdr** @h323_buffer, align 8
  %60 = call i8* @skb_header_pointer(%struct.sk_buff* %56, i32 %57, i32 %58, %struct.tcphdr* %59)
  store i8* %60, i8** %22, align 8
  %61 = load i8*, i8** %22, align 8
  %62 = icmp eq i8* %61, null
  %63 = zext i1 %62 to i32
  %64 = call i32 @BUG_ON(i32 %63)
  %65 = load i32, i32* %20, align 4
  %66 = icmp slt i32 %65, 4
  br i1 %66, label %79, label %67

67:                                               ; preds = %55
  %68 = load i8*, i8** %22, align 8
  %69 = getelementptr inbounds i8, i8* %68, i64 0
  %70 = load i8, i8* %69, align 1
  %71 = zext i8 %70 to i32
  %72 = icmp ne i32 %71, 3
  br i1 %72, label %79, label %73

73:                                               ; preds = %67
  %74 = load i8*, i8** %22, align 8
  %75 = getelementptr inbounds i8, i8* %74, i64 1
  %76 = load i8, i8* %75, align 1
  %77 = zext i8 %76 to i32
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %121

79:                                               ; preds = %73, %67, %55
  %80 = load %struct.nf_ct_h323_master*, %struct.nf_ct_h323_master** %16, align 8
  %81 = getelementptr inbounds %struct.nf_ct_h323_master, %struct.nf_ct_h323_master* %80, i32 0, i32 0
  %82 = load i32*, i32** %81, align 8
  %83 = load i32, i32* %17, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %82, i64 %84
  %86 = load i32, i32* %85, align 4
  %87 = icmp sgt i32 %86, 0
  br i1 %87, label %88, label %120

88:                                               ; preds = %79
  %89 = load %struct.nf_ct_h323_master*, %struct.nf_ct_h323_master** %16, align 8
  %90 = getelementptr inbounds %struct.nf_ct_h323_master, %struct.nf_ct_h323_master* %89, i32 0, i32 0
  %91 = load i32*, i32** %90, align 8
  %92 = load i32, i32* %17, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %91, i64 %93
  %95 = load i32, i32* %94, align 4
  %96 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str, i64 0, i64 0), i32 %95)
  %97 = load %struct.nf_ct_h323_master*, %struct.nf_ct_h323_master** %16, align 8
  %98 = getelementptr inbounds %struct.nf_ct_h323_master, %struct.nf_ct_h323_master* %97, i32 0, i32 0
  %99 = load i32*, i32** %98, align 8
  %100 = load i32, i32* %17, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i32, i32* %99, i64 %101
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* %20, align 4
  %105 = icmp sle i32 %103, %104
  br i1 %105, label %106, label %118

106:                                              ; preds = %88
  %107 = load i8*, i8** %22, align 8
  %108 = load i8**, i8*** %13, align 8
  store i8* %107, i8** %108, align 8
  %109 = load %struct.nf_ct_h323_master*, %struct.nf_ct_h323_master** %16, align 8
  %110 = getelementptr inbounds %struct.nf_ct_h323_master, %struct.nf_ct_h323_master* %109, i32 0, i32 0
  %111 = load i32*, i32** %110, align 8
  %112 = load i32, i32* %17, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i32, i32* %111, i64 %113
  %115 = load i32, i32* %114, align 4
  %116 = load i32*, i32** %14, align 8
  store i32 %115, i32* %116, align 4
  %117 = load i32*, i32** %15, align 8
  store i32 0, i32* %117, align 4
  br label %199

118:                                              ; preds = %88
  %119 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  br label %206

120:                                              ; preds = %79
  store i32 0, i32* %8, align 4
  br label %213

121:                                              ; preds = %73
  store i32 0, i32* %24, align 4
  br label %154

122:                                              ; preds = %51
  %123 = load i32*, i32** %15, align 8
  %124 = load i32, i32* %123, align 4
  %125 = load i32*, i32** %14, align 8
  %126 = load i32, i32* %125, align 4
  %127 = add nsw i32 %124, %126
  store i32 %127, i32* %24, align 4
  %128 = load i32, i32* %24, align 4
  %129 = load i32, i32* %20, align 4
  %130 = sub nsw i32 %129, %128
  store i32 %130, i32* %20, align 4
  %131 = load i32, i32* %20, align 4
  %132 = icmp sle i32 %131, 4
  br i1 %132, label %133, label %134

133:                                              ; preds = %122
  br label %206

134:                                              ; preds = %122
  %135 = load i8**, i8*** %13, align 8
  %136 = load i8*, i8** %135, align 8
  %137 = load i32*, i32** %14, align 8
  %138 = load i32, i32* %137, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i8, i8* %136, i64 %139
  store i8* %140, i8** %22, align 8
  %141 = load i8*, i8** %22, align 8
  %142 = getelementptr inbounds i8, i8* %141, i64 0
  %143 = load i8, i8* %142, align 1
  %144 = zext i8 %143 to i32
  %145 = icmp ne i32 %144, 3
  br i1 %145, label %152, label %146

146:                                              ; preds = %134
  %147 = load i8*, i8** %22, align 8
  %148 = getelementptr inbounds i8, i8* %147, i64 1
  %149 = load i8, i8* %148, align 1
  %150 = zext i8 %149 to i32
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %153

152:                                              ; preds = %146, %134
  br label %206

153:                                              ; preds = %146
  br label %154

154:                                              ; preds = %153, %121
  %155 = load i8*, i8** %22, align 8
  %156 = getelementptr inbounds i8, i8* %155, i64 2
  %157 = load i8, i8* %156, align 1
  %158 = zext i8 %157 to i32
  %159 = mul nsw i32 %158, 256
  %160 = load i8*, i8** %22, align 8
  %161 = getelementptr inbounds i8, i8* %160, i64 3
  %162 = load i8, i8* %161, align 1
  %163 = zext i8 %162 to i32
  %164 = add nsw i32 %159, %163
  store i32 %164, i32* %23, align 4
  %165 = load i32, i32* %23, align 4
  %166 = icmp slt i32 %165, 4
  br i1 %166, label %167, label %168

167:                                              ; preds = %154
  br label %206

168:                                              ; preds = %154
  %169 = load i32, i32* %23, align 4
  %170 = load i32, i32* %20, align 4
  %171 = icmp sgt i32 %169, %170
  br i1 %171, label %172, label %189

172:                                              ; preds = %168
  %173 = load i32, i32* %20, align 4
  %174 = icmp eq i32 %173, 4
  br i1 %174, label %175, label %187

175:                                              ; preds = %172
  %176 = load i32, i32* %23, align 4
  %177 = sub nsw i32 %176, 4
  %178 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.2, i64 0, i64 0), i32 %177)
  %179 = load i32, i32* %23, align 4
  %180 = sub nsw i32 %179, 4
  %181 = load %struct.nf_ct_h323_master*, %struct.nf_ct_h323_master** %16, align 8
  %182 = getelementptr inbounds %struct.nf_ct_h323_master, %struct.nf_ct_h323_master* %181, i32 0, i32 0
  %183 = load i32*, i32** %182, align 8
  %184 = load i32, i32* %17, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds i32, i32* %183, i64 %185
  store i32 %180, i32* %186, align 4
  store i32 0, i32* %8, align 4
  br label %213

187:                                              ; preds = %172
  %188 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0))
  br label %206

189:                                              ; preds = %168
  %190 = load i8*, i8** %22, align 8
  %191 = getelementptr inbounds i8, i8* %190, i64 4
  %192 = load i8**, i8*** %13, align 8
  store i8* %191, i8** %192, align 8
  %193 = load i32, i32* %23, align 4
  %194 = sub nsw i32 %193, 4
  %195 = load i32*, i32** %14, align 8
  store i32 %194, i32* %195, align 4
  %196 = load i32, i32* %24, align 4
  %197 = add nsw i32 %196, 4
  %198 = load i32*, i32** %15, align 8
  store i32 %197, i32* %198, align 4
  br label %199

199:                                              ; preds = %189, %106
  %200 = load %struct.nf_ct_h323_master*, %struct.nf_ct_h323_master** %16, align 8
  %201 = getelementptr inbounds %struct.nf_ct_h323_master, %struct.nf_ct_h323_master* %200, i32 0, i32 0
  %202 = load i32*, i32** %201, align 8
  %203 = load i32, i32* %17, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds i32, i32* %202, i64 %204
  store i32 0, i32* %205, align 4
  store i32 1, i32* %8, align 4
  br label %213

206:                                              ; preds = %187, %167, %152, %133, %118, %50
  %207 = load %struct.nf_ct_h323_master*, %struct.nf_ct_h323_master** %16, align 8
  %208 = getelementptr inbounds %struct.nf_ct_h323_master, %struct.nf_ct_h323_master* %207, i32 0, i32 0
  %209 = load i32*, i32** %208, align 8
  %210 = load i32, i32* %17, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds i32, i32* %209, i64 %211
  store i32 0, i32* %212, align 4
  store i32 0, i32* %8, align 4
  br label %213

213:                                              ; preds = %206, %199, %175, %120, %35
  %214 = load i32, i32* %8, align 4
  ret i32 %214
}

declare dso_local %struct.nf_ct_h323_master* @nfct_help_data(%struct.nf_conn*) #1

declare dso_local i32 @CTINFO2DIR(i32) #1

declare dso_local i8* @skb_header_pointer(%struct.sk_buff*, i32, i32, %struct.tcphdr*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @pr_debug(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
