; ModuleID = '/home/carl/AnghaBench/linux/fs/quota/extr_dquot.c_dquot_quota_sync.c'
source_filename = "/home/carl/AnghaBench/linux/fs/quota/extr_dquot.c_dquot_quota_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { {}* }
%struct.quota_info = type { i32, %struct.TYPE_5__** }
%struct.TYPE_5__ = type { i32 }

@DQUOT_QUOTA_SYS_FILE = common dso_local global i32 0, align 4
@MAXQUOTAS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dquot_quota_sync(%struct.super_block* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.super_block*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.quota_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.super_block*, %struct.super_block** %4, align 8
  %10 = call %struct.quota_info* @sb_dqopt(%struct.super_block* %9)
  store %struct.quota_info* %10, %struct.quota_info** %6, align 8
  %11 = load %struct.super_block*, %struct.super_block** %4, align 8
  %12 = load i32, i32* %5, align 4
  %13 = call i32 @dquot_writeback_dquots(%struct.super_block* %11, i32 %12)
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %8, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i32, i32* %8, align 4
  store i32 %17, i32* %3, align 4
  br label %96

18:                                               ; preds = %2
  %19 = load %struct.quota_info*, %struct.quota_info** %6, align 8
  %20 = getelementptr inbounds %struct.quota_info, %struct.quota_info* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @DQUOT_QUOTA_SYS_FILE, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %18
  store i32 0, i32* %3, align 4
  br label %96

26:                                               ; preds = %18
  %27 = load %struct.super_block*, %struct.super_block** %4, align 8
  %28 = getelementptr inbounds %struct.super_block, %struct.super_block* %27, i32 0, i32 1
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = bitcast {}** %30 to i32 (%struct.super_block*, i32)**
  %32 = load i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*, i32)** %31, align 8
  %33 = icmp ne i32 (%struct.super_block*, i32)* %32, null
  br i1 %33, label %34, label %43

34:                                               ; preds = %26
  %35 = load %struct.super_block*, %struct.super_block** %4, align 8
  %36 = getelementptr inbounds %struct.super_block, %struct.super_block* %35, i32 0, i32 1
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = bitcast {}** %38 to i32 (%struct.super_block*, i32)**
  %40 = load i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*, i32)** %39, align 8
  %41 = load %struct.super_block*, %struct.super_block** %4, align 8
  %42 = call i32 %40(%struct.super_block* %41, i32 1)
  br label %43

43:                                               ; preds = %34, %26
  %44 = load %struct.super_block*, %struct.super_block** %4, align 8
  %45 = getelementptr inbounds %struct.super_block, %struct.super_block* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @sync_blockdev(i32 %46)
  store i32 0, i32* %7, align 4
  br label %48

48:                                               ; preds = %92, %43
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* @MAXQUOTAS, align 4
  %51 = icmp slt i32 %49, %50
  br i1 %51, label %52, label %95

52:                                               ; preds = %48
  %53 = load i32, i32* %5, align 4
  %54 = icmp ne i32 %53, -1
  br i1 %54, label %55, label %60

55:                                               ; preds = %52
  %56 = load i32, i32* %7, align 4
  %57 = load i32, i32* %5, align 4
  %58 = icmp ne i32 %56, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %55
  br label %92

60:                                               ; preds = %55, %52
  %61 = load %struct.super_block*, %struct.super_block** %4, align 8
  %62 = load i32, i32* %7, align 4
  %63 = call i32 @sb_has_quota_active(%struct.super_block* %61, i32 %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %66, label %65

65:                                               ; preds = %60
  br label %92

66:                                               ; preds = %60
  %67 = load %struct.quota_info*, %struct.quota_info** %6, align 8
  %68 = getelementptr inbounds %struct.quota_info, %struct.quota_info* %67, i32 0, i32 1
  %69 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %68, align 8
  %70 = load i32, i32* %7, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %69, i64 %71
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %72, align 8
  %74 = call i32 @inode_lock(%struct.TYPE_5__* %73)
  %75 = load %struct.quota_info*, %struct.quota_info** %6, align 8
  %76 = getelementptr inbounds %struct.quota_info, %struct.quota_info* %75, i32 0, i32 1
  %77 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %76, align 8
  %78 = load i32, i32* %7, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %77, i64 %79
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 0
  %83 = call i32 @truncate_inode_pages(i32* %82, i32 0)
  %84 = load %struct.quota_info*, %struct.quota_info** %6, align 8
  %85 = getelementptr inbounds %struct.quota_info, %struct.quota_info* %84, i32 0, i32 1
  %86 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %85, align 8
  %87 = load i32, i32* %7, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %86, i64 %88
  %90 = load %struct.TYPE_5__*, %struct.TYPE_5__** %89, align 8
  %91 = call i32 @inode_unlock(%struct.TYPE_5__* %90)
  br label %92

92:                                               ; preds = %66, %65, %59
  %93 = load i32, i32* %7, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %7, align 4
  br label %48

95:                                               ; preds = %48
  store i32 0, i32* %3, align 4
  br label %96

96:                                               ; preds = %95, %25, %16
  %97 = load i32, i32* %3, align 4
  ret i32 %97
}

declare dso_local %struct.quota_info* @sb_dqopt(%struct.super_block*) #1

declare dso_local i32 @dquot_writeback_dquots(%struct.super_block*, i32) #1

declare dso_local i32 @sync_blockdev(i32) #1

declare dso_local i32 @sb_has_quota_active(%struct.super_block*, i32) #1

declare dso_local i32 @inode_lock(%struct.TYPE_5__*) #1

declare dso_local i32 @truncate_inode_pages(i32*, i32) #1

declare dso_local i32 @inode_unlock(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
