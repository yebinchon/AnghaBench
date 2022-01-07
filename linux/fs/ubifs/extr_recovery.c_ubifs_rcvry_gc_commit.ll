; ModuleID = '/home/carl/AnghaBench/linux/fs/ubifs/extr_recovery.c_ubifs_rcvry_gc_commit.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ubifs/extr_recovery.c_ubifs_rcvry_gc_commit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { i32, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.ubifs_wbuf }
%struct.ubifs_wbuf = type { i32, i64, i32, i32 }
%struct.ubifs_lprops = type { i32, i64, i64, i32 }

@GCHD = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [24 x i8] c"GC head LEB %d, offs %d\00", align 1
@ENOSPC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"could not find a dirty LEB\00", align 1
@LPROPS_INDEX = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"committing\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"GC'ing LEB %d\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"GC failed, error %d\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@LEB_RETAINED = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [24 x i8] c"allocated LEB %d for GC\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ubifs_rcvry_gc_commit(%struct.ubifs_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ubifs_info*, align 8
  %4 = alloca %struct.ubifs_wbuf*, align 8
  %5 = alloca %struct.ubifs_lprops, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ubifs_info* %0, %struct.ubifs_info** %3, align 8
  %8 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %9 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %8, i32 0, i32 2
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = load i64, i64* @GCHD, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i64 %11
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  store %struct.ubifs_wbuf* %13, %struct.ubifs_wbuf** %4, align 8
  %14 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %4, align 8
  %15 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %4, align 8
  %18 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = call i32 (i8*, ...) @dbg_rcvry(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %16, i64 %19)
  %21 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %22 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %21, i32 0, i32 0
  store i32 -1, i32* %22, align 8
  %23 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %4, align 8
  %24 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp eq i32 %25, -1
  br i1 %26, label %35, label %27

27:                                               ; preds = %1
  %28 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %4, align 8
  %29 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %32 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp eq i64 %30, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %27, %1
  %36 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %37 = call i32 @grab_empty_leb(%struct.ubifs_info* %36)
  store i32 %37, i32* %2, align 4
  br label %154

38:                                               ; preds = %27
  %39 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %40 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %4, align 8
  %41 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = call i32 @ubifs_find_dirty_leb(%struct.ubifs_info* %39, %struct.ubifs_lprops* %5, i64 %42, i32 2)
  store i32 %43, i32* %6, align 4
  %44 = load i32, i32* %6, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %57

46:                                               ; preds = %38
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* @ENOSPC, align 4
  %49 = sub nsw i32 0, %48
  %50 = icmp ne i32 %47, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %46
  %52 = load i32, i32* %6, align 4
  store i32 %52, i32* %2, align 4
  br label %154

53:                                               ; preds = %46
  %54 = call i32 (i8*, ...) @dbg_rcvry(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %55 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %56 = call i32 @grab_empty_leb(%struct.ubifs_info* %55)
  store i32 %56, i32* %2, align 4
  br label %154

57:                                               ; preds = %38
  %58 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %59 = getelementptr inbounds %struct.ubifs_lprops, %struct.ubifs_lprops* %5, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @LPROPS_INDEX, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  %64 = xor i1 %63, true
  %65 = zext i1 %64 to i32
  %66 = call i32 @ubifs_assert(%struct.ubifs_info* %58, i32 %65)
  %67 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %68 = getelementptr inbounds %struct.ubifs_lprops, %struct.ubifs_lprops* %5, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = getelementptr inbounds %struct.ubifs_lprops, %struct.ubifs_lprops* %5, i32 0, i32 2
  %71 = load i64, i64* %70, align 8
  %72 = add nsw i64 %69, %71
  %73 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %4, align 8
  %74 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = icmp sge i64 %72, %75
  %77 = zext i1 %76 to i32
  %78 = call i32 @ubifs_assert(%struct.ubifs_info* %67, i32 %77)
  %79 = call i32 (i8*, ...) @dbg_rcvry(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %80 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %81 = call i32 @ubifs_run_commit(%struct.ubifs_info* %80)
  store i32 %81, i32* %6, align 4
  %82 = load i32, i32* %6, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %57
  %85 = load i32, i32* %6, align 4
  store i32 %85, i32* %2, align 4
  br label %154

86:                                               ; preds = %57
  %87 = getelementptr inbounds %struct.ubifs_lprops, %struct.ubifs_lprops* %5, i32 0, i32 3
  %88 = load i32, i32* %87, align 8
  %89 = call i32 (i8*, ...) @dbg_rcvry(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i32 %88)
  %90 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %4, align 8
  %91 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %90, i32 0, i32 2
  %92 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %4, align 8
  %93 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @mutex_lock_nested(i32* %91, i32 %94)
  %96 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %97 = call i32 @ubifs_garbage_collect_leb(%struct.ubifs_info* %96, %struct.ubifs_lprops* %5)
  store i32 %97, i32* %6, align 4
  %98 = load i32, i32* %6, align 4
  %99 = icmp sge i32 %98, 0
  br i1 %99, label %100, label %108

100:                                              ; preds = %86
  %101 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %4, align 8
  %102 = call i32 @ubifs_wbuf_sync_nolock(%struct.ubifs_wbuf* %101)
  store i32 %102, i32* %7, align 4
  %103 = load i32, i32* %7, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %100
  %106 = load i32, i32* %7, align 4
  store i32 %106, i32* %6, align 4
  br label %107

107:                                              ; preds = %105, %100
  br label %108

108:                                              ; preds = %107, %86
  %109 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %4, align 8
  %110 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %109, i32 0, i32 2
  %111 = call i32 @mutex_unlock(i32* %110)
  %112 = load i32, i32* %6, align 4
  %113 = icmp slt i32 %112, 0
  br i1 %113, label %114, label %127

114:                                              ; preds = %108
  %115 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %116 = load i32, i32* %6, align 4
  %117 = call i32 @ubifs_err(%struct.ubifs_info* %115, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i32 %116)
  %118 = load i32, i32* %6, align 4
  %119 = load i32, i32* @EAGAIN, align 4
  %120 = sub nsw i32 0, %119
  %121 = icmp eq i32 %118, %120
  br i1 %121, label %122, label %125

122:                                              ; preds = %114
  %123 = load i32, i32* @EINVAL, align 4
  %124 = sub nsw i32 0, %123
  store i32 %124, i32* %6, align 4
  br label %125

125:                                              ; preds = %122, %114
  %126 = load i32, i32* %6, align 4
  store i32 %126, i32* %2, align 4
  br label %154

127:                                              ; preds = %108
  %128 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %129 = load i32, i32* %6, align 4
  %130 = load i32, i32* @LEB_RETAINED, align 4
  %131 = icmp eq i32 %129, %130
  %132 = zext i1 %131 to i32
  %133 = call i32 @ubifs_assert(%struct.ubifs_info* %128, i32 %132)
  %134 = load i32, i32* %6, align 4
  %135 = load i32, i32* @LEB_RETAINED, align 4
  %136 = icmp ne i32 %134, %135
  br i1 %136, label %137, label %140

137:                                              ; preds = %127
  %138 = load i32, i32* @EINVAL, align 4
  %139 = sub nsw i32 0, %138
  store i32 %139, i32* %2, align 4
  br label %154

140:                                              ; preds = %127
  %141 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %142 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %143 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = call i32 @ubifs_leb_unmap(%struct.ubifs_info* %141, i32 %144)
  store i32 %145, i32* %6, align 4
  %146 = load i32, i32* %6, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %150

148:                                              ; preds = %140
  %149 = load i32, i32* %6, align 4
  store i32 %149, i32* %2, align 4
  br label %154

150:                                              ; preds = %140
  %151 = getelementptr inbounds %struct.ubifs_lprops, %struct.ubifs_lprops* %5, i32 0, i32 3
  %152 = load i32, i32* %151, align 8
  %153 = call i32 (i8*, ...) @dbg_rcvry(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0), i32 %152)
  store i32 0, i32* %2, align 4
  br label %154

154:                                              ; preds = %150, %148, %137, %125, %84, %53, %51, %35
  %155 = load i32, i32* %2, align 4
  ret i32 %155
}

declare dso_local i32 @dbg_rcvry(i8*, ...) #1

declare dso_local i32 @grab_empty_leb(%struct.ubifs_info*) #1

declare dso_local i32 @ubifs_find_dirty_leb(%struct.ubifs_info*, %struct.ubifs_lprops*, i64, i32) #1

declare dso_local i32 @ubifs_assert(%struct.ubifs_info*, i32) #1

declare dso_local i32 @ubifs_run_commit(%struct.ubifs_info*) #1

declare dso_local i32 @mutex_lock_nested(i32*, i32) #1

declare dso_local i32 @ubifs_garbage_collect_leb(%struct.ubifs_info*, %struct.ubifs_lprops*) #1

declare dso_local i32 @ubifs_wbuf_sync_nolock(%struct.ubifs_wbuf*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @ubifs_err(%struct.ubifs_info*, i8*, i32) #1

declare dso_local i32 @ubifs_leb_unmap(%struct.ubifs_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
