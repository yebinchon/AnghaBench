; ModuleID = '/home/carl/AnghaBench/linux/fs/ubifs/extr_journal.c_reserve_space.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ubifs/extr_journal.c_reserve_space.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { i32, i64, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.ubifs_wbuf }
%struct.ubifs_wbuf = type { i32, i32, i32, i32, i32 }

@BASEHD = common dso_local global i32 0, align 4
@EROFS = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"no free space in jhead %s, run GC\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"GC couldn't make a free LEB for jhead %s\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"retry (%d)\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"return -ENOSPC\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"got LEB %d for jhead %s\00", align 1
@.str.5 = private unnamed_addr constant [43 x i8] c"return LEB %d back, already have LEB %d:%d\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ubifs_info*, i32, i32)* @reserve_space to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @reserve_space(%struct.ubifs_info* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ubifs_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.ubifs_wbuf*, align 8
  store %struct.ubifs_info* %0, %struct.ubifs_info** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %10, align 4
  %16 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %17 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %16, i32 0, i32 4
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = load i32, i32* %6, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  store %struct.ubifs_wbuf* %22, %struct.ubifs_wbuf** %15, align 8
  %23 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %24 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %25 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %34, label %28

28:                                               ; preds = %3
  %29 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %30 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = icmp ne i32 %31, 0
  %33 = xor i1 %32, true
  br label %34

34:                                               ; preds = %28, %3
  %35 = phi i1 [ false, %3 ], [ %33, %28 ]
  %36 = zext i1 %35 to i32
  %37 = call i32 @ubifs_assert(%struct.ubifs_info* %23, i32 %36)
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* @BASEHD, align 4
  %40 = icmp eq i32 %38, %39
  %41 = zext i1 %40 to i32
  store i32 %41, i32* %14, align 4
  br label %42

42:                                               ; preds = %118, %34
  %43 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %15, align 8
  %44 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %43, i32 0, i32 3
  %45 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %15, align 8
  %46 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @mutex_lock_nested(i32* %44, i32 %47)
  %49 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %50 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %42
  %54 = load i32, i32* @EROFS, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %8, align 4
  br label %199

56:                                               ; preds = %42
  %57 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %58 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %15, align 8
  %61 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = sub nsw i32 %59, %62
  %64 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %15, align 8
  %65 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = sub nsw i32 %63, %66
  store i32 %67, i32* %11, align 4
  %68 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %15, align 8
  %69 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = icmp ne i32 %70, -1
  br i1 %71, label %72, label %77

72:                                               ; preds = %56
  %73 = load i32, i32* %11, align 4
  %74 = load i32, i32* %7, align 4
  %75 = icmp sge i32 %73, %74
  br i1 %75, label %76, label %77

76:                                               ; preds = %72
  store i32 0, i32* %4, align 4
  br label %227

77:                                               ; preds = %72, %56
  %78 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %79 = load i32, i32* %7, align 4
  %80 = load i32, i32* %14, align 4
  %81 = call i32 @ubifs_find_free_space(%struct.ubifs_info* %78, i32 %79, i32* %13, i32 %80)
  store i32 %81, i32* %12, align 4
  %82 = load i32, i32* %12, align 4
  %83 = icmp sge i32 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %77
  br label %175

85:                                               ; preds = %77
  %86 = load i32, i32* %12, align 4
  store i32 %86, i32* %8, align 4
  %87 = load i32, i32* %8, align 4
  %88 = load i32, i32* @ENOSPC, align 4
  %89 = sub nsw i32 0, %88
  %90 = icmp ne i32 %87, %89
  br i1 %90, label %91, label %92

91:                                               ; preds = %85
  br label %199

92:                                               ; preds = %85
  %93 = load i32, i32* %6, align 4
  %94 = call i32 @dbg_jhead(i32 %93)
  %95 = call i32 (i8*, ...) @dbg_jnl(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %94)
  %96 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %15, align 8
  %97 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %96, i32 0, i32 3
  %98 = call i32 @mutex_unlock(i32* %97)
  %99 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %100 = call i32 @ubifs_garbage_collect(%struct.ubifs_info* %99, i32 0)
  store i32 %100, i32* %12, align 4
  %101 = load i32, i32* %12, align 4
  %102 = icmp slt i32 %101, 0
  br i1 %102, label %103, label %124

103:                                              ; preds = %92
  %104 = load i32, i32* %12, align 4
  store i32 %104, i32* %8, align 4
  %105 = load i32, i32* %8, align 4
  %106 = load i32, i32* @ENOSPC, align 4
  %107 = sub nsw i32 0, %106
  %108 = icmp ne i32 %105, %107
  br i1 %108, label %109, label %111

109:                                              ; preds = %103
  %110 = load i32, i32* %8, align 4
  store i32 %110, i32* %4, align 4
  br label %227

111:                                              ; preds = %103
  %112 = load i32, i32* %6, align 4
  %113 = call i32 @dbg_jhead(i32 %112)
  %114 = call i32 (i8*, ...) @dbg_jnl(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %113)
  %115 = load i32, i32* %10, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %10, align 4
  %117 = icmp slt i32 %115, 2
  br i1 %117, label %118, label %121

118:                                              ; preds = %111
  %119 = load i32, i32* %10, align 4
  %120 = call i32 (i8*, ...) @dbg_jnl(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 %119)
  br label %42

121:                                              ; preds = %111
  %122 = call i32 (i8*, ...) @dbg_jnl(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  %123 = load i32, i32* %8, align 4
  store i32 %123, i32* %4, align 4
  br label %227

124:                                              ; preds = %92
  %125 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %15, align 8
  %126 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %125, i32 0, i32 3
  %127 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %15, align 8
  %128 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %127, i32 0, i32 4
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @mutex_lock_nested(i32* %126, i32 %129)
  %131 = load i32, i32* %12, align 4
  %132 = load i32, i32* %6, align 4
  %133 = call i32 @dbg_jhead(i32 %132)
  %134 = call i32 (i8*, ...) @dbg_jnl(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 %131, i32 %133)
  %135 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %136 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %15, align 8
  %139 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = sub nsw i32 %137, %140
  %142 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %15, align 8
  %143 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = sub nsw i32 %141, %144
  store i32 %145, i32* %11, align 4
  %146 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %15, align 8
  %147 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %146, i32 0, i32 2
  %148 = load i32, i32* %147, align 4
  %149 = icmp ne i32 %148, -1
  br i1 %149, label %150, label %174

150:                                              ; preds = %124
  %151 = load i32, i32* %11, align 4
  %152 = load i32, i32* %7, align 4
  %153 = icmp sge i32 %151, %152
  br i1 %153, label %154, label %174

154:                                              ; preds = %150
  %155 = load i32, i32* %12, align 4
  %156 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %15, align 8
  %157 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %156, i32 0, i32 2
  %158 = load i32, i32* %157, align 4
  %159 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %15, align 8
  %160 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %15, align 8
  %163 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 4
  %165 = add nsw i32 %161, %164
  %166 = call i32 (i8*, ...) @dbg_jnl(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.5, i64 0, i64 0), i32 %155, i32 %158, i32 %165)
  %167 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %168 = load i32, i32* %12, align 4
  %169 = call i32 @ubifs_return_leb(%struct.ubifs_info* %167, i32 %168)
  store i32 %169, i32* %8, align 4
  %170 = load i32, i32* %8, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %173

172:                                              ; preds = %154
  br label %199

173:                                              ; preds = %154
  store i32 0, i32* %4, align 4
  br label %227

174:                                              ; preds = %150, %124
  store i32 0, i32* %13, align 4
  br label %175

175:                                              ; preds = %174, %84
  %176 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %15, align 8
  %177 = call i32 @ubifs_wbuf_sync_nolock(%struct.ubifs_wbuf* %176)
  store i32 %177, i32* %8, align 4
  %178 = load i32, i32* %8, align 4
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %181

180:                                              ; preds = %175
  br label %204

181:                                              ; preds = %175
  %182 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %183 = load i32, i32* %6, align 4
  %184 = load i32, i32* %12, align 4
  %185 = load i32, i32* %13, align 4
  %186 = call i32 @ubifs_add_bud_to_log(%struct.ubifs_info* %182, i32 %183, i32 %184, i32 %185)
  store i32 %186, i32* %8, align 4
  %187 = load i32, i32* %8, align 4
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %190

189:                                              ; preds = %181
  br label %204

190:                                              ; preds = %181
  %191 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %15, align 8
  %192 = load i32, i32* %12, align 4
  %193 = load i32, i32* %13, align 4
  %194 = call i32 @ubifs_wbuf_seek_nolock(%struct.ubifs_wbuf* %191, i32 %192, i32 %193)
  store i32 %194, i32* %8, align 4
  %195 = load i32, i32* %8, align 4
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %198

197:                                              ; preds = %190
  br label %199

198:                                              ; preds = %190
  store i32 0, i32* %4, align 4
  br label %227

199:                                              ; preds = %197, %172, %91, %53
  %200 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %15, align 8
  %201 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %200, i32 0, i32 3
  %202 = call i32 @mutex_unlock(i32* %201)
  %203 = load i32, i32* %8, align 4
  store i32 %203, i32* %4, align 4
  br label %227

204:                                              ; preds = %189, %180
  %205 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %206 = load i32, i32* %8, align 4
  %207 = icmp slt i32 %206, 0
  %208 = zext i1 %207 to i32
  %209 = call i32 @ubifs_assert(%struct.ubifs_info* %205, i32 %208)
  %210 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %211 = load i32, i32* %12, align 4
  %212 = call i32 @ubifs_return_leb(%struct.ubifs_info* %210, i32 %211)
  store i32 %212, i32* %9, align 4
  %213 = load i32, i32* %9, align 4
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %215, label %222

215:                                              ; preds = %204
  %216 = load i32, i32* %8, align 4
  %217 = load i32, i32* @EAGAIN, align 4
  %218 = sub nsw i32 0, %217
  %219 = icmp eq i32 %216, %218
  br i1 %219, label %220, label %222

220:                                              ; preds = %215
  %221 = load i32, i32* %9, align 4
  store i32 %221, i32* %8, align 4
  br label %222

222:                                              ; preds = %220, %215, %204
  %223 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %15, align 8
  %224 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %223, i32 0, i32 3
  %225 = call i32 @mutex_unlock(i32* %224)
  %226 = load i32, i32* %8, align 4
  store i32 %226, i32* %4, align 4
  br label %227

227:                                              ; preds = %222, %199, %198, %173, %121, %109, %76
  %228 = load i32, i32* %4, align 4
  ret i32 %228
}

declare dso_local i32 @ubifs_assert(%struct.ubifs_info*, i32) #1

declare dso_local i32 @mutex_lock_nested(i32*, i32) #1

declare dso_local i32 @ubifs_find_free_space(%struct.ubifs_info*, i32, i32*, i32) #1

declare dso_local i32 @dbg_jnl(i8*, ...) #1

declare dso_local i32 @dbg_jhead(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @ubifs_garbage_collect(%struct.ubifs_info*, i32) #1

declare dso_local i32 @ubifs_return_leb(%struct.ubifs_info*, i32) #1

declare dso_local i32 @ubifs_wbuf_sync_nolock(%struct.ubifs_wbuf*) #1

declare dso_local i32 @ubifs_add_bud_to_log(%struct.ubifs_info*, i32, i32, i32) #1

declare dso_local i32 @ubifs_wbuf_seek_nolock(%struct.ubifs_wbuf*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
