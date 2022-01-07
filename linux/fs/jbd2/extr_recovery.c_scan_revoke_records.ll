; ModuleID = '/home/carl/AnghaBench/linux/fs/jbd2/extr_recovery.c_scan_revoke_records.c'
source_filename = "/home/carl/AnghaBench/linux/fs/jbd2/extr_recovery.c_scan_revoke_records.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.buffer_head = type { i64 }
%struct.recovery_info = type { i32 }
%struct.TYPE_10__ = type { i32 }

@EFSBADCRC = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, %struct.buffer_head*, i32, %struct.recovery_info*)* @scan_revoke_records to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @scan_revoke_records(%struct.TYPE_9__* %0, %struct.buffer_head* %1, i32 %2, %struct.recovery_info* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca %struct.buffer_head*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.recovery_info*, align 8
  %10 = alloca %struct.TYPE_10__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %6, align 8
  store %struct.buffer_head* %1, %struct.buffer_head** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.recovery_info* %3, %struct.recovery_info** %9, align 8
  store i32 0, i32* %13, align 4
  store i32 4, i32* %15, align 4
  %18 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %19 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = inttoptr i64 %20 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %21, %struct.TYPE_10__** %10, align 8
  store i32 4, i32* %11, align 4
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i8* @be32_to_cpu(i32 %24)
  %26 = ptrtoint i8* %25 to i32
  store i32 %26, i32* %14, align 4
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %29 = call i32 @jbd2_descriptor_block_csum_verify(%struct.TYPE_9__* %27, %struct.TYPE_10__* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %4
  %32 = load i32, i32* @EFSBADCRC, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %5, align 4
  br label %105

34:                                               ; preds = %4
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %36 = call i64 @jbd2_journal_has_csum_v2or3(%struct.TYPE_9__* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %34
  store i32 4, i32* %13, align 4
  br label %39

39:                                               ; preds = %38, %34
  %40 = load i32, i32* %14, align 4
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %13, align 4
  %45 = sub nsw i32 %43, %44
  %46 = icmp sgt i32 %40, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %39
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %5, align 4
  br label %105

50:                                               ; preds = %39
  %51 = load i32, i32* %14, align 4
  store i32 %51, i32* %12, align 4
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %53 = call i64 @jbd2_has_feature_64bit(%struct.TYPE_9__* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %50
  store i32 8, i32* %15, align 4
  br label %56

56:                                               ; preds = %55, %50
  br label %57

57:                                               ; preds = %99, %56
  %58 = load i32, i32* %11, align 4
  %59 = load i32, i32* %15, align 4
  %60 = add nsw i32 %58, %59
  %61 = load i32, i32* %12, align 4
  %62 = icmp sle i32 %60, %61
  br i1 %62, label %63, label %104

63:                                               ; preds = %57
  %64 = load i32, i32* %15, align 4
  %65 = icmp eq i32 %64, 4
  br i1 %65, label %66, label %77

66:                                               ; preds = %63
  %67 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %68 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i32, i32* %11, align 4
  %71 = sext i32 %70 to i64
  %72 = add nsw i64 %69, %71
  %73 = inttoptr i64 %72 to i32*
  %74 = load i32, i32* %73, align 4
  %75 = call i8* @be32_to_cpu(i32 %74)
  %76 = ptrtoint i8* %75 to i64
  store i64 %76, i64* %16, align 8
  br label %87

77:                                               ; preds = %63
  %78 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %79 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i32, i32* %11, align 4
  %82 = sext i32 %81 to i64
  %83 = add nsw i64 %80, %82
  %84 = inttoptr i64 %83 to i32*
  %85 = load i32, i32* %84, align 4
  %86 = call i64 @be64_to_cpu(i32 %85)
  store i64 %86, i64* %16, align 8
  br label %87

87:                                               ; preds = %77, %66
  %88 = load i32, i32* %15, align 4
  %89 = load i32, i32* %11, align 4
  %90 = add nsw i32 %89, %88
  store i32 %90, i32* %11, align 4
  %91 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %92 = load i64, i64* %16, align 8
  %93 = load i32, i32* %8, align 4
  %94 = call i32 @jbd2_journal_set_revoke(%struct.TYPE_9__* %91, i64 %92, i32 %93)
  store i32 %94, i32* %17, align 4
  %95 = load i32, i32* %17, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %87
  %98 = load i32, i32* %17, align 4
  store i32 %98, i32* %5, align 4
  br label %105

99:                                               ; preds = %87
  %100 = load %struct.recovery_info*, %struct.recovery_info** %9, align 8
  %101 = getelementptr inbounds %struct.recovery_info, %struct.recovery_info* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %101, align 4
  br label %57

104:                                              ; preds = %57
  store i32 0, i32* %5, align 4
  br label %105

105:                                              ; preds = %104, %97, %47, %31
  %106 = load i32, i32* %5, align 4
  ret i32 %106
}

declare dso_local i8* @be32_to_cpu(i32) #1

declare dso_local i32 @jbd2_descriptor_block_csum_verify(%struct.TYPE_9__*, %struct.TYPE_10__*) #1

declare dso_local i64 @jbd2_journal_has_csum_v2or3(%struct.TYPE_9__*) #1

declare dso_local i64 @jbd2_has_feature_64bit(%struct.TYPE_9__*) #1

declare dso_local i64 @be64_to_cpu(i32) #1

declare dso_local i32 @jbd2_journal_set_revoke(%struct.TYPE_9__*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
