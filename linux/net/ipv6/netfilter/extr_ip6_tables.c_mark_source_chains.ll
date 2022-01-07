; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/netfilter/extr_ip6_tables.c_mark_source_chains.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/netfilter/extr_ip6_tables.c_mark_source_chains.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xt_table_info = type { i32*, i32, i32 }
%struct.ip6t_entry = type { i32, i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.xt_standard_target = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@NF_INET_NUMHOOKS = common dso_local global i32 0, align 4
@XT_STANDARD_TARGET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xt_table_info*, i32, i8*, i32*)* @mark_source_chains to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mark_source_chains(%struct.xt_table_info* %0, i32 %1, i8* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.xt_table_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.ip6t_entry*, align 8
  %13 = alloca %struct.xt_standard_target*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.xt_table_info* %0, %struct.xt_table_info** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32 0, i32* %10, align 4
  br label %18

18:                                               ; preds = %210, %4
  %19 = load i32, i32* %10, align 4
  %20 = load i32, i32* @NF_INET_NUMHOOKS, align 4
  %21 = icmp ult i32 %19, %20
  br i1 %21, label %22, label %213

22:                                               ; preds = %18
  %23 = load %struct.xt_table_info*, %struct.xt_table_info** %6, align 8
  %24 = getelementptr inbounds %struct.xt_table_info, %struct.xt_table_info* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = load i32, i32* %10, align 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %11, align 4
  %30 = load i8*, i8** %8, align 8
  %31 = load i32, i32* %11, align 4
  %32 = zext i32 %31 to i64
  %33 = getelementptr i8, i8* %30, i64 %32
  %34 = bitcast i8* %33 to %struct.ip6t_entry*
  store %struct.ip6t_entry* %34, %struct.ip6t_entry** %12, align 8
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* %10, align 4
  %37 = shl i32 1, %36
  %38 = and i32 %35, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %22
  br label %210

41:                                               ; preds = %22
  %42 = load i32, i32* %11, align 4
  %43 = load %struct.ip6t_entry*, %struct.ip6t_entry** %12, align 8
  %44 = getelementptr inbounds %struct.ip6t_entry, %struct.ip6t_entry* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 0
  store i32 %42, i32* %45, align 4
  br label %46

46:                                               ; preds = %208, %41
  %47 = load %struct.ip6t_entry*, %struct.ip6t_entry** %12, align 8
  %48 = call i64 @ip6t_get_target_c(%struct.ip6t_entry* %47)
  %49 = inttoptr i64 %48 to i8*
  %50 = bitcast i8* %49 to %struct.xt_standard_target*
  store %struct.xt_standard_target* %50, %struct.xt_standard_target** %13, align 8
  %51 = load %struct.ip6t_entry*, %struct.ip6t_entry** %12, align 8
  %52 = getelementptr inbounds %struct.ip6t_entry, %struct.ip6t_entry* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %10, align 4
  %55 = shl i32 1, %54
  %56 = and i32 %53, %55
  store i32 %56, i32* %14, align 4
  %57 = load %struct.ip6t_entry*, %struct.ip6t_entry** %12, align 8
  %58 = getelementptr inbounds %struct.ip6t_entry, %struct.ip6t_entry* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @NF_INET_NUMHOOKS, align 4
  %61 = shl i32 1, %60
  %62 = and i32 %59, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %46
  store i32 0, i32* %5, align 4
  br label %214

65:                                               ; preds = %46
  %66 = load i32, i32* %10, align 4
  %67 = shl i32 1, %66
  %68 = load i32, i32* @NF_INET_NUMHOOKS, align 4
  %69 = shl i32 1, %68
  %70 = or i32 %67, %69
  %71 = load %struct.ip6t_entry*, %struct.ip6t_entry** %12, align 8
  %72 = getelementptr inbounds %struct.ip6t_entry, %struct.ip6t_entry* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = or i32 %73, %70
  store i32 %74, i32* %72, align 4
  %75 = load %struct.ip6t_entry*, %struct.ip6t_entry** %12, align 8
  %76 = call i64 @unconditional(%struct.ip6t_entry* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %93

78:                                               ; preds = %65
  %79 = load %struct.xt_standard_target*, %struct.xt_standard_target** %13, align 8
  %80 = getelementptr inbounds %struct.xt_standard_target, %struct.xt_standard_target* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @XT_STANDARD_TARGET, align 4
  %86 = call i64 @strcmp(i32 %84, i32 %85)
  %87 = icmp eq i64 %86, 0
  br i1 %87, label %88, label %93

88:                                               ; preds = %78
  %89 = load %struct.xt_standard_target*, %struct.xt_standard_target** %13, align 8
  %90 = getelementptr inbounds %struct.xt_standard_target, %struct.xt_standard_target* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = icmp slt i32 %91, 0
  br i1 %92, label %96, label %93

93:                                               ; preds = %88, %78, %65
  %94 = load i32, i32* %14, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %158

96:                                               ; preds = %93, %88
  br label %97

97:                                               ; preds = %122, %96
  %98 = load i32, i32* @NF_INET_NUMHOOKS, align 4
  %99 = shl i32 1, %98
  %100 = load %struct.ip6t_entry*, %struct.ip6t_entry** %12, align 8
  %101 = getelementptr inbounds %struct.ip6t_entry, %struct.ip6t_entry* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = xor i32 %102, %99
  store i32 %103, i32* %101, align 4
  %104 = load i32, i32* %11, align 4
  store i32 %104, i32* %15, align 4
  %105 = load %struct.ip6t_entry*, %struct.ip6t_entry** %12, align 8
  %106 = getelementptr inbounds %struct.ip6t_entry, %struct.ip6t_entry* %105, i32 0, i32 2
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  store i32 %108, i32* %11, align 4
  %109 = load %struct.ip6t_entry*, %struct.ip6t_entry** %12, align 8
  %110 = getelementptr inbounds %struct.ip6t_entry, %struct.ip6t_entry* %109, i32 0, i32 2
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 0
  store i32 0, i32* %111, align 4
  %112 = load i32, i32* %11, align 4
  %113 = load i32, i32* %15, align 4
  %114 = icmp eq i32 %112, %113
  br i1 %114, label %115, label %116

115:                                              ; preds = %97
  br label %209

116:                                              ; preds = %97
  %117 = load i8*, i8** %8, align 8
  %118 = load i32, i32* %11, align 4
  %119 = zext i32 %118 to i64
  %120 = getelementptr i8, i8* %117, i64 %119
  %121 = bitcast i8* %120 to %struct.ip6t_entry*
  store %struct.ip6t_entry* %121, %struct.ip6t_entry** %12, align 8
  br label %122

122:                                              ; preds = %116
  %123 = load i32, i32* %15, align 4
  %124 = load i32, i32* %11, align 4
  %125 = load %struct.ip6t_entry*, %struct.ip6t_entry** %12, align 8
  %126 = getelementptr inbounds %struct.ip6t_entry, %struct.ip6t_entry* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = add i32 %124, %127
  %129 = icmp eq i32 %123, %128
  br i1 %129, label %97, label %130

130:                                              ; preds = %122
  %131 = load %struct.ip6t_entry*, %struct.ip6t_entry** %12, align 8
  %132 = getelementptr inbounds %struct.ip6t_entry, %struct.ip6t_entry* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  store i32 %133, i32* %16, align 4
  %134 = load i8*, i8** %8, align 8
  %135 = load i32, i32* %11, align 4
  %136 = zext i32 %135 to i64
  %137 = getelementptr i8, i8* %134, i64 %136
  %138 = load i32, i32* %16, align 4
  %139 = zext i32 %138 to i64
  %140 = getelementptr i8, i8* %137, i64 %139
  %141 = bitcast i8* %140 to %struct.ip6t_entry*
  store %struct.ip6t_entry* %141, %struct.ip6t_entry** %12, align 8
  %142 = load i32, i32* %11, align 4
  %143 = load i32, i32* %16, align 4
  %144 = add i32 %142, %143
  %145 = load %struct.xt_table_info*, %struct.xt_table_info** %6, align 8
  %146 = getelementptr inbounds %struct.xt_table_info, %struct.xt_table_info* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 8
  %148 = icmp uge i32 %144, %147
  br i1 %148, label %149, label %150

149:                                              ; preds = %130
  store i32 0, i32* %5, align 4
  br label %214

150:                                              ; preds = %130
  %151 = load i32, i32* %11, align 4
  %152 = load %struct.ip6t_entry*, %struct.ip6t_entry** %12, align 8
  %153 = getelementptr inbounds %struct.ip6t_entry, %struct.ip6t_entry* %152, i32 0, i32 2
  %154 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %153, i32 0, i32 0
  store i32 %151, i32* %154, align 4
  %155 = load i32, i32* %16, align 4
  %156 = load i32, i32* %11, align 4
  %157 = add i32 %156, %155
  store i32 %157, i32* %11, align 4
  br label %208

158:                                              ; preds = %93
  %159 = load %struct.xt_standard_target*, %struct.xt_standard_target** %13, align 8
  %160 = getelementptr inbounds %struct.xt_standard_target, %struct.xt_standard_target* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  store i32 %161, i32* %17, align 4
  %162 = load %struct.xt_standard_target*, %struct.xt_standard_target** %13, align 8
  %163 = getelementptr inbounds %struct.xt_standard_target, %struct.xt_standard_target* %162, i32 0, i32 1
  %164 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %163, i32 0, i32 0
  %165 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %164, i32 0, i32 0
  %166 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 4
  %168 = load i32, i32* @XT_STANDARD_TARGET, align 4
  %169 = call i64 @strcmp(i32 %167, i32 %168)
  %170 = icmp eq i64 %169, 0
  br i1 %170, label %171, label %184

171:                                              ; preds = %158
  %172 = load i32, i32* %17, align 4
  %173 = icmp sge i32 %172, 0
  br i1 %173, label %174, label %184

174:                                              ; preds = %171
  %175 = load i32*, i32** %9, align 8
  %176 = load i32, i32* %17, align 4
  %177 = load %struct.xt_table_info*, %struct.xt_table_info** %6, align 8
  %178 = getelementptr inbounds %struct.xt_table_info, %struct.xt_table_info* %177, i32 0, i32 2
  %179 = load i32, i32* %178, align 4
  %180 = call i32 @xt_find_jump_offset(i32* %175, i32 %176, i32 %179)
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %183, label %182

182:                                              ; preds = %174
  store i32 0, i32* %5, align 4
  br label %214

183:                                              ; preds = %174
  br label %197

184:                                              ; preds = %171, %158
  %185 = load i32, i32* %11, align 4
  %186 = load %struct.ip6t_entry*, %struct.ip6t_entry** %12, align 8
  %187 = getelementptr inbounds %struct.ip6t_entry, %struct.ip6t_entry* %186, i32 0, i32 1
  %188 = load i32, i32* %187, align 4
  %189 = add i32 %185, %188
  store i32 %189, i32* %17, align 4
  %190 = load i32, i32* %17, align 4
  %191 = load %struct.xt_table_info*, %struct.xt_table_info** %6, align 8
  %192 = getelementptr inbounds %struct.xt_table_info, %struct.xt_table_info* %191, i32 0, i32 1
  %193 = load i32, i32* %192, align 8
  %194 = icmp uge i32 %190, %193
  br i1 %194, label %195, label %196

195:                                              ; preds = %184
  store i32 0, i32* %5, align 4
  br label %214

196:                                              ; preds = %184
  br label %197

197:                                              ; preds = %196, %183
  %198 = load i8*, i8** %8, align 8
  %199 = load i32, i32* %17, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr i8, i8* %198, i64 %200
  %202 = bitcast i8* %201 to %struct.ip6t_entry*
  store %struct.ip6t_entry* %202, %struct.ip6t_entry** %12, align 8
  %203 = load i32, i32* %11, align 4
  %204 = load %struct.ip6t_entry*, %struct.ip6t_entry** %12, align 8
  %205 = getelementptr inbounds %struct.ip6t_entry, %struct.ip6t_entry* %204, i32 0, i32 2
  %206 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %205, i32 0, i32 0
  store i32 %203, i32* %206, align 4
  %207 = load i32, i32* %17, align 4
  store i32 %207, i32* %11, align 4
  br label %208

208:                                              ; preds = %197, %150
  br label %46

209:                                              ; preds = %115
  br label %210

210:                                              ; preds = %209, %40
  %211 = load i32, i32* %10, align 4
  %212 = add i32 %211, 1
  store i32 %212, i32* %10, align 4
  br label %18

213:                                              ; preds = %18
  store i32 1, i32* %5, align 4
  br label %214

214:                                              ; preds = %213, %195, %182, %149, %64
  %215 = load i32, i32* %5, align 4
  ret i32 %215
}

declare dso_local i64 @ip6t_get_target_c(%struct.ip6t_entry*) #1

declare dso_local i64 @unconditional(%struct.ip6t_entry*) #1

declare dso_local i64 @strcmp(i32, i32) #1

declare dso_local i32 @xt_find_jump_offset(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
