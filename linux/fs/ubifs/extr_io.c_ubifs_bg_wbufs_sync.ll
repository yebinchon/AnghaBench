; ModuleID = '/home/carl/AnghaBench/linux/fs/ubifs/extr_io.c_ubifs_bg_wbufs_sync.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ubifs/extr_io.c_ubifs_bg_wbufs_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { i32, %struct.TYPE_2__*, i64, i64, i32, i32 }
%struct.TYPE_2__ = type { %struct.ubifs_wbuf }
%struct.ubifs_wbuf = type { i32, i32, i32 }

@EROFS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"synchronize\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"cannot sync write-buffer, error %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ubifs_bg_wbufs_sync(%struct.ubifs_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ubifs_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.ubifs_wbuf*, align 8
  %7 = alloca %struct.ubifs_wbuf*, align 8
  store %struct.ubifs_info* %0, %struct.ubifs_info** %3, align 8
  %8 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %9 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %10 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %9, i32 0, i32 5
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %19, label %13

13:                                               ; preds = %1
  %14 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %15 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %14, i32 0, i32 4
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %16, 0
  %18 = xor i1 %17, true
  br label %19

19:                                               ; preds = %13, %1
  %20 = phi i1 [ false, %1 ], [ %18, %13 ]
  %21 = zext i1 %20 to i32
  %22 = call i32 @ubifs_assert(%struct.ubifs_info* %8, i32 %21)
  %23 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %24 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %23, i32 0, i32 3
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %19
  store i32 0, i32* %2, align 4
  br label %126

28:                                               ; preds = %19
  %29 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %30 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %29, i32 0, i32 3
  store i64 0, i64* %30, align 8
  %31 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %32 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %28
  %36 = load i32, i32* @EROFS, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %4, align 4
  br label %95

38:                                               ; preds = %28
  %39 = call i32 @dbg_io(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %40

40:                                               ; preds = %91, %38
  %41 = load i32, i32* %5, align 4
  %42 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %43 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp slt i32 %41, %44
  br i1 %45, label %46, label %94

46:                                               ; preds = %40
  %47 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %48 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %47, i32 0, i32 1
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = load i32, i32* %5, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  store %struct.ubifs_wbuf* %53, %struct.ubifs_wbuf** %6, align 8
  %54 = call i32 (...) @cond_resched()
  %55 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %6, align 8
  %56 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %55, i32 0, i32 0
  %57 = call i64 @mutex_is_locked(i32* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %46
  br label %91

60:                                               ; preds = %46
  %61 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %6, align 8
  %62 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %61, i32 0, i32 0
  %63 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %6, align 8
  %64 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @mutex_lock_nested(i32* %62, i32 %65)
  %67 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %6, align 8
  %68 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %75, label %71

71:                                               ; preds = %60
  %72 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %6, align 8
  %73 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %72, i32 0, i32 0
  %74 = call i32 @mutex_unlock(i32* %73)
  br label %91

75:                                               ; preds = %60
  %76 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %6, align 8
  %77 = call i32 @ubifs_wbuf_sync_nolock(%struct.ubifs_wbuf* %76)
  store i32 %77, i32* %4, align 4
  %78 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %6, align 8
  %79 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %78, i32 0, i32 0
  %80 = call i32 @mutex_unlock(i32* %79)
  %81 = load i32, i32* %4, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %90

83:                                               ; preds = %75
  %84 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %85 = load i32, i32* %4, align 4
  %86 = call i32 @ubifs_err(%struct.ubifs_info* %84, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %85)
  %87 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %88 = load i32, i32* %4, align 4
  %89 = call i32 @ubifs_ro_mode(%struct.ubifs_info* %87, i32 %88)
  br label %95

90:                                               ; preds = %75
  br label %91

91:                                               ; preds = %90, %71, %59
  %92 = load i32, i32* %5, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %5, align 4
  br label %40

94:                                               ; preds = %40
  store i32 0, i32* %2, align 4
  br label %126

95:                                               ; preds = %83, %35
  store i32 0, i32* %5, align 4
  br label %96

96:                                               ; preds = %121, %95
  %97 = load i32, i32* %5, align 4
  %98 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %99 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = icmp slt i32 %97, %100
  br i1 %101, label %102, label %124

102:                                              ; preds = %96
  %103 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %104 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %103, i32 0, i32 1
  %105 = load %struct.TYPE_2__*, %struct.TYPE_2__** %104, align 8
  %106 = load i32, i32* %5, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i64 %107
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 0
  store %struct.ubifs_wbuf* %109, %struct.ubifs_wbuf** %7, align 8
  %110 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %7, align 8
  %111 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %110, i32 0, i32 0
  %112 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %7, align 8
  %113 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @mutex_lock_nested(i32* %111, i32 %114)
  %116 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %7, align 8
  %117 = call i32 @cancel_wbuf_timer_nolock(%struct.ubifs_wbuf* %116)
  %118 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %7, align 8
  %119 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %118, i32 0, i32 0
  %120 = call i32 @mutex_unlock(i32* %119)
  br label %121

121:                                              ; preds = %102
  %122 = load i32, i32* %5, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %5, align 4
  br label %96

124:                                              ; preds = %96
  %125 = load i32, i32* %4, align 4
  store i32 %125, i32* %2, align 4
  br label %126

126:                                              ; preds = %124, %94, %27
  %127 = load i32, i32* %2, align 4
  ret i32 %127
}

declare dso_local i32 @ubifs_assert(%struct.ubifs_info*, i32) #1

declare dso_local i32 @dbg_io(i8*) #1

declare dso_local i32 @cond_resched(...) #1

declare dso_local i64 @mutex_is_locked(i32*) #1

declare dso_local i32 @mutex_lock_nested(i32*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @ubifs_wbuf_sync_nolock(%struct.ubifs_wbuf*) #1

declare dso_local i32 @ubifs_err(%struct.ubifs_info*, i8*, i32) #1

declare dso_local i32 @ubifs_ro_mode(%struct.ubifs_info*, i32) #1

declare dso_local i32 @cancel_wbuf_timer_nolock(%struct.ubifs_wbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
