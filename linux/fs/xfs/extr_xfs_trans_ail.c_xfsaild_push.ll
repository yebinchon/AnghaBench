; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_trans_ail.c_xfsaild_push.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_trans_ail.c_xfsaild_push.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_ail = type { i8*, i64, i32, i32, i8*, i8*, i32* }
%struct.xfs_ail_cursor = type { i32 }
%struct.xfs_log_item = type { i8* }

@xs_push_ail_flush = common dso_local global i32 0, align 4
@XFS_LOG_SYNC = common dso_local global i32 0, align 4
@xs_push_ail = common dso_local global i32 0, align 4
@xs_push_ail_success = common dso_local global i32 0, align 4
@xs_push_ail_flushing = common dso_local global i32 0, align 4
@xs_push_ail_pinned = common dso_local global i32 0, align 4
@xs_push_ail_locked = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.xfs_ail*)* @xfsaild_push to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @xfsaild_push(%struct.xfs_ail* %0) #0 {
  %2 = alloca %struct.xfs_ail*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.xfs_ail_cursor, align 4
  %5 = alloca %struct.xfs_log_item*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.xfs_ail* %0, %struct.xfs_ail** %2, align 8
  %13 = load %struct.xfs_ail*, %struct.xfs_ail** %2, align 8
  %14 = getelementptr inbounds %struct.xfs_ail, %struct.xfs_ail* %13, i32 0, i32 6
  %15 = load i32*, i32** %14, align 8
  store i32* %15, i32** %3, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %16 = load %struct.xfs_ail*, %struct.xfs_ail** %2, align 8
  %17 = getelementptr inbounds %struct.xfs_ail, %struct.xfs_ail* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %43

20:                                               ; preds = %1
  %21 = load %struct.xfs_ail*, %struct.xfs_ail** %2, align 8
  %22 = getelementptr inbounds %struct.xfs_ail, %struct.xfs_ail* %21, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  %24 = icmp eq i8* %23, null
  br i1 %24, label %25, label %43

25:                                               ; preds = %20
  %26 = load %struct.xfs_ail*, %struct.xfs_ail** %2, align 8
  %27 = getelementptr inbounds %struct.xfs_ail, %struct.xfs_ail* %26, i32 0, i32 2
  %28 = call i32 @list_empty_careful(i32* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %25
  %31 = load %struct.xfs_ail*, %struct.xfs_ail** %2, align 8
  %32 = call i64 @xfs_ail_min_lsn(%struct.xfs_ail* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %43

34:                                               ; preds = %30, %25
  %35 = load %struct.xfs_ail*, %struct.xfs_ail** %2, align 8
  %36 = getelementptr inbounds %struct.xfs_ail, %struct.xfs_ail* %35, i32 0, i32 1
  store i64 0, i64* %36, align 8
  %37 = load i32*, i32** %3, align 8
  %38 = load i32, i32* @xs_push_ail_flush, align 4
  %39 = call i32 @XFS_STATS_INC(i32* %37, i32 %38)
  %40 = load i32*, i32** %3, align 8
  %41 = load i32, i32* @XFS_LOG_SYNC, align 4
  %42 = call i32 @xfs_log_force(i32* %40, i32 %41)
  br label %43

43:                                               ; preds = %34, %30, %20, %1
  %44 = load %struct.xfs_ail*, %struct.xfs_ail** %2, align 8
  %45 = getelementptr inbounds %struct.xfs_ail, %struct.xfs_ail* %44, i32 0, i32 3
  %46 = call i32 @spin_lock(i32* %45)
  %47 = call i32 (...) @smp_rmb()
  %48 = load %struct.xfs_ail*, %struct.xfs_ail** %2, align 8
  %49 = getelementptr inbounds %struct.xfs_ail, %struct.xfs_ail* %48, i32 0, i32 5
  %50 = load i8*, i8** %49, align 8
  store i8* %50, i8** %7, align 8
  %51 = load i8*, i8** %7, align 8
  %52 = load %struct.xfs_ail*, %struct.xfs_ail** %2, align 8
  %53 = getelementptr inbounds %struct.xfs_ail, %struct.xfs_ail* %52, i32 0, i32 4
  store i8* %51, i8** %53, align 8
  %54 = load %struct.xfs_ail*, %struct.xfs_ail** %2, align 8
  %55 = load %struct.xfs_ail*, %struct.xfs_ail** %2, align 8
  %56 = getelementptr inbounds %struct.xfs_ail, %struct.xfs_ail* %55, i32 0, i32 0
  %57 = load i8*, i8** %56, align 8
  %58 = call %struct.xfs_log_item* @xfs_trans_ail_cursor_first(%struct.xfs_ail* %54, %struct.xfs_ail_cursor* %4, i8* %57)
  store %struct.xfs_log_item* %58, %struct.xfs_log_item** %5, align 8
  %59 = load %struct.xfs_log_item*, %struct.xfs_log_item** %5, align 8
  %60 = icmp ne %struct.xfs_log_item* %59, null
  br i1 %60, label %66, label %61

61:                                               ; preds = %43
  %62 = call i32 @xfs_trans_ail_cursor_done(%struct.xfs_ail_cursor* %4)
  %63 = load %struct.xfs_ail*, %struct.xfs_ail** %2, align 8
  %64 = getelementptr inbounds %struct.xfs_ail, %struct.xfs_ail* %63, i32 0, i32 3
  %65 = call i32 @spin_unlock(i32* %64)
  br label %166

66:                                               ; preds = %43
  %67 = load i32*, i32** %3, align 8
  %68 = load i32, i32* @xs_push_ail, align 4
  %69 = call i32 @XFS_STATS_INC(i32* %67, i32 %68)
  %70 = load %struct.xfs_log_item*, %struct.xfs_log_item** %5, align 8
  %71 = getelementptr inbounds %struct.xfs_log_item, %struct.xfs_log_item* %70, i32 0, i32 0
  %72 = load i8*, i8** %71, align 8
  store i8* %72, i8** %6, align 8
  br label %73

73:                                               ; preds = %139, %66
  %74 = load %struct.xfs_log_item*, %struct.xfs_log_item** %5, align 8
  %75 = getelementptr inbounds %struct.xfs_log_item, %struct.xfs_log_item* %74, i32 0, i32 0
  %76 = load i8*, i8** %75, align 8
  %77 = load i8*, i8** %7, align 8
  %78 = call i64 @XFS_LSN_CMP(i8* %76, i8* %77)
  %79 = icmp sle i64 %78, 0
  br i1 %79, label %80, label %143

80:                                               ; preds = %73
  %81 = load %struct.xfs_ail*, %struct.xfs_ail** %2, align 8
  %82 = load %struct.xfs_log_item*, %struct.xfs_log_item** %5, align 8
  %83 = call i32 @xfsaild_push_item(%struct.xfs_ail* %81, %struct.xfs_log_item* %82)
  store i32 %83, i32* %12, align 4
  %84 = load i32, i32* %12, align 4
  switch i32 %84, label %125 [
    i32 128, label %85
    i32 131, label %94
    i32 129, label %105
    i32 130, label %117
  ]

85:                                               ; preds = %80
  %86 = load i32*, i32** %3, align 8
  %87 = load i32, i32* @xs_push_ail_success, align 4
  %88 = call i32 @XFS_STATS_INC(i32* %86, i32 %87)
  %89 = load %struct.xfs_log_item*, %struct.xfs_log_item** %5, align 8
  %90 = call i32 @trace_xfs_ail_push(%struct.xfs_log_item* %89)
  %91 = load i8*, i8** %6, align 8
  %92 = load %struct.xfs_ail*, %struct.xfs_ail** %2, align 8
  %93 = getelementptr inbounds %struct.xfs_ail, %struct.xfs_ail* %92, i32 0, i32 0
  store i8* %91, i8** %93, align 8
  br label %127

94:                                               ; preds = %80
  %95 = load i32*, i32** %3, align 8
  %96 = load i32, i32* @xs_push_ail_flushing, align 4
  %97 = call i32 @XFS_STATS_INC(i32* %95, i32 %96)
  %98 = load %struct.xfs_log_item*, %struct.xfs_log_item** %5, align 8
  %99 = call i32 @trace_xfs_ail_flushing(%struct.xfs_log_item* %98)
  %100 = load i32, i32* %10, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %10, align 4
  %102 = load i8*, i8** %6, align 8
  %103 = load %struct.xfs_ail*, %struct.xfs_ail** %2, align 8
  %104 = getelementptr inbounds %struct.xfs_ail, %struct.xfs_ail* %103, i32 0, i32 0
  store i8* %102, i8** %104, align 8
  br label %127

105:                                              ; preds = %80
  %106 = load i32*, i32** %3, align 8
  %107 = load i32, i32* @xs_push_ail_pinned, align 4
  %108 = call i32 @XFS_STATS_INC(i32* %106, i32 %107)
  %109 = load %struct.xfs_log_item*, %struct.xfs_log_item** %5, align 8
  %110 = call i32 @trace_xfs_ail_pinned(%struct.xfs_log_item* %109)
  %111 = load i32, i32* %9, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %9, align 4
  %113 = load %struct.xfs_ail*, %struct.xfs_ail** %2, align 8
  %114 = getelementptr inbounds %struct.xfs_ail, %struct.xfs_ail* %113, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  %116 = add nsw i64 %115, 1
  store i64 %116, i64* %114, align 8
  br label %127

117:                                              ; preds = %80
  %118 = load i32*, i32** %3, align 8
  %119 = load i32, i32* @xs_push_ail_locked, align 4
  %120 = call i32 @XFS_STATS_INC(i32* %118, i32 %119)
  %121 = load %struct.xfs_log_item*, %struct.xfs_log_item** %5, align 8
  %122 = call i32 @trace_xfs_ail_locked(%struct.xfs_log_item* %121)
  %123 = load i32, i32* %9, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %9, align 4
  br label %127

125:                                              ; preds = %80
  %126 = call i32 @ASSERT(i32 0)
  br label %127

127:                                              ; preds = %125, %117, %105, %94, %85
  %128 = load i32, i32* %11, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %11, align 4
  %130 = load i32, i32* %9, align 4
  %131 = icmp sgt i32 %130, 100
  br i1 %131, label %132, label %133

132:                                              ; preds = %127
  br label %143

133:                                              ; preds = %127
  %134 = load %struct.xfs_ail*, %struct.xfs_ail** %2, align 8
  %135 = call %struct.xfs_log_item* @xfs_trans_ail_cursor_next(%struct.xfs_ail* %134, %struct.xfs_ail_cursor* %4)
  store %struct.xfs_log_item* %135, %struct.xfs_log_item** %5, align 8
  %136 = load %struct.xfs_log_item*, %struct.xfs_log_item** %5, align 8
  %137 = icmp eq %struct.xfs_log_item* %136, null
  br i1 %137, label %138, label %139

138:                                              ; preds = %133
  br label %143

139:                                              ; preds = %133
  %140 = load %struct.xfs_log_item*, %struct.xfs_log_item** %5, align 8
  %141 = getelementptr inbounds %struct.xfs_log_item, %struct.xfs_log_item* %140, i32 0, i32 0
  %142 = load i8*, i8** %141, align 8
  store i8* %142, i8** %6, align 8
  br label %73

143:                                              ; preds = %138, %132, %73
  %144 = call i32 @xfs_trans_ail_cursor_done(%struct.xfs_ail_cursor* %4)
  %145 = load %struct.xfs_ail*, %struct.xfs_ail** %2, align 8
  %146 = getelementptr inbounds %struct.xfs_ail, %struct.xfs_ail* %145, i32 0, i32 3
  %147 = call i32 @spin_unlock(i32* %146)
  %148 = load %struct.xfs_ail*, %struct.xfs_ail** %2, align 8
  %149 = getelementptr inbounds %struct.xfs_ail, %struct.xfs_ail* %148, i32 0, i32 2
  %150 = call i64 @xfs_buf_delwri_submit_nowait(i32* %149)
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %157

152:                                              ; preds = %143
  %153 = load %struct.xfs_ail*, %struct.xfs_ail** %2, align 8
  %154 = getelementptr inbounds %struct.xfs_ail, %struct.xfs_ail* %153, i32 0, i32 1
  %155 = load i64, i64* %154, align 8
  %156 = add nsw i64 %155, 1
  store i64 %156, i64* %154, align 8
  br label %157

157:                                              ; preds = %152, %143
  %158 = load i32, i32* %11, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %165

160:                                              ; preds = %157
  %161 = load i8*, i8** %6, align 8
  %162 = load i8*, i8** %7, align 8
  %163 = call i64 @XFS_LSN_CMP(i8* %161, i8* %162)
  %164 = icmp sge i64 %163, 0
  br i1 %164, label %165, label %169

165:                                              ; preds = %160, %157
  br label %166

166:                                              ; preds = %165, %61
  store i64 50, i64* %8, align 8
  %167 = load %struct.xfs_ail*, %struct.xfs_ail** %2, align 8
  %168 = getelementptr inbounds %struct.xfs_ail, %struct.xfs_ail* %167, i32 0, i32 0
  store i8* null, i8** %168, align 8
  br label %182

169:                                              ; preds = %160
  %170 = load i32, i32* %9, align 4
  %171 = load i32, i32* %10, align 4
  %172 = add nsw i32 %170, %171
  %173 = mul nsw i32 %172, 100
  %174 = load i32, i32* %11, align 4
  %175 = sdiv i32 %173, %174
  %176 = icmp sgt i32 %175, 90
  br i1 %176, label %177, label %180

177:                                              ; preds = %169
  store i64 20, i64* %8, align 8
  %178 = load %struct.xfs_ail*, %struct.xfs_ail** %2, align 8
  %179 = getelementptr inbounds %struct.xfs_ail, %struct.xfs_ail* %178, i32 0, i32 0
  store i8* null, i8** %179, align 8
  br label %181

180:                                              ; preds = %169
  store i64 10, i64* %8, align 8
  br label %181

181:                                              ; preds = %180, %177
  br label %182

182:                                              ; preds = %181, %166
  %183 = load i64, i64* %8, align 8
  ret i64 %183
}

declare dso_local i32 @list_empty_careful(i32*) #1

declare dso_local i64 @xfs_ail_min_lsn(%struct.xfs_ail*) #1

declare dso_local i32 @XFS_STATS_INC(i32*, i32) #1

declare dso_local i32 @xfs_log_force(i32*, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @smp_rmb(...) #1

declare dso_local %struct.xfs_log_item* @xfs_trans_ail_cursor_first(%struct.xfs_ail*, %struct.xfs_ail_cursor*, i8*) #1

declare dso_local i32 @xfs_trans_ail_cursor_done(%struct.xfs_ail_cursor*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i64 @XFS_LSN_CMP(i8*, i8*) #1

declare dso_local i32 @xfsaild_push_item(%struct.xfs_ail*, %struct.xfs_log_item*) #1

declare dso_local i32 @trace_xfs_ail_push(%struct.xfs_log_item*) #1

declare dso_local i32 @trace_xfs_ail_flushing(%struct.xfs_log_item*) #1

declare dso_local i32 @trace_xfs_ail_pinned(%struct.xfs_log_item*) #1

declare dso_local i32 @trace_xfs_ail_locked(%struct.xfs_log_item*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local %struct.xfs_log_item* @xfs_trans_ail_cursor_next(%struct.xfs_ail*, %struct.xfs_ail_cursor*) #1

declare dso_local i64 @xfs_buf_delwri_submit_nowait(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
