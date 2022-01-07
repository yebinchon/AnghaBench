; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_skbuff.c_skb_cow_data.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_skbuff.c_skb_cow_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { %struct.sk_buff*, i64 }
%struct.TYPE_2__ = type { i64, %struct.sk_buff* }

@ENOMEM = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @skb_cow_data(%struct.sk_buff* %0, i32 %1, %struct.sk_buff** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sk_buff**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca %struct.sk_buff**, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.sk_buff*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.sk_buff** %2, %struct.sk_buff*** %7, align 8
  %14 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %15 = call i64 @skb_cloned(%struct.sk_buff* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %23, label %17

17:                                               ; preds = %3
  %18 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %19 = call %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff* %18)
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %35

23:                                               ; preds = %17, %3
  %24 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %25 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %26 = call i64 @skb_pagelen(%struct.sk_buff* %25)
  %27 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %28 = call i64 @skb_headlen(%struct.sk_buff* %27)
  %29 = sub nsw i64 %26, %28
  %30 = call i32* @__pskb_pull_tail(%struct.sk_buff* %24, i64 %29)
  %31 = icmp eq i32* %30, null
  br i1 %31, label %32, label %35

32:                                               ; preds = %23
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %4, align 4
  br label %174

35:                                               ; preds = %23, %17
  %36 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %37 = call i64 @skb_has_frag_list(%struct.sk_buff* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %60, label %39

39:                                               ; preds = %35
  %40 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %41 = call i32 @skb_tailroom(%struct.sk_buff* %40)
  %42 = load i32, i32* %6, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %57

44:                                               ; preds = %39
  %45 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %46 = load i32, i32* %6, align 4
  %47 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %48 = call i32 @skb_tailroom(%struct.sk_buff* %47)
  %49 = sub nsw i32 %46, %48
  %50 = add nsw i32 %49, 128
  %51 = load i32, i32* @GFP_ATOMIC, align 4
  %52 = call i64 @pskb_expand_head(%struct.sk_buff* %45, i32 0, i32 %50, i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %44
  %55 = load i32, i32* @ENOMEM, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %4, align 4
  br label %174

57:                                               ; preds = %44, %39
  %58 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %59 = load %struct.sk_buff**, %struct.sk_buff*** %7, align 8
  store %struct.sk_buff* %58, %struct.sk_buff** %59, align 8
  store i32 1, i32* %4, align 4
  br label %174

60:                                               ; preds = %35
  store i32 1, i32* %9, align 4
  %61 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %62 = call %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff* %61)
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 1
  store %struct.sk_buff** %63, %struct.sk_buff*** %11, align 8
  store i32 0, i32* %8, align 4
  br label %64

64:                                               ; preds = %165, %60
  %65 = load %struct.sk_buff**, %struct.sk_buff*** %11, align 8
  %66 = load %struct.sk_buff*, %struct.sk_buff** %65, align 8
  store %struct.sk_buff* %66, %struct.sk_buff** %10, align 8
  %67 = icmp ne %struct.sk_buff* %66, null
  br i1 %67, label %68, label %172

68:                                               ; preds = %64
  store i32 0, i32* %12, align 4
  %69 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %70 = call i64 @skb_shared(%struct.sk_buff* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %68
  store i32 1, i32* %8, align 4
  br label %73

73:                                               ; preds = %72, %68
  %74 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %75 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %74, i32 0, i32 0
  %76 = load %struct.sk_buff*, %struct.sk_buff** %75, align 8
  %77 = icmp eq %struct.sk_buff* %76, null
  br i1 %77, label %78, label %100

78:                                               ; preds = %73
  %79 = load i32, i32* %6, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %100

81:                                               ; preds = %78
  %82 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %83 = call %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff* %82)
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %96, label %87

87:                                               ; preds = %81
  %88 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %89 = call i64 @skb_has_frag_list(%struct.sk_buff* %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %96, label %91

91:                                               ; preds = %87
  %92 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %93 = call i32 @skb_tailroom(%struct.sk_buff* %92)
  %94 = load i32, i32* %6, align 4
  %95 = icmp slt i32 %93, %94
  br i1 %95, label %96, label %99

96:                                               ; preds = %91, %87, %81
  %97 = load i32, i32* %6, align 4
  %98 = add nsw i32 %97, 128
  store i32 %98, i32* %12, align 4
  br label %99

99:                                               ; preds = %96, %91
  br label %100

100:                                              ; preds = %99, %78, %73
  %101 = load i32, i32* %8, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %120, label %103

103:                                              ; preds = %100
  %104 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %105 = call i64 @skb_cloned(%struct.sk_buff* %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %120, label %107

107:                                              ; preds = %103
  %108 = load i32, i32* %12, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %120, label %110

110:                                              ; preds = %107
  %111 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %112 = call %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff* %111)
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %120, label %116

116:                                              ; preds = %110
  %117 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %118 = call i64 @skb_has_frag_list(%struct.sk_buff* %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %165

120:                                              ; preds = %116, %110, %107, %103, %100
  %121 = load i32, i32* %12, align 4
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %123, label %127

123:                                              ; preds = %120
  %124 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %125 = load i32, i32* @GFP_ATOMIC, align 4
  %126 = call %struct.sk_buff* @skb_copy(%struct.sk_buff* %124, i32 %125)
  store %struct.sk_buff* %126, %struct.sk_buff** %13, align 8
  br label %134

127:                                              ; preds = %120
  %128 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %129 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %130 = call i32 @skb_headroom(%struct.sk_buff* %129)
  %131 = load i32, i32* %12, align 4
  %132 = load i32, i32* @GFP_ATOMIC, align 4
  %133 = call %struct.sk_buff* @skb_copy_expand(%struct.sk_buff* %128, i32 %130, i32 %131, i32 %132)
  store %struct.sk_buff* %133, %struct.sk_buff** %13, align 8
  br label %134

134:                                              ; preds = %127, %123
  %135 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %136 = icmp eq %struct.sk_buff* %135, null
  %137 = zext i1 %136 to i32
  %138 = call i64 @unlikely(i32 %137)
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %143

140:                                              ; preds = %134
  %141 = load i32, i32* @ENOMEM, align 4
  %142 = sub nsw i32 0, %141
  store i32 %142, i32* %4, align 4
  br label %174

143:                                              ; preds = %134
  %144 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %145 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %144, i32 0, i32 1
  %146 = load i64, i64* %145, align 8
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %154

148:                                              ; preds = %143
  %149 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %150 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %151 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %150, i32 0, i32 1
  %152 = load i64, i64* %151, align 8
  %153 = call i32 @skb_set_owner_w(%struct.sk_buff* %149, i64 %152)
  br label %154

154:                                              ; preds = %148, %143
  %155 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %156 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %155, i32 0, i32 0
  %157 = load %struct.sk_buff*, %struct.sk_buff** %156, align 8
  %158 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %159 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %158, i32 0, i32 0
  store %struct.sk_buff* %157, %struct.sk_buff** %159, align 8
  %160 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %161 = load %struct.sk_buff**, %struct.sk_buff*** %11, align 8
  store %struct.sk_buff* %160, %struct.sk_buff** %161, align 8
  %162 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %163 = call i32 @kfree_skb(%struct.sk_buff* %162)
  %164 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  store %struct.sk_buff* %164, %struct.sk_buff** %10, align 8
  br label %165

165:                                              ; preds = %154, %116
  %166 = load i32, i32* %9, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* %9, align 4
  %168 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %169 = load %struct.sk_buff**, %struct.sk_buff*** %7, align 8
  store %struct.sk_buff* %168, %struct.sk_buff** %169, align 8
  %170 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %171 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %170, i32 0, i32 0
  store %struct.sk_buff** %171, %struct.sk_buff*** %11, align 8
  br label %64

172:                                              ; preds = %64
  %173 = load i32, i32* %9, align 4
  store i32 %173, i32* %4, align 4
  br label %174

174:                                              ; preds = %172, %140, %57, %54, %32
  %175 = load i32, i32* %4, align 4
  ret i32 %175
}

declare dso_local i64 @skb_cloned(%struct.sk_buff*) #1

declare dso_local %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i32* @__pskb_pull_tail(%struct.sk_buff*, i64) #1

declare dso_local i64 @skb_pagelen(%struct.sk_buff*) #1

declare dso_local i64 @skb_headlen(%struct.sk_buff*) #1

declare dso_local i64 @skb_has_frag_list(%struct.sk_buff*) #1

declare dso_local i32 @skb_tailroom(%struct.sk_buff*) #1

declare dso_local i64 @pskb_expand_head(%struct.sk_buff*, i32, i32, i32) #1

declare dso_local i64 @skb_shared(%struct.sk_buff*) #1

declare dso_local %struct.sk_buff* @skb_copy(%struct.sk_buff*, i32) #1

declare dso_local %struct.sk_buff* @skb_copy_expand(%struct.sk_buff*, i32, i32, i32) #1

declare dso_local i32 @skb_headroom(%struct.sk_buff*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @skb_set_owner_w(%struct.sk_buff*, i64) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
