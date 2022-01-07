; ModuleID = '/home/carl/AnghaBench/linux/net/decnet/extr_dn_nsp_in.c_dn_find_listener.c'
source_filename = "/home/carl/AnghaBench/linux/net/decnet/extr_dn_nsp_in.c_dn_find_listener.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i16, i32 }
%struct.sock = type { i32 }
%struct.sk_buff = type { i8*, i32 }
%struct.dn_skb_cb = type { i32, i32, i32, i32, i32 }
%struct.nsp_conn_init_msg = type { i32, i32, i32, i32, i32 }
%struct.sockaddr_dn = type { i32 }

@DN_MENUVER_ACC = common dso_local global i8 0, align 1
@DN_MENUVER_USR = common dso_local global i8 0, align 1
@ci_err_table = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sock* (%struct.sk_buff*, i16*)* @dn_find_listener to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sock* @dn_find_listener(%struct.sk_buff* %0, i16* %1) #0 {
  %3 = alloca %struct.sock*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca i16*, align 8
  %6 = alloca %struct.dn_skb_cb*, align 8
  %7 = alloca %struct.nsp_conn_init_msg*, align 8
  %8 = alloca %struct.sockaddr_dn, align 4
  %9 = alloca %struct.sockaddr_dn, align 4
  %10 = alloca i8, align 1
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8, align 1
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store i16* %1, i16** %5, align 8
  %17 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %18 = call %struct.dn_skb_cb* @DN_SKB_CB(%struct.sk_buff* %17)
  store %struct.dn_skb_cb* %18, %struct.dn_skb_cb** %6, align 8
  %19 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %20 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  %22 = bitcast i8* %21 to %struct.nsp_conn_init_msg*
  store %struct.nsp_conn_init_msg* %22, %struct.nsp_conn_init_msg** %7, align 8
  store i8 0, i8* %10, align 1
  store i32 0, i32* %15, align 4
  %23 = call i32 @memset(%struct.sockaddr_dn* %8, i32 0, i32 4)
  %24 = call i32 @memset(%struct.sockaddr_dn* %9, i32 0, i32 4)
  %25 = load %struct.nsp_conn_init_msg*, %struct.nsp_conn_init_msg** %7, align 8
  %26 = getelementptr inbounds %struct.nsp_conn_init_msg, %struct.nsp_conn_init_msg* %25, i32 0, i32 4
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.dn_skb_cb*, %struct.dn_skb_cb** %6, align 8
  %29 = getelementptr inbounds %struct.dn_skb_cb, %struct.dn_skb_cb* %28, i32 0, i32 4
  store i32 %27, i32* %29, align 4
  %30 = load %struct.nsp_conn_init_msg*, %struct.nsp_conn_init_msg** %7, align 8
  %31 = getelementptr inbounds %struct.nsp_conn_init_msg, %struct.nsp_conn_init_msg* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.dn_skb_cb*, %struct.dn_skb_cb** %6, align 8
  %34 = getelementptr inbounds %struct.dn_skb_cb, %struct.dn_skb_cb* %33, i32 0, i32 3
  store i32 %32, i32* %34, align 4
  %35 = load %struct.nsp_conn_init_msg*, %struct.nsp_conn_init_msg** %7, align 8
  %36 = getelementptr inbounds %struct.nsp_conn_init_msg, %struct.nsp_conn_init_msg* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.dn_skb_cb*, %struct.dn_skb_cb** %6, align 8
  %39 = getelementptr inbounds %struct.dn_skb_cb, %struct.dn_skb_cb* %38, i32 0, i32 2
  store i32 %37, i32* %39, align 4
  %40 = load %struct.nsp_conn_init_msg*, %struct.nsp_conn_init_msg** %7, align 8
  %41 = getelementptr inbounds %struct.nsp_conn_init_msg, %struct.nsp_conn_init_msg* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.dn_skb_cb*, %struct.dn_skb_cb** %6, align 8
  %44 = getelementptr inbounds %struct.dn_skb_cb, %struct.dn_skb_cb* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 4
  %45 = load %struct.nsp_conn_init_msg*, %struct.nsp_conn_init_msg** %7, align 8
  %46 = getelementptr inbounds %struct.nsp_conn_init_msg, %struct.nsp_conn_init_msg* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @le16_to_cpu(i32 %47)
  %49 = load %struct.dn_skb_cb*, %struct.dn_skb_cb** %6, align 8
  %50 = getelementptr inbounds %struct.dn_skb_cb, %struct.dn_skb_cb* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 4
  %51 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %52 = call i32 @pskb_may_pull(%struct.sk_buff* %51, i32 20)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %2
  br label %176

55:                                               ; preds = %2
  %56 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %57 = call i32 @skb_pull(%struct.sk_buff* %56, i32 20)
  %58 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %59 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  store i32 %60, i32* %14, align 4
  %61 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %62 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %61, i32 0, i32 0
  %63 = load i8*, i8** %62, align 8
  store i8* %63, i8** %13, align 8
  %64 = load i8*, i8** %13, align 8
  %65 = load i32, i32* %14, align 4
  %66 = call i32 @dn_username2sockaddr(i8* %64, i32 %65, %struct.sockaddr_dn* %8, i8* %10)
  store i32 %66, i32* %11, align 4
  %67 = load i32, i32* %15, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %15, align 4
  %69 = load i32, i32* %11, align 4
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %55
  br label %176

72:                                               ; preds = %55
  %73 = load i32, i32* %15, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %15, align 4
  %75 = load i8, i8* %10, align 1
  %76 = zext i8 %75 to i32
  %77 = icmp sgt i32 %76, 1
  br i1 %77, label %78, label %79

78:                                               ; preds = %72
  br label %176

79:                                               ; preds = %72
  %80 = load i32, i32* %11, align 4
  %81 = load i32, i32* %14, align 4
  %82 = sub nsw i32 %81, %80
  store i32 %82, i32* %14, align 4
  %83 = load i32, i32* %11, align 4
  %84 = load i8*, i8** %13, align 8
  %85 = sext i32 %83 to i64
  %86 = getelementptr inbounds i8, i8* %84, i64 %85
  store i8* %86, i8** %13, align 8
  %87 = load i8*, i8** %13, align 8
  %88 = load i32, i32* %14, align 4
  %89 = call i32 @dn_username2sockaddr(i8* %87, i32 %88, %struct.sockaddr_dn* %9, i8* %10)
  store i32 %89, i32* %12, align 4
  %90 = load i32, i32* %15, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %15, align 4
  %92 = load i32, i32* %12, align 4
  %93 = icmp slt i32 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %79
  br label %176

95:                                               ; preds = %79
  %96 = load i32, i32* %12, align 4
  %97 = load i32, i32* %14, align 4
  %98 = sub nsw i32 %97, %96
  store i32 %98, i32* %14, align 4
  %99 = load i32, i32* %12, align 4
  %100 = load i8*, i8** %13, align 8
  %101 = sext i32 %99 to i64
  %102 = getelementptr inbounds i8, i8* %100, i64 %101
  store i8* %102, i8** %13, align 8
  %103 = load i32, i32* %15, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %15, align 4
  %105 = load i32, i32* %14, align 4
  %106 = icmp slt i32 %105, 1
  br i1 %106, label %107, label %108

107:                                              ; preds = %95
  br label %176

108:                                              ; preds = %95
  %109 = load i8*, i8** %13, align 8
  %110 = load i8, i8* %109, align 1
  store i8 %110, i8* %16, align 1
  %111 = load i8*, i8** %13, align 8
  %112 = getelementptr inbounds i8, i8* %111, i32 1
  store i8* %112, i8** %13, align 8
  %113 = load i32, i32* %14, align 4
  %114 = add nsw i32 %113, -1
  store i32 %114, i32* %14, align 4
  %115 = load i32, i32* %15, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %15, align 4
  %117 = load i8, i8* %16, align 1
  %118 = zext i8 %117 to i32
  %119 = load i8, i8* @DN_MENUVER_ACC, align 1
  %120 = zext i8 %119 to i32
  %121 = load i8, i8* @DN_MENUVER_USR, align 1
  %122 = zext i8 %121 to i32
  %123 = or i32 %120, %122
  %124 = and i32 %118, %123
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %130

126:                                              ; preds = %108
  %127 = load i32, i32* %14, align 4
  %128 = icmp slt i32 %127, 1
  br i1 %128, label %129, label %130

129:                                              ; preds = %126
  br label %176

130:                                              ; preds = %126, %108
  %131 = load i32, i32* %15, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %15, align 4
  %133 = load i8, i8* %16, align 1
  %134 = zext i8 %133 to i32
  %135 = load i8, i8* @DN_MENUVER_ACC, align 1
  %136 = zext i8 %135 to i32
  %137 = and i32 %134, %136
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %160

139:                                              ; preds = %130
  %140 = call i64 @dn_check_idf(i8** %13, i32* %14, i32 39, i32 1)
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %143

142:                                              ; preds = %139
  br label %176

143:                                              ; preds = %139
  %144 = call i64 @dn_check_idf(i8** %13, i32* %14, i32 39, i32 1)
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %147

146:                                              ; preds = %143
  br label %176

147:                                              ; preds = %143
  %148 = load i8, i8* %16, align 1
  %149 = zext i8 %148 to i32
  %150 = load i8, i8* @DN_MENUVER_USR, align 1
  %151 = zext i8 %150 to i32
  %152 = and i32 %149, %151
  %153 = icmp ne i32 %152, 0
  %154 = zext i1 %153 to i64
  %155 = select i1 %153, i32 1, i32 0
  %156 = call i64 @dn_check_idf(i8** %13, i32* %14, i32 39, i32 %155)
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %159

158:                                              ; preds = %147
  br label %176

159:                                              ; preds = %147
  br label %160

160:                                              ; preds = %159, %130
  %161 = load i32, i32* %15, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %15, align 4
  %163 = load i8, i8* %16, align 1
  %164 = zext i8 %163 to i32
  %165 = load i8, i8* @DN_MENUVER_USR, align 1
  %166 = zext i8 %165 to i32
  %167 = and i32 %164, %166
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %174

169:                                              ; preds = %160
  %170 = call i64 @dn_check_idf(i8** %13, i32* %14, i32 16, i32 0)
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %173

172:                                              ; preds = %169
  br label %176

173:                                              ; preds = %169
  br label %174

174:                                              ; preds = %173, %160
  %175 = call %struct.sock* @dn_sklist_find_listener(%struct.sockaddr_dn* %8)
  store %struct.sock* %175, %struct.sock** %3, align 8
  br label %192

176:                                              ; preds = %172, %158, %146, %142, %129, %107, %94, %78, %71, %54
  %177 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %178 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ci_err_table, align 8
  %179 = load i32, i32* %15, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %178, i64 %180
  %182 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 4
  %184 = call i32 @dn_log_martian(%struct.sk_buff* %177, i32 %183)
  %185 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ci_err_table, align 8
  %186 = load i32, i32* %15, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %185, i64 %187
  %189 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %188, i32 0, i32 0
  %190 = load i16, i16* %189, align 4
  %191 = load i16*, i16** %5, align 8
  store i16 %190, i16* %191, align 2
  store %struct.sock* null, %struct.sock** %3, align 8
  br label %192

192:                                              ; preds = %176, %174
  %193 = load %struct.sock*, %struct.sock** %3, align 8
  ret %struct.sock* %193
}

declare dso_local %struct.dn_skb_cb* @DN_SKB_CB(%struct.sk_buff*) #1

declare dso_local i32 @memset(%struct.sockaddr_dn*, i32, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @pskb_may_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @dn_username2sockaddr(i8*, i32, %struct.sockaddr_dn*, i8*) #1

declare dso_local i64 @dn_check_idf(i8**, i32*, i32, i32) #1

declare dso_local %struct.sock* @dn_sklist_find_listener(%struct.sockaddr_dn*) #1

declare dso_local i32 @dn_log_martian(%struct.sk_buff*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
