; ModuleID = '/home/carl/AnghaBench/linux/fs/ubifs/extr_tnc.c_lookup_level0_dirty.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ubifs/extr_tnc.c_lookup_level0_dirty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { %struct.ubifs_zbranch }
%struct.ubifs_zbranch = type { i32, %struct.ubifs_znode* }
%struct.ubifs_znode = type { i32, i64, %struct.ubifs_zbranch*, i8* }
%union.ubifs_key = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"search and dirty key \00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"found %d, lvl %d, n %d\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"found 0, lvl %d, n -1\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"found 1, lvl %d, n %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ubifs_info*, %union.ubifs_key*, %struct.ubifs_znode**, i32*)* @lookup_level0_dirty to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lookup_level0_dirty(%struct.ubifs_info* %0, %union.ubifs_key* %1, %struct.ubifs_znode** %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ubifs_info*, align 8
  %7 = alloca %union.ubifs_key*, align 8
  %8 = alloca %struct.ubifs_znode**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.ubifs_znode*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.ubifs_zbranch*, align 8
  store %struct.ubifs_info* %0, %struct.ubifs_info** %6, align 8
  store %union.ubifs_key* %1, %union.ubifs_key** %7, align 8
  store %struct.ubifs_znode** %2, %struct.ubifs_znode*** %8, align 8
  store i32* %3, i32** %9, align 8
  %15 = call i8* (...) @ktime_get_seconds()
  store i8* %15, i8** %13, align 8
  %16 = load %union.ubifs_key*, %union.ubifs_key** %7, align 8
  %17 = call i32 @dbg_tnck(%union.ubifs_key* %16, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %18 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %19 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %19, i32 0, i32 1
  %21 = load %struct.ubifs_znode*, %struct.ubifs_znode** %20, align 8
  store %struct.ubifs_znode* %21, %struct.ubifs_znode** %12, align 8
  %22 = load %struct.ubifs_znode*, %struct.ubifs_znode** %12, align 8
  %23 = icmp ne %struct.ubifs_znode* %22, null
  %24 = xor i1 %23, true
  %25 = zext i1 %24 to i32
  %26 = call i64 @unlikely(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %40

28:                                               ; preds = %4
  %29 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %30 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %31 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %30, i32 0, i32 0
  %32 = call %struct.ubifs_znode* @ubifs_load_znode(%struct.ubifs_info* %29, %struct.ubifs_zbranch* %31, %struct.ubifs_znode* null, i32 0)
  store %struct.ubifs_znode* %32, %struct.ubifs_znode** %12, align 8
  %33 = load %struct.ubifs_znode*, %struct.ubifs_znode** %12, align 8
  %34 = call i64 @IS_ERR(%struct.ubifs_znode* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %28
  %37 = load %struct.ubifs_znode*, %struct.ubifs_znode** %12, align 8
  %38 = call i32 @PTR_ERR(%struct.ubifs_znode* %37)
  store i32 %38, i32* %5, align 4
  br label %215

39:                                               ; preds = %28
  br label %40

40:                                               ; preds = %39, %4
  %41 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %42 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %43 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %42, i32 0, i32 0
  %44 = call %struct.ubifs_znode* @dirty_cow_znode(%struct.ubifs_info* %41, %struct.ubifs_zbranch* %43)
  store %struct.ubifs_znode* %44, %struct.ubifs_znode** %12, align 8
  %45 = load %struct.ubifs_znode*, %struct.ubifs_znode** %12, align 8
  %46 = call i64 @IS_ERR(%struct.ubifs_znode* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %40
  %49 = load %struct.ubifs_znode*, %struct.ubifs_znode** %12, align 8
  %50 = call i32 @PTR_ERR(%struct.ubifs_znode* %49)
  store i32 %50, i32* %5, align 4
  br label %215

51:                                               ; preds = %40
  %52 = load i8*, i8** %13, align 8
  %53 = load %struct.ubifs_znode*, %struct.ubifs_znode** %12, align 8
  %54 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %53, i32 0, i32 3
  store i8* %52, i8** %54, align 8
  br label %55

55:                                               ; preds = %51, %97, %121
  %56 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %57 = load %struct.ubifs_znode*, %struct.ubifs_znode** %12, align 8
  %58 = load %union.ubifs_key*, %union.ubifs_key** %7, align 8
  %59 = load i32*, i32** %9, align 8
  %60 = call i32 @ubifs_search_zbranch(%struct.ubifs_info* %56, %struct.ubifs_znode* %57, %union.ubifs_key* %58, i32* %59)
  store i32 %60, i32* %11, align 4
  %61 = load %struct.ubifs_znode*, %struct.ubifs_znode** %12, align 8
  %62 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %55
  br label %122

66:                                               ; preds = %55
  %67 = load i32*, i32** %9, align 8
  %68 = load i32, i32* %67, align 4
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %66
  %71 = load i32*, i32** %9, align 8
  store i32 0, i32* %71, align 4
  br label %72

72:                                               ; preds = %70, %66
  %73 = load %struct.ubifs_znode*, %struct.ubifs_znode** %12, align 8
  %74 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %73, i32 0, i32 2
  %75 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %74, align 8
  %76 = load i32*, i32** %9, align 8
  %77 = load i32, i32* %76, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %75, i64 %78
  store %struct.ubifs_zbranch* %79, %struct.ubifs_zbranch** %14, align 8
  %80 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %14, align 8
  %81 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %80, i32 0, i32 1
  %82 = load %struct.ubifs_znode*, %struct.ubifs_znode** %81, align 8
  %83 = icmp ne %struct.ubifs_znode* %82, null
  br i1 %83, label %84, label %98

84:                                               ; preds = %72
  %85 = load i8*, i8** %13, align 8
  %86 = load %struct.ubifs_znode*, %struct.ubifs_znode** %12, align 8
  %87 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %86, i32 0, i32 3
  store i8* %85, i8** %87, align 8
  %88 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %89 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %14, align 8
  %90 = call %struct.ubifs_znode* @dirty_cow_znode(%struct.ubifs_info* %88, %struct.ubifs_zbranch* %89)
  store %struct.ubifs_znode* %90, %struct.ubifs_znode** %12, align 8
  %91 = load %struct.ubifs_znode*, %struct.ubifs_znode** %12, align 8
  %92 = call i64 @IS_ERR(%struct.ubifs_znode* %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %84
  %95 = load %struct.ubifs_znode*, %struct.ubifs_znode** %12, align 8
  %96 = call i32 @PTR_ERR(%struct.ubifs_znode* %95)
  store i32 %96, i32* %5, align 4
  br label %215

97:                                               ; preds = %84
  br label %55

98:                                               ; preds = %72
  %99 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %100 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %14, align 8
  %101 = load %struct.ubifs_znode*, %struct.ubifs_znode** %12, align 8
  %102 = load i32*, i32** %9, align 8
  %103 = load i32, i32* %102, align 4
  %104 = call %struct.ubifs_znode* @ubifs_load_znode(%struct.ubifs_info* %99, %struct.ubifs_zbranch* %100, %struct.ubifs_znode* %101, i32 %103)
  store %struct.ubifs_znode* %104, %struct.ubifs_znode** %12, align 8
  %105 = load %struct.ubifs_znode*, %struct.ubifs_znode** %12, align 8
  %106 = call i64 @IS_ERR(%struct.ubifs_znode* %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %111

108:                                              ; preds = %98
  %109 = load %struct.ubifs_znode*, %struct.ubifs_znode** %12, align 8
  %110 = call i32 @PTR_ERR(%struct.ubifs_znode* %109)
  store i32 %110, i32* %5, align 4
  br label %215

111:                                              ; preds = %98
  %112 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %113 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %14, align 8
  %114 = call %struct.ubifs_znode* @dirty_cow_znode(%struct.ubifs_info* %112, %struct.ubifs_zbranch* %113)
  store %struct.ubifs_znode* %114, %struct.ubifs_znode** %12, align 8
  %115 = load %struct.ubifs_znode*, %struct.ubifs_znode** %12, align 8
  %116 = call i64 @IS_ERR(%struct.ubifs_znode* %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %121

118:                                              ; preds = %111
  %119 = load %struct.ubifs_znode*, %struct.ubifs_znode** %12, align 8
  %120 = call i32 @PTR_ERR(%struct.ubifs_znode* %119)
  store i32 %120, i32* %5, align 4
  br label %215

121:                                              ; preds = %111
  br label %55

122:                                              ; preds = %65
  %123 = load %struct.ubifs_znode*, %struct.ubifs_znode** %12, align 8
  %124 = load %struct.ubifs_znode**, %struct.ubifs_znode*** %8, align 8
  store %struct.ubifs_znode* %123, %struct.ubifs_znode** %124, align 8
  %125 = load i32, i32* %11, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %136, label %127

127:                                              ; preds = %122
  %128 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %129 = load %union.ubifs_key*, %union.ubifs_key** %7, align 8
  %130 = call i32 @is_hash_key(%struct.ubifs_info* %128, %union.ubifs_key* %129)
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %136

132:                                              ; preds = %127
  %133 = load i32*, i32** %9, align 8
  %134 = load i32, i32* %133, align 4
  %135 = icmp ne i32 %134, -1
  br i1 %135, label %136, label %145

136:                                              ; preds = %132, %127, %122
  %137 = load i32, i32* %11, align 4
  %138 = load %struct.ubifs_znode*, %struct.ubifs_znode** %12, align 8
  %139 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = load i32*, i32** %9, align 8
  %142 = load i32, i32* %141, align 4
  %143 = call i32 (i8*, i32, ...) @dbg_tnc(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %137, i32 %140, i32 %142)
  %144 = load i32, i32* %11, align 4
  store i32 %144, i32* %5, align 4
  br label %215

145:                                              ; preds = %132
  %146 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %147 = load i32*, i32** %9, align 8
  %148 = call i32 @tnc_prev(%struct.ubifs_info* %146, %struct.ubifs_znode** %12, i32* %147)
  store i32 %148, i32* %10, align 4
  %149 = load i32, i32* %10, align 4
  %150 = load i32, i32* @ENOENT, align 4
  %151 = sub nsw i32 0, %150
  %152 = icmp eq i32 %149, %151
  br i1 %152, label %153, label %159

153:                                              ; preds = %145
  %154 = load i32*, i32** %9, align 8
  store i32 -1, i32* %154, align 4
  %155 = load %struct.ubifs_znode*, %struct.ubifs_znode** %12, align 8
  %156 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = call i32 (i8*, i32, ...) @dbg_tnc(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 %157)
  store i32 0, i32* %5, align 4
  br label %215

159:                                              ; preds = %145
  %160 = load i32, i32* %10, align 4
  %161 = icmp slt i32 %160, 0
  %162 = zext i1 %161 to i32
  %163 = call i64 @unlikely(i32 %162)
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %167

165:                                              ; preds = %159
  %166 = load i32, i32* %10, align 4
  store i32 %166, i32* %5, align 4
  br label %215

167:                                              ; preds = %159
  %168 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %169 = load %union.ubifs_key*, %union.ubifs_key** %7, align 8
  %170 = load %struct.ubifs_znode*, %struct.ubifs_znode** %12, align 8
  %171 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %170, i32 0, i32 2
  %172 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %171, align 8
  %173 = load i32*, i32** %9, align 8
  %174 = load i32, i32* %173, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %172, i64 %175
  %177 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %176, i32 0, i32 0
  %178 = call i64 @keys_cmp(%struct.ubifs_info* %168, %union.ubifs_key* %169, i32* %177)
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %180, label %186

180:                                              ; preds = %167
  %181 = load i32*, i32** %9, align 8
  store i32 -1, i32* %181, align 4
  %182 = load %struct.ubifs_znode*, %struct.ubifs_znode** %12, align 8
  %183 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 8
  %185 = call i32 (i8*, i32, ...) @dbg_tnc(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 %184)
  store i32 0, i32* %5, align 4
  br label %215

186:                                              ; preds = %167
  %187 = load %struct.ubifs_znode*, %struct.ubifs_znode** %12, align 8
  %188 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %187, i32 0, i32 1
  %189 = load i64, i64* %188, align 8
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %195, label %191

191:                                              ; preds = %186
  %192 = load %struct.ubifs_znode*, %struct.ubifs_znode** %12, align 8
  %193 = call i32 @ubifs_zn_dirty(%struct.ubifs_znode* %192)
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %206, label %195

195:                                              ; preds = %191, %186
  %196 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %197 = load %struct.ubifs_znode*, %struct.ubifs_znode** %12, align 8
  %198 = call %struct.ubifs_znode* @dirty_cow_bottom_up(%struct.ubifs_info* %196, %struct.ubifs_znode* %197)
  store %struct.ubifs_znode* %198, %struct.ubifs_znode** %12, align 8
  %199 = load %struct.ubifs_znode*, %struct.ubifs_znode** %12, align 8
  %200 = call i64 @IS_ERR(%struct.ubifs_znode* %199)
  %201 = icmp ne i64 %200, 0
  br i1 %201, label %202, label %205

202:                                              ; preds = %195
  %203 = load %struct.ubifs_znode*, %struct.ubifs_znode** %12, align 8
  %204 = call i32 @PTR_ERR(%struct.ubifs_znode* %203)
  store i32 %204, i32* %5, align 4
  br label %215

205:                                              ; preds = %195
  br label %206

206:                                              ; preds = %205, %191
  %207 = load %struct.ubifs_znode*, %struct.ubifs_znode** %12, align 8
  %208 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 8
  %210 = load i32*, i32** %9, align 8
  %211 = load i32, i32* %210, align 4
  %212 = call i32 (i8*, i32, ...) @dbg_tnc(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i32 %209, i32 %211)
  %213 = load %struct.ubifs_znode*, %struct.ubifs_znode** %12, align 8
  %214 = load %struct.ubifs_znode**, %struct.ubifs_znode*** %8, align 8
  store %struct.ubifs_znode* %213, %struct.ubifs_znode** %214, align 8
  store i32 1, i32* %5, align 4
  br label %215

215:                                              ; preds = %206, %202, %180, %165, %153, %136, %118, %108, %94, %48, %36
  %216 = load i32, i32* %5, align 4
  ret i32 %216
}

declare dso_local i8* @ktime_get_seconds(...) #1

declare dso_local i32 @dbg_tnck(%union.ubifs_key*, i8*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.ubifs_znode* @ubifs_load_znode(%struct.ubifs_info*, %struct.ubifs_zbranch*, %struct.ubifs_znode*, i32) #1

declare dso_local i64 @IS_ERR(%struct.ubifs_znode*) #1

declare dso_local i32 @PTR_ERR(%struct.ubifs_znode*) #1

declare dso_local %struct.ubifs_znode* @dirty_cow_znode(%struct.ubifs_info*, %struct.ubifs_zbranch*) #1

declare dso_local i32 @ubifs_search_zbranch(%struct.ubifs_info*, %struct.ubifs_znode*, %union.ubifs_key*, i32*) #1

declare dso_local i32 @is_hash_key(%struct.ubifs_info*, %union.ubifs_key*) #1

declare dso_local i32 @dbg_tnc(i8*, i32, ...) #1

declare dso_local i32 @tnc_prev(%struct.ubifs_info*, %struct.ubifs_znode**, i32*) #1

declare dso_local i64 @keys_cmp(%struct.ubifs_info*, %union.ubifs_key*, i32*) #1

declare dso_local i32 @ubifs_zn_dirty(%struct.ubifs_znode*) #1

declare dso_local %struct.ubifs_znode* @dirty_cow_bottom_up(%struct.ubifs_info*, %struct.ubifs_znode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
