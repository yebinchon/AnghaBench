; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_xt_connbytes.c_connbytes_mt.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_xt_connbytes.c_connbytes_mt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.xt_action_param = type { %struct.xt_connbytes_info* }
%struct.xt_connbytes_info = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64, i64 }
%struct.nf_conn = type { i32 }
%struct.nf_conn_acct = type { %struct.nf_conn_counter* }
%struct.nf_conn_counter = type { i32, i32 }

@IP_CT_DIR_ORIGINAL = common dso_local global i64 0, align 8
@IP_CT_DIR_REPLY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.xt_action_param*)* @connbytes_mt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @connbytes_mt(%struct.sk_buff* %0, %struct.xt_action_param* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.xt_action_param*, align 8
  %6 = alloca %struct.xt_connbytes_info*, align 8
  %7 = alloca %struct.nf_conn*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.nf_conn_acct*, align 8
  %13 = alloca %struct.nf_conn_counter*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.xt_action_param* %1, %struct.xt_action_param** %5, align 8
  %14 = load %struct.xt_action_param*, %struct.xt_action_param** %5, align 8
  %15 = getelementptr inbounds %struct.xt_action_param, %struct.xt_action_param* %14, i32 0, i32 0
  %16 = load %struct.xt_connbytes_info*, %struct.xt_connbytes_info** %15, align 8
  store %struct.xt_connbytes_info* %16, %struct.xt_connbytes_info** %6, align 8
  store i64 0, i64* %9, align 8
  store i64 0, i64* %10, align 8
  store i64 0, i64* %11, align 8
  %17 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %18 = call %struct.nf_conn* @nf_ct_get(%struct.sk_buff* %17, i32* %8)
  store %struct.nf_conn* %18, %struct.nf_conn** %7, align 8
  %19 = load %struct.nf_conn*, %struct.nf_conn** %7, align 8
  %20 = icmp ne %struct.nf_conn* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %196

22:                                               ; preds = %2
  %23 = load %struct.nf_conn*, %struct.nf_conn** %7, align 8
  %24 = call %struct.nf_conn_acct* @nf_conn_acct_find(%struct.nf_conn* %23)
  store %struct.nf_conn_acct* %24, %struct.nf_conn_acct** %12, align 8
  %25 = load %struct.nf_conn_acct*, %struct.nf_conn_acct** %12, align 8
  %26 = icmp ne %struct.nf_conn_acct* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %22
  store i32 0, i32* %3, align 4
  br label %196

28:                                               ; preds = %22
  %29 = load %struct.nf_conn_acct*, %struct.nf_conn_acct** %12, align 8
  %30 = getelementptr inbounds %struct.nf_conn_acct, %struct.nf_conn_acct* %29, i32 0, i32 0
  %31 = load %struct.nf_conn_counter*, %struct.nf_conn_counter** %30, align 8
  store %struct.nf_conn_counter* %31, %struct.nf_conn_counter** %13, align 8
  %32 = load %struct.xt_connbytes_info*, %struct.xt_connbytes_info** %6, align 8
  %33 = getelementptr inbounds %struct.xt_connbytes_info, %struct.xt_connbytes_info* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  switch i32 %34, label %152 [
    i32 128, label %35
    i32 132, label %65
    i32 133, label %95
  ]

35:                                               ; preds = %28
  %36 = load %struct.xt_connbytes_info*, %struct.xt_connbytes_info** %6, align 8
  %37 = getelementptr inbounds %struct.xt_connbytes_info, %struct.xt_connbytes_info* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  switch i32 %38, label %64 [
    i32 130, label %39
    i32 129, label %45
    i32 131, label %51
  ]

39:                                               ; preds = %35
  %40 = load %struct.nf_conn_counter*, %struct.nf_conn_counter** %13, align 8
  %41 = load i64, i64* @IP_CT_DIR_ORIGINAL, align 8
  %42 = getelementptr inbounds %struct.nf_conn_counter, %struct.nf_conn_counter* %40, i64 %41
  %43 = getelementptr inbounds %struct.nf_conn_counter, %struct.nf_conn_counter* %42, i32 0, i32 0
  %44 = call i64 @atomic64_read(i32* %43)
  store i64 %44, i64* %9, align 8
  br label %64

45:                                               ; preds = %35
  %46 = load %struct.nf_conn_counter*, %struct.nf_conn_counter** %13, align 8
  %47 = load i64, i64* @IP_CT_DIR_REPLY, align 8
  %48 = getelementptr inbounds %struct.nf_conn_counter, %struct.nf_conn_counter* %46, i64 %47
  %49 = getelementptr inbounds %struct.nf_conn_counter, %struct.nf_conn_counter* %48, i32 0, i32 0
  %50 = call i64 @atomic64_read(i32* %49)
  store i64 %50, i64* %9, align 8
  br label %64

51:                                               ; preds = %35
  %52 = load %struct.nf_conn_counter*, %struct.nf_conn_counter** %13, align 8
  %53 = load i64, i64* @IP_CT_DIR_ORIGINAL, align 8
  %54 = getelementptr inbounds %struct.nf_conn_counter, %struct.nf_conn_counter* %52, i64 %53
  %55 = getelementptr inbounds %struct.nf_conn_counter, %struct.nf_conn_counter* %54, i32 0, i32 0
  %56 = call i64 @atomic64_read(i32* %55)
  store i64 %56, i64* %9, align 8
  %57 = load %struct.nf_conn_counter*, %struct.nf_conn_counter** %13, align 8
  %58 = load i64, i64* @IP_CT_DIR_REPLY, align 8
  %59 = getelementptr inbounds %struct.nf_conn_counter, %struct.nf_conn_counter* %57, i64 %58
  %60 = getelementptr inbounds %struct.nf_conn_counter, %struct.nf_conn_counter* %59, i32 0, i32 0
  %61 = call i64 @atomic64_read(i32* %60)
  %62 = load i64, i64* %9, align 8
  %63 = add nsw i64 %62, %61
  store i64 %63, i64* %9, align 8
  br label %64

64:                                               ; preds = %35, %51, %45, %39
  br label %152

65:                                               ; preds = %28
  %66 = load %struct.xt_connbytes_info*, %struct.xt_connbytes_info** %6, align 8
  %67 = getelementptr inbounds %struct.xt_connbytes_info, %struct.xt_connbytes_info* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  switch i32 %68, label %94 [
    i32 130, label %69
    i32 129, label %75
    i32 131, label %81
  ]

69:                                               ; preds = %65
  %70 = load %struct.nf_conn_counter*, %struct.nf_conn_counter** %13, align 8
  %71 = load i64, i64* @IP_CT_DIR_ORIGINAL, align 8
  %72 = getelementptr inbounds %struct.nf_conn_counter, %struct.nf_conn_counter* %70, i64 %71
  %73 = getelementptr inbounds %struct.nf_conn_counter, %struct.nf_conn_counter* %72, i32 0, i32 1
  %74 = call i64 @atomic64_read(i32* %73)
  store i64 %74, i64* %9, align 8
  br label %94

75:                                               ; preds = %65
  %76 = load %struct.nf_conn_counter*, %struct.nf_conn_counter** %13, align 8
  %77 = load i64, i64* @IP_CT_DIR_REPLY, align 8
  %78 = getelementptr inbounds %struct.nf_conn_counter, %struct.nf_conn_counter* %76, i64 %77
  %79 = getelementptr inbounds %struct.nf_conn_counter, %struct.nf_conn_counter* %78, i32 0, i32 1
  %80 = call i64 @atomic64_read(i32* %79)
  store i64 %80, i64* %9, align 8
  br label %94

81:                                               ; preds = %65
  %82 = load %struct.nf_conn_counter*, %struct.nf_conn_counter** %13, align 8
  %83 = load i64, i64* @IP_CT_DIR_ORIGINAL, align 8
  %84 = getelementptr inbounds %struct.nf_conn_counter, %struct.nf_conn_counter* %82, i64 %83
  %85 = getelementptr inbounds %struct.nf_conn_counter, %struct.nf_conn_counter* %84, i32 0, i32 1
  %86 = call i64 @atomic64_read(i32* %85)
  store i64 %86, i64* %9, align 8
  %87 = load %struct.nf_conn_counter*, %struct.nf_conn_counter** %13, align 8
  %88 = load i64, i64* @IP_CT_DIR_REPLY, align 8
  %89 = getelementptr inbounds %struct.nf_conn_counter, %struct.nf_conn_counter* %87, i64 %88
  %90 = getelementptr inbounds %struct.nf_conn_counter, %struct.nf_conn_counter* %89, i32 0, i32 1
  %91 = call i64 @atomic64_read(i32* %90)
  %92 = load i64, i64* %9, align 8
  %93 = add nsw i64 %92, %91
  store i64 %93, i64* %9, align 8
  br label %94

94:                                               ; preds = %65, %81, %75, %69
  br label %152

95:                                               ; preds = %28
  %96 = load %struct.xt_connbytes_info*, %struct.xt_connbytes_info** %6, align 8
  %97 = getelementptr inbounds %struct.xt_connbytes_info, %struct.xt_connbytes_info* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 8
  switch i32 %98, label %144 [
    i32 130, label %99
    i32 129, label %110
    i32 131, label %121
  ]

99:                                               ; preds = %95
  %100 = load %struct.nf_conn_counter*, %struct.nf_conn_counter** %13, align 8
  %101 = load i64, i64* @IP_CT_DIR_ORIGINAL, align 8
  %102 = getelementptr inbounds %struct.nf_conn_counter, %struct.nf_conn_counter* %100, i64 %101
  %103 = getelementptr inbounds %struct.nf_conn_counter, %struct.nf_conn_counter* %102, i32 0, i32 1
  %104 = call i64 @atomic64_read(i32* %103)
  store i64 %104, i64* %10, align 8
  %105 = load %struct.nf_conn_counter*, %struct.nf_conn_counter** %13, align 8
  %106 = load i64, i64* @IP_CT_DIR_ORIGINAL, align 8
  %107 = getelementptr inbounds %struct.nf_conn_counter, %struct.nf_conn_counter* %105, i64 %106
  %108 = getelementptr inbounds %struct.nf_conn_counter, %struct.nf_conn_counter* %107, i32 0, i32 0
  %109 = call i64 @atomic64_read(i32* %108)
  store i64 %109, i64* %11, align 8
  br label %144

110:                                              ; preds = %95
  %111 = load %struct.nf_conn_counter*, %struct.nf_conn_counter** %13, align 8
  %112 = load i64, i64* @IP_CT_DIR_REPLY, align 8
  %113 = getelementptr inbounds %struct.nf_conn_counter, %struct.nf_conn_counter* %111, i64 %112
  %114 = getelementptr inbounds %struct.nf_conn_counter, %struct.nf_conn_counter* %113, i32 0, i32 1
  %115 = call i64 @atomic64_read(i32* %114)
  store i64 %115, i64* %10, align 8
  %116 = load %struct.nf_conn_counter*, %struct.nf_conn_counter** %13, align 8
  %117 = load i64, i64* @IP_CT_DIR_REPLY, align 8
  %118 = getelementptr inbounds %struct.nf_conn_counter, %struct.nf_conn_counter* %116, i64 %117
  %119 = getelementptr inbounds %struct.nf_conn_counter, %struct.nf_conn_counter* %118, i32 0, i32 0
  %120 = call i64 @atomic64_read(i32* %119)
  store i64 %120, i64* %11, align 8
  br label %144

121:                                              ; preds = %95
  %122 = load %struct.nf_conn_counter*, %struct.nf_conn_counter** %13, align 8
  %123 = load i64, i64* @IP_CT_DIR_ORIGINAL, align 8
  %124 = getelementptr inbounds %struct.nf_conn_counter, %struct.nf_conn_counter* %122, i64 %123
  %125 = getelementptr inbounds %struct.nf_conn_counter, %struct.nf_conn_counter* %124, i32 0, i32 1
  %126 = call i64 @atomic64_read(i32* %125)
  %127 = load %struct.nf_conn_counter*, %struct.nf_conn_counter** %13, align 8
  %128 = load i64, i64* @IP_CT_DIR_REPLY, align 8
  %129 = getelementptr inbounds %struct.nf_conn_counter, %struct.nf_conn_counter* %127, i64 %128
  %130 = getelementptr inbounds %struct.nf_conn_counter, %struct.nf_conn_counter* %129, i32 0, i32 1
  %131 = call i64 @atomic64_read(i32* %130)
  %132 = add nsw i64 %126, %131
  store i64 %132, i64* %10, align 8
  %133 = load %struct.nf_conn_counter*, %struct.nf_conn_counter** %13, align 8
  %134 = load i64, i64* @IP_CT_DIR_ORIGINAL, align 8
  %135 = getelementptr inbounds %struct.nf_conn_counter, %struct.nf_conn_counter* %133, i64 %134
  %136 = getelementptr inbounds %struct.nf_conn_counter, %struct.nf_conn_counter* %135, i32 0, i32 0
  %137 = call i64 @atomic64_read(i32* %136)
  %138 = load %struct.nf_conn_counter*, %struct.nf_conn_counter** %13, align 8
  %139 = load i64, i64* @IP_CT_DIR_REPLY, align 8
  %140 = getelementptr inbounds %struct.nf_conn_counter, %struct.nf_conn_counter* %138, i64 %139
  %141 = getelementptr inbounds %struct.nf_conn_counter, %struct.nf_conn_counter* %140, i32 0, i32 0
  %142 = call i64 @atomic64_read(i32* %141)
  %143 = add nsw i64 %137, %142
  store i64 %143, i64* %11, align 8
  br label %144

144:                                              ; preds = %95, %121, %110, %99
  %145 = load i64, i64* %11, align 8
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %151

147:                                              ; preds = %144
  %148 = load i64, i64* %10, align 8
  %149 = load i64, i64* %11, align 8
  %150 = call i64 @div64_u64(i64 %148, i64 %149)
  store i64 %150, i64* %9, align 8
  br label %151

151:                                              ; preds = %147, %144
  br label %152

152:                                              ; preds = %28, %151, %94, %64
  %153 = load %struct.xt_connbytes_info*, %struct.xt_connbytes_info** %6, align 8
  %154 = getelementptr inbounds %struct.xt_connbytes_info, %struct.xt_connbytes_info* %153, i32 0, i32 1
  %155 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %154, i32 0, i32 0
  %156 = load i64, i64* %155, align 8
  %157 = load %struct.xt_connbytes_info*, %struct.xt_connbytes_info** %6, align 8
  %158 = getelementptr inbounds %struct.xt_connbytes_info, %struct.xt_connbytes_info* %157, i32 0, i32 1
  %159 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %158, i32 0, i32 1
  %160 = load i64, i64* %159, align 8
  %161 = icmp sge i64 %156, %160
  br i1 %161, label %162, label %179

162:                                              ; preds = %152
  %163 = load i64, i64* %9, align 8
  %164 = load %struct.xt_connbytes_info*, %struct.xt_connbytes_info** %6, align 8
  %165 = getelementptr inbounds %struct.xt_connbytes_info, %struct.xt_connbytes_info* %164, i32 0, i32 1
  %166 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %165, i32 0, i32 0
  %167 = load i64, i64* %166, align 8
  %168 = icmp sle i64 %163, %167
  br i1 %168, label %169, label %176

169:                                              ; preds = %162
  %170 = load i64, i64* %9, align 8
  %171 = load %struct.xt_connbytes_info*, %struct.xt_connbytes_info** %6, align 8
  %172 = getelementptr inbounds %struct.xt_connbytes_info, %struct.xt_connbytes_info* %171, i32 0, i32 1
  %173 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %172, i32 0, i32 1
  %174 = load i64, i64* %173, align 8
  %175 = icmp sge i64 %170, %174
  br label %176

176:                                              ; preds = %169, %162
  %177 = phi i1 [ false, %162 ], [ %175, %169 ]
  %178 = zext i1 %177 to i32
  store i32 %178, i32* %3, align 4
  br label %196

179:                                              ; preds = %152
  %180 = load i64, i64* %9, align 8
  %181 = load %struct.xt_connbytes_info*, %struct.xt_connbytes_info** %6, align 8
  %182 = getelementptr inbounds %struct.xt_connbytes_info, %struct.xt_connbytes_info* %181, i32 0, i32 1
  %183 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %182, i32 0, i32 0
  %184 = load i64, i64* %183, align 8
  %185 = icmp slt i64 %180, %184
  br i1 %185, label %193, label %186

186:                                              ; preds = %179
  %187 = load i64, i64* %9, align 8
  %188 = load %struct.xt_connbytes_info*, %struct.xt_connbytes_info** %6, align 8
  %189 = getelementptr inbounds %struct.xt_connbytes_info, %struct.xt_connbytes_info* %188, i32 0, i32 1
  %190 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %189, i32 0, i32 1
  %191 = load i64, i64* %190, align 8
  %192 = icmp sgt i64 %187, %191
  br label %193

193:                                              ; preds = %186, %179
  %194 = phi i1 [ true, %179 ], [ %192, %186 ]
  %195 = zext i1 %194 to i32
  store i32 %195, i32* %3, align 4
  br label %196

196:                                              ; preds = %193, %176, %27, %21
  %197 = load i32, i32* %3, align 4
  ret i32 %197
}

declare dso_local %struct.nf_conn* @nf_ct_get(%struct.sk_buff*, i32*) #1

declare dso_local %struct.nf_conn_acct* @nf_conn_acct_find(%struct.nf_conn*) #1

declare dso_local i64 @atomic64_read(i32*) #1

declare dso_local i64 @div64_u64(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
