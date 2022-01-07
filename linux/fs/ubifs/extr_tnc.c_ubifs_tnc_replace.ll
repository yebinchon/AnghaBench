; ModuleID = '/home/carl/AnghaBench/linux/fs/ubifs/extr_tnc.c_ubifs_tnc_replace.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ubifs/extr_tnc.c_ubifs_tnc_replace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { i32 }
%union.ubifs_key = type { i32 }
%struct.ubifs_znode = type { %struct.ubifs_zbranch*, i64 }
%struct.ubifs_zbranch = type { i32, i32, i32 }

@.str = private unnamed_addr constant [43 x i8] c"old LEB %d:%d, new LEB %d:%d, len %d, key \00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"rc returned %d, znode %p, n %d, LEB %d:%d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ubifs_tnc_replace(%struct.ubifs_info* %0, %union.ubifs_key* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.ubifs_info*, align 8
  %9 = alloca %union.ubifs_key*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.ubifs_znode*, align 8
  %19 = alloca %struct.ubifs_zbranch*, align 8
  store %struct.ubifs_info* %0, %struct.ubifs_info** %8, align 8
  store %union.ubifs_key* %1, %union.ubifs_key** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  store i32 0, i32* %17, align 4
  %20 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %21 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %20, i32 0, i32 0
  %22 = call i32 @mutex_lock(i32* %21)
  %23 = load %union.ubifs_key*, %union.ubifs_key** %9, align 8
  %24 = load i32, i32* %10, align 4
  %25 = load i32, i32* %11, align 4
  %26 = load i32, i32* %12, align 4
  %27 = load i32, i32* %13, align 4
  %28 = load i32, i32* %14, align 4
  %29 = call i32 @dbg_tnck(%union.ubifs_key* %23, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %24, i32 %25, i32 %26, i32 %27, i32 %28)
  %30 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %31 = load %union.ubifs_key*, %union.ubifs_key** %9, align 8
  %32 = call i32 @lookup_level0_dirty(%struct.ubifs_info* %30, %union.ubifs_key* %31, %struct.ubifs_znode** %18, i32* %16)
  store i32 %32, i32* %15, align 4
  %33 = load i32, i32* %15, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %7
  %36 = load i32, i32* %15, align 4
  store i32 %36, i32* %17, align 4
  br label %174

37:                                               ; preds = %7
  %38 = load i32, i32* %15, align 4
  %39 = icmp eq i32 %38, 1
  br i1 %39, label %40, label %159

40:                                               ; preds = %37
  %41 = load %struct.ubifs_znode*, %struct.ubifs_znode** %18, align 8
  %42 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %41, i32 0, i32 0
  %43 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %42, align 8
  %44 = load i32, i32* %16, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %43, i64 %45
  store %struct.ubifs_zbranch* %46, %struct.ubifs_zbranch** %19, align 8
  store i32 0, i32* %15, align 4
  %47 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %19, align 8
  %48 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %10, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %82

52:                                               ; preds = %40
  %53 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %19, align 8
  %54 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* %11, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %58, label %82

58:                                               ; preds = %52
  %59 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %19, align 8
  %60 = call i32 @lnc_free(%struct.ubifs_zbranch* %59)
  %61 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %62 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %19, align 8
  %63 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %19, align 8
  %66 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @ubifs_add_dirt(%struct.ubifs_info* %61, i32 %64, i32 %67)
  store i32 %68, i32* %17, align 4
  %69 = load i32, i32* %17, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %58
  br label %174

72:                                               ; preds = %58
  %73 = load i32, i32* %12, align 4
  %74 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %19, align 8
  %75 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %74, i32 0, i32 0
  store i32 %73, i32* %75, align 4
  %76 = load i32, i32* %13, align 4
  %77 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %19, align 8
  %78 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %77, i32 0, i32 1
  store i32 %76, i32* %78, align 4
  %79 = load i32, i32* %14, align 4
  %80 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %19, align 8
  %81 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %80, i32 0, i32 2
  store i32 %79, i32* %81, align 4
  store i32 1, i32* %15, align 4
  br label %158

82:                                               ; preds = %52, %40
  %83 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %84 = load %union.ubifs_key*, %union.ubifs_key** %9, align 8
  %85 = call i64 @is_hash_key(%struct.ubifs_info* %83, %union.ubifs_key* %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %157

87:                                               ; preds = %82
  %88 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %89 = load %union.ubifs_key*, %union.ubifs_key** %9, align 8
  %90 = load i32, i32* %10, align 4
  %91 = load i32, i32* %11, align 4
  %92 = call i32 @resolve_collision_directly(%struct.ubifs_info* %88, %union.ubifs_key* %89, %struct.ubifs_znode** %18, i32* %16, i32 %90, i32 %91)
  store i32 %92, i32* %15, align 4
  %93 = load i32, i32* %15, align 4
  %94 = load %struct.ubifs_znode*, %struct.ubifs_znode** %18, align 8
  %95 = load i32, i32* %16, align 4
  %96 = load i32, i32* %10, align 4
  %97 = load i32, i32* %11, align 4
  %98 = call i32 @dbg_tnc(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %93, %struct.ubifs_znode* %94, i32 %95, i32 %96, i32 %97)
  %99 = load i32, i32* %15, align 4
  %100 = icmp slt i32 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %87
  %102 = load i32, i32* %15, align 4
  store i32 %102, i32* %17, align 4
  br label %174

103:                                              ; preds = %87
  %104 = load i32, i32* %15, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %156

106:                                              ; preds = %103
  %107 = load %struct.ubifs_znode*, %struct.ubifs_znode** %18, align 8
  %108 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %107, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %115, label %111

111:                                              ; preds = %106
  %112 = load %struct.ubifs_znode*, %struct.ubifs_znode** %18, align 8
  %113 = call i32 @ubifs_zn_dirty(%struct.ubifs_znode* %112)
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %126, label %115

115:                                              ; preds = %111, %106
  %116 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %117 = load %struct.ubifs_znode*, %struct.ubifs_znode** %18, align 8
  %118 = call %struct.ubifs_znode* @dirty_cow_bottom_up(%struct.ubifs_info* %116, %struct.ubifs_znode* %117)
  store %struct.ubifs_znode* %118, %struct.ubifs_znode** %18, align 8
  %119 = load %struct.ubifs_znode*, %struct.ubifs_znode** %18, align 8
  %120 = call i64 @IS_ERR(%struct.ubifs_znode* %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %125

122:                                              ; preds = %115
  %123 = load %struct.ubifs_znode*, %struct.ubifs_znode** %18, align 8
  %124 = call i32 @PTR_ERR(%struct.ubifs_znode* %123)
  store i32 %124, i32* %17, align 4
  br label %174

125:                                              ; preds = %115
  br label %126

126:                                              ; preds = %125, %111
  %127 = load %struct.ubifs_znode*, %struct.ubifs_znode** %18, align 8
  %128 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %127, i32 0, i32 0
  %129 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %128, align 8
  %130 = load i32, i32* %16, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %129, i64 %131
  store %struct.ubifs_zbranch* %132, %struct.ubifs_zbranch** %19, align 8
  %133 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %19, align 8
  %134 = call i32 @lnc_free(%struct.ubifs_zbranch* %133)
  %135 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %136 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %19, align 8
  %137 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %19, align 8
  %140 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %139, i32 0, i32 2
  %141 = load i32, i32* %140, align 4
  %142 = call i32 @ubifs_add_dirt(%struct.ubifs_info* %135, i32 %138, i32 %141)
  store i32 %142, i32* %17, align 4
  %143 = load i32, i32* %17, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %146

145:                                              ; preds = %126
  br label %174

146:                                              ; preds = %126
  %147 = load i32, i32* %12, align 4
  %148 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %19, align 8
  %149 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %148, i32 0, i32 0
  store i32 %147, i32* %149, align 4
  %150 = load i32, i32* %13, align 4
  %151 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %19, align 8
  %152 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %151, i32 0, i32 1
  store i32 %150, i32* %152, align 4
  %153 = load i32, i32* %14, align 4
  %154 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %19, align 8
  %155 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %154, i32 0, i32 2
  store i32 %153, i32* %155, align 4
  br label %156

156:                                              ; preds = %146, %103
  br label %157

157:                                              ; preds = %156, %82
  br label %158

158:                                              ; preds = %157, %72
  br label %159

159:                                              ; preds = %158, %37
  %160 = load i32, i32* %15, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %167, label %162

162:                                              ; preds = %159
  %163 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %164 = load i32, i32* %12, align 4
  %165 = load i32, i32* %14, align 4
  %166 = call i32 @ubifs_add_dirt(%struct.ubifs_info* %163, i32 %164, i32 %165)
  store i32 %166, i32* %17, align 4
  br label %167

167:                                              ; preds = %162, %159
  %168 = load i32, i32* %17, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %173, label %170

170:                                              ; preds = %167
  %171 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %172 = call i32 @dbg_check_tnc(%struct.ubifs_info* %171, i32 0)
  store i32 %172, i32* %17, align 4
  br label %173

173:                                              ; preds = %170, %167
  br label %174

174:                                              ; preds = %173, %145, %122, %101, %71, %35
  %175 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %176 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %175, i32 0, i32 0
  %177 = call i32 @mutex_unlock(i32* %176)
  %178 = load i32, i32* %17, align 4
  ret i32 %178
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @dbg_tnck(%union.ubifs_key*, i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @lookup_level0_dirty(%struct.ubifs_info*, %union.ubifs_key*, %struct.ubifs_znode**, i32*) #1

declare dso_local i32 @lnc_free(%struct.ubifs_zbranch*) #1

declare dso_local i32 @ubifs_add_dirt(%struct.ubifs_info*, i32, i32) #1

declare dso_local i64 @is_hash_key(%struct.ubifs_info*, %union.ubifs_key*) #1

declare dso_local i32 @resolve_collision_directly(%struct.ubifs_info*, %union.ubifs_key*, %struct.ubifs_znode**, i32*, i32, i32) #1

declare dso_local i32 @dbg_tnc(i8*, i32, %struct.ubifs_znode*, i32, i32, i32) #1

declare dso_local i32 @ubifs_zn_dirty(%struct.ubifs_znode*) #1

declare dso_local %struct.ubifs_znode* @dirty_cow_bottom_up(%struct.ubifs_info*, %struct.ubifs_znode*) #1

declare dso_local i64 @IS_ERR(%struct.ubifs_znode*) #1

declare dso_local i32 @PTR_ERR(%struct.ubifs_znode*) #1

declare dso_local i32 @dbg_check_tnc(%struct.ubifs_info*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
