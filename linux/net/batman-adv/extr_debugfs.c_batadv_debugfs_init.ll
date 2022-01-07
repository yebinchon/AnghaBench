; ModuleID = '/home/carl/AnghaBench/linux/net/batman-adv/extr_debugfs.c_batadv_debugfs_init.c'
source_filename = "/home/carl/AnghaBench/linux/net/batman-adv/extr_debugfs.c_batadv_debugfs_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.batadv_debuginfo = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@BATADV_DEBUGFS_SUBDIR = common dso_local global i32 0, align 4
@batadv_debugfs = common dso_local global i32 0, align 4
@batadv_general_debuginfos = common dso_local global %struct.batadv_debuginfo** null, align 8
@S_IFREG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @batadv_debugfs_init() #0 {
  %1 = alloca %struct.batadv_debuginfo**, align 8
  %2 = load i32, i32* @BATADV_DEBUGFS_SUBDIR, align 4
  %3 = call i32 @debugfs_create_dir(i32 %2, i32* null)
  store i32 %3, i32* @batadv_debugfs, align 4
  %4 = load %struct.batadv_debuginfo**, %struct.batadv_debuginfo*** @batadv_general_debuginfos, align 8
  store %struct.batadv_debuginfo** %4, %struct.batadv_debuginfo*** %1, align 8
  br label %5

5:                                                ; preds = %27, %0
  %6 = load %struct.batadv_debuginfo**, %struct.batadv_debuginfo*** %1, align 8
  %7 = load %struct.batadv_debuginfo*, %struct.batadv_debuginfo** %6, align 8
  %8 = icmp ne %struct.batadv_debuginfo* %7, null
  br i1 %8, label %9, label %30

9:                                                ; preds = %5
  %10 = load %struct.batadv_debuginfo**, %struct.batadv_debuginfo*** %1, align 8
  %11 = load %struct.batadv_debuginfo*, %struct.batadv_debuginfo** %10, align 8
  %12 = getelementptr inbounds %struct.batadv_debuginfo, %struct.batadv_debuginfo* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @S_IFREG, align 4
  %16 = load %struct.batadv_debuginfo**, %struct.batadv_debuginfo*** %1, align 8
  %17 = load %struct.batadv_debuginfo*, %struct.batadv_debuginfo** %16, align 8
  %18 = getelementptr inbounds %struct.batadv_debuginfo, %struct.batadv_debuginfo* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = or i32 %15, %20
  %22 = load i32, i32* @batadv_debugfs, align 4
  %23 = load %struct.batadv_debuginfo**, %struct.batadv_debuginfo*** %1, align 8
  %24 = load %struct.batadv_debuginfo*, %struct.batadv_debuginfo** %23, align 8
  %25 = getelementptr inbounds %struct.batadv_debuginfo, %struct.batadv_debuginfo* %24, i32 0, i32 0
  %26 = call i32 @debugfs_create_file(i32 %14, i32 %21, i32 %22, i32* null, i32* %25)
  br label %27

27:                                               ; preds = %9
  %28 = load %struct.batadv_debuginfo**, %struct.batadv_debuginfo*** %1, align 8
  %29 = getelementptr inbounds %struct.batadv_debuginfo*, %struct.batadv_debuginfo** %28, i32 1
  store %struct.batadv_debuginfo** %29, %struct.batadv_debuginfo*** %1, align 8
  br label %5

30:                                               ; preds = %5
  ret void
}

declare dso_local i32 @debugfs_create_dir(i32, i32*) #1

declare dso_local i32 @debugfs_create_file(i32, i32, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
