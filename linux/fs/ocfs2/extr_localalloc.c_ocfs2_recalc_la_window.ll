; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_localalloc.c_ocfs2_recalc_la_window.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_localalloc.c_ocfs2_recalc_la_window.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_super = type { i32, i32, i32, i32, i32, i32, i32 }

@OCFS2_LA_DISABLED = common dso_local global i32 0, align 4
@OCFS2_LA_EVENT_ENOSPC = common dso_local global i32 0, align 4
@OCFS2_LA_EVENT_FRAGMENTED = common dso_local global i32 0, align 4
@OCFS2_LA_THROTTLED = common dso_local global i32 0, align 4
@OCFS2_LA_ENABLE_INTERVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ocfs2_super*, i32)* @ocfs2_recalc_la_window to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_recalc_la_window(%struct.ocfs2_super* %0, i32 %1) #0 {
  %3 = alloca %struct.ocfs2_super*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ocfs2_super* %0, %struct.ocfs2_super** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.ocfs2_super*, %struct.ocfs2_super** %3, align 8
  %8 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %7, i32 0, i32 3
  %9 = call i32 @spin_lock(i32* %8)
  %10 = load %struct.ocfs2_super*, %struct.ocfs2_super** %3, align 8
  %11 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @OCFS2_LA_DISABLED, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %15, label %23

15:                                               ; preds = %2
  %16 = load %struct.ocfs2_super*, %struct.ocfs2_super** %3, align 8
  %17 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @OCFS2_LA_DISABLED, align 4
  %20 = icmp eq i32 %18, %19
  %21 = zext i1 %20 to i32
  %22 = call i32 @WARN_ON_ONCE(i32 %21)
  br label %74

23:                                               ; preds = %2
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* @OCFS2_LA_EVENT_ENOSPC, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %31, label %27

27:                                               ; preds = %23
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* @OCFS2_LA_EVENT_FRAGMENTED, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %61

31:                                               ; preds = %27, %23
  %32 = load %struct.ocfs2_super*, %struct.ocfs2_super** %3, align 8
  %33 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = ashr i32 %34, 1
  store i32 %35, i32* %5, align 4
  %36 = load i32, i32* %5, align 4
  %37 = load %struct.ocfs2_super*, %struct.ocfs2_super** %3, align 8
  %38 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %37, i32 0, i32 6
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @ocfs2_megabytes_to_clusters(i32 %39, i32 1)
  %41 = icmp ugt i32 %36, %40
  br i1 %41, label %42, label %49

42:                                               ; preds = %31
  %43 = load i32, i32* @OCFS2_LA_THROTTLED, align 4
  %44 = load %struct.ocfs2_super*, %struct.ocfs2_super** %3, align 8
  %45 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 4
  %46 = load i32, i32* %5, align 4
  %47 = load %struct.ocfs2_super*, %struct.ocfs2_super** %3, align 8
  %48 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 4
  br label %53

49:                                               ; preds = %31
  %50 = load i32, i32* @OCFS2_LA_DISABLED, align 4
  %51 = load %struct.ocfs2_super*, %struct.ocfs2_super** %3, align 8
  %52 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 4
  br label %53

53:                                               ; preds = %49, %42
  %54 = load %struct.ocfs2_super*, %struct.ocfs2_super** %3, align 8
  %55 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %54, i32 0, i32 5
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.ocfs2_super*, %struct.ocfs2_super** %3, align 8
  %58 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %57, i32 0, i32 4
  %59 = load i32, i32* @OCFS2_LA_ENABLE_INTERVAL, align 4
  %60 = call i32 @queue_delayed_work(i32 %56, i32* %58, i32 %59)
  br label %74

61:                                               ; preds = %27
  %62 = load %struct.ocfs2_super*, %struct.ocfs2_super** %3, align 8
  %63 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @OCFS2_LA_THROTTLED, align 4
  %66 = icmp ne i32 %64, %65
  br i1 %66, label %67, label %73

67:                                               ; preds = %61
  %68 = load %struct.ocfs2_super*, %struct.ocfs2_super** %3, align 8
  %69 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.ocfs2_super*, %struct.ocfs2_super** %3, align 8
  %72 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %71, i32 0, i32 1
  store i32 %70, i32* %72, align 4
  br label %73

73:                                               ; preds = %67, %61
  br label %74

74:                                               ; preds = %73, %53, %15
  %75 = load %struct.ocfs2_super*, %struct.ocfs2_super** %3, align 8
  %76 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  store i32 %77, i32* %6, align 4
  %78 = load %struct.ocfs2_super*, %struct.ocfs2_super** %3, align 8
  %79 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %78, i32 0, i32 3
  %80 = call i32 @spin_unlock(i32* %79)
  %81 = load i32, i32* %6, align 4
  ret i32 %81
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @ocfs2_megabytes_to_clusters(i32, i32) #1

declare dso_local i32 @queue_delayed_work(i32, i32*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
