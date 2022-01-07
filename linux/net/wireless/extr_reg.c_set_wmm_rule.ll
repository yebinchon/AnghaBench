; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_reg.c_set_wmm_rule.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_reg.c_set_wmm_rule.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fwdb_header = type { i32 }
%struct.fwdb_country = type { i32* }
%struct.fwdb_rule = type { i32, i32, i32 }
%struct.ieee80211_reg_rule = type { i32, %struct.ieee80211_wmm_rule }
%struct.ieee80211_wmm_rule = type { %struct.TYPE_7__*, %struct.TYPE_5__* }
%struct.TYPE_7__ = type { i32, i32, i8*, i8* }
%struct.TYPE_5__ = type { i32, i32, i8*, i8* }
%struct.fwdb_wmm_rule = type { %struct.TYPE_8__*, %struct.TYPE_6__* }
%struct.TYPE_8__ = type { i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [50 x i8] c"Invalid regulatory WMM rule %u-%u in domain %c%c\0A\00", align 1
@IEEE80211_NUM_ACS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fwdb_header*, %struct.fwdb_country*, %struct.fwdb_rule*, %struct.ieee80211_reg_rule*)* @set_wmm_rule to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_wmm_rule(%struct.fwdb_header* %0, %struct.fwdb_country* %1, %struct.fwdb_rule* %2, %struct.ieee80211_reg_rule* %3) #0 {
  %5 = alloca %struct.fwdb_header*, align 8
  %6 = alloca %struct.fwdb_country*, align 8
  %7 = alloca %struct.fwdb_rule*, align 8
  %8 = alloca %struct.ieee80211_reg_rule*, align 8
  %9 = alloca %struct.ieee80211_wmm_rule*, align 8
  %10 = alloca %struct.fwdb_wmm_rule*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.fwdb_header* %0, %struct.fwdb_header** %5, align 8
  store %struct.fwdb_country* %1, %struct.fwdb_country** %6, align 8
  store %struct.fwdb_rule* %2, %struct.fwdb_rule** %7, align 8
  store %struct.ieee80211_reg_rule* %3, %struct.ieee80211_reg_rule** %8, align 8
  %13 = load %struct.ieee80211_reg_rule*, %struct.ieee80211_reg_rule** %8, align 8
  %14 = getelementptr inbounds %struct.ieee80211_reg_rule, %struct.ieee80211_reg_rule* %13, i32 0, i32 1
  store %struct.ieee80211_wmm_rule* %14, %struct.ieee80211_wmm_rule** %9, align 8
  %15 = load %struct.fwdb_rule*, %struct.fwdb_rule** %7, align 8
  %16 = getelementptr inbounds %struct.fwdb_rule, %struct.fwdb_rule* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @be16_to_cpu(i32 %17)
  %19 = shl i32 %18, 2
  store i32 %19, i32* %12, align 4
  %20 = load %struct.fwdb_header*, %struct.fwdb_header** %5, align 8
  %21 = bitcast %struct.fwdb_header* %20 to i32*
  %22 = load i32, i32* %12, align 4
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %21, i64 %23
  %25 = bitcast i32* %24 to i8*
  %26 = bitcast i8* %25 to %struct.fwdb_wmm_rule*
  store %struct.fwdb_wmm_rule* %26, %struct.fwdb_wmm_rule** %10, align 8
  %27 = load %struct.fwdb_wmm_rule*, %struct.fwdb_wmm_rule** %10, align 8
  %28 = call i32 @valid_wmm(%struct.fwdb_wmm_rule* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %50, label %30

30:                                               ; preds = %4
  %31 = load %struct.fwdb_rule*, %struct.fwdb_rule** %7, align 8
  %32 = getelementptr inbounds %struct.fwdb_rule, %struct.fwdb_rule* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @be32_to_cpu(i32 %33)
  %35 = load %struct.fwdb_rule*, %struct.fwdb_rule** %7, align 8
  %36 = getelementptr inbounds %struct.fwdb_rule, %struct.fwdb_rule* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @be32_to_cpu(i32 %37)
  %39 = load %struct.fwdb_country*, %struct.fwdb_country** %6, align 8
  %40 = getelementptr inbounds %struct.fwdb_country, %struct.fwdb_country* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.fwdb_country*, %struct.fwdb_country** %6, align 8
  %45 = getelementptr inbounds %struct.fwdb_country, %struct.fwdb_country* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 1
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @pr_err(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %34, i32 %38, i32 %43, i32 %48)
  br label %196

50:                                               ; preds = %4
  store i32 0, i32* %11, align 4
  br label %51

51:                                               ; preds = %190, %50
  %52 = load i32, i32* %11, align 4
  %53 = load i32, i32* @IEEE80211_NUM_ACS, align 4
  %54 = icmp ult i32 %52, %53
  br i1 %54, label %55, label %193

55:                                               ; preds = %51
  %56 = load %struct.fwdb_wmm_rule*, %struct.fwdb_wmm_rule** %10, align 8
  %57 = getelementptr inbounds %struct.fwdb_wmm_rule, %struct.fwdb_wmm_rule* %56, i32 0, i32 1
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %57, align 8
  %59 = load i32, i32* %11, align 4
  %60 = zext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = and i32 %63, 240
  %65 = ashr i32 %64, 4
  %66 = call i8* @ecw2cw(i32 %65)
  %67 = load %struct.ieee80211_wmm_rule*, %struct.ieee80211_wmm_rule** %9, align 8
  %68 = getelementptr inbounds %struct.ieee80211_wmm_rule, %struct.ieee80211_wmm_rule* %67, i32 0, i32 1
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %68, align 8
  %70 = load i32, i32* %11, align 4
  %71 = zext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 3
  store i8* %66, i8** %73, align 8
  %74 = load %struct.fwdb_wmm_rule*, %struct.fwdb_wmm_rule** %10, align 8
  %75 = getelementptr inbounds %struct.fwdb_wmm_rule, %struct.fwdb_wmm_rule* %74, i32 0, i32 1
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %75, align 8
  %77 = load i32, i32* %11, align 4
  %78 = zext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = and i32 %81, 15
  %83 = call i8* @ecw2cw(i32 %82)
  %84 = load %struct.ieee80211_wmm_rule*, %struct.ieee80211_wmm_rule** %9, align 8
  %85 = getelementptr inbounds %struct.ieee80211_wmm_rule, %struct.ieee80211_wmm_rule* %84, i32 0, i32 1
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** %85, align 8
  %87 = load i32, i32* %11, align 4
  %88 = zext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 2
  store i8* %83, i8** %90, align 8
  %91 = load %struct.fwdb_wmm_rule*, %struct.fwdb_wmm_rule** %10, align 8
  %92 = getelementptr inbounds %struct.fwdb_wmm_rule, %struct.fwdb_wmm_rule* %91, i32 0, i32 1
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %92, align 8
  %94 = load i32, i32* %11, align 4
  %95 = zext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.ieee80211_wmm_rule*, %struct.ieee80211_wmm_rule** %9, align 8
  %100 = getelementptr inbounds %struct.ieee80211_wmm_rule, %struct.ieee80211_wmm_rule* %99, i32 0, i32 1
  %101 = load %struct.TYPE_5__*, %struct.TYPE_5__** %100, align 8
  %102 = load i32, i32* %11, align 4
  %103 = zext i32 %102 to i64
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i64 %103
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 1
  store i32 %98, i32* %105, align 4
  %106 = load %struct.fwdb_wmm_rule*, %struct.fwdb_wmm_rule** %10, align 8
  %107 = getelementptr inbounds %struct.fwdb_wmm_rule, %struct.fwdb_wmm_rule* %106, i32 0, i32 1
  %108 = load %struct.TYPE_6__*, %struct.TYPE_6__** %107, align 8
  %109 = load i32, i32* %11, align 4
  %110 = zext i32 %109 to i64
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i64 %110
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @be16_to_cpu(i32 %113)
  %115 = mul nsw i32 1000, %114
  %116 = load %struct.ieee80211_wmm_rule*, %struct.ieee80211_wmm_rule** %9, align 8
  %117 = getelementptr inbounds %struct.ieee80211_wmm_rule, %struct.ieee80211_wmm_rule* %116, i32 0, i32 1
  %118 = load %struct.TYPE_5__*, %struct.TYPE_5__** %117, align 8
  %119 = load i32, i32* %11, align 4
  %120 = zext i32 %119 to i64
  %121 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i64 %120
  %122 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %121, i32 0, i32 0
  store i32 %115, i32* %122, align 8
  %123 = load %struct.fwdb_wmm_rule*, %struct.fwdb_wmm_rule** %10, align 8
  %124 = getelementptr inbounds %struct.fwdb_wmm_rule, %struct.fwdb_wmm_rule* %123, i32 0, i32 0
  %125 = load %struct.TYPE_8__*, %struct.TYPE_8__** %124, align 8
  %126 = load i32, i32* %11, align 4
  %127 = zext i32 %126 to i64
  %128 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %125, i64 %127
  %129 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = and i32 %130, 240
  %132 = ashr i32 %131, 4
  %133 = call i8* @ecw2cw(i32 %132)
  %134 = load %struct.ieee80211_wmm_rule*, %struct.ieee80211_wmm_rule** %9, align 8
  %135 = getelementptr inbounds %struct.ieee80211_wmm_rule, %struct.ieee80211_wmm_rule* %134, i32 0, i32 0
  %136 = load %struct.TYPE_7__*, %struct.TYPE_7__** %135, align 8
  %137 = load i32, i32* %11, align 4
  %138 = zext i32 %137 to i64
  %139 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %136, i64 %138
  %140 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %139, i32 0, i32 3
  store i8* %133, i8** %140, align 8
  %141 = load %struct.fwdb_wmm_rule*, %struct.fwdb_wmm_rule** %10, align 8
  %142 = getelementptr inbounds %struct.fwdb_wmm_rule, %struct.fwdb_wmm_rule* %141, i32 0, i32 0
  %143 = load %struct.TYPE_8__*, %struct.TYPE_8__** %142, align 8
  %144 = load i32, i32* %11, align 4
  %145 = zext i32 %144 to i64
  %146 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %143, i64 %145
  %147 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = and i32 %148, 15
  %150 = call i8* @ecw2cw(i32 %149)
  %151 = load %struct.ieee80211_wmm_rule*, %struct.ieee80211_wmm_rule** %9, align 8
  %152 = getelementptr inbounds %struct.ieee80211_wmm_rule, %struct.ieee80211_wmm_rule* %151, i32 0, i32 0
  %153 = load %struct.TYPE_7__*, %struct.TYPE_7__** %152, align 8
  %154 = load i32, i32* %11, align 4
  %155 = zext i32 %154 to i64
  %156 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %153, i64 %155
  %157 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %156, i32 0, i32 2
  store i8* %150, i8** %157, align 8
  %158 = load %struct.fwdb_wmm_rule*, %struct.fwdb_wmm_rule** %10, align 8
  %159 = getelementptr inbounds %struct.fwdb_wmm_rule, %struct.fwdb_wmm_rule* %158, i32 0, i32 0
  %160 = load %struct.TYPE_8__*, %struct.TYPE_8__** %159, align 8
  %161 = load i32, i32* %11, align 4
  %162 = zext i32 %161 to i64
  %163 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %160, i64 %162
  %164 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %163, i32 0, i32 2
  %165 = load i32, i32* %164, align 4
  %166 = load %struct.ieee80211_wmm_rule*, %struct.ieee80211_wmm_rule** %9, align 8
  %167 = getelementptr inbounds %struct.ieee80211_wmm_rule, %struct.ieee80211_wmm_rule* %166, i32 0, i32 0
  %168 = load %struct.TYPE_7__*, %struct.TYPE_7__** %167, align 8
  %169 = load i32, i32* %11, align 4
  %170 = zext i32 %169 to i64
  %171 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %168, i64 %170
  %172 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %171, i32 0, i32 1
  store i32 %165, i32* %172, align 4
  %173 = load %struct.fwdb_wmm_rule*, %struct.fwdb_wmm_rule** %10, align 8
  %174 = getelementptr inbounds %struct.fwdb_wmm_rule, %struct.fwdb_wmm_rule* %173, i32 0, i32 0
  %175 = load %struct.TYPE_8__*, %struct.TYPE_8__** %174, align 8
  %176 = load i32, i32* %11, align 4
  %177 = zext i32 %176 to i64
  %178 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %175, i64 %177
  %179 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %178, i32 0, i32 1
  %180 = load i32, i32* %179, align 4
  %181 = call i32 @be16_to_cpu(i32 %180)
  %182 = mul nsw i32 1000, %181
  %183 = load %struct.ieee80211_wmm_rule*, %struct.ieee80211_wmm_rule** %9, align 8
  %184 = getelementptr inbounds %struct.ieee80211_wmm_rule, %struct.ieee80211_wmm_rule* %183, i32 0, i32 0
  %185 = load %struct.TYPE_7__*, %struct.TYPE_7__** %184, align 8
  %186 = load i32, i32* %11, align 4
  %187 = zext i32 %186 to i64
  %188 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %185, i64 %187
  %189 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %188, i32 0, i32 0
  store i32 %182, i32* %189, align 8
  br label %190

190:                                              ; preds = %55
  %191 = load i32, i32* %11, align 4
  %192 = add i32 %191, 1
  store i32 %192, i32* %11, align 4
  br label %51

193:                                              ; preds = %51
  %194 = load %struct.ieee80211_reg_rule*, %struct.ieee80211_reg_rule** %8, align 8
  %195 = getelementptr inbounds %struct.ieee80211_reg_rule, %struct.ieee80211_reg_rule* %194, i32 0, i32 0
  store i32 1, i32* %195, align 8
  br label %196

196:                                              ; preds = %193, %30
  ret void
}

declare dso_local i32 @be16_to_cpu(i32) #1

declare dso_local i32 @valid_wmm(%struct.fwdb_wmm_rule*) #1

declare dso_local i32 @pr_err(i8*, i32, i32, i32, i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i8* @ecw2cw(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
