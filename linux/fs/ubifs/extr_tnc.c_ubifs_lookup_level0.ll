; ModuleID = '/home/carl/AnghaBench/linux/fs/ubifs/extr_tnc.c_ubifs_lookup_level0.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ubifs/extr_tnc.c_ubifs_lookup_level0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { %struct.ubifs_zbranch }
%struct.ubifs_zbranch = type { i32, %struct.ubifs_znode* }
%struct.ubifs_znode = type { i32, %struct.ubifs_zbranch*, i8* }
%union.ubifs_key = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c"search key \00", align 1
@UBIFS_INVALID_KEY = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [23 x i8] c"found %d, lvl %d, n %d\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"found 0, lvl %d, n -1\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"found 1, lvl %d, n %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ubifs_lookup_level0(%struct.ubifs_info* %0, %union.ubifs_key* %1, %struct.ubifs_znode** %2, i32* %3) #0 {
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
  %17 = call i32 @dbg_tnck(%union.ubifs_key* %16, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %18 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %19 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %20 = load %union.ubifs_key*, %union.ubifs_key** %7, align 8
  %21 = call i64 @key_type(%struct.ubifs_info* %19, %union.ubifs_key* %20)
  %22 = load i64, i64* @UBIFS_INVALID_KEY, align 8
  %23 = icmp slt i64 %21, %22
  %24 = zext i1 %23 to i32
  %25 = call i32 @ubifs_assert(%struct.ubifs_info* %18, i32 %24)
  %26 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %27 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %27, i32 0, i32 1
  %29 = load %struct.ubifs_znode*, %struct.ubifs_znode** %28, align 8
  store %struct.ubifs_znode* %29, %struct.ubifs_znode** %12, align 8
  %30 = load %struct.ubifs_znode*, %struct.ubifs_znode** %12, align 8
  %31 = icmp ne %struct.ubifs_znode* %30, null
  %32 = xor i1 %31, true
  %33 = zext i1 %32 to i32
  %34 = call i64 @unlikely(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %48

36:                                               ; preds = %4
  %37 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %38 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %39 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %38, i32 0, i32 0
  %40 = call %struct.ubifs_znode* @ubifs_load_znode(%struct.ubifs_info* %37, %struct.ubifs_zbranch* %39, %struct.ubifs_znode* null, i32 0)
  store %struct.ubifs_znode* %40, %struct.ubifs_znode** %12, align 8
  %41 = load %struct.ubifs_znode*, %struct.ubifs_znode** %12, align 8
  %42 = call i64 @IS_ERR(%struct.ubifs_znode* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %36
  %45 = load %struct.ubifs_znode*, %struct.ubifs_znode** %12, align 8
  %46 = call i32 @PTR_ERR(%struct.ubifs_znode* %45)
  store i32 %46, i32* %5, align 4
  br label %175

47:                                               ; preds = %36
  br label %48

48:                                               ; preds = %47, %4
  %49 = load i8*, i8** %13, align 8
  %50 = load %struct.ubifs_znode*, %struct.ubifs_znode** %12, align 8
  %51 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %50, i32 0, i32 2
  store i8* %49, i8** %51, align 8
  br label %52

52:                                               ; preds = %48, %81, %101
  %53 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %54 = load %struct.ubifs_znode*, %struct.ubifs_znode** %12, align 8
  %55 = load %union.ubifs_key*, %union.ubifs_key** %7, align 8
  %56 = load i32*, i32** %9, align 8
  %57 = call i32 @ubifs_search_zbranch(%struct.ubifs_info* %53, %struct.ubifs_znode* %54, %union.ubifs_key* %55, i32* %56)
  store i32 %57, i32* %11, align 4
  %58 = load %struct.ubifs_znode*, %struct.ubifs_znode** %12, align 8
  %59 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %52
  br label %102

63:                                               ; preds = %52
  %64 = load i32*, i32** %9, align 8
  %65 = load i32, i32* %64, align 4
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %63
  %68 = load i32*, i32** %9, align 8
  store i32 0, i32* %68, align 4
  br label %69

69:                                               ; preds = %67, %63
  %70 = load %struct.ubifs_znode*, %struct.ubifs_znode** %12, align 8
  %71 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %70, i32 0, i32 1
  %72 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %71, align 8
  %73 = load i32*, i32** %9, align 8
  %74 = load i32, i32* %73, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %72, i64 %75
  store %struct.ubifs_zbranch* %76, %struct.ubifs_zbranch** %14, align 8
  %77 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %14, align 8
  %78 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %77, i32 0, i32 1
  %79 = load %struct.ubifs_znode*, %struct.ubifs_znode** %78, align 8
  %80 = icmp ne %struct.ubifs_znode* %79, null
  br i1 %80, label %81, label %88

81:                                               ; preds = %69
  %82 = load i8*, i8** %13, align 8
  %83 = load %struct.ubifs_znode*, %struct.ubifs_znode** %12, align 8
  %84 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %83, i32 0, i32 2
  store i8* %82, i8** %84, align 8
  %85 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %14, align 8
  %86 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %85, i32 0, i32 1
  %87 = load %struct.ubifs_znode*, %struct.ubifs_znode** %86, align 8
  store %struct.ubifs_znode* %87, %struct.ubifs_znode** %12, align 8
  br label %52

88:                                               ; preds = %69
  %89 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %90 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %14, align 8
  %91 = load %struct.ubifs_znode*, %struct.ubifs_znode** %12, align 8
  %92 = load i32*, i32** %9, align 8
  %93 = load i32, i32* %92, align 4
  %94 = call %struct.ubifs_znode* @ubifs_load_znode(%struct.ubifs_info* %89, %struct.ubifs_zbranch* %90, %struct.ubifs_znode* %91, i32 %93)
  store %struct.ubifs_znode* %94, %struct.ubifs_znode** %12, align 8
  %95 = load %struct.ubifs_znode*, %struct.ubifs_znode** %12, align 8
  %96 = call i64 @IS_ERR(%struct.ubifs_znode* %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %88
  %99 = load %struct.ubifs_znode*, %struct.ubifs_znode** %12, align 8
  %100 = call i32 @PTR_ERR(%struct.ubifs_znode* %99)
  store i32 %100, i32* %5, align 4
  br label %175

101:                                              ; preds = %88
  br label %52

102:                                              ; preds = %62
  %103 = load %struct.ubifs_znode*, %struct.ubifs_znode** %12, align 8
  %104 = load %struct.ubifs_znode**, %struct.ubifs_znode*** %8, align 8
  store %struct.ubifs_znode* %103, %struct.ubifs_znode** %104, align 8
  %105 = load i32, i32* %11, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %116, label %107

107:                                              ; preds = %102
  %108 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %109 = load %union.ubifs_key*, %union.ubifs_key** %7, align 8
  %110 = call i32 @is_hash_key(%struct.ubifs_info* %108, %union.ubifs_key* %109)
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %116

112:                                              ; preds = %107
  %113 = load i32*, i32** %9, align 8
  %114 = load i32, i32* %113, align 4
  %115 = icmp ne i32 %114, -1
  br i1 %115, label %116, label %125

116:                                              ; preds = %112, %107, %102
  %117 = load i32, i32* %11, align 4
  %118 = load %struct.ubifs_znode*, %struct.ubifs_znode** %12, align 8
  %119 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = load i32*, i32** %9, align 8
  %122 = load i32, i32* %121, align 4
  %123 = call i32 (i8*, i32, ...) @dbg_tnc(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %117, i32 %120, i32 %122)
  %124 = load i32, i32* %11, align 4
  store i32 %124, i32* %5, align 4
  br label %175

125:                                              ; preds = %112
  %126 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %127 = load i32*, i32** %9, align 8
  %128 = call i32 @tnc_prev(%struct.ubifs_info* %126, %struct.ubifs_znode** %12, i32* %127)
  store i32 %128, i32* %10, align 4
  %129 = load i32, i32* %10, align 4
  %130 = load i32, i32* @ENOENT, align 4
  %131 = sub nsw i32 0, %130
  %132 = icmp eq i32 %129, %131
  br i1 %132, label %133, label %139

133:                                              ; preds = %125
  %134 = load %struct.ubifs_znode*, %struct.ubifs_znode** %12, align 8
  %135 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = call i32 (i8*, i32, ...) @dbg_tnc(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 %136)
  %138 = load i32*, i32** %9, align 8
  store i32 -1, i32* %138, align 4
  store i32 0, i32* %5, align 4
  br label %175

139:                                              ; preds = %125
  %140 = load i32, i32* %10, align 4
  %141 = icmp slt i32 %140, 0
  %142 = zext i1 %141 to i32
  %143 = call i64 @unlikely(i32 %142)
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %147

145:                                              ; preds = %139
  %146 = load i32, i32* %10, align 4
  store i32 %146, i32* %5, align 4
  br label %175

147:                                              ; preds = %139
  %148 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %149 = load %union.ubifs_key*, %union.ubifs_key** %7, align 8
  %150 = load %struct.ubifs_znode*, %struct.ubifs_znode** %12, align 8
  %151 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %150, i32 0, i32 1
  %152 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %151, align 8
  %153 = load i32*, i32** %9, align 8
  %154 = load i32, i32* %153, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %152, i64 %155
  %157 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %156, i32 0, i32 0
  %158 = call i64 @keys_cmp(%struct.ubifs_info* %148, %union.ubifs_key* %149, i32* %157)
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %166

160:                                              ; preds = %147
  %161 = load %struct.ubifs_znode*, %struct.ubifs_znode** %12, align 8
  %162 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = call i32 (i8*, i32, ...) @dbg_tnc(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 %163)
  %165 = load i32*, i32** %9, align 8
  store i32 -1, i32* %165, align 4
  store i32 0, i32* %5, align 4
  br label %175

166:                                              ; preds = %147
  %167 = load %struct.ubifs_znode*, %struct.ubifs_znode** %12, align 8
  %168 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = load i32*, i32** %9, align 8
  %171 = load i32, i32* %170, align 4
  %172 = call i32 (i8*, i32, ...) @dbg_tnc(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i32 %169, i32 %171)
  %173 = load %struct.ubifs_znode*, %struct.ubifs_znode** %12, align 8
  %174 = load %struct.ubifs_znode**, %struct.ubifs_znode*** %8, align 8
  store %struct.ubifs_znode* %173, %struct.ubifs_znode** %174, align 8
  store i32 1, i32* %5, align 4
  br label %175

175:                                              ; preds = %166, %160, %145, %133, %116, %98, %44
  %176 = load i32, i32* %5, align 4
  ret i32 %176
}

declare dso_local i8* @ktime_get_seconds(...) #1

declare dso_local i32 @dbg_tnck(%union.ubifs_key*, i8*) #1

declare dso_local i32 @ubifs_assert(%struct.ubifs_info*, i32) #1

declare dso_local i64 @key_type(%struct.ubifs_info*, %union.ubifs_key*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.ubifs_znode* @ubifs_load_znode(%struct.ubifs_info*, %struct.ubifs_zbranch*, %struct.ubifs_znode*, i32) #1

declare dso_local i64 @IS_ERR(%struct.ubifs_znode*) #1

declare dso_local i32 @PTR_ERR(%struct.ubifs_znode*) #1

declare dso_local i32 @ubifs_search_zbranch(%struct.ubifs_info*, %struct.ubifs_znode*, %union.ubifs_key*, i32*) #1

declare dso_local i32 @is_hash_key(%struct.ubifs_info*, %union.ubifs_key*) #1

declare dso_local i32 @dbg_tnc(i8*, i32, ...) #1

declare dso_local i32 @tnc_prev(%struct.ubifs_info*, %struct.ubifs_znode**, i32*) #1

declare dso_local i64 @keys_cmp(%struct.ubifs_info*, %union.ubifs_key*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
