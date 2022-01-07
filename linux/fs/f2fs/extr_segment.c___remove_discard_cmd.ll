; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_segment.c___remove_discard_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_segment.c___remove_discard_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.f2fs_sb_info = type { i32 }
%struct.discard_cmd = type { i32, i32, i32, i32, i32, i32, i64, i32 }
%struct.discard_cmd_control = type { i32 }
%struct.TYPE_2__ = type { %struct.discard_cmd_control* }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"%sF2FS-fs: Issue discard(%u, %u, %u) failed, ret: %d\00", align 1
@KERN_INFO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.f2fs_sb_info*, %struct.discard_cmd*)* @__remove_discard_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__remove_discard_cmd(%struct.f2fs_sb_info* %0, %struct.discard_cmd* %1) #0 {
  %3 = alloca %struct.f2fs_sb_info*, align 8
  %4 = alloca %struct.discard_cmd*, align 8
  %5 = alloca %struct.discard_cmd_control*, align 8
  %6 = alloca i64, align 8
  store %struct.f2fs_sb_info* %0, %struct.f2fs_sb_info** %3, align 8
  store %struct.discard_cmd* %1, %struct.discard_cmd** %4, align 8
  %7 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %8 = call %struct.TYPE_2__* @SM_I(%struct.f2fs_sb_info* %7)
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load %struct.discard_cmd_control*, %struct.discard_cmd_control** %9, align 8
  store %struct.discard_cmd_control* %10, %struct.discard_cmd_control** %5, align 8
  %11 = load %struct.discard_cmd*, %struct.discard_cmd** %4, align 8
  %12 = getelementptr inbounds %struct.discard_cmd, %struct.discard_cmd* %11, i32 0, i32 7
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.discard_cmd*, %struct.discard_cmd** %4, align 8
  %15 = getelementptr inbounds %struct.discard_cmd, %struct.discard_cmd* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.discard_cmd*, %struct.discard_cmd** %4, align 8
  %18 = getelementptr inbounds %struct.discard_cmd, %struct.discard_cmd* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @trace_f2fs_remove_discard(i32 %13, i32 %16, i32 %19)
  %21 = load %struct.discard_cmd*, %struct.discard_cmd** %4, align 8
  %22 = getelementptr inbounds %struct.discard_cmd, %struct.discard_cmd* %21, i32 0, i32 5
  %23 = load i64, i64* %6, align 8
  %24 = call i32 @spin_lock_irqsave(i32* %22, i64 %23)
  %25 = load %struct.discard_cmd*, %struct.discard_cmd** %4, align 8
  %26 = getelementptr inbounds %struct.discard_cmd, %struct.discard_cmd* %25, i32 0, i32 6
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %2
  %30 = load %struct.discard_cmd*, %struct.discard_cmd** %4, align 8
  %31 = getelementptr inbounds %struct.discard_cmd, %struct.discard_cmd* %30, i32 0, i32 5
  %32 = load i64, i64* %6, align 8
  %33 = call i32 @spin_unlock_irqrestore(i32* %31, i64 %32)
  br label %77

34:                                               ; preds = %2
  %35 = load %struct.discard_cmd*, %struct.discard_cmd** %4, align 8
  %36 = getelementptr inbounds %struct.discard_cmd, %struct.discard_cmd* %35, i32 0, i32 5
  %37 = load i64, i64* %6, align 8
  %38 = call i32 @spin_unlock_irqrestore(i32* %36, i64 %37)
  %39 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %40 = load %struct.discard_cmd*, %struct.discard_cmd** %4, align 8
  %41 = getelementptr inbounds %struct.discard_cmd, %struct.discard_cmd* %40, i32 0, i32 4
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @f2fs_bug_on(%struct.f2fs_sb_info* %39, i32 %42)
  %44 = load %struct.discard_cmd*, %struct.discard_cmd** %4, align 8
  %45 = getelementptr inbounds %struct.discard_cmd, %struct.discard_cmd* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @EOPNOTSUPP, align 4
  %48 = sub nsw i32 0, %47
  %49 = icmp eq i32 %46, %48
  br i1 %49, label %50, label %53

50:                                               ; preds = %34
  %51 = load %struct.discard_cmd*, %struct.discard_cmd** %4, align 8
  %52 = getelementptr inbounds %struct.discard_cmd, %struct.discard_cmd* %51, i32 0, i32 0
  store i32 0, i32* %52, align 8
  br label %53

53:                                               ; preds = %50, %34
  %54 = load %struct.discard_cmd*, %struct.discard_cmd** %4, align 8
  %55 = getelementptr inbounds %struct.discard_cmd, %struct.discard_cmd* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %73

58:                                               ; preds = %53
  %59 = load i32, i32* @KERN_INFO, align 4
  %60 = load %struct.discard_cmd*, %struct.discard_cmd** %4, align 8
  %61 = getelementptr inbounds %struct.discard_cmd, %struct.discard_cmd* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.discard_cmd*, %struct.discard_cmd** %4, align 8
  %64 = getelementptr inbounds %struct.discard_cmd, %struct.discard_cmd* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.discard_cmd*, %struct.discard_cmd** %4, align 8
  %67 = getelementptr inbounds %struct.discard_cmd, %struct.discard_cmd* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.discard_cmd*, %struct.discard_cmd** %4, align 8
  %70 = getelementptr inbounds %struct.discard_cmd, %struct.discard_cmd* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @printk_ratelimited(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %59, i32 %62, i32 %65, i32 %68, i32 %71)
  br label %73

73:                                               ; preds = %58, %53
  %74 = load %struct.discard_cmd_control*, %struct.discard_cmd_control** %5, align 8
  %75 = load %struct.discard_cmd*, %struct.discard_cmd** %4, align 8
  %76 = call i32 @__detach_discard_cmd(%struct.discard_cmd_control* %74, %struct.discard_cmd* %75)
  br label %77

77:                                               ; preds = %73, %29
  ret void
}

declare dso_local %struct.TYPE_2__* @SM_I(%struct.f2fs_sb_info*) #1

declare dso_local i32 @trace_f2fs_remove_discard(i32, i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @f2fs_bug_on(%struct.f2fs_sb_info*, i32) #1

declare dso_local i32 @printk_ratelimited(i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @__detach_discard_cmd(%struct.discard_cmd_control*, %struct.discard_cmd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
