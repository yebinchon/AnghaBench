; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_journal.c_ocfs2_recovery_init.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_journal.c_ocfs2_recovery_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_super = type { i32, %struct.ocfs2_recovery_map*, i32, i32*, i64, i32 }
%struct.ocfs2_recovery_map = type { i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocfs2_recovery_init(%struct.ocfs2_super* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ocfs2_super*, align 8
  %4 = alloca %struct.ocfs2_recovery_map*, align 8
  store %struct.ocfs2_super* %0, %struct.ocfs2_super** %3, align 8
  %5 = load %struct.ocfs2_super*, %struct.ocfs2_super** %3, align 8
  %6 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %5, i32 0, i32 5
  %7 = call i32 @mutex_init(i32* %6)
  %8 = load %struct.ocfs2_super*, %struct.ocfs2_super** %3, align 8
  %9 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %8, i32 0, i32 4
  store i64 0, i64* %9, align 8
  %10 = load %struct.ocfs2_super*, %struct.ocfs2_super** %3, align 8
  %11 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %10, i32 0, i32 3
  store i32* null, i32** %11, align 8
  %12 = load %struct.ocfs2_super*, %struct.ocfs2_super** %3, align 8
  %13 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %12, i32 0, i32 2
  %14 = call i32 @init_waitqueue_head(i32* %13)
  %15 = load %struct.ocfs2_super*, %struct.ocfs2_super** %3, align 8
  %16 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = sext i32 %17 to i64
  %19 = mul i64 %18, 4
  %20 = add i64 8, %19
  %21 = trunc i64 %20 to i32
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = call %struct.ocfs2_recovery_map* @kzalloc(i32 %21, i32 %22)
  store %struct.ocfs2_recovery_map* %23, %struct.ocfs2_recovery_map** %4, align 8
  %24 = load %struct.ocfs2_recovery_map*, %struct.ocfs2_recovery_map** %4, align 8
  %25 = icmp ne %struct.ocfs2_recovery_map* %24, null
  br i1 %25, label %32, label %26

26:                                               ; preds = %1
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  %29 = call i32 @mlog_errno(i32 %28)
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %2, align 4
  br label %42

32:                                               ; preds = %1
  %33 = load %struct.ocfs2_recovery_map*, %struct.ocfs2_recovery_map** %4, align 8
  %34 = bitcast %struct.ocfs2_recovery_map* %33 to i8*
  %35 = getelementptr inbounds i8, i8* %34, i64 8
  %36 = bitcast i8* %35 to i32*
  %37 = load %struct.ocfs2_recovery_map*, %struct.ocfs2_recovery_map** %4, align 8
  %38 = getelementptr inbounds %struct.ocfs2_recovery_map, %struct.ocfs2_recovery_map* %37, i32 0, i32 0
  store i32* %36, i32** %38, align 8
  %39 = load %struct.ocfs2_recovery_map*, %struct.ocfs2_recovery_map** %4, align 8
  %40 = load %struct.ocfs2_super*, %struct.ocfs2_super** %3, align 8
  %41 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %40, i32 0, i32 1
  store %struct.ocfs2_recovery_map* %39, %struct.ocfs2_recovery_map** %41, align 8
  store i32 0, i32* %2, align 4
  br label %42

42:                                               ; preds = %32, %26
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local %struct.ocfs2_recovery_map* @kzalloc(i32, i32) #1

declare dso_local i32 @mlog_errno(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
