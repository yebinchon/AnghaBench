; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_skbuff.c____pskb_trim.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_skbuff.c____pskb_trim.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i32, i64, i32, %struct.sk_buff* }
%struct.TYPE_2__ = type { i32, %struct.sk_buff*, i32* }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@sock_edemux = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @___pskb_trim(%struct.sk_buff* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sk_buff**, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.sk_buff*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store i32 %1, i32* %5, align 4
  %15 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %16 = call i32 @skb_headlen(%struct.sk_buff* %15)
  store i32 %16, i32* %8, align 4
  %17 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %18 = call %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff* %17)
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %9, align 4
  %21 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %22 = call i64 @skb_cloned(%struct.sk_buff* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %32

24:                                               ; preds = %2
  %25 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %26 = load i32, i32* @GFP_ATOMIC, align 4
  %27 = call i32 @pskb_expand_head(%struct.sk_buff* %25, i32 0, i32 0, i32 %26)
  store i32 %27, i32* %11, align 4
  %28 = call i64 @unlikely(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %24
  %31 = load i32, i32* %11, align 4
  store i32 %31, i32* %3, align 4
  br label %215

32:                                               ; preds = %24, %2
  store i32 0, i32* %10, align 4
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* %5, align 4
  %35 = icmp uge i32 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %32
  br label %71

37:                                               ; preds = %32
  br label %38

38:                                               ; preds = %95, %37
  %39 = load i32, i32* %10, align 4
  %40 = load i32, i32* %9, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %98

42:                                               ; preds = %38
  %43 = load i32, i32* %8, align 4
  %44 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %45 = call %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff* %44)
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 2
  %47 = load i32*, i32** %46, align 8
  %48 = load i32, i32* %10, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = call i32 @skb_frag_size(i32* %50)
  %52 = add nsw i32 %43, %51
  store i32 %52, i32* %12, align 4
  %53 = load i32, i32* %12, align 4
  %54 = load i32, i32* %5, align 4
  %55 = icmp ult i32 %53, %54
  br i1 %55, label %56, label %58

56:                                               ; preds = %42
  %57 = load i32, i32* %12, align 4
  store i32 %57, i32* %8, align 4
  br label %95

58:                                               ; preds = %42
  %59 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %60 = call %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff* %59)
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 2
  %62 = load i32*, i32** %61, align 8
  %63 = load i32, i32* %10, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %10, align 4
  %65 = sext i32 %63 to i64
  %66 = getelementptr inbounds i32, i32* %62, i64 %65
  %67 = load i32, i32* %5, align 4
  %68 = load i32, i32* %8, align 4
  %69 = sub i32 %67, %68
  %70 = call i32 @skb_frag_size_set(i32* %66, i32 %69)
  br label %71

71:                                               ; preds = %58, %36
  %72 = load i32, i32* %10, align 4
  %73 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %74 = call %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff* %73)
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  store i32 %72, i32* %75, align 8
  br label %76

76:                                               ; preds = %84, %71
  %77 = load i32, i32* %10, align 4
  %78 = load i32, i32* %9, align 4
  %79 = icmp slt i32 %77, %78
  br i1 %79, label %80, label %87

80:                                               ; preds = %76
  %81 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %82 = load i32, i32* %10, align 4
  %83 = call i32 @skb_frag_unref(%struct.sk_buff* %81, i32 %82)
  br label %84

84:                                               ; preds = %80
  %85 = load i32, i32* %10, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %10, align 4
  br label %76

87:                                               ; preds = %76
  %88 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %89 = call i64 @skb_has_frag_list(%struct.sk_buff* %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %87
  %92 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %93 = call i32 @skb_drop_fraglist(%struct.sk_buff* %92)
  br label %94

94:                                               ; preds = %91, %87
  br label %173

95:                                               ; preds = %56
  %96 = load i32, i32* %10, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %10, align 4
  br label %38

98:                                               ; preds = %38
  %99 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %100 = call %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff* %99)
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 1
  store %struct.sk_buff** %101, %struct.sk_buff*** %6, align 8
  br label %102

102:                                              ; preds = %169, %98
  %103 = load %struct.sk_buff**, %struct.sk_buff*** %6, align 8
  %104 = load %struct.sk_buff*, %struct.sk_buff** %103, align 8
  store %struct.sk_buff* %104, %struct.sk_buff** %7, align 8
  %105 = icmp ne %struct.sk_buff* %104, null
  br i1 %105, label %106, label %172

106:                                              ; preds = %102
  %107 = load i32, i32* %8, align 4
  %108 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %109 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = add nsw i32 %107, %110
  store i32 %111, i32* %13, align 4
  %112 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %113 = call i64 @skb_shared(%struct.sk_buff* %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %139

115:                                              ; preds = %106
  %116 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %117 = load i32, i32* @GFP_ATOMIC, align 4
  %118 = call %struct.sk_buff* @skb_clone(%struct.sk_buff* %116, i32 %117)
  store %struct.sk_buff* %118, %struct.sk_buff** %14, align 8
  %119 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %120 = icmp ne %struct.sk_buff* %119, null
  %121 = xor i1 %120, true
  %122 = zext i1 %121 to i32
  %123 = call i64 @unlikely(i32 %122)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %128

125:                                              ; preds = %115
  %126 = load i32, i32* @ENOMEM, align 4
  %127 = sub nsw i32 0, %126
  store i32 %127, i32* %3, align 4
  br label %215

128:                                              ; preds = %115
  %129 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %130 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %129, i32 0, i32 4
  %131 = load %struct.sk_buff*, %struct.sk_buff** %130, align 8
  %132 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %133 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %132, i32 0, i32 4
  store %struct.sk_buff* %131, %struct.sk_buff** %133, align 8
  %134 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %135 = call i32 @consume_skb(%struct.sk_buff* %134)
  %136 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  store %struct.sk_buff* %136, %struct.sk_buff** %7, align 8
  %137 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %138 = load %struct.sk_buff**, %struct.sk_buff*** %6, align 8
  store %struct.sk_buff* %137, %struct.sk_buff** %138, align 8
  br label %139

139:                                              ; preds = %128, %106
  %140 = load i32, i32* %13, align 4
  %141 = load i32, i32* %5, align 4
  %142 = icmp ult i32 %140, %141
  br i1 %142, label %143, label %145

143:                                              ; preds = %139
  %144 = load i32, i32* %13, align 4
  store i32 %144, i32* %8, align 4
  br label %169

145:                                              ; preds = %139
  %146 = load i32, i32* %13, align 4
  %147 = load i32, i32* %5, align 4
  %148 = icmp ugt i32 %146, %147
  br i1 %148, label %149, label %159

149:                                              ; preds = %145
  %150 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %151 = load i32, i32* %5, align 4
  %152 = load i32, i32* %8, align 4
  %153 = sub i32 %151, %152
  %154 = call i32 @pskb_trim(%struct.sk_buff* %150, i32 %153)
  store i32 %154, i32* %11, align 4
  %155 = call i64 @unlikely(i32 %154)
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %159

157:                                              ; preds = %149
  %158 = load i32, i32* %11, align 4
  store i32 %158, i32* %3, align 4
  br label %215

159:                                              ; preds = %149, %145
  %160 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %161 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %160, i32 0, i32 4
  %162 = load %struct.sk_buff*, %struct.sk_buff** %161, align 8
  %163 = icmp ne %struct.sk_buff* %162, null
  br i1 %163, label %164, label %168

164:                                              ; preds = %159
  %165 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %166 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %165, i32 0, i32 4
  %167 = call i32 @skb_drop_list(%struct.sk_buff** %166)
  br label %168

168:                                              ; preds = %164, %159
  br label %172

169:                                              ; preds = %143
  %170 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %171 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %170, i32 0, i32 4
  store %struct.sk_buff** %171, %struct.sk_buff*** %6, align 8
  br label %102

172:                                              ; preds = %168, %102
  br label %173

173:                                              ; preds = %172, %94
  %174 = load i32, i32* %5, align 4
  %175 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %176 = call i32 @skb_headlen(%struct.sk_buff* %175)
  %177 = icmp ugt i32 %174, %176
  br i1 %177, label %178, label %191

178:                                              ; preds = %173
  %179 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %180 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 8
  %182 = load i32, i32* %5, align 4
  %183 = sub i32 %181, %182
  %184 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %185 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %184, i32 0, i32 1
  %186 = load i32, i32* %185, align 4
  %187 = sub i32 %186, %183
  store i32 %187, i32* %185, align 4
  %188 = load i32, i32* %5, align 4
  %189 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %190 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %189, i32 0, i32 0
  store i32 %188, i32* %190, align 8
  br label %200

191:                                              ; preds = %173
  %192 = load i32, i32* %5, align 4
  %193 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %194 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %193, i32 0, i32 0
  store i32 %192, i32* %194, align 8
  %195 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %196 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %195, i32 0, i32 1
  store i32 0, i32* %196, align 4
  %197 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %198 = load i32, i32* %5, align 4
  %199 = call i32 @skb_set_tail_pointer(%struct.sk_buff* %197, i32 %198)
  br label %200

200:                                              ; preds = %191, %178
  %201 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %202 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %201, i32 0, i32 3
  %203 = load i32, i32* %202, align 8
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %211

205:                                              ; preds = %200
  %206 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %207 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %206, i32 0, i32 2
  %208 = load i64, i64* %207, align 8
  %209 = load i64, i64* @sock_edemux, align 8
  %210 = icmp eq i64 %208, %209
  br i1 %210, label %211, label %214

211:                                              ; preds = %205, %200
  %212 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %213 = call i32 @skb_condense(%struct.sk_buff* %212)
  br label %214

214:                                              ; preds = %211, %205
  store i32 0, i32* %3, align 4
  br label %215

215:                                              ; preds = %214, %157, %125, %30
  %216 = load i32, i32* %3, align 4
  ret i32 %216
}

declare dso_local i32 @skb_headlen(%struct.sk_buff*) #1

declare dso_local %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i64 @skb_cloned(%struct.sk_buff*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @pskb_expand_head(%struct.sk_buff*, i32, i32, i32) #1

declare dso_local i32 @skb_frag_size(i32*) #1

declare dso_local i32 @skb_frag_size_set(i32*, i32) #1

declare dso_local i32 @skb_frag_unref(%struct.sk_buff*, i32) #1

declare dso_local i64 @skb_has_frag_list(%struct.sk_buff*) #1

declare dso_local i32 @skb_drop_fraglist(%struct.sk_buff*) #1

declare dso_local i64 @skb_shared(%struct.sk_buff*) #1

declare dso_local %struct.sk_buff* @skb_clone(%struct.sk_buff*, i32) #1

declare dso_local i32 @consume_skb(%struct.sk_buff*) #1

declare dso_local i32 @pskb_trim(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_drop_list(%struct.sk_buff**) #1

declare dso_local i32 @skb_set_tail_pointer(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_condense(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
